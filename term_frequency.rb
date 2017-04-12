require_relative 'documents.rb'



class TermFrequency
  def initialize(words, documents)
    @words = words
    @documents = documents
  end
  #computes the TF score using the document_hash method from the Documents Class
  #Stores the resulets in one long array, and is sorted alphabetically
  #Example: [["queequeg", 0, "mobydick-chapter1.txt"],["sea", 9, "mobydick-chapter1.txt"]]

  def tf_score
    count_store = []
    d = Documents.new(@documents)
    d.documents_hash.each do |document|
      @words.each do |word|
      count_store << [word] + [document[word]] + [document[:filename]]
      end
    end
    return count_store.sort
  end

  # the TF scores array are divided by the lenght of the number of documents
  # into seperate chunks which are placed into arrays, this ensures that documents
  # Tf scores and words are processed together

  def divide_documents
    chunked_array = tf_score.sort.each_slice(@documents.length)
    return chunked_array.to_a
  end

  # The highest tf score for each document is calculated, highest tf scores ties
  # are placed in an additional array
  def document_with_highest_tf_score_for_each_word(divided_documents)
      documents_with_same_scores = []
      highest_score = -1
      document_name = ''
      document_word = ''
      same_score = 0
      divided_documents.each do |document|
        if document[1].to_i > highest_score
          document_name = document[0]
          highest_score = document[1]
          document_word = document[2]
        elsif document[1].to_i == highest_score && document[1] > same_score
              same_score = document[1]
              documents_with_same_scores << document[2]
        end
      end
      return [document_name] + [document_word] + [documents_with_same_scores] + [highest_score.to_s]
  end

  # the divided_documents are scored using the document_with_highest_tf_score_for_each_word
  # and placed in an array
  def divided_documents_are_scored
        array = []
       divide_documents.each do |docs|
        array << document_with_highest_tf_score_for_each_word(docs)
       end
       return array
  end
  #Returns the TF socre for each document, the document and the word
  def return_full_documents
      d = Documents.new(@documents)
      i = 0
      while i < divided_documents_are_scored.length
      texts =  divided_documents_are_scored[i]
        puts "Word:" + texts[0]
        puts "TF socre:" + texts[3]
        puts "Document:" + texts[1]
        #puts d.full_documents([texts[1]])
        #  if texts[2][0] != nil
              puts "Document:"
              puts texts[2][0]
        #    puts d.full_documents([texts[2][0]])
          i+=1
          end
        #end
      end
end
