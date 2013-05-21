# -*- encoding : utf-8 -*-
require 'spec_helper'

feature 'login and register' do
  
  scenario 'a guest user trying to register yourself' do
    visit rails_admin_path
    expect(page).to have_content 'Você precisa registrar-se ou fazer login para continuar.'

    expect { visit '/users/sign_up' }.to raise_error ActionController::RoutingError
  end

  context 'sign in' do
    scenario 'comum user' do
      user = create(:user)
      visit new_user_session_path

      fill_in 'Email', :with => user.email
      fill_in 'Senha', :with => user.password
      click_button 'Login'

      expect(page).to have_content 'Autenticado com sucesso.'
      expect(current_path).to eq(root_path)

      expect { visit rails_admin_path }.to raise_error CanCan::AccessDenied
    end

    scenario 'admin' do
      user = create(:admin)
      visit rails_admin_path

      fill_in 'Email', :with => user.email
      fill_in 'Senha', :with => user.password
      click_button 'Login'

      expect(page).to have_content 'Autenticado com sucesso.'
      expect { visit rails_admin_path }.not_to raise_error CanCan::AccessDenied
      expect(current_path).to eq(rails_admin_path)
    end
  end
end