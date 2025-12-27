class Zep < Formula
  desc "Fast package manager for Zig"
  homepage "https://github.com/XerWoho/zeP"
  license "GPLv3"

  on_macos do
    url "https://zep.run/releases/0.9.0/zep_x86_64-macos_0.9.0.tar.xz"
    sha256 "77abd0ec8c0bb6d42372c3b5b430165e2b48930596d7d2eb1af914bceae859b7"
  end

  on_linux do
    url "https://zep.run/releases/0.9.0/zep_x86_64-linux_0.9.0.tar.xz"
    sha256 "7410885b1fde6b7ac1ca0318f74e2292be1bc9b559edc92e9d11590be172c92d"
  end

  def install
    bin.install "zep" => "zep"
  end

    def post_install
		ohai "--- ZEP CONFIG REQUIRED ---"
		puts " ==> Run 'zep setup' to configure zep"
		puts " ==> Then run: zep zep install 0.9.0"
	end

  test do
    system "#{bin}/zep", "version"
  end
end
