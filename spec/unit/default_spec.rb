require 'spec_helper'

describe 'spinen-grails::default' do
  let(:chef_run) { ChefSpec::SoloRunner.converge(described_recipe) }

  it 'includes the ark recipe' do
    expect(chef_run).to include_recipe('ark::default')
  end
end
