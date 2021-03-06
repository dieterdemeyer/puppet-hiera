#!/usr/bin/env rspec

require 'spec_helper'

describe 'hiera' do
  
  it { should contain_class 'hiera' }

  it {
    should contain_package('rubygems-hiera').with_ensure('present')
  }
  
  it {
    should contain_package('rubygems-hiera-puppet').with_ensure('present')
  }

  it {
    should contain_file('/etc/puppet/hiera.yaml').with_ensure('present')
  }

end
