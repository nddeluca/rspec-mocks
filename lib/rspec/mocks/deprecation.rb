module RSpec
  module Mocks
    module Deprecation
      # @private
      #
      # Used internally to print deprecation warnings
      def deprecate(deprecated, options = {})
        warn_with "DEPRECATION: #{deprecated} is deprecated.", options
      end
    end
  end

  extend(Mocks::Deprecation) unless respond_to?(:deprecate)
end

