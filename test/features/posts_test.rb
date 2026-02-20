# frozen_string_literal: true

require "test_helper"

class PostsTest < FeatureTest
  def test_displays_posts_index_page
    relation = Hanami.app["relations.posts"]
    relation.insert(title: "Together breakfast", published_at: Time.local(2026,2,20,16,15))

    visit "/posts"

    assert_equal 200, page.status_code
    assert_selector "h1", text: "MinitestExample::Views::Posts::Index"
    assert_selector "div.post", text: "Together breakfast"
  end

  # Add another test to demonstrate database cleaning
  def test_displays_posts_index_page_2
    relation = Hanami.app["relations.posts"]
    relation.insert(title: "Tiger Millionaire", published_at: Time.local(2026,2,20,16,15))

    visit "/posts"

    assert_equal 200, page.status_code
    assert_selector "h1", text: "MinitestExample::Views::Posts::Index"
    assert_selector "div.post", text: "Tiger Millionaire"
  end
end
