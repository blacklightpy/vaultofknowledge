It just represents the items in the HTML as trees. This is useful for accessing and modifying HTML elements using JavaScript.
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

But in reality, you need to identifiers to identify individual elements. For example, you wouldn't be able to differentiate between the first `<p>` tag and second `<p>` tag with `html.body.p`.

> [!NOTE] NOTE
> Actually we can, by typing:
> - `document.documentElement.childNodes[1].childNodes[1]` and
> - `document.documentElement.childNodes[1].childNodes[2]`
> 
> but you should get the idea that there should be an easier way.

So we identify elements by their ID, that is, if we tag them first. But we can also use queries to get them by tags, classes, etc. But placing IDs make it easier to identify individual elements.

For example, if we have the following HTML:
```HTML
<html>
	<head>
		<title>...</title>
		<meta>...</meta>
	</head>
	<body>
		<h1>...</h1>
		<p id="p1">...</p>
		<p id="p2">FREE ROBLOCKS</p>
	</body>
</html>
```

We can type `document.getElementById("p1")` to get the element.

And typing `document.getElementById("p2").innerHtml` gets you the content of `p2`, which is:

"FREE ROBLOCKS"
# Methods of Accessing DOM Elements in JavaScript
- By ID: `document.getElementById(ID)`
	- 