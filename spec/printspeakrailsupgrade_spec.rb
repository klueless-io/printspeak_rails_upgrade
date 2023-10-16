# frozen_string_literal: true

RSpec.describe PrintspeakRailsUpgrade do
  it 'has a version number' do
    expect(PrintspeakRailsUpgrade::VERSION).not_to be_nil
  end

  it 'has a standard error' do
    expect { raise PrintspeakRailsUpgrade::Error, 'some message' }
      .to raise_error('some message')
  end
end
