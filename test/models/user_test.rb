# require 'test_helper'

class UserTest < ActiveSupport::TestCase
  test "should not add user without e-mail" do
    user = User.new
    assert_not user.save, "Created user without e-mail"
  end

  test "should not allow password shorter than 6" do
    user = User.new
    user.password = 12345
    assert_not user.save, "Created user with password shorter than 6"
  end
  test "should report error" do
    # some_undefined_variable is not defined elsewhere in the test case
    assert_raises(NameError) do 
      some_undefined_variable
    end
  end
end
