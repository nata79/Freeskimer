module Freeskimer
  module ModelAdditions
     def freeskim(att, options)
       
        # Validates arguments
        raise "'to' attribitute is missing" unless options[:to]
       
        # Define get method
        send :define_method, att do
          tmp = JSON.parse(send(options[:to]).to_s) if send(options[:to])
          tmp[att.to_s] if tmp and tmp[att.to_s]
        end
       
        # Define set method
        send :define_method, "#{att}=" do |value|
          value = yield(value) if block_given?
          tmp = {}
          tmp = JSON.parse send options[:to] if send options[:to]
          tmp[att] = value
          send("#{options[:to]}=", tmp.to_json)
        end
       
     end
  end
end