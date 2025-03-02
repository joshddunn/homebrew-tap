class Mux < Formula
  version "v0.1.5"
  sha256 "0419f98d00425b6967cf3ba1b603ddb90e1b1a02dcd8fdfbd6f6185b6f722aeb"

  url "https://github.com/joshddunn/mux/releases/download/#{version}/mux"
  desc "Manage tmux sessions"
  homepage "https://github.com/joshddunn/mux"

  def install
    bin.install "mux"
    # generate_completions_from_executable(bin/"mux", "completion", shells: [:zsh])
  end
end
