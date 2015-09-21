require 'spec_helper'

describe Capistrano3::Revision do
  it 'has a version number' do
    expect(Capistrano3::Revision::VERSION).not_to be nil
  end
end
