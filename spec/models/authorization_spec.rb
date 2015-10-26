require 'rails_helper'

RSpec.describe Authorization, type: :model do
  context "uid" do
    subject {FactoryGirl.build :authorization, uid: nil}
    it { expect(subject.save).to be_falsey}
  end

  context "unique attributes" do
    context "uid" do
      before do
        FactoryGirl.create :authorization, uid: "12345"
      end
      subject {FactoryGirl.build :authorization, uid: "12345"}
      it { expect(subject.save).to be_falsey }
    end
  end
end
