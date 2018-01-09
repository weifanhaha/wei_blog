class PagesController < ApplicationController
  layout "none", only: [:aboutme, :guideline]

  def aboutme
  end

  def guideline
  end
end
