class Mux < Formula
  version "v0.1.9"

  url "https://github.com/joshddunn/mux.git",
    tag: version,
    revision: "13a4ec0a279ee046760b71b8b334e8a0887d3af6"
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
