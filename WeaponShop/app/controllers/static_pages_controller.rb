class StaticPagesController < ApplicationController
  skip_before_filter :authorize
  
  def home
    @bow = Bow.first
    @crossbow = Crossbow.first
  end

  def bows
  end

  def crossbows
  end

  def bow
  end

  def crossbow
  end

  def cart
  end

  def registration
  end

  def signin
  end
end
