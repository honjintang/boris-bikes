require 'bike'

describe Bike do
  it {is_expected.to respond_to :working?}

  it {is_expected.to respond_to :is_broken}

  it "is broken" do
    subject.is_broken
    expect ( subject.status ).should be false
  end
end
