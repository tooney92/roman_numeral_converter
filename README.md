# roman_numeral_converter
converts numbers to roman numerals

++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

This program converts numbers to roman numerals. I noticed a commonality in the convertion process of roman numerlas. 

1. romans used numbers 1-3000 with the symbols I-1, V-5, X-10, L-50, C-100, D-500, M-3000. 
2. These numbers can be categorized into units= IVX; tens = XLC and  Hundreds = XLC. thousands = M
3. Now here is the trick! :) ==>>>!@#$ (sorry i am so excited! lol) +_)(*&^%$#@#
4.to make this easy, i will first do the formula, then I would list the steps!
                                      
                                        
                                                    Formula:
                                                Base | MIddle | Peak
                                        units = I       V         X
                                        tens =  X       L         C
                                     hundreds = C       D         M
                                         
                                     each of these have a base, a middle and a peak
                                     
                                                now the logic is this:
                         lets make number = n (i dont want to type number every time!lazy? thats exactly why i learnt to code lol :) )
                                                 
                                        if n < 5 and n is not equal to 4: this gives us numbers 1,2 or 3.
                                              do ==>  n x base
                                        if n == 4:
                                              do ==> base + middle
                                        if n > 5 and n < 9: this gives us numbers 6 or 7 or 8
                                              do ==> middle + base(n-5)
                                        if n == 9:
                                              do ==> base + peak
                                        if n == 5:
                                              do ==> middle

             step one: get the length of the number. why? so we know if we are dealing with thousands,hundreds, tens, or units. how do we get the length of an integer? simple, we convert it to a string then call the length method. 
             
             step two: check the length and apply either of this cases. {thousands are the easiest, just multiply 'M' by the thousandth number}. 
        
                   1.) when the length of the number is 4: {we will use 2467 as test case}  
                        a.) for 2 do ==> M x 2 ===> MM
                        b.) for 4 do ==> base + middle ==> CD
                        c.) for 6 do ==> middle + base*(6-5) ==> LX
                        d.) for 7 do ==> middle + base*(7-5) ==> VII
                       the roman convertion for 2467 = MM-CD-LX-VII 
                       
                   2.) when the length of the number is 3: {we will use 789 as test case} 
                        a.) for 7 do ==> middle + base*(7-5) ==> DCC
                        b.) for 8 do ==> middle + base*(8-5) ==> LXXX
                        c.) for 9 do ==> base + peak ==> IX
                       the roman convertion for 789 = DCC-LXXX-IX
                     
                    3.) when the length of the number is 2: {we will use 78 as test case} 
                        a.) for 7 do ==> middle + base*(7-5) ==> LXX
                        b.) for 8 do ==> middle + base*(8-5) ==> VIII
                       the roman convertion for 78 = LXX-VIII
                       
                    4.) when the length of the number is 1: {we will use 9 as test case} 
                        a.) for 9 do ==> base + peak ==> IX
                        
                        
                    NOticed what we did? we check the length of the number, so we know what category the numbers fall under.
                    
                   1.) for 2467, the length is 4 Now we know we are dealing with a thousand figure. Meaning? *drum roll* --> 2 is thousand. 4 is hundred. 3 is tens. 7 is unit. we now go to our logic and implement the logic as we saw above.
                   
                   2.) for 789, length is 3. Now we know we are dealing with hundreds figure. 7 is hundred. 8 is tens. 9 is unit. we go to out logic above and implement.  
  
                   3.) and 4.) we do the same thing. 
                   
                   
+++++++++++++++++++++++++++++++++ WELCOME TO MY TED TALK +++++++++++++++++++++++++++++++++++++++++++++++
    
