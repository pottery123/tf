About TF
TF is 

How to use
To run this program you will need ruby 2.3.0p0 and the latest version of minitest.

Clone or Download this Repo.

In your command line cd into tf. If there are any additional documents you want to use, add them to the tf directory.
The best files to use are txt files as these have been tested to work well with program.

Inside the tf directory run the command ruby tf_score.rb

This will appear:
****************************************************************************************************
Find the TF score for a word or list of words in a document or list of documents!
Example words: queequeg whale sea
Example documents: mobydick-chapter1.txt mobydick-chapter2.txt mobydick-chapter3.txt mobydick-chapter4.txt mobydick-chapter5.txt

Copy and paste the example words, into the prompts or type your own words and documents, each separated by a space, no 
additional punctuation is needed.

Type list of words here:
 queequeg whale sea
Type list of documents here:
mobydick-chapter1.txt mobydick-chapter2.txt mobydick-chapter3.txt mobydick-chapter4.txt mobydick-chapter5.txt

After hitting enter the word, TF score and document, the word is found in will appear.

TF socre:11
Document:mobydick-chapter4.txt
Document:

Word:sea
TF socre:9
Document:mobydick-chapter1.txt
Document:

Word:whale
TF socre:3
Document:mobydick-chapter1.txt
Document:
mobydick-chapter3.txt


During this process an error might appear. 

/Users/sakne/whiteboarding/tf/documents.rb:10:in `readlines': No such file or directory @ rb_sysopen - dkfjadlf (Errno::ENOENT)
	from /Users/sakne/whiteboarding/tf/documents.rb:10:in `block in documents_hash'
	from /Users/sakne/whiteboarding/tf/documents.rb:9:in `each'
	from /Users/sakne/whiteboarding/tf/documents.rb:9:in `documents_hash'
	from /Users/sakne/whiteboarding/tf/term_frequency.rb:17:in `tf_score'
	from /Users/sakne/whiteboarding/tf/term_frequency.rb:30:in `divide_documents'
	from /Users/sakne/whiteboarding/tf/term_frequency.rb:59:in `divided_documents_are_scored'
	from /Users/sakne/whiteboarding/tf/term_frequency.rb:68:in `return_full_documents'
	from tf_score.rb:19:in `<main>'


Don't worry, just run this command again ruby tf_score.rb and try it again, paying careful attention to how you type in the  text document names, make sure they are correct.




More about TF

A word in TF consists of a string of characters devoid of white space. So TF will only count words that are singletones, and have no added punctuation, like a comma, hyphen or apostrophe, or additional characters.
Example 1:
    A common word search using my Atom editor will show that the word "sea" appears 16 times in mobydick-chapter1.txt and 17 times if I search the word in Chrome. Chrome and my Atom editor detect words that have sea in them like seas, sea-captan or sea-sick. In TF those words will not be counted as sea.

Example 2:
    If I search for queequeg in Chrome I will find no such word, zero instances of the word queequeg in any documents. But my Atom editor detects queequeg four times in mobydick-chapter3.txt, 13 in mobydick-chapter4.txt and four in mobydick-chapter5.txt. TF detects that queequeg is found 11 times in mobydick-chapter4.txt. From what I could gather my Chrome word search matches the exact word even within other words queequeg can't be found but Queequeg can be found. Atom checks for both uppercase and lower case and counts those words and ignores punctuation and detects words embedded in other words. TF converts all words to downcase and removes all punctuation and does not detect words embedded in other words. Each method returns different results.
    
    
    
    
    
    
    
    
    
















