RSpec.describe Array do
  it 'should be able to add items' do
    expect(subject.length).to eq(0)
    subject.push('Some value')
    expect(subject.length).to eq(1)
  end
end
