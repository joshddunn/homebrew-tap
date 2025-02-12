class Mux < Formula
  version "v0.1.1"
  sha256 "0e66b773cfbf4871b00240f291413311375fef356c53adb471f68b15d6a089a6"

  url "https://github.com/joshddunn/mux/archive/refs/tags/#{version}.tar.gz"
  desc "Configure tmux sessions"
  homepage "https://github.com/joshddunn/mux"

  def install
    bin.install "mux"
  end
end
