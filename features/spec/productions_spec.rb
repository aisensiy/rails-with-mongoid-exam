require_relative '../rails_helper'

describe 'spec' do
  it 'can access production list' do
    get '/productions'
    expect_status(200)
  end

  it 'can create and manage production' do
    post '/productions', { name: 'new-production', price: 1.99 }, { content_type: :json }
    expect_status(201)
    id = json_body[:id]

    get "/productions/#{id}"
    expect_status(200)

    put "/productions/#{id}", { price: 2.99 }, { content_type: :json }
    expect_status(200)
  end
end
