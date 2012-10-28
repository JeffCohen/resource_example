require 'test_helper'

class TeamTest < ActiveSupport::TestCase

  test "all attributes are mass-assignable " do
    assert_nothing_raised do
      Team.new(:city => 'Chicago', :name => 'Blackhawks', 'logo' => 'hawks.gif')
    end
  end
end
