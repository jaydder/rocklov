Dado('que acesso a página de cadastro') do
  visit "http://rocklov-web:3000/signup"
end

Quando('submeto o meu cadastro completo') do
  find('#fullName').set 'jaydder'
  find('#email').set 'jaydder@bol.com.br'
  find('#password').set 'pwd123'
  
  click_button 'Cadastrar'
end

Então('sou redirecionado para o Dashboard') do
  expect(page).to have_css '.dashboard'
end