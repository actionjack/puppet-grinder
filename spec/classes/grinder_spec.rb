require 'spec_helper'


describe 'grinder', :type => :class do
  describe 'As a System Administrator' do
    context 'I want to install grinder on Red Hat type systems' do
      let :facts do {
          :osfamily => 'RedHat'
      }
      end

      it { should contain_package('grinder').with_ensure('present') }

    end

  end
end