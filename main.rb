def main()
  puts "How many characters will your password have"
  len = gets.chomp.to_i
  def generator(len)
    chars = 'qwertyuiopasdfghjklçzxcvbnm1234567890-=´[~],.;/!@#$%¨&*()_+`{}^:><?¹²³£¢¬§ªº°'
    chars.scan(/./)
    password = ''
    len.times do
      index = rand(0..76)
      password += chars[index]
    end
    puts "\n============================\n#{password}\n============================"
    file_save = File.new('password.txt', 'a')
    file_save.write(password)
    file_save.close()
  end
  generator(len)
end
main()