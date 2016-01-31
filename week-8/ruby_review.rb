# Cipher Challenge

# I worked on this challenge [by myself, with:]
# I spent [#] hours on this challenge.

# 1. Solution
# Write your comments on what each thing is doing.
# If you have difficulty, go into IRB and play with the methods.

# defines a method that takes an argument
# def dr_evils_cipher(coded_message)
#   # takes the argument provided as input and makes all characters lower case and creates and array where every character is an element. It assigns this array to the "input" variable.
#   input = coded_message.downcase.split("") # Check out this method in IRB to see how it works! Also refer to the Ruby docs.
#   #this is likely a containter array for the eventual output.
#   decoded_sentence = []
#   #This is a hash with strings as keys and strings as values. Perhaps a "shift" of four letters is best accomplished with an array of letters and for every letter in the index it takes the index of that letter and outputs the letter at index -4. The pros of using a hash here are the explicit equivalency made between "input" and "output" characters. However, using strings as keys requires more memory than necessary and it requires iterating over every key in order to work.
#   cipher = {"e" => "a",   # This is technically a shift of four letters...Can you think of a way to automate this? Is a hash
#             "f" => "b",   # the best data structure for this problem? What are the pros and cons of hashes?
#             "g" => "c",
#             "h" => "d",
#             "i" => "e",
#             "j" => "f",
#             "k" => "g",
#             "l" => "h",
#             "m" => "i",
#             "n" => "j",
#             "o" => "k",
#             "p" => "l",
#             "q" => "m",
#             "r" => "n",
#             "s" => "o",
#             "t" => "p",
#             "u" => "q",
#             "v" => "r",
#             "w" => "s",
#             "x" => "t",
#             "y" => "u",
#             "z" => "v",
#             "a" => "w",
#             "b" => "x",
#             "c" => "y",
#             "d" => "z"}
#   # this is iterating over the input array. We are looking at every letter in the input sentence.
#   input.each do |x| # What is #each doing here?
#     #this sets found_match to false because if it is true, the decoded message would receive a character from the original input, rather than the cipher functions described below.
#     found_match = false  # Why would this be assigned to false from the outset? What happens when it's true?
#     #each_key is iterating over the keys in the hash "cipher". For every input character(x), if that character matches one of the keys in the cipher(y), then add the value of that key to the decoded message and set found match equal to true on every iteration.
#     cipher.each_key do |y| # What is #each_key doing here?
#       if x == y  # What is this comparing? Where is it getting x? Where is it getting y? What are those variables really?
#         decoded_sentence << cipher[y]
#         found_match = true
#         #The loop breaks here to exit the current loop over the cipher keys. This allows the input.each loop to move on to the next character without having to iterate for every key in the cipher.
#         break  # Why is it breaking here?
#         #for every key in the hash, the current input character is one of the following symbols, add a space to the decoded message. This requires a break or a space will be added number_of_keys times every time one of these symbols is encountered.
#       elsif x == "@" || x == "#" || x == "$" || x == "%"|| x == "^" || x == "&"|| x =="*" #What the heck is this doing?
#         decoded_sentence << " "
#         found_match = true
#         break
#         #this creates an array from the range 0 to 9 then checks if the input character is included in this temporary array. if it is, it simply passes along the input character to the decoded message.
#       elsif (0..9).to_a.include?(x) # Try this out in IRB. What does   " (0..9).to_a "    do?
#         decoded_sentence << x
#         found_match = true
#         break
#       end
#     end
#     #This is looking for input characters that are not included in the hash, nor in the range 0 to 9, nor in the statement on line 55. If the character does not fit any of these profiles, it is passed along to the decoded message.
#     if not found_match  # What is this looking for?
#       decoded_sentence << x
#     end
#   end
#   #This method joins the array to a string without any separating characters. It reassigns the decoded_sentence to this new string and returns it implicitly.
#   decoded_sentence = decoded_sentence.join("")
#   #What is this method returning?
# end

# Your Refactored Solution
def dr_evils_cipher(coded_message)
  input_message_array = coded_message.downcase.split("")

  decoded_sentence = []

  letters_a_to_z = ('a'..'z').to_a

  space_symbols = ["@", "#", "$", "%", "^", "&", "*"]

  input_message_array.each do |input_character|
    if letters_a_to_z.include?(input_character)
      decoded_sentence << letters_a_to_z[letters_a_to_z.index(input_character) - 4]
    elsif space_symbols.include?(input_character)
      decoded_sentence << " "
    else
      decoded_sentence << input_character
    end
  end
  decoded_sentence.join("")
end





# Driver Test Code:
p dr_evils_cipher("m^aerx%e&gsoi!") == "i want a coke!" #This is driver test code and should print true
# Find out what Dr. Evil is saying below and turn it into driver test code as well. Driver test code statements should always return "true."
p dr_evils_cipher("syv%ievpc#exxiqtxw&ex^e$xvegxsv#fieq#airx%xlvsykl$wizivep#tvitevexmsrw.#tvitevexmsrw#e*xlvsykl#k&aivi%e@gsqtpixi&jempyvi.
&fyx%rsa,$pehmiw@erh#kirxpiqir,%ai%jmreppc@lezi&e&asvomrk%xvegxsv#fieq,^almgl^ai^wlepp%gepp@tvitevexmsr^l")
p dr_evils_cipher("csy&wii,@m'zi@xyvrih$xli*qssr$mrxs&alex@m#pmoi%xs#gepp%e^hiexl#wxev.")
p dr_evils_cipher("qmrm#qi,*mj^m#iziv^pswx#csy#m^hsr'x%orsa^alex@m%asyph^hs.
@m'h%tvsfefpc%qszi$sr%erh*kix#ersxliv$gpsri@fyx*xlivi@asyph^fi@e^15&qmryxi@tivmsh%xlivi$alivi*m*asyph&nywx^fi$mrgsrwspefpi.")
p dr_evils_cipher("alc@qeoi*e$xvmppmsr^alir#ai*gsyph%qeoi...#fmppmsrw?")

# Reflection
# Keep your reflection limited to 10-15 minutes!
=begin

What concepts did you review or learn in this challenge?

The core concept involved in this challenge was refactoring for readability and simplicity. Although I was able to  produce my refactored solution fairly easily, understanding the "initial" solution was the most challenging part because of the convoluted logic, loop breaks, and nested iteration. I had to review how breaks impact loops and nested loops, and I briefly had to check out some finer points of the "each_key" method for iterating over hashes.

What is still confusing to you about Ruby?

Sometimes I have difficulty determining the flow control when logic and iteration is overly complex. Keeping track of where I am in a particular loop, especially when loops are nested or contain clauses to break can be especially difficult to wrap my head around.

What are you going to study to get more prepared for Phase 1?

I am going to study some Object oriented design concepts to break down large methods and complex logic into simpler, easier-to-manage methods.


=end