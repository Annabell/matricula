require 'spec_helper'

describe Student do
  it { should_not have_valid(:name).when(nil) }
  it { should_not have_valid(:registration_number).when(nil) }
end