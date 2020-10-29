require 'rails_helper'

describe "post a name route", :type => :request do

  before do
    post '/names', params: { :petName => 'test_petName', :petType => 'test_petType', :petColor => 'test_petColor',  }
  end

  it 'returns the pet name' do
    expect(JSON.parse(response.body)['petName']).to eq('test_petName')
  end

  it 'returns the petType' do
    expect(JSON.parse(response.body)['petType']).to eq('test_petType')
  end

  it 'returns a created status' do
    expect(response).to have_http_status(:created)
  end
end