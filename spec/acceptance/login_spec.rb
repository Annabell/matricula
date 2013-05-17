# -*- encoding : utf-8 -*-
require 'spec_helper'

feature 'login and register' do
  
  scenario 'a guest user trying to register yourself' do
    visit '/admin'
    expect(page).to have_content 'You need to sign in or sign up before continuing.'

    expect { visit '/users/sign_up' }.to raise_error ActionController::RoutingError
  end

end