Just like Anytype, I had difficulty building Raindrop too, since I'm using Void Linux musl edition.

I will follow the release build commands from the GitHub Actions than the build guide now. I'm only taking the steps relevant to Linux, given in `linux.yml` workflow.

It looks like the latest commit titled "Upgrade Electron" that replaced all Yarn commands with NPM commands is what broke the build action. He also updated the Readme, so perhaps I should follow the old commands.

