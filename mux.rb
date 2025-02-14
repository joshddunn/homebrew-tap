class Mux < Formula
  version "v0.1.2"
  sha256 "5fa9f1ad234094c85d48f6aa26d53495a015cf61491835121158401b1837fe02"

  url "https://github.com/joshddunn/mux/archive/refs/tags/#{version}.tar.gz"
  desc "Configure tmux sessions"
  homepage "https://github.com/joshddunn/mux"

  def install
    bin.install "mux"
  end
end
