> [!tip] New Idea
> See this website's ToC: https://elementor.com/help/elementor-editor/getting-around-the-elementor-editor/
> - There are the expand buttons, as well as clickable links
> - If the links are clicked, they redirect to a folder note
> - This is not a new observation, but the design is cool
> - It also has breadcrumbs
> - One more observation is that there are no folders with both subfolders and other notes - that is, all folders with subfolders do not contain notes alongside those subfolders
> 	- I like that organization
> - More ideas from the page
> 	- The navbar has main ideas, browse by topic, browse by product (with selected links), and resources
> 	- The front page showcases subsections broadly
> 	- The ToC has extra sections at the bottom for New Features and Known Issues
> 	- Downside: Mobile UI doesn't have sidebar
> 		- But they make up for it, by using breadcrumbs and good folder notes
> 	- The folder notes contain big sized subfolder or note titles
> 		- The subfolders have an arrow icon, while notes have a note icon
> 		- This is similar to the expand button in ToC
> 		- But if there are too many notes or subfolders, the folder note takes multiple pages
> 	- Downside: There is no search
> - This is the Elementor help center; the main page design is an art, as it is for all sites.
# Premise
- I don't like how pages redirect whenever I click a folder note, but I like there being folder notes..
- I'd like to avoid using `iframe` s.

> [!summary] Result
> I chose to go with the Idea 1, omitting folder notes, instead choosing to simply let them be present with breadcrumbs.
> 
> However, since ObsidianHTML doesn't allow `index.html` for other pages in breadcrumbs (unless I try fixing that), I'll have to use a different name for page indices, like "Index of {title}".
> 
> But why would that be? Because breadcrumbs use a unique name for every directory? That would have problems for similarly named directories too.. But perhaps they also store paths? But then it wouldn't conflict with an `index.html` file.. Perhaps it is relative addressing that causes problems?
> 
> Anyways, I'll have to edit Breadcrumbs code if I'm to let it accept "Index of {title}" pages, so I might as well deal with fixing the `index.html` files

**Format of breadcrumbs:**

```HTML
<div class="breadcrumbs" style="flex:1 ;padding: 0.5rem; width: fit-content;display: inline;border-radius: 0.2rem;">
	<a href="/vaultofknowledge/" style="color: rgb(var(--normal-text-color));">Home</a>
	<span style="color: #666;">🔮 world building</span>
	<span style="color: #666;">science and engineering</span>
	<span style="color: #666;">Biology</span>
	<a href="/vaultofknowledge/🔮 World Building/Science and Engineering/Biology/Brownian Motors.html">Brownian Motors</a>
                    </div>
```

# Idea 1 (Don't have folder notes)
- Folder notes are different from traditional idea of folders.
- But websites usually have index.html files for folders
- But we don't usually navigate like that in a wiki of articles, as for us there are no folders in a website
- Usually all the "folders" are in the "navigation bar" itself.
- Otherwise, sub-folders or sub-pages can only be reached from other pages, like a sub-brand page
- Anyways, the concept of a folder doesn't lend itself well to navigation
- Dynamically loading site content can be weird when you are simply going through navigation elements
- Instead, a better approach would be to have an index page which does affect the breadcrumbs, but not the directory tree clicks.
# Idea 2 (Going to do it)
- Replace the content and the ToC pane divs with the page selected at the left, upon clicking the links.
- So the ToC links must be replaced by an action that inserts them for every `onclick` event. So no redirection takes place.
- The JS should fetch the other page, extract it's content and ToC panes, and replace it for the front page.
## Extra idea: Splitting the 'Index' from 'Content and ToC'
- On the larger term, we can make it so that pages are only stored as content and ToC divs.. and the index page simply loads the articles using JS as per the queries (`website.com?content=Article Name`)
- The content will be directly available to read without the Index page (`website.com/Aritcle Name.html`)
	- But it will not have the ToC tree, which is okay as we don't care about the Index if we want just the content URL.
	- This way, for one, we will be avoiding duplication of data by keeping the ToC tree separately
	- ObsidianHTML chose not to do that, probably just to keep the codebase simpler.