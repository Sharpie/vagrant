module VagrantPlugins
  module GuestOsx
    module Cap
      class ChangeHostName
        def self.change_host_name(machine, name)
          if !machine.communicate.test("hostname -f | grep '^#{name}$' || hostname -s | grep '^#{name}$'")
            machine.communicate.sudo("scutil --set HostName #{name}")
          end
        end
      end
    end
  end
end
