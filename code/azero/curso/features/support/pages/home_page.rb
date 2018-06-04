
# PopupSection representa o modal ou popup de mensagens do sistema
class PopupSection < SitePrism::Section
  element :titulo, '.swal2-title'
  element :conteudo, '.swal2-content'
  element :botao_ok, '.swal2-confirm'
end

# HomePage representa a pagina principal
class HomePage < SitePrism::Page
  element :menu_usuario, 'nav #navbarDropdown'

  section :popup, PopupSection, '.swal2-popup'
end
