price_array = [17, 3, 6, 9, 15, 8, 6, 1, 10]


def day_trader(price_array)

    #initialize a diff variable to store the differences between the different prices
    diff = 0
    #initialize a max_diff variable to store the max difference between the different prices
    max_diff = 0 
    best_buying_day = nil
    best_selling_day = nil 
    best_buying_price = nil
    best_selling_price = nil 

    #loop on the values osf the array to compare the prices 
    price_array.each_with_index do |price_1,i|

        #for every price and array create an comparison array to test all the following prices
        comparison_array = price_array[i+1,price_array.length]

        #for every price & loop on comparison array to find the higher price difference
        comparison_array.each_with_index do |price_2,j|
            diff = price_2 - price_1
            #test et modification de max diff
            if diff > max_diff
                #stocker toutes les valeurs au cas où
                best_buying_price = price_1
                best_selling_price = price_2
                max_diff = diff
                #best_buying day = index of the price of the buying day for the biggest diff in the price_array
                best_buying_day = i 
                #best_selling_day = index of the price of the selling day for the biggest diff in the price_array (= index in the comparisn array + i + 1)
                best_selling_day = j + i + 1 
            end
        end
    end 

    #puts "best option : buy it for #{best_buying_price}$ and sell it for #{best_selling_price}$ you will make #{max_diff}$"
    result = [best_buying_day,best_selling_day]
    test = result.include?(nil)
    if test 
        "no possible uplift on this, sorry, mate. Just don't buy it !"
    else
        result
    end 
end 


# # print day_trader(price_array)
# print day_trader([1,2,3,4,5,6,7,8,9,10])
# print day_trader([8,7,6,5,4,3,2,1])


