Just like Anytype, I had difficulty building Raindrop too, since I'm using Void Linux musl libc edition.

I will follow the release build commands from the GitHub Actions than the build guide now. I'm only taking the steps relevant to Linux, given in `linux.yml` workflow.
# What works for now
- The Flatpakref by https://github.com/tinywrkb/flathub works, but it doesn't build from scratch. It takes the binary from the snap release and unsquashes it, and packs it into a glibc container.
- I believe the packages have dependency conflict, so even replicating that build may not be enough, I'd have to updated the package versions manually.
# GitHub: raindropio/desktop
It looks like the latest commit titled "Upgrade Electron" (Jun 26 2023) that replaced all Yarn commands with NPM commands is what broke the build action. He also updated the Readme, so perhaps I should follow the old commands.

- We just need Node.JS, install deps and build. ~~No need for Snap.~~
- I also have to see if it's not NPM builder, but the dependencies that broke the build. I could clone the repo and run the build to see what's wrong.
- Surely, the `package.json` file was also modified..
- Latest release (5.6.5, from Jun 5 2023) is still from the Action, so I guess I can just use that.
- Linux build script was last modified many commits ago, in Jul 2022 (i.e. before the latest commit)

Wait, it only has Snap builds for now!!

- First clone the git repository
- Merge submodules
- Readme says `npm`, but it used to be `yarn`
- Readme says `npm build`, but it used to be `yarn build:linux`
- Debugging commits will be hard, and I'm sleepy

- So I think the right way is to checkout to an older commit, and build with `yarn`.

## Trying to build the older commit
- Failed, with some version mismatch of packages.
- NPM is a real trouble to deal with.
# GitHub: raindropio/app
Raindrop also has the "app" repository, which builds for Electron. I should try it too.

- Install Node 16.x from Actions
- Install dependencies: `npm i`
- Build for Web and Electron: `npm run build && npm run build:electron`
- Files will be in dist/.zip

Apparently "app" is a submodule in desktop, under the "webapp" folder. So this wouldn't be very useful just by itself.