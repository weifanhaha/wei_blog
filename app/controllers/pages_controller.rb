class PagesController < ApplicationController
  layout "console", only: [:aboutme, :guideline]

  def aboutme
  end

  def guideline
  end
end
