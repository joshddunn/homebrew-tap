class Mux < Formula
  version "v0.1.5"
  sha256 "a45d85b39499be5bf92fa49ae8f6a1f174c5dcac59078b2c1daa287dcc6ea1b7"

  url "https://github.com/joshddunn/mux/releases/download/#{version}/mux"
  desc "Manage tmux sessions"
  homepage "https://github.com/joshddunn/mux"

  def install
    bin.install "mux"
    generate_completions_from_executable(bin/"mux", "completion")
  end
end
