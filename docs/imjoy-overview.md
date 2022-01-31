# ImJoy

[ImJoy](https://imjoy.io/docs/#/) is image processing platform with an easy to use interface running in your browser.  

* While ImJoy is a browser app, **NO** user data will be transferred over the internet.
* For best stability, we recommend using [**Chrome**](https://www.google.com/chrome/) to run the ImJoy app.  

Some of its main **features** are:

1. Specific functionality is provided by **plugins**, which can be installed with simple links. Available 
    plugins are listed in the plugin list on the left part of the interface. Plugins using Python require 
    a **Plugin engine** to be executed. Installation and usasage is detailed below.  

2. ImJoy can have several **workspaces**. Each workspace can contain multiple plugins and is usually
    dedicated to a specific data processing task. Workspaces can be selected from little puzzle 
    symbol in the upper left part of the interface.

![imjoy-interface](img/imjoy-interface.png)

## Installing plugins

We provide installation links to install for the different ImJoy plugins. If you press on such an installation link,

1. The ImJoy app will open and display a dialog asking if you want to install the specified plugin.

2. To confirm installation, press the `install` button.
3. If you have no engine connected, you will see a pop window. It informs you that if you don't specify an PLugin engine, the plugin will be launched on binder. 

![imjoy-plugin-installation](img/install_plugin.png){: style="width:400px"}

These installation links also specify in which [ImJoy workspaces](imjoy-installation.md#opening-a-workspace) the plugin will be installed.

## Opening a workspace

Once a plugin is installed, ImJoy remembers the workspaces and plugins it contains.

If you want to redo an analysis, you simply have to open the [ImJoy app](https://imjoy.io/#/app) 
and select the workspace `fq-main` for this package.

If **updates** for the installed plugins are available, you will see a corresponding symbol next to the plugin name.

![imjoy-workspacer.gif](img/imjoy-workspace.gif){: style="width:500px"}
