"""Provides the repository macro to import Eigen."""

load("//third_party:repo.bzl", "tf_http_archive")

def repo():
    """Imports Eigen."""

    tf_http_archive(
        name = "eigen_archive",
        build_file = "//third_party/eigen3:eigen_archive.BUILD",
        sha256 = "27c5300c6e1e2004e6965f64483e3b1fe8e4a7218066ce1dd15bc7c3e19ec629",
        strip_prefix = "eigen-3.4.0-rc1-reverted",
        urls = [
            "https://storage.googleapis.com/mirror.tensorflow.org/github.com/maxiwell/eigen/archive/3.4.0-rc1-reverted.zip",
            "https://github.com/maxiwell/eigen/archive/3.4.0-rc1-reverted.zip",
        ],
    )
