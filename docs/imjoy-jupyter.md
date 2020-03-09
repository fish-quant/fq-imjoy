# Running Python plugins
Data processing in FISH-quant is performed in Python. In order for ImJoy to run FISH-quant, you need to install **Jupyter**.

## Install Python with Miniconda
We recommend installing an [Miniconda distribution of Python](https://docs.conda.io/en/latest/miniconda.html): choose Python 3.7 and
your operating system. You  can then use the annoconda prompt to excecute the different commands listed below. 

We recommend creating a **dedicated environment** to run code in this analysis package. 
This guarantess that only necessary code is installed. Tos create an environment called `fq-imjoy`, 
open an anaconda prompt and type. Note that you will also install Jupyter, which will allow to run Python plugins in ImJoy.
Confirm with `y` when asked if you want to proceed (`Proceed ([y]/n)?`): 

```
conda create --name fq-imjoy python=3.7 jupyter
```

## Using Jupyter in ImJoy
Once installed, you start an Jupyter Notebook via the anaconda terminal, to which ImJoy can connect. 
Please note that this notebooks runs on your local machine, so no data-transfer over the internet is taking place. 

![terminal-launch-jupyter.png](img/terminal-launch-jupyter.png)

0. Start an **anaconda terminal**. 
1. **Activate the environment**:
    ```
    conda activate fq-imjoy
    ```
0. **Start Jupyter notebook**. Type
    ```
    jupyter notebook --NotebookApp.allow_origin='*' --no-browser
    ```
    Copy the provided URL including the token, e.g. in the screenshot below: `http://127.0.0.1:8888/?token=8b4885e452db1af7cd7b3cfa6c62036cbae46995e473c25e`
0. To **connect ImJoy to the notebook**, 
   
    1. go to the ImJoy app and press on the rocket symbol in the upper right corner, 
       select `Add Jupyter-Engine` and paste the URL from the step above. 
    2. Plugins will then be automatically **connected to this Jupyter Kernel**. You can verify this, 
       by clicking on the puzzle symbol next to the plugin name. Depending on the plugin, installation
       might take a while, during this period the plugin name will be in red.  

    ![imjoy-connect-jupyter.gif](img/imjoy-connect-jupyter.gif)