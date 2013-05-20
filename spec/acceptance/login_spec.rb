# -*- encoding : utf-8 -*-
require 'spec_helper'

feature 'login and register' do
  
  scenario 'a guest user trying to register yourself' do
    visit rails_admin_path
    expect(page).to have_content 'Você precisa registrar-se ou fazer login para continuar.'

    expect { visit '/users/sign_up' }.to raise_error ActionController::RoutingError
  end

  context 'sign in' do
    scenario 'user' do
      user = create(:user)
      visit new_user_session_path

      fill_in 'Email', :with => user.email
      fill_in 'Senha', :with => user.password
      click_button 'Login'

      expect(page).to have_content 'Autenticado com sucesso.'
    end
  end
end