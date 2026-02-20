# frozen_string_literal: true

require "test_helper"

class MinitestExample::Actions::Posts::IndexTest < Minitest::Test
  def test_works
    params = {}
    response = subject.call(params)
    assert_predicate response, :successful?
  end

  private

  def subject
    MinitestExample::Actions::Posts::Index.new
  end
end
