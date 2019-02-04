require_relative '../../../features/support/env'

class GooglePage < SitePrism::Page
  set_url "http://google.com"
  element :search_bar, '.sbib_a'
end