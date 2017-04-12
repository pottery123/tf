class Documents
  attr_accessor :documents
  def initialize(documents=docs)
    @documents = documents
  end
  # tracks how many times a word appears in a document
  def documents_hash
    documents_in_hash_form = []
    @documents.each do |doc|
      words = File.readlines(doc).
      reduce(:concat).downcase.gsub(/[^a-z0-9\s]/i, '').
      split(' ').
      sort.each_with_object(Hash.new(0)) { |word, counts| counts[word] += 1 }
      words[:filename] = doc
      documents_in_hash_form << words
      end
      return documents_in_hash_form
    end

    #returns a full document
    def full_documents(documents)
      if not documents.kind_of?(Array)
          return "Documents need to be in an array Ex: ['document.txt']"
      else
      documents_array = []
      documents.each do |doc|
        if doc != nil
        full_documents = File.readlines(doc)
        documents_array << full_documents
        end
      end
      return documents_array
    end
  end



end
