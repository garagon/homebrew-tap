class Aguara < Formula
  desc "Security scanner for AI agent skills and MCP servers"
  homepage "https://github.com/garagon/aguara"
  version "0.6.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/garagon/aguara/releases/download/v#{version}/aguara_#{version}_darwin_arm64.tar.gz"
      sha256 "af783d8d6460ea9fe95c88db7e4ee18c6e0d90c987800878571820e705d241f7"
    end
    on_intel do
      url "https://github.com/garagon/aguara/releases/download/v#{version}/aguara_#{version}_darwin_amd64.tar.gz"
      sha256 "2781c689dadcf122a3712426cdcde2a1f4cadd18e033a38c13b66c456ec0214c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/garagon/aguara/releases/download/v#{version}/aguara_#{version}_linux_arm64.tar.gz"
      sha256 "7fb9add0bef88c8203af0e315c2b8b287718b7c5dd8cce6114795ab0db80bd30"
    end
    on_intel do
      url "https://github.com/garagon/aguara/releases/download/v#{version}/aguara_#{version}_linux_amd64.tar.gz"
      sha256 "5050558a5e5227689df5fd34e281341598fcca7289dbb78821e05bf10ee11bd2"
    end
  end

  def install
    bin.install "aguara"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/aguara version")
  end
end
