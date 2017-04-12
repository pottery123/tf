# def document_key_values
#   file = @document
#   reduced_file =  File.readlines(file).reduce(:concat)
#   stripped_and_split_sorted = reduced_file.downcase.gsub(/[^a-z0-9\s]/i, '').split(' ').sort
#   key_values = stripped_and_split_sorted.each_with_object(Hash.new(0)) { |a,counts| counts[a] += 1 }
#   puts key_values[@word]
# end
#a.term_frequency_score
#a.term_frequency_score
#downcase.gsub(/[^a-z0-9\s]/i, '').split(" ").sort
    #puts  a.each_with_object(Hash.new(0)) { |a,counts| counts[a] += 1 }
#sort.words.each_with_object(Hash.new(0)) { |word,counts| counts[word] += 1 }


#line.downcase.gsub(/[^a-z0-9\s]/i, '').split(" ").sort

# def term_frequency_score
#   file = @document
# File.readlines(file).each do |line|
#   puts line.downcase.gsub(/[^a-z0-9\s]/i, '').split(" ").flatten.sort
#   end
# end
# candy = ["david", "sarah", "paul"]
# words = %w(how much wood would a wood chuck chuck)
# counts = Hash.new 0
# words.each do |word|
#   counts[word] =+ 1
#
# end
#
# puts counts
#
#
#
# map = Hash.new []
# strings = ["abc", "def", "four", "five"]
#
# strings.each do |word|
#     map[word.length] += [word]
# end
#
# puts map


# def method(*arg: = 'arg' kw_arg: = 'kw_arg')
#   [arg, kw_arg]
# end
#
# puts method(arg: "pual", "david","sarah" kw_arg: "ruth", "sarah")



# def method(array1, array2)
#   puts array1, array2
# end
#
# method(['sarah','kane'], ['david', 'kane'])


#t.word_list('sea','a','and')
# def word_list(*list_words)
#   w = Words.new(list_words)
#   return w.words
# end


#   highest_score = 0
#   document = " "
#   tf_score.each do |documents|
#     if documents.split(' ')[1].to_i > highest_score
#       highest_score  = documents.split(' ')[1].to_i
#       document = documents.split(' ')[0]
#   end
# end
# puts document, highest_score
#  #puts tf_score.sort[0].split(" ")[1].to_i


# puts "$" * 200
# puts d.full_documents([more_calculations_finding_the_highest_words[1][1]])
# puts "$" * 200
# puts d.full_documents([more_calculations_finding_the_highest_words[2][1]])
# puts "$" * 200
#puts d.full_documents([more_calculations_finding_the_highest_words[3][1]])
#puts "$" * 200
#puts d.full_documents(more_calculations_finding_the_highest_words[2][2])

#puts [more_calculations_finding_the_highest_words[0][0]]
 #puts d.full_documents([more_calculations_finding_the_highest_words[0][0]])



#t.word_list('sea','a','and')
# def word_list(*list_words)
#   w = Words.new(list_words)
#   return w.words
# end


#   highest_score = 0
#   document = " "
#   tf_score.each do |documents|
#     if documents.split(' ')[1].to_i > highest_score
#       highest_score  = documents.split(' ')[1].to_i
#       document = documents.split(' ')[0]
#   end
# end
# puts document, highest_score
#  #puts tf_score.sort[0].split(" ")[1].to_i



@chunked_array = [["queequeg", 0, "mobydick-chapter1.txt"
],["queequeg", 0, "mobydick-chapter2.txt"
],["sea",0, "mobydick-chapter2.txt"],
["sea",9, "mobydick-chapter1.txt"],
["whale",1,"mobydick-chapter2.txt"
],["whale",3,"mobydick-chapter1.txt"]]
