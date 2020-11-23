# Development notes

## Documentation

Documentation

* is **written** with mkdocs using the readthedocs theme: [mkdocs website](https://www.mkdocs.org/)

* **Online documentation** is automatically build by [readthedocs.com](https://readthedocs.org/) from the GitHub repository. Configuration file can be used to specify additional pip requirements, e.g. for markdown extension, for the build.

### Local build

You can build the documentation locally, before pushing to GitHub:

Install mkdocs:  `pip install mkdocs`

__Basic use__:

* Launch dev-server: `mkdocs serve`
* Building the site: `mkdocs build`

### PyMdown Extensions

https://facelessuser.github.io/pymdown-extensions/#extensions

allows to create block-styled side conten

``` markdown
!!! note "This is a note"
    Lorem ipsum dolor sit amet
```

!!! note "This is a note"
    Lorem ipsum dolor sit amet

#### Resize images

Includes the  [attr_list extension](https://python-markdown.github.io/extensions/attr_list/), which allows for resizing (among other things):

``` markdown
![imjoy-connect-jupyter.gif](img/imjoy-connect-jupyter.gif){: style="width:300px"}
```

![imjoy-connect-jupyter.gif](img/imjoy-connect-jupyter.gif){: style="width:300px"}

``` markdown
![imjoy-connect-jupyter.gif](img/imjoy-connect-jupyter.gif){: style="width:100px"}
```

![imjoy-connect-jupyter.gif](img/imjoy-connect-jupyter.gif){: style="width:100px"}

## Update imjoy manifest

After changes in ImJoy plugins, update the plugin manifest.

Install `node.js` with conda

``` bash
conda install -c conda-forge nodejs
```

Run this command in project root directory

``` bash
node update_manifest.js
```
