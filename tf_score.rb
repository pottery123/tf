require_relative 'term_frequency.rb'
require_relative 'documents.rb'


puts "*"*100
puts "Find the TF score for a word or list of words in a document or list of documents!"
puts "Example words: queequeg whale sea"
puts "Example documents: mobydick-chapter1.txt mobydick-chapter2.txt mobydick-chapter3.txt mobydick-chapter4.txt mobydick-chapter5.txt"

puts 'Type list of words here:'
word = gets
puts 'Type list of documents here:'
documents = gets

word = word.split(" ")
documents = documents.split(" ")

t = TermFrequency.new(word, documents)
puts t.return_full_documents
