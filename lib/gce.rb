module GCE
  
  def self.get_instance(id, zone)
    p "Connecting to Google API"
    connection = Fog::Compute.new(:provider => "Google", google_project: "delegate-287809")
  
    connection.servers.get(id, zone)
  end
  
  def self.create_instance
    # https://github.com/fog/fog-google/blob/master/examples/create_instance.rb?fbclid=IwAR14G0VKYGEcN4MAZEfKlOdTszTqVcaZzhj21mK1eWfRMvwYhjh0wllvK78
    
    p "Connecting to Google API"
     connection = Fog::Compute.new(:provider => "Google", google_project: "delegate-287809")

     p "Creating disk"
     disk = connection.disks.create(
       :name => "fog-smoke-test-#{Time.now.to_i}",
       :size_gb => 10,
       :zone => "us-central1-f",
       :source_image => "debian-9-stretch-v20180611"
     )

     p "Waiting for disk to be ready"
     disk.wait_for { disk.ready? }

     p "Creating a server"
     server = connection.servers.create(
       :name => "fog-smoke-test-#{Time.now.to_i}",
       :disks => [disk],
       :machine_type => "n1-standard-1",
       :private_key_path => File.expand_path("~/.ssh/id_rsa"),
       :public_key_path => File.expand_path("~/.ssh/id_rsa.pub"),
       :zone => "us-central1-f",
       # Will be simplified, see https://github.com/fog/fog-google/issues/360
       :network_interfaces => [{ :network => "global/networks/default",
                                 :access_configs => [{
                                   :name => "External NAT",
                                   :type => "ONE_TO_ONE_NAT"
                                 }] }],
       :username => ENV["USER"],
       :metadata => { :items => [{ :key => "foo", :value => "bar" }] },
       :tags => ["fog"],
       :service_accounts => { :scopes => %w(https://www.googleapis.com/auth/compute) }
     )

     p "Waiting for server to be ready"
     # .sshable? requires 'net-ssh' gem to be added to the gemfile
     begin
       duration = 0
       interval = 5
       timeout = 600
       start = Time.now
       until server.sshable? || duration > timeout
         puts duration
         puts " ----- "

         server.reload

         p "ready?: #{server.ready?}"
         p "public_ip_address: #{server.public_ip_address.inspect}"
         p "public_key: #{server.public_key.inspect}"
         p "metadata: #{server.metadata.inspect}"
         p "sshable?: #{server.sshable?}"

         sleep(interval.to_f)
         duration = Time.now - start
       end
       raise "Could not bootstrap sshable server." unless server.ssh("whoami")
     rescue NameError
       server.wait_for { ready? }
     end
     
     return server
  end
end