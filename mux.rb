class Mux < Formula
  version "v0.1.5"
  sha256 "246b59a70d18d3b0d63d7af61e4d720db5684cc90c953f293325160271cb52d7"

  url "https://github.com/joshddunn/mux/releases/download/#{version}/mux"
  desc "Manage tmux sessions"
  homepage "https://github.com/joshddunn/mux"

  def install
    bin.install "mux"
    zsh_completion.install "completion/zsh/_mux" => "_mux"
  end
end
