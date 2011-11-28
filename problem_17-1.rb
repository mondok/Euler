# If the numbers 1 to 5 are written out in words: one, two, three, four, five, then there are 3 + 3 + 5 + 4 + 4 = 19 letters used in total.
# 
# If all the numbers from 1 to 1000 (one thousand) inclusive were written out in words, how many letters would be used?
# 
# NOTE: 
#   Do not count spaces or hyphens. 
#   For example, 342 (three hundred and forty-two) contains 23 letters 
#   and 115 (one hundred and fifteen) contains 20 letters. 
#   The use of "and" when writing out numbers is in compliance with British usage.
# 
# => 21124

module English
  Words = {
      0 => 'zero',
      1 => 'one',
      2 => 'two',
      3 => 'three',
      4 => 'four',
      5 => 'five',
      6 => 'six',
      7 => 'seven',
      8 => 'eight',
      9 => 'nine',
      10 => 'ten',
      11 => 'eleven',
      12 => 'twelve',
      13 => 'thirteen',
      14 => 'fourteen',
      15 => 'fifteen',
      16 => 'sixteen',
      17 => 'seventeen',
      18 => 'eighteen',
      19 => 'nineteen',
      20 => 'twenty',
      30 => 'thirty',
      40 => 'forty',
      50 => 'fifty',
      60 => 'sixty',
      70 => 'seventy',
      80 => 'eighty',
      90 => 'ninety',
  }.freeze
  
  Bases = {
    1_000_000 => 'million',
    1_000 => 'thousand',
    100 => 'hundred'
  }

  def to_eng(ands = true)
    r = self.abs
    pieces = []
    
    # handle the bases
    Bases.each do |base, word|
      r, str = process_base(r, base, word, ands)
      pieces << str unless str.empty?
    end
    
    # wrap up our final remainder after all bases have been taken out
    pieces << words(r) unless r.zero? && !self.zero?
    
    if pieces.size > 1
      pieces[0..-2].join(' ') + ' and ' + pieces[-1]
    else
      pieces.join(' ')
    end
  end
  
private

  # chunk up the base and wordify it
  # if our number is divisible by another base, re-process it
  def process_base(r, b, w, ands = true)
    str = ''
    d, r = r/b, r%b
    
    unless d.zero?
      # check if we're maxed out on the base and can re-base
      while new_base = Bases.detect{ |ba,wo| d >= ba }
        d, s = process_base(d, new_base[0], new_base[1], ands)
        str += "#{s} #{'and ' if ands}"
      end
      
      # add in the divisor
      str += "%s %s" % [words(d), w]
    end
    
    [r, str]
  end

  # handles numbers upto 100 and converts then to words
  def words(n)
    str = ''

    # process < 100
    if n.zero? || n < 20
      str = Words[n]
    else
      d, n = n / 10, n % 10
      str = Words[d*10]
      str += '-' + Words[n] unless n.zero?
    end
    
    str
  end
end

class Integer
  include English
end

t = 0
range = (1..1_000)
range.each do |i|
  t += i.to_eng.gsub(/[\s\-]/,'').size
end

puts "#{range.begin}-#{range.end} = #{t} chars"
