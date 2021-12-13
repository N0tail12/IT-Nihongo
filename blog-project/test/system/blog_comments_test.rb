require "application_system_test_case"

class BlogCommentsTest < ApplicationSystemTestCase
  setup do
    @blog_comment = blog_comments(:one)
  end

  test "visiting the index" do
    visit blog_comments_url
    assert_selector "h1", text: "Blog Comments"
  end

  test "creating a Blog comment" do
    visit blog_comments_url
    click_on "New Blog Comment"

    fill_in "Blog", with: @blog_comment.blog_id
    fill_in "Comment", with: @blog_comment.comment
    fill_in "User", with: @blog_comment.user_id
    click_on "Create Blog comment"

    assert_text "Blog comment was successfully created"
    click_on "Back"
  end

  test "updating a Blog comment" do
    visit blog_comments_url
    click_on "Edit", match: :first

    fill_in "Blog", with: @blog_comment.blog_id
    fill_in "Comment", with: @blog_comment.comment
    fill_in "User", with: @blog_comment.user_id
    click_on "Update Blog comment"

    assert_text "Blog comment was successfully updated"
    click_on "Back"
  end

  test "destroying a Blog comment" do
    visit blog_comments_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Blog comment was successfully destroyed"
  end
end
