# frozen_string_literal: true

require "test_helper"

module Posts
  module Operations
    class CreateTest < Minitest::Test
      def test_returns_success
        result = subject.call
        assert_equal Success("Created!"), result
      end

      private

      def subject
        MinitestExample::Posts::Operations::Create.new
      end
    end
  end
end
