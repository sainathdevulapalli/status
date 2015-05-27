require 'test_helper'

class CheckinTest < ActiveSupport::TestCase
 test "that a checkin requires content" do 
 	checkin = Checkin.new
 	assert !checkin.save
 	assert !checkin.errors[:content].empty?
 end
  test "that a checkin requires title" do 
 	checkin = Checkin.new
 	assert !checkin.save
 	assert !checkin.errors[:title].empty?
 end
 test "that a checkin's requires title" do 
 	checkin = Checkin.new
 	checkin.content = "H"
 	assert !checkin.save
 	assert !checkin.errors[:content].empty?
 end
 test "that a checkin has a user id" do 
 	checkin = Checkin.new
 	checkin.content = "Hello"
 	assert !checkin.save
 	assert !checkin.errors[:user_id].empty?
 end
end
