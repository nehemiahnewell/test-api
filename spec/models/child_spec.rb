require 'rails_helper'

RSpec.describe Child, type: :model do
  @age = rand(1 .. 18)
  @dob = rand(1.year .. 18.year).ago
  let(:my_child) { Child.create!(first_name: "John", last_name: "Stwert", age: @age, date_of_birth: @dob ) }
  
  describe "attributes" do
    it "should have first name, last_name, age, and date of birth" do
      expect(my_child).to have_attributes(first_name: my_child.first_name, last_name: my_child.last_name, age: my_child.age, date_of_birth: my_child.date_of_birth)
    end
    it "should respond to first name" do
      expect(my_child).to respond_to(:first_name)
    end
        it "should respond to first name" do
      expect(my_child).to respond_to(:last_name)
    end
        it "should respond to first name" do
      expect(my_child).to respond_to(:age)
    end
        it "should respond to first name" do
      expect(my_child).to respond_to(:date_of_birth)
    end
  end
end
