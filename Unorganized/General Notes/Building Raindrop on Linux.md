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

# GitHub: raindropio/app
Raindrop also has the "app" repository, which builds for Electron. I should try it too.

```YAML
name: Use Node.js 16.x
      uses: actions/setup-node@v1
      with:
        node-version: 16.x

    - name: Install dependencies
      run: npm i

    - name: Make version.sh for xcode project executable
      run: chmod +x build/xcode/Save\ to\ Raindrop.io/version.sh

    - name: Build for all platforms
      env:
        SENTRY_AUTH_TOKEN: ${{ secrets.SENTRY_AUTH_TOKEN }}
      run: npm run build && npm run build:extension && npm run build:electron

    - name: Read package json
      id: json
      uses: zoexx/github-action-json-file-properties@release
      with:
        file_path: "package.json"

    Files will be in dist/.zip
  ```