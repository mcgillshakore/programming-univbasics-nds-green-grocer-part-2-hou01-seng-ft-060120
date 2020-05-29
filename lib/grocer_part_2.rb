require_relative './part_1_solution.rb'

def apply_coupons(cart, coupons)
  coupons.each do |coupon_items|
    cart.each do |cart_items|
      if coupon_items[:item] == cart_items[:item]
        if cart_items[:count]>= coupon_items[:num]
          new_count = cart_items[:count] - coupon_items[:num]
          cart_index = cart.length
          cart_items[:count] = new_count
          cart[cart_index] = {
            :item => cart
            
          }
        end
      end
    end
  end
  cart
end

def apply_clearance(cart)
  # Consult README for inputs and outputs
  #
  # REMEMBER: This method **should** update cart
end

def checkout(cart, coupons)
  # Consult README for inputs and outputs
  #
  # This method should call
  # * consolidate_cart
  # * apply_coupons
  # * apply_clearance
  #
  # BEFORE it begins the work of calculating the total (or else you might have
  # some irritated customers
end
