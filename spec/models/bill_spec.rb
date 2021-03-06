require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe Bill do
  before(:each) do
    @valid_attributes = {
      :kind => "value for kind",
      :title => "value for title",
      :body => "value for body",
      :value_cents => 1
    }
  end

  it "should create a new instance given valid attributes" do
    Bill.create!(@valid_attributes)
  end
end

# == Schema Information
# Schema version: 99999999999999
#
# Table name: bills
#
#  id          :integer         not null, primary key
#  user_id     :integer
#  kind        :string(255)
#  title       :string(255)
#  body        :text
#  value_cents :integer
#  created_at  :timestamp
#  updated_at  :timestamp
#

