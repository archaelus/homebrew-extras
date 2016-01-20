class Rustfmt < Formula
  desc "Rust source code auto-formatter"
  homepage "https://github.com/rust-lang-nursery/rustfmt"
  head "https://github.com/rust-lang-nursery/rustfmt.git"
  version = "0.2.1"

  depends_on "rust" => :build
  depends_on "openssl"

  def install
    system "cargo", "build", "--release"
    bin.install Dir["target/release/cargo-fmt"]
    bin.install Dir["target/release/rustfmt"]
  end

  test do
    system "rustfmt", "-V"
  end
end
