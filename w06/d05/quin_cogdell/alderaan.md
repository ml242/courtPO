`window.onload`

The load event fires at the end of the document loading process. At this point, all of the objects in the document are in the DOM, and all the images and sub-frames have finished loading.

##Let's talk about Star Wars

Grand Moff Tarkin is threatening to destroy Princess Leia's homeworld Alderaan unless she reveals the secret location of the Rebel Alliance!

###On your page

There should be a div with an `id` of `alderaan` it should have a class of `planet`

There should be a div with an `id` of `death-star` it should have a class of `planet`

There should be a link with an `id` of `tell` and a button with an `id` of `never`

## Let's talk about events
If you mouseover `alderaan` or `death-star` their respective names should appear.

If you click on `button#never` the `alderaan` div should be removed.

If you click on `a#tell` make a new form with a text with the name `location` and a button with the id of `secret-coordinates`

If you type `Yavin 4` into `input[name=location]` the `body` background should turn `green` otherwise make the body `red`

If you press `H` a text input with the name `help-me` and a button with the id `secret-message` should appear.

If you type `Help me Obi Wan, you're my only hope` into `input[name=help-me]` the background should change to blue.
