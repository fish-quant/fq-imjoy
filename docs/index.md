# RNA detection in smFISH

This repository contains code for graphical user-interfaces powered by ImJoy
to analyse smFISH images. 

__IMPORTANT__: please read this documentation carefully since it contains important
information about how to install and use FISH-quant. 

## Interactive documentation

If you want to get a feeling for how this works, you can check out our interactive documentation [**here**](https://fish-quant.github.io/fq-interactive-docs/#/fq-imjoy).

You can run FISH-quant without any local installation and process some demo data. If you like 
it, you can install a local version and process your own data. You will find everything
you need to know in this documentation.

## Getting started

1. Read this documentation.
2. Install the ImJoy plugin engine (we explain what this is just a bit further down).
3. Install the FISH-quant plugins.
4. Try to analyze the provided test data.

## ImJoy? Plugin engine?

For new users it might be a bit confusing how the different software packages work together. 
We hence provide here a small overview of hwo the different pieces work together. 

![fq-get-version.gif](img/fq-imjoy-overview.png){: style="width:500px"}

There are three  essential parts:

* **bigfish**: Python code performing the actual analysis (available in a dedicated [GitHub repository](https://github.com/fish-quant/big-fish. This code can be used from the command line, but we here we provide convient user-interfaces implemented in ImJoy for the most common tasks. 
* **ImJoy**: ImJoy is a plugin powered computing platform to deploy advanced image analysis tools. FISH-quant is implemented as a set of such plugins. Plugins can be installed with a simple installation link. More details about ImJoy and how it can be installed, can be found in the decicated overview section.
* **Plugin Engine**: the ImJoy app is running in your webbrowser (prefereably Chrome). In order to perform computations, you have to install a 
so-called plugin engine. ImJoy can connect to such an engine, and launch data processing tasks. Importantly, this engine can run locally or remotely, but the ImJoy interface will always be the same. YOu have to install this engine once. Each time you want to use FISH-quant, you have to launch it and connect ImJoy to this engine.

