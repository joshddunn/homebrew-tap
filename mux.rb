class Mux < Formula
  version "v0.1.5"
  sha256 "6f54aaab3cb054223cc402d4be2410726f639c8215534c4a6a0fdc26856e73c6"

  url "https://github.com/joshddunn/mux/releases/download/#{version}/mux"
  desc "Manage tmux sessions"
  homepage "https://github.com/joshddunn/mux"

  def install
    bin.install "mux"
    generate_completions_from_executable("mux", "completion")
  end
end
