Article.delete_all
Comment.delete_all

a1 = Article.create(
  title: 'Duis id erat felis. Nam.',
  body: "Fusce ante leo, vestibulum sollicitudin scelerisque et, egestas vel neque. Sed consequat sagittis tortor ac commodo. Vestibulum nec molestie nisl. Suspendisse vitae sodales libero. Suspendisse ultrices feugiat pellentesque. In a dignissim nunc. Donec eget ipsum at enim commodo feugiat vel in est. Curabitur orci sem, mattis non feugiat nec, cursus nec nisi. Vestibulum libero magna, consectetur sit amet dolor vitae, faucibus dapibus libero. Phasellus et massa quis lacus porta sollicitudin nec eu massa. Aliquam vel imperdiet orci. Nam molestie fringilla enim. Etiam eu augue tristique, tristique urna et, auctor risus. Phasellus in nulla id tortor auctor molestie nec vel tellus. Vivamus ipsum dui, sagittis ac nulla eget, dignissim consequat mauris. Vestibulum ullamcorper luctus nibh, et venenatis eros laoreet eget.

Quisque semper massa laoreet libero rhoncus, in molestie orci auctor. Suspendisse in ultrices orci. Proin eleifend tempor diam et fringilla. Quisque tincidunt tristique libero, id accumsan urna consectetur vitae. Aenean rutrum justo at nunc viverra scelerisque. Curabitur non neque accumsan, faucibus diam ut, commodo dui. Cras ut tellus velit."
  )

a2 = Article.create(
  title: "Nulla vestibulum malesuada dictum. Pellentesque.",
  body: "Sed sed pellentesque sapien, id ultrices enim. Donec quis aliquet quam. Etiam sem leo, commodo vitae elit at, imperdiet sollicitudin urna. Duis sed imperdiet ante. Pellentesque id interdum turpis, ac iaculis est. Cras bibendum consectetur imperdiet. Phasellus eget nulla tincidunt velit suscipit facilisis et ac velit. Etiam dictum, felis sit amet aliquam pretium, dui velit pellentesque mi, eu porttitor justo magna posuere lorem. Mauris nibh urna, elementum at tincidunt sed, blandit in dui. Donec porttitor arcu vitae lacus tincidunt, vel porttitor lacus laoreet. Etiam consectetur pellentesque malesuada. Vestibulum dapibus tortor in tellus consectetur, sit amet hendrerit nisi tempus.

Fusce ac congue lectus, non scelerisque quam. Integer ornare quis sapien id pulvinar. Donec at tempus tellus. Praesent elit magna, cursus id convallis nec, placerat quis lectus. Fusce turpis tellus, scelerisque at turpis eu, facilisis condimentum sem. Nam imperdiet tortor quis neque viverra sodales. Nunc lacinia euismod ipsum sed convallis. Nam id erat ac sapien interdum congue at eget orci.

Nunc iaculis tortor metus, a placerat enim euismod a. Nullam vulputate auctor risus, eu dignissim nulla consequat non. In hac habitasse platea dictumst. Nulla semper leo erat, dictum pulvinar tortor pellentesque eu. Pellentesque ac commodo mauris. Suspendisse potenti. Integer at ligula vitae odio elementum ultrices suscipit vel tortor. In ornare mauris et ligula aliquam tincidunt ac at nisi. Sed et semper est. Nulla vel lorem vitae turpis commodo ornare. Pellentesque et porta lorem, a malesuada ipsum. Integer nec ligula nec sapien blandit varius eu ac ante. Maecenas aliquet pharetra neque, non eleifend magna condimentum ac. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Fusce facilisis urna quis mi pretium, ut hendrerit turpis pharetra. Etiam eget eleifend enim."
  )

c1 = Comment.new
c1.body = "This is a great article!"
c1.save

a1.comments << c1
