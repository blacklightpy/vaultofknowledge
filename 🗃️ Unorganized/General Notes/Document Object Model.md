It just represents the items in the HTML as trees.

# Abstract Example
```HTML
<html>
	<head>
		<title>...</title>
		<meta>...</meta>
	</head>
	<body>
		<h1>...</h1>
		<p>...</p>
		<p>...</p>
	</body>
</html>
```

```
         html
       /      \
     /          \
   head        body
  /    \      /  |  \
title meta   h1  p   p
```

So you can address them as `html.head.title`, etc.

But in reality, you need to identifiers to identify individual elements. For example, you wouldn't be able to differentiate between the first `<p>` tag and second `<p>` tag with `html.body.p`. (Actually we can, by typing `document.get)

So we identify elements by their 