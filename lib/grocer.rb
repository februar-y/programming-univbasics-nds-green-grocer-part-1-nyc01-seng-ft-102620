def find_item_by_name_in_collection(name, collection)
  # Implement me first!
  #
  # Consult README for inputs and outputs
  
  item_found = nil
  collection.each do |item|
    if item[:item] == name
      item_found = item
    end
  end
  item_found
end

def consolidate_cart(cart)
  # Consult README for inputs and outputs
  #
  # REMEMBER: This returns a new Array that represents the cart. Don't merely
  # change `cart` (i.e. mutate) it. It's easier to return a new thing.
  
  new_cart = []
  p cart
  cart.each do |item|
    if find_item_by_name_in_collection(item[:item], new_cart) == nil
      item[:count] = cart.count(item)
      new_cart << item
    end
  end
  new_cart
end


  