class Jott < Formula
  desc "Minimal, terminal-centric markdown time tracker"
  homepage "https://github.com/k-cogswell/jott"
  url "https://github.com/k-cogswell/jott/archive/refs/tags/1.1.1.tar.gz"
  sha256 "540a6ccc57b264f757868b455690a8c31349ebc72cf37c20936e52b490f6036d"
  license "MIT"

  def install
    # 1. Install all structural resource libraries into Homebrew's internal cellar space
    libexec.install Dir["*"]
    
    # 2. Automatically generate an optimized executable runtime symlink inside /opt/homebrew/bin/
    bin.write_exec_script libexec/"jott"
  end
end
