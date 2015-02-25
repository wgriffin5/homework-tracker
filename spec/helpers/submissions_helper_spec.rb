require 'rails_helper'

RSpec.describe SubmissionsHelper, type: :helper do
  subject do 
    Submission.new({
      name: "name"
      description: "description"
      })
end

it 'should return whether a submission is submitted' do 
  expect(helper.is_submission_submitted?(subject)).to eq("completed")