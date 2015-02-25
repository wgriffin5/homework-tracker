require 'rails_helper' 

RSpec.describe Course, type: :model do              
  subject do 
    Course.new({
      name: "backend",
      description: "rails"
      })
  end

  let(:comment) do 
    Comment.new({
      content: "Holla"
      })
  end

  it "should have a name" do 
    course = Course.new
    course.name = "backend"
    expect(course.name).to eq("backend")
  end

  it "should NOT have a name" do 
    course = Course.new
    expect(course.name).not_to eq("backend")
  end

  it "should NOT have a name" do
    course = Course.new
    course.name = "backend"
    expect(course.name).not_to eq(nil)
  end

  it "should have a description" do
    course = Course.new({
      name: "backend"
      description: "class is money"
      }) 
    expect(course.name).to eq("backend")
    expect(course.description.to eq("class is money")
  end

end





