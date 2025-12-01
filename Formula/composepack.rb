class Composepack < Formula
  desc "Helm-style templating and packaging for Docker Compose"
  homepage "https://github.com/composepack/composepack"
  version "0.0.5"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/composepack/composepack/releases/download/v0.0.5/composepack_v0.0.5_darwin_arm64.tar.gz"
      sha256 "3507c607d49ac55ea35f240b1b528a4eac5899f037a1e647b05193bff0bba3e9"
    else
      url "https://github.com/composepack/composepack/releases/download/v0.0.5/composepack_v0.0.5_darwin_amd64.tar.gz"
      sha256 "d03e769745c04735543bb8f880400e3c395ba20f89fef541640694acbab915ff"
    end
  end

  # Linux support when shas are provided
  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/composepack/composepack/releases/download/v0.0.5/composepack_v0.0.5_linux_arm64.tar.gz"
      sha256 "3190f847f9e99b2045cd4858fad6031db7395e1dd984f24f34cdf038b40625e4"
    else
      url "https://github.com/composepack/composepack/releases/download/v0.0.5/composepack_v0.0.5_linux_amd64.tar.gz"
      sha256 "fa899dfa25cd22ddc79050a78f09b0042db6d08c4d5f5e3c3f9880f0091392e1"
    end
  end

  def install
    bin.install "composepack"
  end

  test do
    assert_match "composepack", shell_output("#{bin}/composepack version")
  end
end
