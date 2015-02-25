require 'rails_helper'

RSpec.describe Location, type: :model do 
  subject do 
    Location.new({
      name: "name",
      address: "address"
      })
  end

  it "should have a name" do 
    location = Location.new
    location.name = "name"
    expect(location.name).to eq("name")
  end

  it "should NOT have a name" do 
    location = Location.new
    expect(location.name).not_to eq("name")
  end

  it "should NOT have a name" do 
    location = Location.new
    location.name = "name"
    expect(location.name).not_to eq(nil)
  end

  it "should have an address" do 
    expect(subject.address).to eq("address")
  end

  it "should NOT have an address" do 
    expect(subject.address).not_to eq(nil)
  end

  






























