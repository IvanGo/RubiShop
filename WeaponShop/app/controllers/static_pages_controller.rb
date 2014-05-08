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
    @items = LineItem.all
  end

  def registration
  end

  def getxml
    f = File.open("respon.xml")
    @doc = Nokogiri::XML(f)
  end

  def signin

  end

  def get_sum
    sum = 0
    LineItem.all.each do |l|
      sum += get_price(l.id)
    end

    return sum
  end
  helper_method :get_sum

  def get_price(line_id)
    @li = LineItem.find(line_id)

    if @li.crossbow_id.nil?
      @bow = Bow.where(id: @li.bow_id).first
      return @bow.price
    else
      @cbow = Crossbow.where(id: @li.crossbow_id).first
      return @cbow.price
    end
  end
  helper_method :get_price

end
