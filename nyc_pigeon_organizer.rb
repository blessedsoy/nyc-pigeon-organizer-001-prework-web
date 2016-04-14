## NYC Pigeon Organizer

## Objectives

# 1. Understand Hashes and Nesting
# 2. Work on Sorting Hashes and manipulating nested data structures.

## Instructions

# You are given the following collected data on New York City pigeons in the form of a hash.

# ```ruby
# pigeon_data = {
#   :color => {
#     :purple => ["Theo", "Peter Jr.", "Lucky"],
#     :grey => ["Theo", "Peter Jr.", "Ms. K"],
#     :white => ["Queenie", "Andrew", "Ms. K", "Alex"],
#     :brown => ["Queenie", "Alex"]
#   },
#   :gender => {
#     :male => ["Alex", "Theo", "Peter Jr.", "Andrew", "Lucky"],
#     :female => ["Queenie", "Ms. K"]
#   },
#   :lives => {
#     "Subway" => ["Theo", "Queenie"],
#     "Central Park" => ["Alex", "Ms. K", "Lucky"],
#     "Library" => ["Peter Jr."],
#     "City Hall" => ["Andrew"]
#   }
# }
# ```

# Iterate over the hash above, collecting each pigeon by name and insert it
# as the key of a new hash where each name holds the attributes for that bird. 
# Your output should look something like the hash below:

# ```ruby
# pigeon_list = {
#   "Theo" => {
#     :color => ["purple", "grey"],
#     :gender => ["male"],
#     :lives => ["Subway"]
#   },
#   "Peter Jr." => {
#     :color => ["purple", "grey"],
#     :gender => ["male"],
#     :lives => ["Library"]
#   },
#   "Lucky" => {
#     :color => ["purple"],
#     :gender => ["male"],
#     :lives => ["Central Park"]
#   },
#   "Ms. K" => {
#     :color => ["grey", "white"],
#     :gender => ["female"],
#     :lives => ["Central Park"]
#   },
#   "Queenie" => {
#     :color => ["white", "brown"],
#     :gender => ["female"],
#     :lives => ["Subway"]
#   },
#   "Andrew" => {
#     :color => ["white"],
#     :gender => ["male"],
#     :lives => ["City Hall"]
#   },
#   "Alex" => {
#     :color => ["white", "brown"],
#     :gender => ["male"],
#     :lives => ["Central Park"]
#   }
# }
# ```


def nyc_pigeon_organizer(data)
  # write your code here!

name_arr = []
att = []

    data.each do |attributes, value|
      att << attributes
      value.each do |k,name| 
        name.each do |n|
          name_arr << n
        end
      end
    end

pigeon_list ={}

name_arr.each do |n|
  pigeon_list[n] = {}
att.each do |x|
  pigeon_list[n][x] = []
end
end

pigeon_list.each do |name, hash|
  hash.each do |k,a|
    data[k].each do |key, array|
      array.each do |n|
        if n == name 
          pigeon_list[name][k] << key.to_s
        end
      end
    end
  end
end

pigeon_list
end





















