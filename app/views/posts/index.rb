# frozen_string_literal: true

module MinitestExample
  module Views
    module Posts
      class Index < MinitestExample::View
        include Deps["repos.post_repo"]

        expose :posts do
          post_repo.all
        end
      end
    end
  end
end
