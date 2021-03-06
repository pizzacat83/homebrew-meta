class Node_ < Formula
  desc "Node.js ecosystem"
  homepage "https://github.com/pizzacat83/homebrew-meta"
  url "file:///dev/null"
  version "0.1.0"
  sha256 "e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855"

  keg_only "this is a meta-formulae"

  depends_on "nvm"

  def install
    system "touch dummy"
    info.install "dummy"
    ohai "nvm is not available in fish.\n"\
    "run `fisher add jorgebucaran/fish-nvm` to enable."
  end

  test do
    # `test do` will create, run in and delete a temporary directory.
    #
    # This test will fail and we won't accept that! For Homebrew/homebrew-core
    # this will need to be a test that verifies the functionality of the
    # software. Run the test with `brew test node_`. Options passed
    # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
    #
    # The installed folder is not in the path, so use the entire path to any
    # executables being tested: `system "#{bin}/program", "do", "something"`.
    system "false"
  end
end
