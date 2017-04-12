require "minitest/autorun"
require_relative 'documents.rb'
#Unit tests
class TestDocument < Minitest::Test
  def setup
    @document = Documents.new(['words.txt'])
    @document1 = Documents.new(['mobydick-chapter1.txt'])
    @document2 = Documents.new(['mobydick-chapter2.txt'])
    @document3 = Documents.new(['mobydick-chapter3.txt'])
    @document4 = Documents.new(['mobydick-chapter4.txt'])
    @document5 = Documents.new(['mobydick-chapter5.txt'])


  end

  def test_document_hash_is_a_hash
    assert_kind_of Hash, @document.documents_hash[0]
  end

  def test_document_counts_all_words
      assert_equal 15, @document.documents_hash[0].length
  end

  def test_document_counts_tf_score_of_a_word
      assert_equal 5, @document.documents_hash[0]['fun']
  end

  def test_document_counts_tf_score_of_a_word
      assert_equal 5, @document.documents_hash[0]['fun']
  end

  def test_document_counts_tf_score_of_a_queequeg_in_mobydick_chapter1
      assert_equal 0, @document1.documents_hash[0]['queequeg']
  end

  def test_document_counts_tf_score_of_a_queequeg_in_mobydick_chapter2
      assert_equal 0, @document2.documents_hash[0]['queequeg']
  end

  #picked up another problem this return 9 ten instance of sea, but a common
  #word search in the actual document on atom returns 17 . Investigating the issue.
  #issued resolved, my program returns only the word sea cleared by all white space
  def test_document_counts_tf_score_of_a_sea_in_mobydick_chapter1
      assert_equal 9, @document1.documents_hash[0]['sea']
  end

  #my test picked up 4 instances of queequeg but with an uppercase word
  def test_document_counts_tf_score_of_a_queequeg_in_mobydick_chapter3
      assert_equal 4, @document3.documents_hash[0]['queequeg']
  end

  def test_if_arguments_are_not_in_array
      assert_equal "Documents need to be in an array", @document.full_documents('mobydick-chapter1.txt')
  end

  def test_if_full_documents_return_full_document
      assert_kind_of Array, @document.full_documents(["mobydick-chapter1.txt"])
  end


end
