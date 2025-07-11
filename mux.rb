class Mux < Formula
  version "v0.1.11"

  url "https://github.com/joshddunn/mux/archive/refs/tags/#{version}.tar.gz"
  sha256 "dc517f144c06d7afc5bb65cce4433bfd3e4c6f53f10abeef12099801c2269aa5"
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
