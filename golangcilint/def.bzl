load("@bazel_skylib//lib:shell.bzl", "shell")
load("@bazel_skylib//lib:paths.bzl", "paths")
load("@io_bazel_rules_go//go:def.bzl", "GoPath", "GoSDK")

def _golangcilint_impl(ctx):
    args = []
    if ctx.attr.config:
        args.append("--config={}".format(ctx.file.config.short_path))
    else:
        args.append("--no-config")
    args.extend(ctx.attr.extra_args)
    args.extend(ctx.attr.paths)
    out_file = ctx.actions.declare_file(ctx.label.name + ".bash")
    sdk = ctx.attr._go_sdk[GoSDK]

    transitive_depsets = []
    go111module = "auto"

    default_go_path = "${DIRECTORY}"
    if ctx.attr.go_path:
        # Use absolute path to the provided GoPath's directory as $GOPATH.
        go_path = "$(realpath %s)" % ctx.attr.go_path[GoPath].gopath_file.short_path
        transitive_depsets.append(
            ctx.attr.go_path[DefaultInfo].default_runfiles.files,
        )

        # GoPath has all dependencies under ./src, so turn off module
        # resolution semantics.
        go111module = "off"

    substitutions = {
        "@@GOLANGCILINT_SHORT_PATH@@": shell.quote(ctx.executable._golangcilint.short_path),
        "@@ARGS@@": shell.array_literal(args),
        "@@PREFIX_DIR_PATH@@": shell.quote(paths.dirname(ctx.attr.prefix)),
        "@@PREFIX_BASE_NAME@@": shell.quote(paths.basename(ctx.attr.prefix)),
        "@@NEW_GOROOT@@": shell.quote(sdk.root_file.dirname),
        "@@NEW_GOPATH@@": go_path,
        "@@GO111MODULE@@": go111module,
    }
    ctx.actions.expand_template(
        template = ctx.file._runner,
        output = out_file,
        substitutions = substitutions,
        is_executable = True,
    )
    transitive_depsets += [
        depset(sdk.srcs),
        depset(sdk.tools),
        depset(sdk.libs),
        depset(sdk.headers),
        depset([sdk.go]),
    ]
    default_runfiles = ctx.attr._golangcilint[DefaultInfo].default_runfiles
    if default_runfiles != None:
        transitive_depsets.append(default_runfiles.files)

    runfiles = ctx.runfiles(
        transitive_files = depset(transitive = transitive_depsets),
    )
    return [DefaultInfo(
        files = depset([out_file]),
        runfiles = runfiles,
        executable = out_file,
    )]

_golangcilint = rule(
    implementation = _golangcilint_impl,
    attrs = {
        "config": attr.label(
            allow_single_file = True,
            doc = "Configuration file to use",
        ),
        "paths": attr.string_list(
            doc = "Directories to lint. <path>/... will recurse",
            default = ["./..."],
        ),
        "extra_args": attr.string_list(
            doc = "Extra arguments for the executable",
            default = [],
        ),
        "prefix": attr.string(
            mandatory = True,
            doc = "Go import path of this project i.e. where in GOPATH you would put it. E.g. github.com/atlassian/bazel-tools",
        ),
        "go_path": attr.label(
            providers = [GoPath],
        ),
        "_golangcilint": attr.label(
            default = "@com_github_atlassian_bazel_tools_golangcilint//:linter",
            cfg = "host",
            executable = True,
        ),
        "_runner": attr.label(
            default = "@com_github_atlassian_bazel_tools//golangcilint:runner.bash.template",
            allow_single_file = True,
        ),
        "_go_sdk": attr.label(
            providers = [GoSDK],
            default = "@go_sdk//:go_sdk",
        ),
    },
    executable = True,
)

def golangcilint(**kwargs):
    tags = kwargs.get("tags", [])
    if "manual" not in tags:
        tags.append("manual")
        kwargs["tags"] = tags
    _golangcilint(
        **kwargs
    )
