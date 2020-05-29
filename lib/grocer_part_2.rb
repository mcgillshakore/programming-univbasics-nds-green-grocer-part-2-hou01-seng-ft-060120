require_relative './part_1_solution.rb'

def apply_coupons(cart, coupons)
  new_cart = []
  coupons.each do |coupon_items|
    cart.each do |cart_items|
      if coupon_items[:item] == cart_items[:item]
        if cart_items[:count]>= coupon_items[:num]
          new_count = cart_items[:count] - coupon_items[:num]
          cart_items[:count] = new_count
          cart.length = {
            :item => cart_items[:item] + " W/COUPON",
            :price => coupon_items[:cost] / coupon_items[:num],
            :clearance => cart_items[:clearance],
            :count => coupon_items[:num]
          }
          new_cart << cart[cart_index]
        end
      end
    end
  end
  new_cart
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
