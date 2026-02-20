# frozen_string_literal: true

module MinitestExample
  module Repos
    class PostRepo < MinitestExample::DB::Repo
      def all
        posts.to_a
      end
    end
  end
end
