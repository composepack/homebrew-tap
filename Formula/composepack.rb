class Composepack < Formula
  desc "Helm-style templating and packaging for Docker Compose"
  homepage "https://github.com/composepack/composepack"
  version "0.0.3"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/composepack/composepack/releases/download/v0.0.3/composepack_v0.0.3_darwin_arm64.tar.gz"
      sha256 "648833e3a47afd7e52d2df77d63c3e43d5f37671f15e3901d8525de8b825387d"
    else
      url "https://github.com/composepack/composepack/releases/download/v0.0.3/composepack_v0.0.3_darwin_amd64.tar.gz"
      sha256 "f5d0e4c15a55e348b47b940899fe8556c1e9f0c1d76efb17153da5d55666f742"
    end
  end

  def install
    bin.install "composepack"
  end

  test do
    assert_match "composepack", shell_output("#{bin}/composepack version")
  end
end
