# Read about factories at http://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :atividade do
    nomeat "MyString"
    tipo "MyString"
    calorias "MyString"
    horas "MyString"
    pessoa nil
  end
end
