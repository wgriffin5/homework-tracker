require 'rails_helper'

RSpec.describe Submission, type: :model do 
  subject do 
    Submission.new({
      name: "name",
      description: "description"
      })
  end

  let(:comment) do 
    Comment.new({
      content: "submission content"
      })
  end

  it "should have a name" do 
    expect(subject.name).to eq("name")
  end

  it "should have a name" do 
    expect(subject.name).not_to eq(nil)
  end

  it "should have a description" do
    expect(subject.description).not_to eq(nil)
  end

  it "should start in the state of submitted" do 
    expect(subject.current_state).to eq("submitted")
  end

  it "should be able to transition to 1 state from submitted" do
    expect(subject.current_state.events.keys).to eq([:reviewing])
  end

  it "should be able to transition to 2 states from reviewing" do
    subject.save
    subject.review!
    expect(subject.current_state.events.keys).to eq([:completed, 
      :incompleted
      ])
  end

  it "should be able to transition to 1 state from incompleted" do
    subject.save
    subject.review!
    subject.incomplete!
    expect(subject.current_state.events.keys).to eq([:reviewing])
  end

  













