# -*- encoding : utf-8 -*-
require 'spec_helper'

feature 'Manage Schedule' do
  background do
    login_as create(:admin)
  end

  context 'new', js: true do
    before :each do
      visit '/admin/schedule/new'
      expect(page).to have_content 'Novo(a) Horário'
    end

    scenario 'successfully' do
      FactoryGirl.create :classroom

      fill_in "Dia", with: 'Terça-Feira'
      # fill_in 'Horário Inicial', with: '08:00'
      # fill_in 'Horário Final', with: '10:00'
      # select 'A', from: 'Turma'
      # click_button 'Gravar'
      # expect(page).to have_content 'Horário criado(a) com sucesso'
    end

    scenario 'failure empty fields' do
      click_button 'Gravar'

      expect(page).to have_content 'Horário Inicial não pode ficar em branco'
      expect(page).to have_content 'Horário Final não pode ficar em branco'
    end
  end
end