class Mux < Formula
  version "v0.1.5"
  sha256 "267a60c34c78a9e0f03f1f489fac62f2f5220e5f736da160f328b4b3106b3f3a"

  url "https://github.com/joshddunn/mux/releases/download/#{version}/mux"
  desc "Manage tmux sessions"
  homepage "https://github.com/joshddunn/mux"

  def install
    bin.install "mux"
    generate_completions_from_executable(bin/"mux", "completion")
  end
end
