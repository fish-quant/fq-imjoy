
# Loading data
In the tab, you can define where your data is located, its naming convention, and load selected images
to test the analysis.

![fq-ui-data-specification.png](img/fq-ui-data-specification.png)

## Specify folder to save results
Several possibilities are provided to specify the folder to save the results of the different workflows. Here, the general options are described, if
a plugin deviates from this default behavior it will be described in the respective plugin.

When asked to define a folder to save results, you can deither:

1. Directly define a **full path** where the results should be stored. If the folder doesn't exist, it will be created.
2. Define a folder with a **text replacement**. This option can be useful if many folders are processed, e.g. when a recursive search is performed.
   
    * Such a replacement operation is indicated with a string in the format  `str_orig>>str_new`,
      where 'str_orig' is the orginal string, 'str_new' is the new string.
      
    * For instance, using the default string `acquisition>>analysis` implies that in the folder name
      `D:\example_data\acquisition`, `acquisition` will be replaced with `analysis`, yielding 
      `D:\example_data\analysis`. 

## Typical workflow
1. Copy & past the folder containing your data into the field `Folder with data`
2. The field `Folder to save data`, permits to determine where you data is stored. Two different options exist
    1. The default string `acquisition>>analysis` indicates that not a complete path is provided,
       but that a string in the provided data folder will be replaced. More specifically, the string `acquisition` 
       will be replaced by `analysis`. The obtained path name will then be used to store the detection results, in
       a newly created subfolder `spot detection`
    2. If you define a path name, then this path will be used to store the data. 
3. Define the naming convention of your files with a regular expression. For more details, see
   the dedicated [section](data.md#naming-convention).
4. Pixel-size in XZ, and Z-spacing. Both values are provided in nmm.
5. Specify channel(s) to be analyzed. Here you have to specify a name you want to use for a channel, e.g. `fish`,
   and the string (as defined in the regular expression) for the channel in the file-name
6. Once all parameters are defined, you can press `Scan folder ...`. This will scan the folder for all images
    satisfying the selection criteria. Only images that satisfy all criteria, e.g. they must have all specified channels, 
    will be listed.
7. A list in the lower part of the interface will then be populated. You can load an image by clicking on the download symbol. 
    This will load for the selected position all specified channels and show them in the image carousel on the right.
    The loaded image will then be indicated with a purple background and its specifications shown in the drop-down menu "Analysis info" in the upper part of the image.

    Double-clicking on an image will show it in the [image viewer](imjoy-imageviewer.md).    

    ![fq-ui-scan-folder.png](img/fq-ui-scan-folder.png){: style="width:500px"}

8. Most specified parameters (except the channel list), will be stored and reused when you launch ImJoy the next time.

## Troubleshooting

### No images were found
This means that the specified criteria did not provide any positive hits. This can have several reasons

* **Regular expression is wrong**. You can test your regular expression by pressing the button `Test regexp`. 
    This will open a new window where you can test your expression on your file-names. The first line
    will be automatically populated with your regular expression, as a test-string you can specify 
    your file-name. If the regular expression is correct, you should a populated list under `Match catpures`,
    where the identified parts of the file-name are listed.

    ![ test-regexp.png](img/test-regexp.png){: style="width:500px"}
   
