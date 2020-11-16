# FISH-quant: RNA detection in smFISH images

This repository contains code for graphical user-interfaces powered by ImJoy
to analyse smFISH images. 

## Getting started ##

1. Read this documentation.
2. Install the ImJoy plugin engine (we explain what this is just a bit further down).
3. Install the FISH-quant plugins.
4. Try to analyze the provided test data.

## FISH-quant? ImJoy? Plugin engine?

For new users it might be a bit confusing how the different software packages work together. 
We hence provide here a small overview of hwo the different pieces work together. 

There are three  essential parts

![fq-get-version.gif](img/fq-imjoy-overview.png){: style="width:500px"}

* **bigfish**: Python code performing the actual analysis (available in a dedicated [GitHub repository](https://github.com/fish-quant/big-fish. This code can be used from the command line, but we here we provide convient user-interfaces implemented in ImJoy for the most common tasks. 
* **ImJoy**: ImJoy is a plugin powered computing platform to deploy advanced image analysis tools. FISH-quant is implemented as a set of such plugins. Plugins can be installed with a simple installation link. More details about ImJoy and how it can be installed, can be found in the decicated overview section.
* **Plugin Engine**: the ImJoy app is running in your webbrowser (prefereably Chrome). In order to perform computations, you have to install a 
so-called plugin engine. ImJoy can connect to such an engine, and launch data processing tasks. Importantly, this engine can run locally or remotely, but the ImJoy interface will always be the same. YOu have to install this engine once. Each time you want to use FISH-quant, you have to launch it and connect ImJoy to this engine.

