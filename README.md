serverspec
==========
    >>> uses RSpec tests to check server configurations.


Installation:
    The following procedure was tested in Ubuntu 12.04 Server/Desktop.
    
  1. Install latest Ruby. (suggested guide > https://www.digitalocean.com/community/articles/how-to-install-ruby-on-rails-on-ubuntu-12-04-lts-precise-pangolin-with-rvm)
  2. Install gem. $ gem install serverspec
  3. Clone repository.
  4. Change directory to /serverspec.
  5. Run this command. $ HOST=[IP] USER=[username] PASSWORD=[password] rake spec

    Example: HOST=116.93.102.51 USER=root PASSWORD=musashi rake spec
  
Notes:
  1. Failed examples are due to packages/services not yet installed. In Dev Server for instance, Ceilometer and Neutron are not yet installed, hence the failed notifications on ports 8777 and 9696.
