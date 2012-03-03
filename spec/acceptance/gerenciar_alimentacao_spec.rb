# coding: utf-8

require 'spec_helper'

feature 'gerenciar alimentacao' do
  before :each do
  end
 
  scenario 'incluir alimentacao' do

   
    pessoa = FactoryGirl.create(:pessoa,:nome => 'Aniely') 
 
    visit new_alimentacao_path

    fill_in 'Calorias', :with => '100'
    fill_in 'Tipo', :with => 'legumes'
    select  'Aniely', :on => 'Nome' 
       
    click_button 'Salvar'
  
  
    page.should have_content 'Calorias: 100'
    page.should have_content 'Tipo: legumes'
    page.should have_content 'Nome: Aniely'
  end
end
