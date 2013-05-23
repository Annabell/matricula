require 'spec_helper'

describe Discipline do
  it { should_not have_valid(:name).when(nil) }
  it { should_not have_valid(:cod).when(nil) }
  it { should_not have_valid(:credits).when(nil,'string') }
end
