class CustomerTest < ActiveSupport::TestCase
  test "should not save customer without phone number" do
    customer = Customer.new
    # customer.customer_number = 12345
    assert_not customer.save, "Created user with number shorter than 9"
  end
end
