RSpec.describe 'a random double' do
  it 'only allows defined methods to be invoked' do
    stuntman = double("Mr. Danger", fall_off_ladder: 'Ouch', light_on_fire: true)
    expect(stuntman.fall_off_ladder).to eq('Ouch')
    expect(stuntman.light_on_fire).to eq(true)

    stuntman2 = double("Mr. Danger2")
    allow(stuntman2).to receive(:fall_off_ladder).and_return('Ouch')
    expect(stuntman2.fall_off_ladder).to eq('Ouch')

    stuntman3 = double("Mr Danger3")
    allow(stuntman3).to receive_messages(fall_off_ladder: 'Ouch', light_on_fire: true)
    expect(stuntman3.fall_off_ladder).to eq('Ouch')
    expect(stuntman3.light_on_fire).to eq(true)
  end
end