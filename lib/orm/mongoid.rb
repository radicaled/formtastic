module Mongoid
  module Relations
    # Monkey patch to allow for "options" hash onrelationship metadata.
    class Metadata
      def options
        @options ||= { 
          :foreign_key => foreign_key,
          :conditions => nil
        }                    
      end
    end
  end
end
