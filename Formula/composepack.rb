class Composepack < Formula
  desc "Helm-style templating and packaging for Docker Compose"
  homepage "https://github.com/composepack/composepack"
  version "0.0.5"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/composepack/composepack/releases/download/v0.0.5/composepack_v0.0.5_darwin_arm64.tar.gz"
      sha256 "6390c433fc84edb9a09242303e2c73c379c765dc9279d55bf5f3228689dce1a4"
    else
      url "https://github.com/composepack/composepack/releases/download/v0.0.5/composepack_v0.0.5_darwin_amd64.tar.gz"
      sha256 "f9f112665d3103f7d85325e75cec289c83ac841308d760fb50c662da2cf3a59e"
    end
  end

  # Linux support when shas are provided
  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/composepack/composepack/releases/download/v0.0.5/composepack_v0.0.5_linux_arm64.tar.gz"
      sha256 "9088d281daaf32246a1a7c83c16198fd2126296299ad852b86e957541d89e0c7"
    else
      url "https://github.com/composepack/composepack/releases/download/v0.0.5/composepack_v0.0.5_linux_amd64.tar.gz"
      sha256 "102ecd7d0739e74d51768c6d0b70ff8cb3cff05cacf6e586c87d99f5ddcc4db5"
    end
  end

  def install
    bin.install "composepack"
  end

  test do
    assert_match "composepack", shell_output("#{bin}/composepack version")
  end
end
