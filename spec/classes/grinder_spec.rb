require 'spec_helper'


describe 'grinder', :type => :class do
  describe 'As a System Administrator' do
    context 'I want to install grinder on Red Hat type systems and it' do
      let :facts do {
          :osfamily => 'RedHat'
      }
      end

      it { should contain_package('grinder').with_ensure('present') }
      it { should contain_user('grinder').with(
          :ensure => 'present'
                  )}
      it { should contain_file('/var/log/grinder').with(
          :ensure => 'directory',
          :owner  => 'grinder'
                  )}

    end

  end
end