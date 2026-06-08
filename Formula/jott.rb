class Jott < Formula
  desc "Minimal, terminal-centric markdown time tracker"
  homepage "https://github.com/k-cogswell/jott"
  url "https://github.com/k-cogswell/jott/archive/refs/tags/1.1.0.tar.gz"
  sha256 "abbb87d1bfa180ec2de235731e1205a6e3210cf309eae1b252b02524eecc5d13"
  license "MIT"

  def install
    # 1. Install all structural resource libraries into Homebrew's internal cellar space
    libexec.install Dir["*"]
    
    # 2. Automatically generate an optimized executable runtime symlink inside /opt/homebrew/bin/
    bin.write_exec_script libexec/"jott"
  end
end
