# Classe que representa os objetos da pagina principal do google
class GooglePage < SitePrism::Page
  set_url 'https://www.google.com'

  element :campo_pesquisa, "input[id='lst-ib']"
  element :btn_pesquisar, "input[name='btnK']"

  def pesquisar(pesquisa)
    campo_pesquisa.set pesquisa
    btn_pesquisar.click
  end
end
