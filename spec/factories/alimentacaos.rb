# Read about factories at http://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :alimentacao do
    calorias "MyString"
    tipo "MyString"
    pessoa nil
  end
end
