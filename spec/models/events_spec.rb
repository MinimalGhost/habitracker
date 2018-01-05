require 'rails_helper'

RSpec.describe Habit, :type => :model do
   subject { described_class.new }

   it "is valid if it has a name" do
     subject.name = "Something"
     expect(subject).to be_valid
   end

   it "is not valid without name" do
     expect(subject).to_not be_valid
   end

end
