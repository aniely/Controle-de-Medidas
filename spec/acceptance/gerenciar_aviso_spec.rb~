# coding: utf-8

require 'spec_helper'

feature 'gerenciar dica' do
  before :each do
  end
 
  scenario 'incluir dica' do

   
    pessoa = FactoryGirl.create(:pessoa,:nome => 'Aniely') 
 
    visit new_aviso_path

    fill_in 'Data', :with => '03/03/2012'
    fill_in 'Descricao', :with => 'Praticar'
    select  'Aniely', :on => 'Nome' 
       
    click_button 'Salvar'
  
  
    page.should have_content 'Data: 03/03/2012'
    page.should have_content 'Descricao: Praticar'
    page.should have_content 'Nome: Aniely'
  end


    scenario 'alterar dica' do #, :javascript => true do

    pessoa = FactoryGirl.create(:pessoa,:nome => 'Aniely')
    aviso = FactoryGirl.create(:aviso, :pessoa => pessoa)

    visit edit_aviso_path(aviso)

    preencher_e_verificar_aviso
    end
    scenario 'excluir dica' do #, :javascript => true do

    pessoa = FactoryGirl.create(:pessoa,:nome => 'Aniely')
    aviso = FactoryGirl.create(:aviso, :pessoa => pessoa)
    
    visit avisos_path
    click_link 'Excluir'

  end


    def preencher_e_verificar_aviso

   
    fill_in 'Data', :with => '03/03/2012'
    fill_in 'Descricao', :with => 'Praticar'
    select  'Aniely', :on => 'Nome' 
       
    click_button 'Salvar'
  
  
    page.should have_content 'Data: 03/03/2012'
    page.should have_content 'Descricao: Praticar'
    page.should have_content 'Nome: Aniely'
  end

end
