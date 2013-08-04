require 'blabber/channel'

module Blabber
  
  class Email

    include Channel
    attr_reader :opts

    require "mail"

    def initialize(opts)
      @opts = opts

      mail_opts = Hash.new
      @opts.keys.each do |key|
        if(['address', 'port', 'domain', 'user_name', 'password', 'authentication', 'enable_starttls_auto'].include?(key))
         mail_opts[:"#{key}"] = @opts[key]
        end
      end 

      Mail.defaults do
        delivery_method :smtp, mail_opts
      end

    end

    def loglevels
      @opts['loglevels']
    end
    
    def speak(message, loglevel, opts)

      block_opts = @opts

      subject = opts && opts['subject']
      subject ||= message.gsub(/\n|\r/, " ")[0..75]

      mail = Mail.new do
        from     block_opts['from']
        to       block_opts['to']
        subject  subject
        body     message
      end

      mail.deliver!

    end

  end

end
