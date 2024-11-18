**Inspirations**
- https://nick.groenen.me/ - Good resume, values and digital garden (not my style)
- https://rayhightower.com/blog/2016/01/02/jekyll-github-lunrjs/ - Jekyll, gh-pages, lunr.js (Search)
 - https://zettelkasten.sorenbjornstad.com/ uses https://sobjornstad.github.io/tzk/, a TiddlyWiki mod
 - https://dsebastien.net/, https://dsebastien.net/blog and https://updates.dsebastien.net/
# Design ideas
## Goals
**Sharing Information**
*Goals Level 1:*
- Knowledgebase should support backlink views
- Search functionality for notes
*Goals Level 2:*
- Should show graph of interconnections. Useful for large data.
**Writing blog**
- Use categories (and tags?) to your advantage
- Personal life, creative writing, ideas

## Organization ideas
- Zettelkasten + Tags?
- Use folders. Find a balance between nesting folders and atomicity. Use a square model? (64 files = 8 files in 8 folders)
- If we limit to a maximum of 6 folders, 10^6 = 1mi files. Pretty cool.
- Still, need tags, for easy browsing. Say a file is related to multiple folders. Tags are like folders, but folders are for grouping, while tags are for identification. Each note can have a primary tag.

## Implementation ideas
- Simple: Plain HTML notes with links, and add features with JS libraries
- Use a static site generator like Jekyll
- ! forgot
- Use a CMS like Wordpress, for WP themes (overkill, masochism)
**Revenue for knowledgebase and ideas:**
- Buy Me A Coffee (no patreon bec I'm not working full time)
- Link to socials

- [[How to Make My Website Load Articles Without Redirecting]]
- [[Graphing My Website]]
- [[How to Scale my Website for Small Screens]]

# Tools
- Obsidian wikilinks to MD links converter (Rust) - https://github.com/zoni/obsidian-export/
- Markdown to HTML - https://zapier.com/blog/markdown-html-export/
- Zettelkasten for WP - Slippy WP Plugin
- obsidian-zola - Includes obsidian-export, KaTeX and elasticlunr.js
- Refer [[Obsidian Plugins and Tools]] too

### Needed Features

**Knowledgebase**
- LaTeX plugin for math
- [Optional] Chat for Zettelkasten

**Blog**
- RSS
- Convert tweet replies to WP Comments (for Blog)

# Trying to make it myself

- Layout:
	- Table of Contents
	- Navigation Tree
	- Search Bar

- Generator:
	- Convert Markdown to HTML
	- Generate Table of Contents
	- Generate Links and Backlinks
	- Generate Breadcrumbs
	- Merge Components to form Content Pages
	- Generate Graph Database
	- Generate Navigation Tree
	- Generate Search Database
	- SPA Routing
	- Apply Styles to the Website

- Styling
	- Style Site Components
		- Navigation Tree
			- Style Tree Expander
			- Style File Tree Labels
		- Table of Contents
		- Search
	- Style Content Components
		- Callouts
		- Highlights
		- External Links
		- Internal Links
		- 

- Logic
	- SPA Routine
	- Handle Tree Expander Clicks
	- Toggle Expand/Collapse All Folders
	- Graph Representation
	- Graph Redirection