# Split channels

This workflow requires that each channel is stored as a separate z-stack. 
If your images are stored as multi-channel z-stacks you have to split these images into 
individual channels. This can be done with different software packages, below we describe some options.

## Manual conversion with Fiji

For this you need to install [Fiji](https://fiji.sc/).

1. Create a new folder for each multi-channel image.
2. Open image stack in FIJI.
3. Split channels (FQ only supports mono-channel input images)
    1. From menu: `Image` > `Color` > `Split channels`
    2. Save each channels with a unique channel identifier, e.g. `C1-` or `DAPI_`.

## Batch conversion with Fiji

We provide a FIJI macro that allows to recursively search for multi-channel images
and convert them to mono-channel images, which will be saved in a newly created subfolder.

For this you need to

* Install [Fiji](https://fiji.sc/).
* Use the provided macro `MacroBatchSplitChannel.ijm`, provided in the folder `workflows`.
  
### Workflow

Once you start the macro, it will perform the following steps

1. Scan the provided folder for images ending in the specified suffix.
2. Images will be opened, split in different channels and maximum intensity projections (MIP) created
3. Results will be saved in a new folder. Will create additional subfolders 'MIP' to store the MIPs.

### How to use the macro

1. By default your data has to be in a folder `multi_channel_stacks`, but you can change this in the macro
2. Open Fiji and drag the macro file in Fiji.
3. This will open the macro, here you can modify two parameters
     * `suffix` (default `ome.tif`): last part of the file-name. Only files containing this string will be processed.
     * `folder_img` (default `multi_channel_stacks`): part of the file-name that will be replaced by `acquisition` in order to save the results (see below).
4. Press the `Run` button and you will be asked to specify the folder that should be processed.

### Filename and path for saved images

* For each multi-channel image, the individual channels will be saved as a separate tif file, with **a suffix in 
the file-name** indicating the channel index, e.g. `_ch1_` for the first channel.
*  Files will be saved in a newly created folder, where the string specified in `folder_img` will be replaced with `acquisition`. This allows to keep nested folder structures when larger data-sets are processed.