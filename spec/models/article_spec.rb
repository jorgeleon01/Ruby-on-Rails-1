require 'rails_helper'

RSpec.describe Article, :type => :model do
  subject { described_class.new }
#-------------------------def expired?-------------------------
  it 'should expired be false' do
    subject.created_at = (DateTime.new(2019, 02, 28) + 1.day)
    expect(subject.expired?).to be(false)
  end

  it 'should expired be true' do
    subject.created_at = (DateTime.new(2019, 02, 20))
    expect(subject.expired?).to be(true)
  end
  
#-------------------------expired_today?-------------------------

  it 'should expired_today be true' do
    subject.created_at = (DateTime.new(2019, 02, 28))
    expect(subject.expired_today?).to be(true)
  end

  it 'should expired_today be false' do
    subject.created_at = (DateTime.new(2019, 02, 28) + 1.day)
    expect(subject.expired_today?).to be(false)
  end
#----------------------------------------------------------------

end
