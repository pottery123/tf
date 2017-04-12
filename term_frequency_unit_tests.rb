require "minitest/autorun"
require_relative 'term_frequency.rb'

#Unit tests
class TestTermFrequency < Minitest::Test
  def setup
    @tf = TermFrequency.new(
    ["queequeg", "whale", "sea"],
    ["mobydick-chapter1.txt",
    "mobydick-chapter2.txt",
    "mobydick-chapter3.txt",
    "mobydick-chapter4.txt",
    "mobydick-chapter5.txt"] )

    @tf_sea_in_1 = TermFrequency.new(
    ["sea"],
    ["mobydick-chapter1.txt"] )

    @tf_queequeg_in_3 = TermFrequency.new(
    ["queequeg"],
    ["mobydick-chapter3.txt"] )

    @tf_queequeg_in_1 = TermFrequency.new(
    ["queequeg"],
    ["mobydick-chapter1.txt"] )

    @chunked_array = [
      ["queequeg", 0, "mobydick-chapter1.txt"],
      ["queequeg", 0, "mobydick-chapter2.txt"],
      ["sea",      0, "mobydick-chapter2.txt"],
      ["sea",      9, "mobydick-chapter1.txt"],
      ["whale",    1, "mobydick-chapter2.txt"],
      ["whale",    3, "mobydick-chapter1.txt"]
      ]


  end

  def test_tf_score_returns_correct_tf_score
    assert_kind_of Array, @tf.tf_score
  end

  def test_tf_score_returns_a_populated_array
    assert_equal 15, @tf.tf_score.length
  end

  def test_tf_score_of_sea_in_chapter_1
    assert_equal 4, @tf_queequeg_in_3.tf_score[0][1]
  end

  def test_tf_score_of_sea_in_chapter_3
    assert_equal 9, @tf_sea_in_1.tf_score[0][1]
  end

  def test_tf_score_of_queequeg_in_chapter1
    assert_equal 0, @tf_queequeg_in_1.tf_score[0][1]
  end

  def test_divide_documents
      assert_equal 3, @tf.divide_documents.length
  end

  def test_return_document_with_highest_tf_scores_for_each_word
    assert_kind_of Array, @tf.document_with_highest_tf_score_for_each_word(@chunked_array)
  end

  def test_more_calculations_finding_the_highest_words
    assert_equal "queequeg", @tf.more_calculations_finding_the_highest_words[0][0]
  end

  def test_more_calculations_finding_the_highest_words
    assert_equal "11", @tf.more_calculations_finding_the_highest_words[0][3]
  end

  def test_return_full_documents
    assert_equal nil, @tf.return_full_documents
  end


end
