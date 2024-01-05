
- I'd like to avoid using iframes.
# Idea
- Replace the content and the TOC pane divs with the page selected at the left, upon clicking the links.

- So the ToC links must be replaced by an action that inerts their onclick event inert. So no redirection takes place.

- The JS should fetch the other page, extract it's content and ToC panes, and replace it for the front page.


- On the larger term, we can make it so that pages are only stored as content and ToC divs.. and the index page simply loads the articles as per the queries (`websiindex?`)