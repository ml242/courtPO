a1 = Article.create(title: 'Fun times')
a1 = Article.create(body: 'Oh, the times we had')
#a1 = Article.create(comments: 'thanks for the info') #undefined method `each' for "thanks for the info":String

a2 = Article.create(title: ' Bad times')
a2 = Article.create(body: 'Oh, the sad times we had')
#a2 = Article.create(comments: ' this is sad')

c1 = Comment.create(article_id: 1)
c1 = Comment.create(body: 'things are bad')


c2 = Comment.create(article_id: 2)
c2 = Comment.create(body: 'things are great')
