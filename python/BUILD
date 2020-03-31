load("@my_deps//:requirements.bzl", "requirement")

py_binary(
    name = "example",
    srcs = glob([
        "src/*.py",
    ]),
    deps = [
        requirement("requests"),
    ],
)

py_test(
    name = "unit",
    srcs = glob([
        "test/*.py",
    ]),
    data = ["test/input_data.txt"],
    imports = ["src"],
    deps = [":example"],
)
