Just like Anytype, I had difficulty building Raindrop too, since I'm using Void Linux musl libc edition.

I will follow the release build commands from the GitHub Actions than the build guide now. I'm only taking the steps relevant to Linux, given in `linux.yml` workflow.

# GitHub: raindropio/desktop
It looks like the latest commit titled "Upgrade Electron" (Jun 26 2023) that replaced all Yarn commands with NPM commands is what broke the build action. He also updated the Readme, so perhaps I should follow the old commands.

- We just need Node.JS, install deps and build. No need for Snap.
- I also have to see if it's not NPM, but the dependencies that broke the build. I could clone the repo and run the build to see what's wrong.
- Surely, the `package.json` file was also modified..
- Latest release (5.6.5, from Jun 5 2023) is still from the Action, so I guess I can just use that.
- Linux build script was last modified many commits ago, in Jul 2022 (i.e. before the latest commit)

Wait, it only has Snap builds for now!!

- First clone the git repository
- Merge submodules
- Readme says `npm`, but it used to be `yarn`
- Readme says `npm build`, but it used to be yarn `build:linux`
# GitHub: raindropio/app
Raindrop also has the "app" repository, which builds for Electron. I should try it too.

- Install Node 16.x from Actions
- Install dependencies: `npm i`
- Build for Web and Electron: `npm run build && npm run build:electron`
- Files will be in dist/.zip
