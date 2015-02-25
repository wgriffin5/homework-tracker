require 'rails_helper'

RSpec.describe ApplicationHelper, type: :helper do |variable|
  it 'should return the home active link' do 
    params[:controller] = 'home'
    expect(helper.active_link('home')).to eq(:active)
end

  it 'should return the Hospitals/Patient active link' do
    params[:controller] = 'hospitals/patients'
    expect(helper.active_link('hospitals/patients')).to eq(nil)