class Mux < Formula
  version "v0.1.13"

  url "https://github.com/joshddunn/mux/archive/refs/tags/#{version}.tar.gz"
  sha256 "e26b2d993d5df414fec98539a45f54f016f2e4b3e9115d3bb99910c817a81cd4"
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
