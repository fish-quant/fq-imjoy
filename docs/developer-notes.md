
## Documentation
Documentation is written with mkdocs using the Material style.

* [mkdocs website](https://www.mkdocs.org/)
* [Material for mkdocs](https://squidfunk.github.io/mkdocs-material/)

# Installation

Install mkdocs:  `pip install mkdocs`
Install Material: `pip install mkdocs-material`

# Basic use

* Launch dev-server: `mkdocs serve`
* Building the site: `mkdocs build`
* Deploy to GitHub pages: `mkdocs gh-deploy --clean --force`

## Update imjoy manifest
After changes in ImJoy plugins, update the plugin manifest.

Install `node.js` with conda

```
conda install -c conda-forge nodejs
```

Run this command in project root path
```
node update_manifest.js
```