def roman_english(number)
    roman = []
    number = number.to_s
    def calc(n, base, middle, peak)
      if n<5 and n!=4
        return base * n
      elsif n == 4
        return base+middle
      elsif n>5 and n<9
        return middle + base*(n-5)
      elsif n == 9
        return base+peak
      elsif n == 5
        return middle
      else  
        return ''
      end
    end
    case
      when number.length == 4
        roman.push('M'*number[0].to_i)
        roman.push(calc(number[1].to_i, 'C','D','M'))
        roman.push(calc(number[2].to_i,'X','L','C'))
        roman.push(calc(number[3].to_i,'I','V','X'))
      when number.length == 3 
        roman.push(calc(number[0].to_i, 'C','D','M'))
        roman.push(calc(number[1].to_i,'X','L','C'))
        roman.push(calc(number[2].to_i,'I','V','X'))
      when number.length == 2
        roman.push(calc(number[0].to_i,'X','L','C'))
        roman.push(calc(number[1].to_i,'I','V','X'))
      when number.length == 1
        roman.push(calc(number.to_i,'I','V','X'))
    end
    print roman.join
  end
  roman_english(200)
  