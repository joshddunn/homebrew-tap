class Mux < Formula
  version "v0.1.0"
  sha256" b3637495314201cbea6266ff8d1b4c0f6a7fd8390e20f0a5683f6430249d0fa4"

  url "https://github.com/joshddunn/mux/archive/refs/tags/#{version}.tar.gz"
  name "mux"
  desc "Configure tmux sessions"
  homepage "https://github.com/joshddunn/mux"

  def install
    bin.install "mux"
  end
end
