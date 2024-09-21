It just represents the items in the HTML as trees.

```HTML
<html>
	<head>
		<title>...</title>
		<meta>...</meta>
	</head>
	<body>
		<h1>...</h1>
		<p>...</p>
	</body>
</html>
```

```
         html
       /      \
     /          \
   head        body
  /    \      /    \
title meta   h1     p
```

So you can address them as `html.head.title`, etc.