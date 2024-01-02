I had difficulty building this, since I'm using Void Linux musl edition.

I will follow the release build commands from the GitHub Actions than the build guide now.

From build.yml

- Setup distutils: `sudo -H pip install setuptools`
- Install Webpack CLI: `npm install --save-dev webpack-cli --legacy-peer-deps`
- Install Node.JS, NPM and Yarn (Yarn not needed since we have NPM) from Actions
- Update locale: `npm run update:locale`
- 