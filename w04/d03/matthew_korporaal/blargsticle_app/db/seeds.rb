Article.delete_all
Comment.delete_all

a1 = Article.create(
  title: 'My First Article',
  body: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Exercitationem, expedita debitis tempore aperiam autem temporibus nam doloribus adipisci illum praesentium quaerat dolore animi enim veritatis error officiis hic beatae aut.')
a2 = Article.create(
  title: 'Adventures in Ruby',
  body: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Exercitationem, expedita debitis tempore aperiam autem temporibus nam doloribus adipisci illum praesentium quaerat dolore animi enim veritatis error officiis hic beatae aut.')
a3 = Article.create(
  title: 'Riding the Rails',
  body: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Exercitationem, expedita debitis tempore aperiam autem temporibus nam doloribus adipisci illum praesentium quaerat dolore animi enim veritatis error officiis hic beatae aut.')
a4 = Article.create(
  title: 'Keep my Record Active',
  body: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Exercitationem, expedita debitis tempore aperiam autem temporibus nam doloribus adipisci illum praesentium quaerat dolore animi enim veritatis error officiis hic beatae aut.')
a5 = Article.create(
  title: 'Don\'t Sweat the Small Stuff',
  body: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Exercitationem, expedita debitis tempore aperiam autem temporibus nam doloribus adipisci illum praesentium quaerat dolore animi enim veritatis error officiis hic beatae aut.')

c1 = Comment.create(body: 'Itaque ut voluptate nemo reprehenderit nulla deserunt eaque facilis tempora quaerat est. Doloribus, beatae.')
c2 = Comment.create(body: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Illum, et sunt praesentium veritatis accusantium quasi delectus')
c3 = Comment.create(body: 'Itaque ut voluptate nemo reprehenderit nulla deserunt eaque facilis tempora quaerat est. Doloribus, beatae.')
c4 = Comment.create(body: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Illum, et sunt praesentium veritatis accusantium quasi delectus')
c5 = Comment.create(body: 'Itaque ut voluptate nemo reprehenderit nulla deserunt eaque facilis tempora quaerat est. Doloribus, beatae.')
c6 = Comment.create(body: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Illum, et sunt praesentium veritatis accusantium quasi delectus')
c7 = Comment.create(body: 'Itaque ut voluptate nemo reprehenderit nulla deserunt eaque facilis tempora quaerat est. Doloribus, beatae.')
c8 = Comment.create(body: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Illum, et sunt praesentium veritatis accusantium quasi delectus')
c9 = Comment.create(body: 'Itaque ut voluptate nemo reprehenderit nulla deserunt eaque facilis tempora quaerat est. Doloribus, beatae.')
c10 = Comment.create(body: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Illum, et sunt praesentium veritatis accusantium quasi delectus')
c11 = Comment.create(body: 'Itaque ut voluptate nemo reprehenderit nulla deserunt eaque facilis tempora quaerat est. Doloribus, beatae.')
c12 = Comment.create(body: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Illum, et sunt praesentium veritatis accusantium quasi delectus')
c13 = Comment.create(body: 'Itaque ut voluptate nemo reprehenderit nulla deserunt eaque facilis tempora quaerat est. Doloribus, beatae.')
c14 = Comment.create(body: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Illum, et sunt praesentium veritatis accusantium quasi delectus')
c15 = Comment.create(body: 'Itaque ut voluptate nemo reprehenderit nulla deserunt eaque facilis tempora quaerat est. Doloribus, beatae.')
c16 = Comment.create(body: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Illum, et sunt praesentium veritatis accusantium quasi delectus')
c17 = Comment.create(body: 'Itaque ut voluptate nemo reprehenderit nulla deserunt eaque facilis tempora quaerat est. Doloribus, beatae.')
c18 = Comment.create(body: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Illum, et sunt praesentium veritatis accusantium quasi delectus')
c19 = Comment.create(body: 'Itaque ut voluptate nemo reprehenderit nulla deserunt eaque facilis tempora quaerat est. Doloribus, beatae.')
c20 = Comment.create(body: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Illum, et sunt praesentium veritatis accusantium quasi delectus')

a1.comments = [c1, c2]
a2.comments = [c3, c4, c5, c6]
a3.comments = [c7, c8, c9]
a4.comments = [c10, c11, c12, c13, c14, c15, c16]
a5.comments = [c17, c18, c19, c20]

