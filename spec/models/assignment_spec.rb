require 'rails_helper'

RSpec.describe Assignment, type: :model do
  subject do 
    Assignment.new({
      name: "Do something hard", 
      requirements: "Complete it"
      })
  end

  let(:comment) do 
    Comment.new({
      content: "Generic comment"
      })
  end

  it "should have a name" do 
    assignment = Assignment.new
    assignment.name = "tough assignment"
    expect(assignment.name).to eq("tough assignment")
  end


  it "should NOT have a name" do 
    assignment = Assignment.new
    expect(assignment.name).not_to eq("tough assignment")
  end

  it "should NOT have a name" do 
    assignment = Assignment.new
    assignment.name = "William's"
    expect(restaurant.name).not_to eq(nil)
  end

  it "should have requirements" do 
    assignment = Assignment.new({
      name: "hard assignment",
      requirements: "do it"
      })
      expect(assignment.name).to eq("hard assignment")
      expect(assignment.requirement).to eq("do it")
  end


end

