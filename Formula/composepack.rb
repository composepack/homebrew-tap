class Composepack < Formula
  desc "Helm-style templating and packaging for Docker Compose"
  homepage "https://github.com/composepack/composepack"
  version "0.0.5"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/composepack/composepack/releases/download/v0.0.5/composepack_v0.0.5_darwin_arm64.tar.gz"
      sha256 "10028f33f0b89f21a23aeb62b26f3f5bb1e350206f6bda3093ad16b053f586b9"
    else
      url "https://github.com/composepack/composepack/releases/download/v0.0.5/composepack_v0.0.5_darwin_amd64.tar.gz"
      sha256 "7e340ac7e9051fe38b10fa2b030adb95fc1052db92de84bd84118de547d2ea35"
    end
  end

  # Linux support when shas are provided
  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/composepack/composepack/releases/download/v0.0.5/composepack_v0.0.5_linux_arm64.tar.gz"
      sha256 "25b2523259b036cfc7a0ffbd7407a9b23e4eb2040834d4e27c800a40e83a8b9e"
    else
      url "https://github.com/composepack/composepack/releases/download/v0.0.5/composepack_v0.0.5_linux_amd64.tar.gz"
      sha256 "39f52d100e7d029ae17bb9efa174672d341d1be2c37a8d3e6f1336d95fd3de35"
    end
  end

  def install
    bin.install "composepack"
  end

  test do
    assert_match "composepack", shell_output("#{bin}/composepack version")
  end
end
