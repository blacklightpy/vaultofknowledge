# Premise
- I don't like how pages redirect whenever I click a folder note, but I like there being folder notes..
- I'd like to avoid using iframes.
# Idea 1 (Don't have folder notes)
- Folder notes are different from traditional idea of folders.
- But websites usually have index.html files for folders
- But we don't usually navigate like that in a wiki of articles, as for us there are no folders in a website
- Usually all the "folders" are in the "navigation bar" itself
# Idea 2 (Going to do it)
- Replace the content and the TOC pane divs with the page selected at the left, upon clicking the links.
- So the ToC links must be replaced by an action that inserts them for every `onclick` event. So no redirection takes place.
- The JS should fetch the other page, extract it's content and ToC panes, and replace it for the front page.
# Other Ideas for Extending It
## Splitting the 'Index' from 'Content and ToC'
- On the larger term, we can make it so that pages are only stored as content and ToC divs.. and the index page simply loads the articles using JS as per the queries (`website.com?content=Article Name`)
- The content will be directly available to read without the Index page (`website.com/Aritcle Name.html`)
	- But it will not have the ToC tree, which is okay as we don't care about the Index if we want just the content URL.
	- This way, for one, we will be avoiding duplication of data by keeping the ToC tree separately
	- ObsidianHTML chose not to do that, probably just to keep the codebase simpler.