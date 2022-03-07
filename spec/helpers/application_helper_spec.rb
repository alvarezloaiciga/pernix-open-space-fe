# frozen_string_literal: true

require "rails_helper"

RSpec.describe ApplicationHelper, type: :helper do
  describe "flash_class" do
    it { expect(helper.flash_class(:notice)).to eq("alert alert-info") }
    it { expect(helper.flash_class(:success)).to eq("alert alert-success") }
    it { expect(helper.flash_class(:alert)).to eq("alert alert-danger") }
    it { expect(helper.flash_class(:error)).to eq("alert alert-danger") }
    it { expect(helper.flash_class(:unkown)).to eq(nil) }
  end
end
