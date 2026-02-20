# frozen_string_literal: true

module MinitestExample
  module Relations
    class Posts < MinitestExample::DB::Relation
      schema :posts, infer: true
    end
  end
end
