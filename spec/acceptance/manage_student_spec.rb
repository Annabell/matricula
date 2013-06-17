# -*- encoding : utf-8 -*-
require 'spec_helper'

feature 'Manage student' do
  background do
    login_as create(:admin)
  end

  context 'new' do
    before :each do
      visit '/admin/student/new'
      expect(page).to have_content 'Novo(a) Aluno'
    end

    scenario 'successfully' do
      fill_in 'Matrícula', with: '01'
      fill_in 'Nome', with: 'Luke'
      fill_in 'Email', with: 'luke@jedi.com'
      fill_in 'Senha', with: '12345678'
      fill_in 'Confirmação da senha', with: '12345678'

      click_button 'Gravar'
      expect(page).to have_content 'Aluno criado(a) com sucesso'
    end

    scenario 'failure', js: true do
      click_button 'Gravar'

      expect(page).to have_content 'Matrícula não pode ficar em branco'
      expect(page).to have_content 'Nome não pode ficar em branco'
      expect(page).to have_content 'Email não pode ficar em branco'
      expect(page).to have_content 'Senha não pode ficar em branco'
      expect(page).not_to have_content 'Aluno criado(a) com sucesso'
    end
  end
end