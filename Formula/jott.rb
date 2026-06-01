class Jott < Formula
  desc "Minimal, terminal-centric markdown time tracker"
  homepage "https://github.com/k-cogswell/jott"
  url "https://github.com/k-cogswell/jott/archive/refs/tags/1.0.0.tar.gz"
  sha256 "96725f58217cb50a1d283f8afe94b2830a4b46aba1a1ca6ab0fcecfb042a1e98"
  license "MIT"

  def install
    # 1. Install all structural resource libraries into Homebrew's internal cellar space
    libexec.install Dir["*"]
    
    # 2. Automatically generate an optimized executable runtime symlink inside /opt/homebrew/bin/
    bin.write_exec_script libexec/"jott"
  end
end
