Dado('que o usuário esteja na pagina inicial do google') do
  @google_page = GooglePage.new
  @google_page.load
end

Quando('realizar a pesquisa {string}') do |pesquisa|
  @google_page.pesquisar(pesquisa)
  @pesquisa = pesquisa
end

Então('sistema deve retornar os resultados de acordo com o que foi pesquisado') do
  expect(page).to have_content @pesquisa
end
