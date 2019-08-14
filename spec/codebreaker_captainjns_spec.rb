# frozen_string_literal: true

RSpec.describe CodebreakerCaptainjns do
  include described_class

  it 'has a version number' do
    expect(CodebreakerCaptainjns::VERSION).not_to be nil
  end

  it 'does something useful' do
    CodebreakerCaptainjns::Game.new('username' => 'Name', 'difficulty' => 'Easy')
  end
end
