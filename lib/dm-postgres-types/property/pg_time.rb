# encoding: utf-8

require 'dm-core'
require 'dm-types/support/dirty_minder'

module DataMapper
  class Property
    class PgTime < Object

      def load(value)
        value
      end

      def dump(value)
        value
      end

      def typecast(value)
        case value
          when ::Time               then value.strftime('%H:%M')
          when ::String             then value
        end
      end
    end
  end
end
