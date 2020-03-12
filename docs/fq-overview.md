
## Installation
You can install FISH-quant with <a href="https://imjoy.io/#/app?w=fq-main&plugin=fish-quant/fq-imjoy:FISH-quant@stable&upgrade=1" target="_blank">**link.**</a>

This will not only install the **main plugin** `FISH-quant`, but also some additional plugins. 
First time installation can take a few minutes, since the necessary Python libraries are collected.

The most important additionaln plugin that's installed is the `FQ-worker`. 

![fq-plugins.png](img/fq-plugins.png){: style="width:300px"}

This **Python plugin** performs the actual data analysis, and 
runs on a Juypter engine, as described in the [installation instructions](tools-imjoy.md#connect-jupyter-engine). 
So when using FISH-quant, you have to connect ImJoy to Jupyter and make sure that the FQ-worker is running on 
this engine. 


## General usage
To start FISH-quant, simpy press on the plugin name itself. This will open an interface with different tabs, that 
allow to control the main workflows: 

* **Data specifications**: allows to specify how the data should be read, and to load images for analysis.
* **Detection**: perform RNA detection on individual images, and batch analysis images in one folder.