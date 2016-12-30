header = "Table of Contents"
Chaps_Pages = [['Chapter 1','Getting Started', 'page 1'],['Chapter 2','Numbers', 'page 9'], ['Chapter 3','Letters', 'page 13']]
puts header.center(50)
puts ""

Chaps_Pages.each do |entry|
  chap = entry[0]
  name = entry[1]
  page = entry[2]
  puts chap + ":  " + name.ljust(30) + page.rjust(30)

end
