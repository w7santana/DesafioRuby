#language:pt
#utf-8

Funcionalidade: Filtro de unidades
    Eu como usuario quero filtrar as unidades de atendimento por facilidades oferecidas. Bem como ver sua página de detalhes.

    Cenario: Visualizar o nome da unidade filtrada

        Dado que eu acesso a pagina principal
        Quando clico em unidades
        E escolho as facilidades
        E clico em ver detalhes
        Entao visualizarei o nome da unidade no topo da tela