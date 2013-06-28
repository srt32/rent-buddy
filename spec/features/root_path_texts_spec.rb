require 'spec_helper'

describe "RootPathTexts" do
  it "should have Welcome text" do
    visit root_path
    page.body.should include("Welcome!")
  end
end
