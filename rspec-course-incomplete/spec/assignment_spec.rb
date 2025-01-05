RSpec.describe 'some array' do
  subject { [1, 2] }

  it 'should be an array with 2 elements' do
    expect(subject).to eq([1, 2])
  end

  it { is_expected.to eq([1, 2]) }
end
