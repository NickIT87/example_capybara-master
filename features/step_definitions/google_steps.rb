Given(/^on google page$/) do
  google_page = GooglePage.new
  google_page.load
end

Given(/^check search field appears$/) do
  google_page = GooglePage.new
  google_page.search_bar.visible?
  #or
  expect(google_page).to have_search_bar
end