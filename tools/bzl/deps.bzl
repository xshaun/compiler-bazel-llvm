load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")


def llvm_deps():
  """Pull in dependencies of LLVM workspace.

  This function should be loaded and run from your WORKSPACE file:
    load("@llvm//tools/bzl:deps.bzl", "llvm_deps")
    llvm_deps()
  """

  # todo
  # sed -i s/clang-llvm-10.0.0-x86_64-linux-gnu-ubuntu-18.04/clang-llvm-10.0.1-rc1-x86_64-pc-linux-gnu/g `grep -rl "clang-llvm-10.0.0-x86_64-linux-gnu-ubuntu-18.04" ./`
  #
  # clang+llvm-10.0.1-rc1-x86_64-pc-linux-gnu is also for ubuntu?
  #
  http_archive(
    name="clang-llvm-10.0.1-rc1-x86_64-pc-linux-gnu",
    build_file="@llvm//:llvm_linux.BUILD",
    sha256="5145c89d788b1180d532101e6142b8c78424b6431e9376c41b02ebec776a8335",
    strip_prefix="clang+llvm-10.0.1-rc1-x86_64-pc-linux-gnu", 
    urls=[
      "https://github.com/llvm/llvm-project/releases/download/llvmorg-10.0.1-rc1/clang+llvm-10.0.1-rc1-x86_64-pc-linux-gnu.tar.xz"
    ],
  )

  # for centos, sles, fedora, red hat
  http_archive(
    name="clang-llvm-10.0.0-x86_64-linux-rpm",
    build_file="@llvm//:llvm_linux.BUILD",
    sha256="a7a3c2a7aff813bb10932636a6f1612e308256a5e6b5a5655068d5c5b7f80e86",
    strip_prefix="clang+llvm-10.0.0-x86_64-linux-sles11.3", 
    urls=[
        "https://github.com/llvm/llvm-project/releases/download/llvmorg-10.0.0/clang+llvm-10.0.0-x86_64-linux-sles11.3.tar.xz"
    ],
  )

  # try conda-contos-x86_64
  http_archive(
    name="clang-llvm-10.0.0-conda-centos-x86_64",
    build_file="@llvm//:llvm_linux.BUILD",
    sha256="77bf34be4fbe639740525b19bf41c936e5c624be1fd6fbddcf46094c2648e4f4",
    strip_prefix="clang-llvm-10.0.0-conda-centos-x86_64", 
    urls=[
        "https://github.com/xshaun/compiler-bazel-llvm/releases/download/v0.2-alpha/clang-llvm-10.0.0-conda-centos-x86_64.tar.xz"
    ],
  )

  http_archive(
    name="clang-llvm-10.0.0-x86_64-apple-darwin",
    build_file="@llvm//:llvm_macos.BUILD",
    sha256="633a833396bf2276094c126b072d52b59aca6249e7ce8eae14c728016edb5e61",
    strip_prefix="clang+llvm-10.0.0-x86_64-apple-darwin",
    urls=[
      "https://github.com/llvm/llvm-project/releases/download/llvmorg-10.0.0/clang+llvm-10.0.0-x86_64-apple-darwin.tar.xz"
    ],
  )

  http_archive(
    name="clang-llvm-10.0.0-x86_64-linux-gnu-ubuntu-18.04",
    build_file="@llvm//:llvm_linux.BUILD",
    sha256="b25f592a0c00686f03e3b7db68ca6dc87418f681f4ead4df4745a01d9be63843",
    strip_prefix="clang+llvm-10.0.0-x86_64-linux-gnu-ubuntu-18.04",
    urls=[
      "https://github.com/llvm/llvm-project/releases/download/llvmorg-10.0.0/clang+llvm-10.0.0-x86_64-linux-gnu-ubuntu-18.04.tar.xz"
    ],
  )

  http_archive(
    name="clang-llvm-6.0.0-x86_64-apple-darwin",
    build_file="//:llvm_macos.BUILD",
    sha256="0ef8e99e9c9b262a53ab8f2821e2391d041615dd3f3ff36fdf5370916b0f4268",
    strip_prefix="clang+llvm-6.0.0-x86_64-apple-darwin",
    urls=[
      "https://releases.llvm.org/6.0.0/clang+llvm-6.0.0-x86_64-apple-darwin.tar.xz"
    ],
  )

  http_archive(
    name="clang-llvm-6.0.0-x86_64-linux-gnu-ubuntu-16.04",
    build_file="//:llvm_linux.BUILD",
    sha256="cc99fda45b4c740f35d0a367985a2bf55491065a501e2dd5d1ad3f97dcac89da",
    strip_prefix="clang+llvm-6.0.0-x86_64-linux-gnu-ubuntu-16.04",
    urls=[
      "https://releases.llvm.org/6.0.0/clang+llvm-6.0.0-x86_64-linux-gnu-ubuntu-16.04.tar.xz"
    ],
  )
