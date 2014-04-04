require 'spec_helper'



# CHECK CONTROLLER FOR MINIMUM  REQUIREMENTS
describe file('/etc/network/interfaces') do
  it { should contain 'eth1' }
end

describe command('date') do
  its(:stdout) { should match 'UTC' }
end

describe package('apache2') do
  it { should be_installed }
end

describe service('apache2') do
  it { should be_running   }
end


# CHECK OPENSTACK PACKAGES/SERVICES
describe package('mysql-server') do
  it { should be_installed }
end

describe service('mysql') do
  it { should be_enabled   }
  it { should be_running   }
end

describe package('keystone') do
  it { should be_installed }
end

describe service('keystone') do
  it { should be_enabled   }
  it { should be_running   }
end

describe service('glance-api') do
  it { should be_enabled   }
  it { should be_running   }
end

describe package('rabbitmq-server') do
  it { should be_installed }
end

describe service('rabbitmq-server') do
  it { should be_enabled   }
  it { should be_running   }
end

describe package('cinder-scheduler') do
  it { should be_installed }
end

describe service('cinder-scheduler') do
  it { should be_enabled   }
  it { should be_running   }
end

describe package('ceilometer-agent-central') do
  it { should be_installed }
end

describe service('ceilometer-agent-central') do
  it { should be_enabled   }
  it { should be_running   }
end

describe package('ceilometer-collector') do
  it { should be_installed }
end

describe service('ceilometer-collector') do
  it { should be_enabled   }
  it { should be_running   }
end

describe package('ceilometer-api') do
  it { should be_installed }
end

describe service('ceilometer-api') do
  it { should be_enabled   }
  it { should be_running   }
end

describe service('nova-api') do
  it { should be_enabled   }
  it { should be_running   }
end

describe service('nova-scheduler') do
  it { should be_enabled   }
  it { should be_running   }
end

describe service('nova-conductor') do
  it { should be_enabled   }
  it { should be_running   }
end

describe package('neutron-server') do
  it { should be_installed   }
end

describe service('neutron-server') do
  it { should be_enabled   }
  it { should be_running   }
end


# CHECK DEFAULT PORTS
describe port (3306) do
  it { should be_listening.with('tcp') }
end

describe port (35357) do
  it { should be_listening.with('tcp') }
end

describe port (8774) do
  it { should be_listening.with('tcp') }
end

describe port (8776) do
  it { should be_listening.with('tcp') }
end

describe port (8773) do
  it { should be_listening.with('tcp') }
end

describe port (8775) do
  it { should be_listening.with('tcp') }
end

describe port (5000) do
  it { should be_listening.with('tcp') }
end

describe port (6080) do
  it { should be_listening.with('tcp') }
end

describe port (9292) do
  it { should be_listening.with('tcp') }
end

describe port (9191) do
  it { should be_listening.with('tcp') }
end

describe port (9696) do
  it { should be_listening.with('tcp') }
end

describe port (8777) do
  it { should be_listening.with('tcp') }
end



