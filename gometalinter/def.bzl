load("@bazel_skylib//:lib.bzl", "paths", "shell")

def _gometalinter_impl(ctx):
    args = []
    paths_from_file = ""
    if ctx.attr.config:
        args.append("--config=" + ctx.file.config.short_path)
    else:
        args.append("--no-config")
    if ctx.attr.paths:
        args.extend(ctx.attr.paths)
    if ctx.attr.paths_from_file:
        paths_from_file = "$(cat %s)" % shell.quote(ctx.file.paths_from_file.short_path)
    out_file = ctx.actions.declare_file(ctx.label.name + ".bash")
    substitutions = {
        "@@PREFIX_DIR_PATH@@": shell.quote(paths.dirname(ctx.attr.prefix)),
        "@@PREFIX_BASE_NAME@@": shell.quote(paths.basename(ctx.attr.prefix)),
        "@@ARGS@@": shell.array_literal(args),
        "@@PATHS_FROM_FILE@@": paths_from_file,
        "@@GOMETALINTER_SHORT_PATH@@": shell.quote(ctx.executable._gometalinter.short_path),
    }
    ctx.actions.expand_template(
        template = ctx.file._runner,
        output = out_file,
        substitutions = substitutions,
        is_executable = True,
    )
    transitive_depsets = []
    default_runfiles = ctx.attr._gometalinter[DefaultInfo].default_runfiles
    if default_runfiles != None:
        transitive_depsets.append(default_runfiles.files)

    runfiles = ctx.runfiles(
        files = ctx.files._sdk_files,
        transitive_files = depset([], transitive = transitive_depsets),
    )
    return [DefaultInfo(
        files = depset([out_file]),
        runfiles = runfiles,
        executable = out_file,
    )]

_gometalinter = rule(
    implementation = _gometalinter_impl,
    attrs = {
        "config": attr.label(
            allow_single_file = True,
            doc = "Configuration file to use",
        ),
        "paths": attr.string_list(
            doc = "Directories to lint. <path>/... will recurse",
        ),
        "paths_from_file": attr.label(
            allow_single_file = True,
            doc = "Source directories to lint from a file. <path> per line, <path>/... will recurse",
        ),
        "prefix": attr.string(
            mandatory = True,
            doc = "Go import path of this project i.e. where in GOPATH you would put it. E.g. github.com/atlassian/bazel-tools",
        ),
        "_gometalinter": attr.label(
            default = "@com_github_atlassian_bazel_tools_gometalinter//:linter",
            cfg = "host",
            executable = True,
        ),
        "_runner": attr.label(
            default = "@com_github_atlassian_bazel_tools//gometalinter:runner.bash.template",
            allow_single_file = True,
        ),
        "_sdk_files": attr.label(
            default = "@go_sdk//:files",
        ),
    },
    executable = True,
)

def gometalinter(**kwargs):
    tags = kwargs.get("tags", [])
    if "manual" not in tags:
        tags.append("manual")
        kwargs["tags"] = tags
    _gometalinter(
        **kwargs
    )
