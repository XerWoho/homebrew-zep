class Zep < Formula
  desc "Fast package manager for Zig"
  homepage "https://github.com/XerWoho/zeP"
  license "GPLv3"

  on_macos do
    url "https://zep.run/releases/1.0.1/zep_x86_64-macos_1.0.1.tar.xz"
    sha256 "3fc60fa709277b3089e9fdf6469ea2a3dfb06c15a2715eead31517896ff7621e"
  end

  on_linux do
    url "https://zep.run/releases/1.0.1/zep_x86_64-linux_1.0.1.tar.xz"
    sha256 "1d4f37dd54a8f6b2b11bf038e793ed335152b65b8362426352ff7cc14271262f"
  end

  def install
    bin.install "zep" => "zep"
  end

    def post_install
		ohai "--- ZEP CONFIG REQUIRED ---"
		puts " ==> Run 'zep setup' to configure zep"
		puts " ==> Then run: zep zep install 1.0.1"
	end

  test do
    system "#{bin}/zep", "version"
  end
end
