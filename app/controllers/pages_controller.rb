class PagesController < ApplicationController
  layout "console", only: [:aboutme]

  def aboutme
  end
end
