Dado('que eu acesso a pagina principal') do
  visit 'https://www.fleury.com.br/'
end

Quando('clico em unidades') do
  home = HomePage.new
  home.clica_Unidades
end

Quando('escolho as facilidades') do
    unidadesPage = UnidadesPage.new
    unidadesPage.clica_filtro_selecione
    unidadesPage.seleciona_facilidade('_Vacinação')
  end
  
  Quando('clico em ver detalhes') do
    unidadesPage = UnidadesPage.new
    unidadesPage.clica_ver_detalhes
  end
  
  Entao('visualizarei o nome da unidade no topo da tela') do
    expect(page).to have_css('h1', text: 'Alphaville')
  end