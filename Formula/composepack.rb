class Composepack < Formula
  desc "Helm-style templating and packaging for Docker Compose"
  homepage "https://github.com/composepack/composepack"
  version "0.0.4"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/composepack/composepack/releases/download/v0.0.4/composepack_v0.0.4_darwin_arm64.tar.gz"
      sha256 "55cc9466a3c19176027de5ce8a6446020a7550a090b633103594500e4e9d26df"
    else
      url "https://github.com/composepack/composepack/releases/download/v0.0.4/composepack_v0.0.4_darwin_amd64.tar.gz"
      sha256 "ad79e7205206e545f604593cef41ba04641934fc60245207f9ffa712fa09c2ca"
    end
  end

  # Linux support when shas are provided
  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/composepack/composepack/releases/download/v0.0.4/composepack_v0.0.4_linux_arm64.tar.gz"
      sha256 "fd1165b74ee8921f8a6371c3888b3045422cb41faf90112bf739c81940986e98"
    else
      url "https://github.com/composepack/composepack/releases/download/v0.0.4/composepack_v0.0.4_linux_amd64.tar.gz"
      sha256 "449a5e26cf6f8af0ef68c3b22e94acadc4a4569be368b9392ab5153aa24e6c98"
    end
  end

  def install
    bin.install "composepack"
  end

  test do
    assert_match "composepack", shell_output("#{bin}/composepack version")
  end
end
