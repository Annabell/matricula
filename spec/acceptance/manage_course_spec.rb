# -*- encoding : utf-8 -*-
require 'spec_helper'

feature 'Manage course' do
  background do
    login create(:admin)
  end
  
  context 'new', js: true do
   before :each do
    visit '/admin/course/new'
    expect(page).to have_content 'Novo Curso'
   end

   scenario 'successfully' do
     fill_in 'Nome', with: 'Computação'
     fill_in 'Código', with: '01'
     click_button 'Gravar'
     expect(page).to have_content 'Curso criado com sucesso'
   end

   scenario 'failure' do
     fill_in 'Nome', with: ''
     click_button 'Gravar'

     expect(page).to have_content 'Nome não pode ficar em branco'
     expect(page).to have_content 'Código não pode ficar em branco'
   end
   end
end