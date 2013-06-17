# -*- encoding : utf-8 -*-
require 'spec_helper'

feature 'Manage classroom' do
  background do
    login_as create(:admin)
  end

  context 'new' do
    before :each do
      visit '/admin/classroom/new'
      expect(page).to have_content 'Novo(a) Turma'
    end

    scenario 'successfully' do
      discipline = create(:discipline, name: 'Programação 1')

      #TODO: fazer esse select funcionar
      # expect(page).to have_content discipline.name
      # select discipline.name, from: 'Disciplina'

      fill_in 'Nome', with: 'Turma A'
      fill_in 'Vagas', with: 4

      click_button 'Gravar'
      expect(page).to have_content 'Turma criado(a) com sucesso'
    end

    scenario 'failure', js: true do
      click_button 'Gravar'

      # expect(page).to have_content 'Disciplina não pode ficar em branco'
      expect(page).to have_content 'Vagas não pode ficar em branco'
      expect(page).not_to have_content 'Turma criado(a) com sucesso'
    end
  end
end