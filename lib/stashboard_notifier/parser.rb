require 'trollop'

module StashboardNotifier
  class Parser
    class << self
      def run
        self.new
      end
    end

    SUB_COMMANDS = %w(service status event)

    def initialize
      global_opts = Trollop::options do
        banner "stashboard_notifier"
        version "stashboard_notifier #{StashboardNotifier::VERSION}"
        opt :stashboard, "The url to your stashboard instance (should begin with https)", :type => :string
        stop_on SUB_COMMANDS
      end

      cmd = ARGV.shift
      cmd_opts = case cmd
                 when "service"
                   Trollop::options do
                     opt :list, "List services"
                   end
                 else
                   Trollop::die "Unknown command #{cmd.inspect}"
                 end

      # opts = Trollop::options do
      #   opt :oauth_token, "The oauth token for accessing your stashboard", :type => :string, :short => "t"
      #   opt :oauth_secret, "The oauth secret for accessing your stashboard", :type => :string, :short => "k"
      #   opt :service_id, "The string id of the service we are creating an event for", :type => :string, :short => "e"
      #   opt :status_id, "The string id of the status type
      #   
      # end

      puts global_opts.inspect
      puts cmd.inspect
      puts cmd_opts.inspect
    end
  end
end
