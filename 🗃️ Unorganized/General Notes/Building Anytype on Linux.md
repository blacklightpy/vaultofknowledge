I had difficulty building this, since I'm using Void Linux musl edition.

I will follow the release build commands from the GitHub Actions than the build guide now. I'm only taking the steps relevant to Linux.
# Copying the GitHub Actions
From `build.yml` workflow (and the Electron build action's parameters, default configuration and script)

- Setup distutils: `sudo -H pip install setuptools`
- Install Webpack CLI: `npm install --save-dev webpack-cli --legacy-peer-deps`
- Install Node.JS, NPM and Yarn (Yarn not needed since we have NPM) from Actions
- Update locale: `npm run update:locale`
- **Commented Out** - Update Deps: `npm run build:deps`
- Install anytype-heart:  `./update-ci.sh ubuntu-latest amd`
- Electron Build action
	- Installing Dependencies using NPM: `npm install`
	- Running the build script: `npm run build --if-present`
	- Building and releasing the Electron app: `npx --no-install electron-builder --linux --publish always --arm64 --x64`
		- To not release, skip `--publish always`
		- If not interested in ARM builds, skip `--arm64`
- The releases (Snap, DEB, RPM, AppImage, TAR.GZ) will be in "dist" folder.
# Test Result
This did not work in the last step, because I did not have "libxcrypt.so.1" in musl, as `libxcrypt` is not packaged.