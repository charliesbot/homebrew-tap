class Tingle < Formula
  desc "Orientation map for AI agents"
  homepage "https://github.com/charliesbot/tingle"
  version "0.1.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/charliesbot/tingle/releases/download/v0.1.1/tingle-0.1.1-aarch64-apple-darwin.tar.gz"
      sha256 "bd4e2ab3c0a1063841045f1446431ad76eab7bbe31d7567ab9863935af5b1863"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/charliesbot/tingle/releases/download/v0.1.1/tingle-0.1.1-aarch64-unknown-linux-musl.tar.gz"
      sha256 "5cec91633e61a4aba276a4077566ea87fa790825c9e6cc196793b83912326951"
    end
    on_intel do
      url "https://github.com/charliesbot/tingle/releases/download/v0.1.1/tingle-0.1.1-x86_64-unknown-linux-musl.tar.gz"
      sha256 "e138f4218cf498a8bb48458606cc91e743f694dbc9dbae9fb261db36067d3675"
    end
  end

  uses_from_macos "git"

  def install
    bin.install "tingle"
  end

  test do
    system bin/"tingle", "--version"
  end
end
