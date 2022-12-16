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
  
  
  ciphered = caesar_cipher("They rushed out the door, grabbing anything and everything they could think of they might need. There was no time to double-check to make sure they weren't leaving something important behind. Everything was thrown into the car and they sped off. Thirty minutes later they were safe and that was when it dawned on them that they had forgotten the most important thing of all.", 3)

  puts ciphered

  deciphered = caesar_cipher("They rushed out the door, grabbing anything and everything they could think of they might need. There was no time to double-check to make sure they weren't leaving something important behind. Everything was thrown into the car and they sped off. Thirty minutes later they were safe and that was when it dawned on them that they had forgotten the most important thing of all.", -3)


  puts deciphered