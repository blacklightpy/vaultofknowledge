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
# Concrete Example
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
# The DOM Class
All methods are part of the `Document` class, which can be used by the object `document`. The `document` object, also referenced under the `window` object as `window.document` is created by a browser when a page is loaded.

So, all methods are accessed by typing `document.method_name()`.
For example: `document.getElementById(id)`
# Methods of Accessing DOM Elements in JavaScript
## To uniquely identify elements
Only ID can be used to uniquely identify an element

- By ID: `getElementById(id)`
## To query for all matching elements
The Document Object contains standard function to query elements by `name`, `class`, `tag` and `a combination of tag and namespace`.

- By Name: `getElementsByName(name)`
- By Class: `getElementsByClassName(class)`
- By Tag: `getElementsByTagName(tag)`
- By Tag and Namespace: `getElementsByTagNameNS(namespace, tag)

To find methods to modify the content of these elements and more, best refer the standard documentations and guides:
## Standards
- [W3C (World Wide Web Consortium)](https://whatwg.org/): Generic Web Standards
	- The HTML Working Group brings WHATWG HTML and DOM review drafts to W3C Recommendations
- [WHATWG (Web Hypertext Application Technology Working Group)](https://whatwg.org/): The Living HTML Standard, DOM and Fetch
- [ECMA (European Computer Manufacturers Association)](https://ecma-international.org/): ECMAScript Standard, which JavaScript is based on
- [Khronos Group](https://www.khronos.org/): Defines graphics standards such as WebGL (as well as OpenGL, Vulkan, etc.)
- [MDN (Mozilla Developer Network) Web Docs | References](https://developer.mozilla.org/en-US/): Freely maintains active documentations of HTML, CSS and JS
## Guides
- [MDN (Mozilla Developer Network) Web Docs | Guides](https://developer.mozilla.org/en-US/docs/Learn): Freely guides for learning web development with HTML, CSS, JS and Web Frameworks
- [W3Schools](w3schools.com): An often outdated, but simple free educational site for newbies, with courses on HTML, CSS and JS