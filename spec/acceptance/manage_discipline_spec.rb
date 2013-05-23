# -*- encoding : utf-8 -*-
require 'spec_helper'

feature 'Manage discipline' do
  background do
    login create(:admin)
  end
  
  context 'new' do
   before :each do
    visit '/admin/discipline/new'
    expect(page).to have_content 'Novo(a) Disciplina'
   end

   scenario 'successfully' do
     fill_in 'Nome', with: 'Programação 1'
     fill_in 'Código', with: 'INF001'
     fill_in 'Créditos', with: 4
     click_button 'Gravar'
     expect(page).to have_content 'Disciplina criado(a) com sucesso'
   end

   scenario 'failure', js: true do
     fill_in 'Créditos', with: 'foo'
     click_button 'Gravar'

     expect(page).to have_content 'Nome não pode ficar em branco'
     expect(page).to have_content 'Código não pode ficar em branco'
     expect(page).not_to have_content 'Disciplina criado(a) com sucesso'
   end
   end
end