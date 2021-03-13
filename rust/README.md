Generation of `bazel` files using `raze`:
```bash
bazel run @cargo_raze//:raze -- --manifest-path=$(realpath Cargo.toml)
```

Running:
```bash
bazel run //hello_world:hello_world_binary
```
