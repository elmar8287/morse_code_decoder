morse_message = '.-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-. / .-. ..- -... .. . ...'

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

def decode_char(morse_char)
  morse_dictionary.key(morse_char) || ' '
end

def decode_word(morse_word)
  word = ''
  morse_word.split.each do |char|
    word += decode_char(char)
  end
  word
end

def decode_message(morse_message)
  message = []
  morse_message.split('   ').each do |word|
    message.push(decode_word(word))
  end
  message.join(' ')
end

result = decode_msg(morse_str)

print "Here is the decoder result: #{result}"