require_relative './part_1_solution.rb'

def apply_coupons(cart, coupons)
  coupons.each do |coupon_items|
    cart.each do |cart_items|
      if coupon_items[:item] == cart_items[:item]
        if cart_items[:count]>= coupon_items[:num]
          cart_index = cart.length
          new_count = cart_items[:count] - coupon_items[:num]
          cart_items[:count] = new_count
          cart[cart_index] = {
            :item => cart_items[:item] + " W/COUPON",
            :price => coupon_items[:cost] / coupon_items[:num],
            :clearance => cart_items[:clearance],
            :count => coupon_items[:num]
          }
        end
      end
    end
  end
  cart
end

def apply_clearance(cart)
 cart.each do |cart_items|
   if cart_items[:clearance]
     cart_items[:price] = (cart_items[:price] - (cart_items[:price] * 0.20)).round(2)
   end
 end
 cart
end

def checkout(cart, coupons)
 
end
