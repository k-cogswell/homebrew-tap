class Jott < Formula
  desc "Minimal, terminal-centric markdown time tracker"
  homepage "https://github.com/k-cogswell/jott"
  url "https://github.com/k-cogswell/jott/archive/refs/tags/1.1.2.tar.gz"
  sha256 "75350854695b7744ee89065713a6ec5657da0e3b229bc5e1f299e7e1650e9669"
  license "MIT"

  def install
    # 1. Install all structural resource libraries into Homebrew's internal cellar space
    libexec.install Dir["*"]
    
    # 2. Automatically generate an optimized executable runtime symlink inside /opt/homebrew/bin/
    bin.write_exec_script libexec/"jott"
  end
end
