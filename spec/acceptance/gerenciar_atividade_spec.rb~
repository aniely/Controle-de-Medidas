# coding: utf-8

require 'spec_helper'

feature 'gerenciar atividade' do
  before :each do
  end
 
  scenario 'incluir atividade' do

   
    pessoa = FactoryGirl.create(:pessoa,:nome => 'Aniely') 
 
    visit new_atividade_path

    fill_in 'Nomeat', :with => 'corrida'
    fill_in 'Tipo', :with => 'aerobica'
    fill_in 'Calorias', :with => '100'
    fill_in 'Horas', :with => '1'
    select  'Aniely', :on => 'Nome' 
       
    click_button 'Salvar'
  
  
    page.should have_content 'Nomeat: corrida'
    page.should have_content 'Tipo: aerobica'
    page.should have_content 'Calorias: 100'
    page.should have_content 'Horas: 1'
    page.should have_content 'Nome: Aniely'
  end

end
