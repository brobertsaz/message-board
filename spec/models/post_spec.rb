require 'rails_helper'

describe Post do
  context "Validations" do
    it { is_expected.to validate_presence_of(:title) }
    it { is_expected.to validate_presence_of(:body) }
    it { is_expected.to validate_presence_of(:author) }
  end

  context "Associations" do
    it { should belong_to(:author) }
    it { should have_many(:comments) }
  end

end
