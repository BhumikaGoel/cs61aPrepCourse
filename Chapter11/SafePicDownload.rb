Dir.chdir '/Users/bhumikagoel/Desktop/NewPics'

pic_names = Dir['/Users/bhumikagoel/Desktop/OldPics/*.jpg']
puts 'What would you like to call this batch?'
batch_name = gets.chomp
puts

pic_number = 1

pic_names.each do |name|
  print '.'
  new_name = "#{batch_name}#{pic_number}.jpg"

  if File.exist?(new_name)
    puts "A file by the name of #{new_name} already exists!"
    exit
  else
    File.rename name, new_name
  end

  pic_number = pic_number + 1
end
