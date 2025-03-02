class Mux < Formula
  version "v0.1.9"

  url "https://github.com/joshddunn/mux/archive/refs/tags/#{version}.tar.gz"
  sha256 "f4a4c52389ae822e5a9c84d9901c1c38a3c133643ad3f091b7cce4441ba8e001"
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
