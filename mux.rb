class Mux < Formula
  version "v0.1.0"
  sha256 "a94685619f4c15c23203705d152821c361c73e0e4671767a8ab5b53e1932db4c"

  url "https://github.com/joshddunn/mux/archive/refs/tags/#{version}.tar.gz"
  desc "Configure tmux sessions"
  homepage "https://github.com/joshddunn/mux"

  def install
    bin.install "mux"
  end
end
