Article.delete_all

post_1 = {title: "Quin's First BlogPost",
  body: "This is Quin's first blog post. I am using Ruby on Rails because I am one kickhashin son of a bitch"
}

a1 = Article.create(post_1)

c1 = Comment.create(body: "Oh yea you are!")
c2 = Comment.create(body: "WDI sure is fun!")

a1.comments = [c1, c2]


post_2 = {title: "Quin's Second BlogPost",
  body: "I can't wait to work on projects next week! I wonder what cool stuff people will build with their new skills."
}

a2 = Article.create(post_2)

c3 = Comment.create(body: "I'm going to build a rocket ship.")
c4 = Comment.create(body: "I'm going to build a chat room.")
c5 = Comment.create(body: "I'm going to a new music site.")

a2.comments =[c3, c4, c5]

