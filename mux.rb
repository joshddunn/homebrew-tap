class Mux < Formula
  version "v0.1.5"
  sha256 "7f6c36e585b694fedacf5f65a16af40a3b249d1982668c8e7384dd3c2e390ae1"

  url "https://github.com/joshddunn/mux/releases/download/#{version}/mux"
  desc "Manage tmux sessions"
  homepage "https://github.com/joshddunn/mux"

  def install
    bin.install "mux"
    generate_completions_from_executable(bin/"mux", "completion")
  end
end
