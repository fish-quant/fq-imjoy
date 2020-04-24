# FISH-quant: RNA detection in smFISH images

This repository contains graphical user-interface powered by ImJoy plugins to faciliate the analysis 
of smFISH images. Code is build on

* **bigfish**: Python code performin the actual analysis.
* **ImJoy**: graphical user interface and data visualization.

!!! abstract "Summary for how to connect ImJoy to Jupyter engine. Details in dedicated sections."
    1. Open **anaconda terminal**. 
    2. **Activate environment**: `conda activate fq-imjoy`
    3. **Start Jupyter engine**: `imjoy --jupyter`
    4. **Connect** ImJoy app to Jupyter Engine with 🚀 button.

In the other **overview sections** we describe

* How to **install & use ImJoy**.
* How to **organize data** for best use in the provided workflows.

## Reporting bugs

If you encounter a bug, best is to create a [**GitHub issue**](https://github.com/fish-quant/fq-imjoy/issues). This would allow other users to see 
reported bugs and proposed solutions. An issue template is provided indicating information that is ideally provided to more quickly identify the potential reason causing a bug, 
please provide the following information.

1. **How** can bug be produced?
2. Which **browser** and version are you using?
3. **Version of the FISH-quant plugins**. They can be obtained from within the interface

    ![fq-get-version.gif](img/fq-get-version.gif){: style="width:600px"}

4. **Plugin log**. Can be obtained by clicking on the `i` next to the FISH-QUANT plugin. Please copy to a text file. 
5. **Console log**. The console log of the browser provides further details that can help for debugging. To acces the console log in **Chrome**:

      1. In the ImJoy app mouse-right-click.
      2. Select `Inspect`.
      3. This will open a new interface on the right size of your browser windows. Select the panel `Console` and copy the entire content, and paste it to a file.  

## Development team

* Florian Mueller. [Github](https://github.com/muellerflorian)
    * **Mail**: muellerf.research@gmail.com
* Arthur Imbert. [GitHub](https://github.com/Henley13).
* Thomas Walter. [Github](https://github.com/ThomasWalter).