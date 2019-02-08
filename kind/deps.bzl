load("@bazel_gazelle//:deps.bzl", "go_repository")

def kind_dependencies():
    _maybe(
        go_repository,
        name = "io_sigs_k8s_kind",
        commit = "78d1378ce7348c613faae1921d094fb7e49d8238",
        importpath = "sigs.k8s.io/kind",
#        sha256 = "7ad04c54177e26c3d69f70822a9dd83de84a7e1991a01bc2cae737bea20b177e",
#        urls = ["https://github.com/kubernetes-sigs/kind/archive/78d1378ce7348c613faae1921d094fb7e49d8238.tar.gz"],
#        sha256 = "be8b82a14c21ee83b4ffafa95865195205d449537518b4dff0261def90c35a1c",
#        urls = ["https://github.com/kubernetes-sigs/kind/archive/78d1378ce7348c613faae1921d094fb7e49d8238"],
#        type = "tar.gz",
    )
#    _maybe(
#        go_repository,
#        name = "com_github_armon_go_radix",
#        commit = "1a2de0c21c94309923825da3df33a4381872c795",
#        importpath = "github.com/armon/go-radix",
#    )
#
#    _maybe(
#        go_repository,
#        name = "com_github_aws_aws_sdk_go",
#        commit = "f76d9803fd695eebf74cb23c460287fa496efc21",
#        importpath = "github.com/aws/aws-sdk-go",
#    )
#
#    _maybe(
#        go_repository,
#        name = "com_github_bgentry_go_netrc",
#        commit = "9fd32a8b3d3d3f9d43c341bfe098430e07609480",
#        importpath = "github.com/bgentry/go-netrc",
#    )
#
#    _maybe(
#        go_repository,
#        name = "com_github_boltdb_bolt",
#        commit = "2f1ce7a837dcb8da3ec595b1dac9d0632f0f99e8",
#        importpath = "github.com/boltdb/bolt",
#    )
#
#    _maybe(
#        go_repository,
#        name = "com_github_davecgh_go_spew",
#        commit = "8991bc29aa16c548c550c7ff78260e27b9ab7c73",
#        importpath = "github.com/davecgh/go-spew",
#    )
#
#    _maybe(
#        go_repository,
#        name = "com_github_emicklei_go_restful",
#        commit = "3eb9738c1697594ea6e71a7156a9bb32ed216cf0",
#        importpath = "github.com/emicklei/go-restful",
#    )
#
#    _maybe(
#        go_repository,
#        name = "com_github_evanphx_json_patch",
#        commit = "afac545df32f2287a079e2dfb7ba2745a643747e",
#        importpath = "github.com/evanphx/json-patch",
#    )
#
#    _maybe(
#        go_repository,
#        name = "com_github_ghodss_yaml",
#        commit = "0ca9ea5df5451ffdf184b4428c902747c2c11cd7",
#        importpath = "github.com/ghodss/yaml",
#    )
#
#    _maybe(
#        go_repository,
#        name = "com_github_go_openapi_jsonpointer",
#        commit = "ef5f0afec364d3b9396b7b77b43dbe26bf1f8004",
#        importpath = "github.com/go-openapi/jsonpointer",
#    )
#
#    _maybe(
#        go_repository,
#        name = "com_github_go_openapi_jsonreference",
#        commit = "8483a886a90412cd6858df4ea3483dce9c8e35a3",
#        importpath = "github.com/go-openapi/jsonreference",
#    )
#
#    _maybe(
#        go_repository,
#        name = "com_github_go_openapi_spec",
#        commit = "5bae59e25b21498baea7f9d46e9c147ec106a42e",
#        importpath = "github.com/go-openapi/spec",
#    )
#
#    _maybe(
#        go_repository,
#        name = "com_github_go_openapi_swag",
#        commit = "5899d5c5e619fda5fa86e14795a835f473ca284c",
#        importpath = "github.com/go-openapi/swag",
#    )
#
#    _maybe(
#        go_repository,
#        name = "com_github_gogo_protobuf",
#        commit = "636bf0302bc95575d69441b25a2603156ffdddf1",
#        importpath = "github.com/gogo/protobuf",
#    )
#
#    _maybe(
#        go_repository,
#        name = "com_github_golang_dep",
#        commit = "224a564abe296670b692fe08bb63a3e4c4ad7978",
#        importpath = "github.com/golang/dep",
#    )
#
#    _maybe(
#        go_repository,
#        name = "com_github_golang_glog",
#        commit = "23def4e6c14b4da8ac2ed8007337bc5eb5007998",
#        importpath = "github.com/golang/glog",
#    )
#
#    _maybe(
#        go_repository,
#        name = "com_github_golang_lint",
#        commit = "06c8688daad7faa9da5a0c2f163a3d14aac986ca",
#        importpath = "github.com/golang/lint",
#    )
#
#    _maybe(
#        go_repository,
#        name = "com_github_golang_protobuf",
#        commit = "aa810b61a9c79d51363740d207bb46cf8e620ed5",
#        importpath = "github.com/golang/protobuf",
#    )
#
#    _maybe(
#        go_repository,
#        name = "com_github_google_gofuzz",
#        commit = "24818f796faf91cd76ec7bddd72458fbced7a6c1",
#        importpath = "github.com/google/gofuzz",
#    )
#
#    _maybe(
#        go_repository,
#        name = "com_github_googleapis_gnostic",
#        commit = "7c663266750e7d82587642f65e60bc4083f1f84e",
#        importpath = "github.com/googleapis/gnostic",
#    )
#
#    _maybe(
#        go_repository,
#        name = "com_github_hashicorp_go_cleanhttp",
#        commit = "e8ab9daed8d1ddd2d3c4efba338fe2eeae2e4f18",
#        importpath = "github.com/hashicorp/go-cleanhttp",
#    )
#
#    _maybe(
#        go_repository,
#        name = "com_github_hashicorp_go_getter",
#        commit = "4bda8fa99001c61db3cad96b421d4c12a81f256d",
#        importpath = "github.com/hashicorp/go-getter",
#    )
#
#    _maybe(
#        go_repository,
#        name = "com_github_hashicorp_go_safetemp",
#        commit = "c9a55de4fe06c920a71964b53cfe3dd293a3c743",
#        importpath = "github.com/hashicorp/go-safetemp",
#    )
#
#    _maybe(
#        go_repository,
#        name = "com_github_hashicorp_go_version",
#        commit = "b5a281d3160aa11950a6182bd9a9dc2cb1e02d50",
#        importpath = "github.com/hashicorp/go-version",
#    )
#
#    _maybe(
#        go_repository,
#        name = "com_github_inconshreveable_mousetrap",
#        commit = "76626ae9c91c4f2a10f34cad8ce83ea42c93bb75",
#        importpath = "github.com/inconshreveable/mousetrap",
#    )
#
#    _maybe(
#        go_repository,
#        name = "com_github_jmank88_nuts",
#        commit = "8b28145dffc87104e66d074f62ea8080edfad7c8",
#        importpath = "github.com/jmank88/nuts",
#    )
#
#    _maybe(
#        go_repository,
#        name = "com_github_jmespath_go_jmespath",
#        commit = "0b12d6b5",
#        importpath = "github.com/jmespath/go-jmespath",
#    )
#
#    _maybe(
#        go_repository,
#        name = "com_github_json_iterator_go",
#        commit = "1624edc4454b8682399def8740d46db5e4362ba4",
#        importpath = "github.com/json-iterator/go",
#    )
#
#    _maybe(
#        go_repository,
#        name = "com_github_jteeuwen_go_bindata",
#        commit = "6025e8de665b31fa74ab1a66f2cddd8c0abf887e",
#        importpath = "github.com/jteeuwen/go-bindata",
#    )
#
#    _maybe(
#        go_repository,
#        name = "com_github_mailru_easyjson",
#        commit = "60711f1a8329503b04e1c88535f419d0bb440bff",
#        importpath = "github.com/mailru/easyjson",
#    )
#
#    _maybe(
#        go_repository,
#        name = "com_github_masterminds_semver",
#        commit = "3c92f33da7a84de8314f3ff82e5f919b89fd1492",
#        importpath = "github.com/Masterminds/semver",
#    )
#
#    _maybe(
#        go_repository,
#        name = "com_github_masterminds_vcs",
#        commit = "6f1c6d150500e452704e9863f68c2559f58616bf",
#        importpath = "github.com/Masterminds/vcs",
#    )
#
#    _maybe(
#        go_repository,
#        name = "com_github_mitchellh_go_homedir",
#        commit = "ae18d6b8b3205b561c79e8e5f69bff09736185f4",
#        importpath = "github.com/mitchellh/go-homedir",
#    )
#
#    _maybe(
#        go_repository,
#        name = "com_github_mitchellh_go_testing_interface",
#        commit = "6d0b8010fcc857872e42fc6c931227569016843c",
#        importpath = "github.com/mitchellh/go-testing-interface",
#    )
#
#    _maybe(
#        go_repository,
#        name = "com_github_modern_go_concurrent",
#        commit = "bacd9c7ef1dd9b15be4a9909b8ac7a4e313eec94",
#        importpath = "github.com/modern-go/concurrent",
#    )
#
#    _maybe(
#        go_repository,
#        name = "com_github_modern_go_reflect2",
#        commit = "4b7aa43c6742a2c18fdef89dd197aaae7dac7ccd",
#        importpath = "github.com/modern-go/reflect2",
#    )
#
#    _maybe(
#        go_repository,
#        name = "com_github_nightlyone_lockfile",
#        commit = "0ad87eef1443f64d3d8c50da647e2b1552851124",
#        importpath = "github.com/nightlyone/lockfile",
#    )
#
#    _maybe(
#        go_repository,
#        name = "com_github_pelletier_go_toml",
#        commit = "c01d1270ff3e442a8a57cddc1c92dc1138598194",
#        importpath = "github.com/pelletier/go-toml",
#    )
#
#    _maybe(
#        go_repository,
#        name = "com_github_pkg_errors",
#        commit = "645ef00459ed84a119197bfb8d8205042c6df63d",
#        importpath = "github.com/pkg/errors",
#    )
#
#    _maybe(
#        go_repository,
#        name = "com_github_puerkitobio_purell",
#        commit = "0bcb03f4b4d0a9428594752bd2a3b9aa0a9d4bd4",
#        importpath = "github.com/PuerkitoBio/purell",
#    )
#
#    _maybe(
#        go_repository,
#        name = "com_github_puerkitobio_urlesc",
#        commit = "de5bf2ad457846296e2031421a34e2568e304e35",
#        importpath = "github.com/PuerkitoBio/urlesc",
#    )
#
#    _maybe(
#        go_repository,
#        name = "com_github_sdboyer_constext",
#        commit = "836a144573533ea4da4e6929c235fd348aed1c80",
#        importpath = "github.com/sdboyer/constext",
#    )
#
#    _maybe(
#        go_repository,
#        name = "com_github_sirupsen_logrus",
#        commit = "3e01752db0189b9157070a0e1668a620f9a85da2",
#        importpath = "github.com/sirupsen/logrus",
#    )
#
#    _maybe(
#        go_repository,
#        name = "com_github_spf13_cobra",
#        commit = "ef82de70bb3f60c65fb8eebacbb2d122ef517385",
#        importpath = "github.com/spf13/cobra",
#    )
#
#    _maybe(
#        go_repository,
#        name = "com_github_spf13_pflag",
#        commit = "9a97c102cda95a86cec2345a6f09f55a939babf5",
#        importpath = "github.com/spf13/pflag",
#    )
#
#    _maybe(
#        go_repository,
#        name = "com_github_ulikunitz_xz",
#        commit = "0c6b41e72360850ca4f98dc341fd999726ea007f",
#        importpath = "github.com/ulikunitz/xz",
#    )
#
#    _maybe(
#        go_repository,
#        name = "in_gopkg_inf_v0",
#        commit = "d2d2541c53f18d2a059457998ce2876cc8e67cbf",
#        importpath = "gopkg.in/inf.v0",
#    )
#
#    _maybe(
#        go_repository,
#        name = "in_gopkg_yaml_v2",
#        commit = "5420a8b6744d3b0345ab293f6fcba19c978f1183",
#        importpath = "gopkg.in/yaml.v2",
#    )
#
#    _maybe(
#        go_repository,
#        name = "io_k8s_api",
#        commit = "6e4b5aa967ee9a03868e3b4edad98f27e54894c9",
#        importpath = "k8s.io/api",
#    )
#
#    _maybe(
#        go_repository,
#        name = "io_k8s_apimachinery",
#        commit = "4a9a8137c0a17bc4594f544987b3f0d48b2e3d3a",
#        importpath = "k8s.io/apimachinery",
#    )
#
#    _maybe(
#        go_repository,
#        name = "io_k8s_client_go",
#        commit = "23781f4d6632d88e869066eaebb743857aa1ef9b",
#        importpath = "k8s.io/client-go",
#    )
#
#    _maybe(
#        go_repository,
#        name = "io_k8s_code_generator",
#        commit = "405721ab9678fde04d78961eec9498820d80408d",
#        importpath = "k8s.io/code-generator",
#    )
#
#    _maybe(
#        go_repository,
#        name = "io_k8s_gengo",
#        commit = "fd15ee9cc2f77baa4f31e59e6acbf21146455073",
#        importpath = "k8s.io/gengo",
#    )
#
#    _maybe(
#        go_repository,
#        name = "io_k8s_klog",
#        commit = "a5bc97fbc634d635061f3146511332c7e313a55a",
#        importpath = "k8s.io/klog",
#    )
#
#    _maybe(
#        go_repository,
#        name = "io_k8s_kube_openapi",
#        commit = "3a9b63ab1e397dc12a9764df998f99bc59dfd9ae",
#        importpath = "k8s.io/kube-openapi",
#    )
#
#    _maybe(
#        go_repository,
#        name = "io_k8s_sigs_kustomize",
#        commit = "6a917c5f363c79fb4ffbca8c50f31f803bc3eb61",
#        importpath = "sigs.k8s.io/kustomize",
#    )
#
#    _maybe(
#        go_repository,
#        name = "io_k8s_sigs_yaml",
#        commit = "fd68e9863619f6ec2fdd8625fe1f02e7c877e480",
#        importpath = "sigs.k8s.io/yaml",
#    )
#
#    _maybe(
#        go_repository,
#        name = "io_k8s_utils",
#        commit = "0d26856f57b32ec3398579285e5c8a2bfe8c5243",
#        importpath = "k8s.io/utils",
#    )
#
#    _maybe(
#        go_repository,
#        name = "org_golang_x_crypto",
#        commit = "0e37d006457bf46f9e6692014ba72ef82c33022c",
#        importpath = "golang.org/x/crypto",
#    )
#
#    _maybe(
#        go_repository,
#        name = "org_golang_x_lint",
#        commit = "06c8688daad7faa9da5a0c2f163a3d14aac986ca",
#        importpath = "golang.org/x/lint",
#    )
#
#    _maybe(
#        go_repository,
#        name = "org_golang_x_net",
#        commit = "26e67e76b6c3f6ce91f7c52def5af501b4e0f3a2",
#        importpath = "golang.org/x/net",
#    )
#
#    _maybe(
#        go_repository,
#        name = "org_golang_x_sync",
#        commit = "1d60e4601c6fd243af51cc01ddf169918a5407ca",
#        importpath = "golang.org/x/sync",
#    )
#
#    _maybe(
#        go_repository,
#        name = "org_golang_x_sys",
#        commit = "d0be0721c37eeb5299f245a996a483160fc36940",
#        importpath = "golang.org/x/sys",
#    )
#
#    _maybe(
#        go_repository,
#        name = "org_golang_x_text",
#        commit = "f21a4dfb5e38f5895301dc265a8def02365cc3d0",
#        importpath = "golang.org/x/text",
#    )
#
#    _maybe(
#        go_repository,
#        name = "org_golang_x_tools",
#        commit = "677d2ff680c188ddb7dcd2bfa6bc7d3f2f2f75b2",
#        importpath = "golang.org/x/tools",
#    )



def _maybe(repo_rule, name, **kwargs):
    if name not in native.existing_rules():
        repo_rule(name = name, **kwargs)
