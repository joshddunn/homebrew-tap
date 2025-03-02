class Mux < Formula
  version "v0.1.5"
  sha256 "ba9ce6bc0c66dff00be74902105e11cef0110b735b80b002bf6ca2214906930b"

  url "https://github.com/joshddunn/mux/releases/download/#{version}/mux"
  desc "Manage tmux sessions"
  homepage "https://github.com/joshddunn/mux"

  def install
    bin.install "mux"
    generate_completions_from_executable(bin/"mux", "completion", shells: [:zsh])
  end
end
