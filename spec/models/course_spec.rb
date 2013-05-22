require 'spec_helper'

describe Course do
  it { should_not have_valid(:name).when(nil) }
  it { should_not have_valid(:cod).when(nil) }
end
