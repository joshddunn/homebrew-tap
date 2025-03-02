class Mux < Formula
  version "v0.1.5"
  sha256 "a338317fbb15a8e01871a915969125abf59f984a248e48154ba833e5c6b42a16"

  url "https://github.com/joshddunn/mux/releases/download/#{version}/mux"
  desc "Manage tmux sessions"
  homepage "https://github.com/joshddunn/mux"

  def install
    bin.install "mux"
    generate_completions_from_executable(bin/"mux", "completion", shells: [:zsh])
  end
end
