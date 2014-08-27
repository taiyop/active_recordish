require "active_recordish/version"

module ActiveRecordish
  class Base
    def self.all
      @@active_recordish_instances ||= []
    end

    def save
      @@active_recordish_instances ||= []
      if @@active_recordish_instances.none?{|ari| ari.object_id == self.object_id}
        @@active_recordish_instances << self
        true
      else
        false
      end
    end

    def destroy
      @@active_recordish_instances.destroy(self)
    end

    # #where(name: "aaa", old: 13)
    def self.where(options={})
      array = []
      self.all.each do |instance|
        ans = options.all? do |_array|
          at_key = ("@" + _array.first.to_s).to_sym
          if instance.instance_variables.include?(at_key) 
            at_value = instance.instance_variable_get(at_key.to_s)
            at_value.to_s == _array.last.to_s
          else
            false
          end
        end

        array << instance if ans
      end
      array
    end
  end
  # @@active_recordish_instances = []

  # def self.all
  #   @@active_recordish_instances
  # end

  # def save
  #   @active_recordish_id ||= @@active_recordish_instances.count
  #   if @@active_recordish_instances.none?{|ari| ari.active_recordish_id == @active_recordish_id}
  #     @@active_recordish_instances << self
  #   end
  # end
 
#   def self.included(klazz)
#     klazz.extend Recordish
#     # klazz.extend XXX
#   end

  # module Recordish
  #   def all
  #     @active_recordish_instances
  #   end
  # end
  
  # module XXX
  # end
  # Your code goes here...
end
