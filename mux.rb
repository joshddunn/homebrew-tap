class Mux < Formula
  version "v0.1.12"

  url "https://github.com/joshddunn/mux/archive/refs/tags/#{version}.tar.gz"
  sha256 "c0680df9feeb6bfbe3401e61cbf4c329ea28fa563ad68dad5a6b7a69db418c7d"
  desc "Manage tmux sessions"
  homepage "https://github.com/joshddunn/mux"

  depends_on "go" => :build

  def install
    ldflags = %W[
      -X main.version=#{version}
    ]

    system "go", "build", "-o", "mux", *std_go_args(ldflags: ldflags)

    generate_completions_from_executable(bin/"mux", "completion", shells: [:zsh])
  end
end
