RSpec.describe Hash do
  it 'shou.d start off empty' do
    expect(subject.length).to eq(0)
    subject[:some_key] = "Some Value"
    expect(subject.length).to eq(1)
  end

  it 'is isolated between example' do
    expect(subject.length).to eq(0)
  end
end
