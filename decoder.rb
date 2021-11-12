morse_message_bottle = '.-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-. / .-. ..- -... .. . ...'
morse_message_word = '-- -.--   -. .- -- .'

def decode_char(morse_char)
  morse_dictionary = {
    'A' => '.-', 'B' => '-...', 'C' => '-.-.',
    'D' => '-..', 'E' => '.', 'F' => '..-.',
    'G' => '--.', 'H' => '....', 'I' => '..',
    'J' => '.---', 'K' => '-.-', 'L' => '.-..',
    'M' => '--', 'N' => '-.', 'O' => '---',
    'P' => '.--.', 'Q' => '--.-', 'R' => '.-.',
    'S' => '...', 'T' => '-', 'U' => '..-',
    'V' => '...-', 'W' => '.--', 'X' => '-..-',
    'Y' => '-.--', 'Z' => '--..'
  }
  morse_dictionary.key(morse_char) || ' '
end

def decode_word(morse_word)
  word = ''
  morse_word.split.each do |char|
    word += decode_char(char)
  end
  word
end

def decode_message(morse_text)
  message = []
  morse_text.split('   ').each do |word|
    message.push(decode_word(word))
  end
  message.join(' ')
end

result_bottle = decode_message(morse_message_bottle)
result_word = decode_message(morse_message_word)

puts "The message from bottle: #{result_bottle}"
puts "The entire message decode result: #{result_word}"
