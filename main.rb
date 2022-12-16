def caesar_cipher(s, shift)
    # Create a string of all the lowercase and uppercase letters of the alphabet
    alphabet = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"
  
    # Create a string to store the ciphered message
    cipher = ""
  
    # Loop through each character in the input string
    s.each_char do |char|
      # If the character is not a letter, add it to the cipher text as is
      if !alphabet.include?(char)
        cipher += char
      else
        # Get the index of the character in the alphabet
        idx = alphabet.index(char)
  
        # Shift the character by the shift factor
        shifted_idx = (idx + shift) % alphabet.length
  
        # Add the shifted character to the cipher text
        cipher += alphabet[shifted_idx]
      end
    end
  
    # Return the ciphered message
    return cipher
  end
  
  
  ciphered = caesar_cipher("Ruby is often used for web development, scripting, and creating command-line interfaces", 3)

  puts ciphered

  deciphered = caesar_cipher("Ruby is often used for web development, scripting, and creating command-line interfaces", -3)


  puts deciphered