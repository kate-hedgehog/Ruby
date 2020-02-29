print "Enter product: "
product = gets.chomp
dictionary = Hash.new()
price_of_product = Hash.new()
sum = 0
key_prod_value = []
while product != "stop" do
    print "Enter price: "
    price = gets.chomp
    price.to_i
    while price.to_i <= 0 do
        puts "Wrong price format"
        print "Enter price: "
        price = gets.chomp
        price.to_i
    end
    if key_prod_value != [] and price !=  key_prod_value[0] then
        puts "This item already exists. Price = #{key_prod_value[0]}. Replace? (yes or no)"
        a = gets.chomp
        while a != "yes" and a != "no" do 
            print "Enter yes or no: "
            a = gets.chomp
        end
        if a == "no" then
            price = key_prod_value[0]
        end
    end
    print "Enter quantity: "
    quantity = gets.chomp
    quantity.to_f
    while quantity.to_f <= 0 do
        puts "Wrong quontity format"
        print "Enter quontity: "
        quantity = gets.chomp
        quantity.to_f
    end
    if dictionary.key?(product) == false then
        interior_dictionary = Hash.new()
        interior_dictionary[price] = quantity
        dictionary[product] = interior_dictionary
    else 
        value = dictionary[product]
        key_value = value.keys
        if key_value[0] == price then 
            value[price] = value[price].to_f + quantity.to_f
        else
            interior_dictionary = Hash.new()
            interior_dictionary[price] = value[key_prod_value[0]].to_f + quantity.to_f
            #dictionary.delete(product)
            dictionary[product] = interior_dictionary
        end
    end 
    key_prod_value = [] 
    print "Enter product: "
    product = gets.chomp
    if dictionary.key?(product) == true then
        prod_value = dictionary[product]
        key_prod_value = prod_value.keys
    end   
end
key = dictionary.keys
for i in key
    price = dictionary[i]
    key_of_price = price.keys
    price_of_product[i] = key_of_price[0].to_i * price[key_of_price[0]].to_f
    sum += key_of_price[0].to_i * price[key_of_price[0]].to_f
end  
puts dictionary
puts price_of_product 
puts sum