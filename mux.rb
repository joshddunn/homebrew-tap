class Mux < Formula
  version "v0.1.3"
  sha256 "bb2c51954f93da27fd292e8a6235e7194de8cdde8171b15d26e5abf2dc435d1c"

  url "https://github.com/joshddunn/mux/archive/refs/tags/#{version}.tar.gz"
  desc "Configure tmux sessions"
  homepage "https://github.com/joshddunn/mux"

  def install
    bin.install "mux"
  end
end
