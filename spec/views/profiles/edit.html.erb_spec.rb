require 'spec_helper'

describe "profiles/edit" do
  before(:each) do
    @profile = assign(:profile, stub_model(Profile,
      :user_id => 1,
      :age => 1,
      :criminal => false,
      :sex_offender => false
    ))
  end

  it "renders the edit profile form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => profiles_path(@profile), :method => "post" do
      assert_select "input#profile_user_id", :name => "profile[user_id]"
      assert_select "input#profile_age", :name => "profile[age]"
      assert_select "input#profile_criminal", :name => "profile[criminal]"
      assert_select "input#profile_sex_offender", :name => "profile[sex_offender]"
    end
  end
end
