require_relative 'item_wrapper'
require_relative 'aged_brie_wrapper'

def update_quality(items)
  items.each do |item|
    if item.name == 'Aged Brie'
      AgedBrieWrapper.wrap(item).update
    else
      ItemWrapper.wrap(item).update
    end
  end
end


######### DO NOT CHANGE BELOW #########

Item = Struct.new(:name, :sell_in, :quality)
