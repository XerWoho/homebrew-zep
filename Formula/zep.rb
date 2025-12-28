class Zep < Formula
  desc "Fast package manager for Zig"
  homepage "https://github.com/XerWoho/zeP"
  license "GPLv3"

  on_macos do
    url "https://zep.run/releases/0.9.0/zep_x86_64-macos_0.9.0.tar.xz"
    sha256 "ac13f031ccdb05664a332dcbd69f6ce82e9587906dabcd43a81cfde3af04bf4c"
  end

  on_linux do
    url "https://zep.run/releases/0.9.0/zep_x86_64-linux_0.9.0.tar.xz"
    sha256 "9e1e516e35b693bf36b9f21eac9f42298f9d34a9f90d91fb968d5c165e54a326"
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
