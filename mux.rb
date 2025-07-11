class Mux < Formula
  version "v0.1.11"

  url "https://github.com/joshddunn/mux/archive/refs/tags/#{version}.tar.gz"
  sha256 "0f96ba4d3578180c08aee7c227ca170ab56c1cd2d5b77b5c9ce4d6608efcdf1e"
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
