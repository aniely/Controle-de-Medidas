# Read about factories at http://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :pessoa do
    nome "MyString"
    sexo "MyString"
    cpd "MyString"
    telefone "MyString"
    datanascimento "MyString"
    email "MyString"
  end
end
