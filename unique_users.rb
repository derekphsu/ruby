require 'csv'
require "bigdecimal"


def users_for_east
  days = {}

  users = CSV.read("C:/Users/hsu4d/Downloads/users.csv")
  orders = CSV.read("C:/Users/hsu4d/Downloads/orders.csv")

  user_headers = users.shift
  order_headers = orders.shift
  user_names = {}
  # order_name = [6]

  user_names = {}

  puts users.count
  users.each do |user|
    user_names[user[1]] = {phone: user[3], email: user[4]}
  end

  puts user_names.count


  east={}

  orders.each do |order|
    order_name = order[6]
    if !east[order_name]
      east[order_name] = user_names[order_name]
    end
  end

  puts east.count

  # east.each do |x|
  #   puts x
  # end
  path = 'C:/Users/hsu4d/Documents/ruby/east_users.csv'
  write_out = CSV.new(path)
  CSV.open(path, "w") do |csv|
    csv << ["Name", "Phone", "Email", "Alt_phone", "Alt_email"]
    east.each do |k,v|
      csv << [k, v[:phone], v[:email]]
    end
  end
end

users_for_east
