require 'test_helper'

class MtiTest < ActiveSupport::TestCase

  def setup
    @user_params = {
      email: 'dummy@test.com',
      name: 'dummy',
      address: 'dummy address',
      hobbies: 'nothing'
    }
    @profile_params = {
      emp_id: 'E01'
    }
  end

  test "for create method" do
    user = User.create(@user_params)
    user.profile.emp_id = @profile_params[:emp_id]
    user.save
    assert_equal(@user_params.values + @profile_params.values, [user.email, user.name, user.address, user.hobbies, user.profile.emp_id], 'Something went wrong while creating')
  end

  test "for save method" do
    user = User.new(@user_params)
    user.profile.emp_id = @profile_params[:emp_id]
    user.save
    assert_equal(@user_params.values + @profile_params.values, [user.email, user.name, user.address, user.hobbies, user.profile.emp_id], 'Something went wrong while saving')
  end
end
