require "vagrant"

module VagrantPlugins
  module GuestOsx
    class Plugin < Vagrant.plugin("2")
      name "OS X guest."
      description "OS X guest support."

      guest("osx")  do
        require File.expand_path("../guest", __FILE__)
        Guest
      end

      guest_capability("osx", "halt") do
        require_relative "cap/halt"
        Cap::Halt
      end
    end
  end
end
