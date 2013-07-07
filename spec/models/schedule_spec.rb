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

  context 'Rules of schedule times' do
    it 'Should fail when time_end starts first than time_first' do
      schedule = FactoryGirl.create :schedule, time_begin: Time.now, time_end: 2.hours.ago
      expect(schedule.errors[:time_end]).to include("Horario de término tem que ser após horario de início.")
    end
  end
end
