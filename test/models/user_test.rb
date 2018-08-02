require 'test_helper'

class UserTest < ActiveSupport::TestCase
	def setup
		@user = User.new(email: "patate@example.com", password: "pimprenelle", password_confirmation: "primprenelle")
	end

	test "email address should be unique" do
		duplicate_user = @user.dup
		@user.save
		assert_not duplicate_user.valid?
	end

	test "password should be present" do
		@user.password = @user.password_confirmation = " " * 6
		assert_not @user.valid?
	end

	test "password should have a minimum length" do
		@user.password = @user.password_confirmation = "a" *5
		assert_not @user.valid?
	end

  # test "the truth" do
  #   assert true
  # end
end
