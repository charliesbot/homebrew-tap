class Tingle < Formula
  desc "Orientation map for AI agents"
  homepage "https://github.com/charliesbot/tingle"
  version "0.1.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/charliesbot/tingle/releases/download/v0.1.2/tingle-0.1.2-aarch64-apple-darwin.tar.gz"
      sha256 "742615a9fbb0ce5e82c2b15ea1b3f98b1638283da796db02521e97074f853736"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/charliesbot/tingle/releases/download/v0.1.2/tingle-0.1.2-aarch64-unknown-linux-musl.tar.gz"
      sha256 "0f9adcae2a1ea1792de5a8049cee8720fc211fdf31f8fa7c2a574e638a58ba18"
    end
    on_intel do
      url "https://github.com/charliesbot/tingle/releases/download/v0.1.2/tingle-0.1.2-x86_64-unknown-linux-musl.tar.gz"
      sha256 "dbc20bd5e0d9acf9905e07ee256462342c907e8900c979b138d5cf2a6014bee9"
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
