class AbvxSet < Formula
  include Language::Python::Virtualenv

  desc "SET workflow action helpers and registry tooling"
  homepage "https://github.com/markoblogo/SET"
  url "https://files.pythonhosted.org/packages/91/5c/41d65b145816c0e495174acc1d17d7b35972d0d2f43e31ae63163f718045/abvx_set-0.2.4.tar.gz"
  sha256 "b7168213eb5a11baf0a7e886441c1cd57f38fe5c16168b4f79e7178024d8c2a8"
  license "MIT"

  depends_on "python@3.12"

  def install
    virtualenv_install_with_resources
  end

  test do
    output = shell_output("#{bin}/set-plan-config-apply --help")
    assert_match "usage", output.downcase
  end
end
