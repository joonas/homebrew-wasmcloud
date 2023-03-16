class Wash < Formula
  desc "WAsmcloud SHell - a comprehensive command-line tool for wasmCloud development"
  homepage "https://wasmcloud.com"
  url "https://github.com/wasmCloud/wash/archive/v0.16.2.tar.gz"
  sha256 "3aeee30290424bc6f50dc4013c704a69adb78309906572eaa67881b6b2f3298f"
  license "Apache-2.0"

  bottle do
    root_url "https://github.com/wasmCloud/homebrew-wasmcloud/releases/download/wash-0.16.2"
    sha256 cellar: :any_skip_relocation, big_sur:      "3f1d9191475a6d7aba808a4f08cea849554753ccf410b1e2ff2bfa3a080e866d"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "242a052f6561d53970c95b3cf5b65751435d7e4c2377c2c56d3c16f056283818"
  end

  depends_on "rust"

  on_linux do
    depends_on "zlib"
  end

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "#{bin}/wash", "-V"
  end
end
