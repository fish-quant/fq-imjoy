
## Installation
* If you use, FISH-quant for **the first time**, you can install it with <a href="https://imjoy.io/#/app?w=fq-main&plugin=fish-quant/fq-imjoy:FISH-QUANT@stable&upgrade=1" target="_blank">**this link.**</a> 
    
    First time installation can take a few minutes, since several Python libraries are installed.

* Once installed, the plugin will be saved in the  **workspace `fq-main`** as described [here](tools-imjoy.md#opening-a-workspace).  

In the ImJoy app, you have **main plugin** `FISH-QUANT`, as wells as several helper plugins. 

!!! info "The most important additionaln plugin that's installed is the `FISH-QUANT`."
     
    This **Python plugin** performs the actual data analysis and 
    runs on a Juypter engine, as described in the [installation instructions](tools-imjoy.md#connect-jupyter-engine). 
    
    So when using FISH-QUANT, you have to connect ImJoy to a Jupyter engine and make sure that 
    the FISH-QUANT is running on this engine.  

    ![fq-plugins.png](img/fq-plugins.png){: style="width:300px"}

## General use

### Start FISH-QUANT
After connecting ImJoy to a Jupyter engine, press on the FISH-QUANT plugin name. This will open an interface with different tabs, that 
allow to control the main workflows. Controls will only be enabled, when all necessary parameters
are defined.

1. **Data specifications**: allows to specify how the data should be read, and to load images for analysis.
2. **Detection**: perform RNA detection on individual images, and batch analysis images in one folder.


### Maximize ImJoy
To maximize the available space in the ImJoy window, you can do two things:

1. Start ImJoy as a **Chrome App**. This will detach ImJoy from Chrome and show it as a separate application with its own icon in the taskbar 
   
    ![imjoy-open-as-app.gif](img/imjoy-open-as-app.gif){: style="width:300px"}

2. **Minimize the plugin side-bar** once you launched FISH-quant. 
   
    ![imjoy-collapse-plugin-menu.gif](img/imjoy-collapse-plugin-menu.gif){: style="width:600px"}
