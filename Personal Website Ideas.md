**Inspirations**
https://nick.groenen.me/ - Good resume, values and digital garden (not my style)
https://rayhightower.com/blog/2016/01/02/jekyll-github-lunrjs/ - Jekyll, gh-pages, lunr.js (Search)
 https://zettelkasten.sorenbjornstad.com/ uses https://sobjornstad.github.io/tzk/, a TiddlyWiki mod
# Design ideas
## Goals
**Sharing Information**
*Goals Level 1:*
- Knowledgebase should support backlink views
- Search functionality for notes
Goals Level 2:
- Should show graph of interconnections. Useful for large data.
**Writing blog**
- Use categories to your advantage
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

# Tools
- Obsidian wikilinks to MD links converter (Rust) - https://github.com/zoni/obsidian-export/
- Markdown to HTML - https://zapier.com/blog/markdown-html-export/
- Zettelkasten for WP - Slippy WP Plugin
- obsidian-zola - Includes obsidian-export, LaTeX and netlify support

### Needed Features

**Knowledgebase**
- LaTeX plugin for math
- [Optional] Chat for Zettelkasten

**Blog**
- RSS
- Convert tweet replies to WP Comments (for Blog)