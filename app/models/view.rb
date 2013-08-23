

class View
  def show_list(arr)
    puts "List Tasks\n\n"
    arr.each_with_index do |item, i|
      puts "#{i+1}) #{item}"
    end
  end
end
