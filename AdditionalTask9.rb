class String
  def suf_prefix

  puts "Введіть слово:"

  word = gets.chomp
  word = word.chars
  count = 0
   
  pref = [ ]
  suf = [ ]

  for i in 0..(word.length / 2)-1
	pref << word.shift
    suf << word.pop
	if word.length == 1 && pref.length == suf.length then
      break
    end	  
  end
  
  suf.reverse! 
  
  for i in 0..pref.length
    if pref == suf then
      count = pref.length
      break
    end
    suf.shift
    pref.pop	
  end
 
  puts count
 
  end
end