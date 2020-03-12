# Split channeles
This workflow requires that each channel is stored as a separate z-stack. 
If your images are stored as multi-channel z-stacks you have to split these images into 
individual channels. This can be done with different software packages, below we describe some options.

## Manual conversion with Fiji
For this you need to install [Fiji](https://fiji.sc/).

1.  Create a new folder for each multi-channel image.
2.  Open image stack (`.dv`) in FIJI.
3.  Split channels (FQ only supports mono-channel input images)
    a. From menu: `Image` > `Color` > `Split channels`
    a. Save each channels with a unique channel identifier, e.g. `C1-` or `DAPI_`.

## Batch conversion with Fiji
For this you need to 
* install [Fiji](https://fiji.sc/).
* Use the provided macro `MacroBatchSplitChannel.ijm`, provided in the folder `workflows`.
  
### Workflow of macro
1. Scan recursively a specified folder for files ending in a specified suffix.
2. Images will be opened, split in different channels and maximum intensity projections (MIP) created
3. Results will be saved in a new folder
      1. Macro will replace specified string in full file path by "acquisition", and created this folder to save the data. 
      2. Will create additional subfolders 'MIP' to store the MIPs.


### How to use the macro
1.  By default your data has to be in a folder `multi_channel_stacks`
0.  Open Fiji and drag the macro file in Fiji.
0.  This will open the macro, here you can modify two parameters
     * `suffix` (default `ome.tif`): last part of the file-name. Only files containing this string will be processed.
     * `folder_img` (default `multi_channel_stacks`): part of the file-name that will be replaced by `acquisition` in order to save the results. 
0.  Press the `Run` button and you will be asked to specify the folder that should be processed. 