# -*- encoding : utf-8 -*-
require 'spec_helper'

feature 'login and register' do
  
  scenario 'a guest user trying to register yourself' do
    visit '/admin'
    expect(page).to have_content 'Você precisa registrar-se ou fazer login para continuar.'

    expect { visit '/users/sign_up' }.to raise_error ActionController::RoutingError
  end

  scenario 'an user trying to sign in' do
    user = create(:user)
    visit '/admin'

    fill_in 'Email', :with => user.email
    fill_in 'Password', :with => user.password
    click_button 'Entrar'

    expect(page).to have_content 'Autenticado com sucesso.'
  end

end