require 'spec_helper'

describe Classroom do
  it { should_not have_valid(:name).when(nil) }
  it { should_not have_valid(:vacancies).when(nil) }
  # it { should_not have_valid(:discipline).when(nil) }
  it { should belong_to(:discipline) }
end