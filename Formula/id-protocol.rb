class IdProtocol < Formula
  include Language::Python::Virtualenv

  desc "Portable human-AI context protocol reference tooling"
  homepage "https://github.com/markoblogo/ID"
  url "https://files.pythonhosted.org/packages/b9/ed/85a4598ad663eabbf68c7c8fd6a4d2b6df6684ff6a098fefd88fa4ad1121/id_protocol-0.2.8.tar.gz"
  sha256 "69189dbb1fc936d44631dfdd7b7cb7508ec1fc2bc2e03099e5b2bbda867ff028"
  license "MIT"

  depends_on "python@3.12"

  def install
    virtualenv_install_with_resources
  end

  test do
    output = shell_output("#{bin}/idctl --help")
    assert_match "usage", output.downcase
  end
end
