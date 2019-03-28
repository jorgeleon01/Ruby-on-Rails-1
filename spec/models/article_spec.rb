require 'rails_helper'

RSpec.describe Article, :type => :model do
  subject { described_class.new }

  it 'should expired be false' do
    subject.created_at = (DateTime.new(2019, 02, 28) + 1.day)
    expect(subject.expired?).to be(false)
  end

  it 'should expired_today be true' do
    subject.created_at = (DateTime.new(2019, 02, 28))
    
    expect(subject.expired_today?).to be(true)
  end

end
