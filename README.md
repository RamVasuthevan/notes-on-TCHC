# Ram's Real Estate Site

This is a work in progress site about real estate mainly in Toronto.

Clubber, the micro CMS that builds this site is an, is an homage to [The Grug Brained Developer](https://grugbrain.dev/)

# Clubber

### setup
- Installs Pandoc from Debian archive and Pandocomatic using Bundler
- Pandoc is updated by manually updating pandoc-version.deb file in vendor. Pandoc releases are available on [Github](https://github.com/jgm/pandoc/releases)
- Pandocomatic's version is specified by Gemfile. The Gemfile is managed by dependabot

### build
- Builds site in _site using Pandocomatic

### deploy
- Calls setup and build

### serve
- Starts a Python http.server on port 4000 inside _site

# Deployment to CloudFlare Pages
- Build command: `bash ./clubber/deploy`
- Build output directory: `/_site`

Notes:
- [ChatGPT chat](https://chat.openai.com/c/4ffda3c2-1b6c-41c9-81fb-b7499fd5704c)
- I can explictly set the template by copying from [default.html5](https://github.com/jgm/pandoc-templates/blob/master/default.html5)
- This [version](https://github.com/RamVasuthevan/Real-Estate/blob/a9e1f4ca23cedbf31e987391cdb7181b095bea8b/index.markdown) of the TCHC page has more metadata that I need to add
- Update clubber to delete a file from _site if it's been deleted from documents