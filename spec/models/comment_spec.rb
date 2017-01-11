require 'rails_helper'

describe Comment do
  context "Validations" do
    it { is_expected.to validate_presence_of(:content) }
    it { is_expected.to validate_presence_of(:post_id) }
  end

  context "Associations" do
    it { should belong_to(:post) }
  end

end
