# Read about factories at http://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :aviso do
    data "MyString"
    descricao "MyString"
    pessoa nil
  end
end
