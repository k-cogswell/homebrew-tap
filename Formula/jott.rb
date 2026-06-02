class Jott < Formula
  desc "Minimal, terminal-centric markdown time tracker"
  homepage "https://github.com/k-cogswell/jott"
  url "https://github.com/k-cogswell/jott/archive/refs/tags/1.0.1.tar.gz"
  sha256 "6127ad4546a34b595fee0266d27b8ff7306f00313a9b70fe26e86b7f431619e5"
  license "MIT"

  def install
    # 1. Install all structural resource libraries into Homebrew's internal cellar space
    libexec.install Dir["*"]
    
    # 2. Automatically generate an optimized executable runtime symlink inside /opt/homebrew/bin/
    bin.write_exec_script libexec/"jott"
  end
end
