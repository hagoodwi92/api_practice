require 'rails_helper'

describe "get all names route", :type => :request do
  let!(:names) { FactoryBot.create_list(:name, 20)}

  before { get '/names'}

  it 'returns all names' do
    expect(JSON.parse(response.body).size).to eq(20)
  end

  it 'returns status code 200' do
    expect(response).to have_http_status(:success)
  end
end