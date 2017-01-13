require 'rails_helper'

RSpec.describe PostsController, type: :controller do

  describe "#create" do
    let(:user) { FactoryGirl.create :user }

    context "with valid attributes" do
      it 'creates a new post' do
        sign_in
        post :create, { post: { title: 'New Post', body: 'This is the body', user_id: user.id }}
        expect(Post.count).to eq(1)
      end

    end

    context "with invalid attributes" do
      it 'does not create new post' do
        sign_in
        post :create, { post: { title: '', body: 'This is the body', user_id: user.id }}
        expect(Post.count).to eq(0)
      end
    end
  end

end
