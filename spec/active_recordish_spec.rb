require 'spec_helper'
require 'active_recordish'

class TestClass < ActiveRecordish::Base
  def initialize
    @output = "aaa"
  end
end

describe ActiveRecordish do
  describe ".all" do
    context "when data is nothing" do
    end
    context "when inclulde 2 data" do
      before do
        TestClass.new.save
        TestClass.new.save
      end
      it "count is 2" do
        expect(TestClass.all.count).to eq 2
      end
    end
  end

  describe "#save" do
  end
end

