Feature: Create Categories
  As a blog administrator
  In order to organize my blog
  I want to be able to create categories

Background:
  Given the blog is set up
  And I am logged into the admin panel

Scenario: Successfully create categories
  Given I am on the new category page
  When I fill in "category_name" with "Sports Cars"
  And I fill in "category_keywords" with "sports, style, racing"
  And I fill in "category_description" with "a listing of my favorite sports car"
  And I press "Save"
  Then I should be on the new category page
  Then I should see "Sports Cars"

Scenario: Successfully edit a category
  Given I am on the new category page
  And I should see "General"
  And I follow "General"
  And I fill in "category_name" with "Generic"
  And I press "Save"
  Then I should be on the new category page
  Then I should see "Generic"

Scenario: Successfully delete a category
  Given I am on the new category page
  And I should see "General"
  And I follow "Delete"
  Then I should see "Cancel"
  And I should see "delete"
  Then I press "delete"
  Then I should be on the new category page
  Then I should not see "General"

