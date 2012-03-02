# coding: utf-8

require 'spec_helper'

feature 'gerenciar medida' do
  before :each do
  end
 
  scenario 'incluir medida' do

   
    pessoa = FactoryGirl.create(:pessoa,:nome => 'Aniely') 
 
    visit new_medida_path
    fill_in 'Peso', :with => '50'
    fill_in 'Altura', :with => '1.60'
    fill_in 'Medida', :with => '100'
    select  'Aniely', :on => 'Nome' 
       
    click_button 'Salvar'
  
  
    page.should have_content 'Peso: 50'
    page.should have_content 'Altura: 1.60'
    page.should have_content 'Medida: 100'
    page.should have_content 'Nome: Aniely'

  end

 
end

