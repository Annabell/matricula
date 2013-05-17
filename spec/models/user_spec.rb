require 'spec_helper'

describe User do
  it { should have_valid(:email).when('test@test.com', 'test+spam@gmail.com') }
  it { should_not have_valid(:password).when(nil) }
end
