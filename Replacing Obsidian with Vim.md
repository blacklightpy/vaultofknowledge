# Plugins

Need: Bi-Directional Links, Blocks (for Xanadu / block-quotes or code blocks), navigate links and files

Project Xanadu basically considers blocks to be independent of files (called virtual files). So files basically collect blocks into them. Like, they are like block maps, like MOCs, but instead of files, individual blocks.

- Markdown
	- MeanderingProgrammer/render-markdown.nvim (TUI-style rendering) [Checked]
	- VimWiki
		- vim-zettel (addon)
	- zk.nvim
	- telekasten.nvim (based on telescope.nvim) (TUI-style layout, latex?) [Checked]
	- Neorg (org mode in Vim, has blocks)
	- obsidian-vim
	- vim-roam.nvim (roam, has bi-direction)
	- vimwiki-roam (roam, has bi-direction)
- Tools
	- File Picker
		- telescope.nvim (file picker and preview) [Checked]
		- conjure (file picker)
		- fzf (file picker)
	- Mind Mapper
		- vim-mind-mapper (too plain, based on Groovy DSL and sigma.js) [Checked]
	- Graph Viewer
		- vim-graphviz (generate DOT files)
	- IDK
		- Treesitter
		- nvim-tree
		- vista.nvim

---

Great question! You want to emulate the **interconnected document/block system from Project Xanadu** and the **filterable concept map experience like TheBrain**—all inside **Vim/NeoVim**. Here’s how you can approach this:

## 1. Understanding the Concepts

- **Project Xanadu**: The idea is a web of interconnected blocks/documents with persistent bidirectional links.
    
- **TheBrain**: Visual, filterable, dynamic concept maps/knowledge graphs.
    
- **Vim/NeoVim**: Text-based editor, extensible with plugins and scripting.

## 2. How to Get Interconnected Docs/Blocks in Vim/NeoVim

### Core Requirements

- Bidirectional links (like backlinks in Roam Research or Obsidian)
    
- Blocks or document fragments as nodes
    
- Ability to navigate links efficiently

### Plugin Recommendations

- **Obsidian-vim or Vimwiki**: For basic wiki linking, but limited backlinks.
    
- **Neorg**: A powerful note-taking plugin for NeoVim, supports linking and some hierarchy.
    
- **vim-roam.nvim** or **vimwiki-roam**: Roam-style linking with backlinks and graph structure.
    
- **Conjure or Telescope** (for searching and filtering)

### Example Setup

- **vim-roam.nvim**
    
    - Supports bidirectional links.
        
    - Shows backlinks and linked references.
        
- **Neorg**
    
    - Has a concept of “blocks” and linking.
        
    - Built for NeoVim, extensible.

## 3. Visualizing and Filtering Concept Maps in Vim

Since Vim is terminal-based, **visual graph maps like TheBrain are tricky**. But here’s how to approximate:

### Options:

- **Use `vim-graphviz` + external Graphviz**:
    
    - Export your links as `.dot` files and render graphs.
        
    - Limited interactive features.
        
- **Use Telescope or fzf for filtering and searching links**
    
    - Filter your notes based on keywords or links.
        
    - Dynamically browse linked blocks.
        
- **NeoVim + Floating Windows + Treesitter**
    
    - You can display contextual linked notes in floating windows.
        
    - Use plugins like `nvim-tree` or `vista.vim` to view document outlines.
    
## 4. A Possible Workflow in NeoVim

1. Use **Neorg** or **vim-roam.nvim** to create notes with block-level or document-level links.
    
2. Use **Telescope.nvim** or **fzf.vim** to search and filter your notes dynamically.
    
3. For backlinks and network exploration, use the plugin’s built-in backlink viewer or write simple Vimscript/Lua to list linked notes.
    
4. For visualization:
    
    - Export your note links as a `.dot` file.
        
    - Use `Graphviz` to generate a graph image.
        
    - View it externally or embed with `:!` commands or image preview plugins.

## 5. Example Plugin Links

- **vim-roam.nvim**: [https://github.com/smoka7/vim-roam.nvim](https://github.com/smoka7/vim-roam.nvim)
    
- **Neorg**: [https://github.com/nvim-neorg/neorg](https://github.com/nvim-neorg/neorg)
    
- **Telescope.nvim**: [https://github.com/nvim-telescope/telescope.nvim](https://github.com/nvim-telescope/telescope.nvim)
    
- **vimwiki**: [https://github.com/vimwiki/vimwiki](https://github.com/vimwiki/vimwiki)

## Summary

|Feature|How to get it in Vim/NeoVim|
|---|---|
|Interconnected docs|Use Neorg or vim-roam.nvim|
|Bidirectional links|Provided by the above plugins|
|Filterable search|Telescope.nvim or fzf.vim|
|Concept map visualization|Export to Graphviz `.dot`, view externally|

