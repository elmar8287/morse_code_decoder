morse_message = '.-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-. / .-. ..- -... .. . ...'

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

result = decode_message(morse_message)

print "Here is the decoder result: #{result}"
