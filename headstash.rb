# C:\Users\hsu4d\Documents\ruby\headstash.rb

file = "C:\\Users\\hsu4d\\Downloads\\headstash.csv"

require 'csv'
count = 0 
stash = {}
csv = CSV.foreach(file, :headers => true) do |row|
  # puts row[10].class
  if row[10].downcase.include?("stash") 
    puts row[10]
  end
 end

