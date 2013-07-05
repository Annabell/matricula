#encoding: utf-8
require 'spec_helper'

describe Schedule do
  context 'Relations' do
    it {should belong_to :classroom}
  end

  context 'Attributes' do
    it { should_not have_valid(:day).when(nil) }
    it { should have_valid(:day).when("Segunda-Feira") }

    it { should_not have_valid(:time_begin).when(nil) }
    it { should have_valid(:time_begin).when(Time.now) }

    it { should_not have_valid(:time_end).when(nil) }
    it { should have_valid(:time_end).when(2.hours.from_now) }
  end
end
