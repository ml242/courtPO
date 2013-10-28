Article.delete_all
Comment.delete_all

a1 = Article.create(title: 'First Artcile', body: 'first article body', text: 'actual text of the first article')
a2 = Article.create(title: 'Second Article', body: 'second article body', text: 'second article text')

c1 = Comment.create(body: 'first comment')
c2 = Comment.create(body: 'first comment, second article')

a1.comments = [c1]
a2.comments = [c2]
