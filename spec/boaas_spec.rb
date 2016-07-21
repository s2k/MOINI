require 'rspec'
require_relative '../lib/boaas'

describe BOAAS do
  it { expect(subject.calculate(0, 0, 'addition')).to be 0 }
  it { expect(subject.calculate(13, 29, 'addition')).to be 42 }
  it { expect(subject.calculate('4', '2', 'addition')).to eq '42' }
  it { expect(subject.calculate('#', 4, 'multiplication')).to eq '####' }
  it { expect(subject.calculate(7, 0, 'multiplication')).to eq 0 }
  it { expect(subject.calculate(7, 7, 'multiplication')).to eq 49 }
  it { expect(subject.calculate(2**37, 2**97, 'multiplication')).to eq 2**(37+97)}
end
