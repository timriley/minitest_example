# frozen_string_literal: true

module MinitestExample
  module Posts
    module Operations
      class Create < MinitestExample::Operation
        def call
          "Created!"
        end
      end
    end
  end
end
