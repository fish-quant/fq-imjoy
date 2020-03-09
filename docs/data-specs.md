# Image processing
Below we describe some basic image processing operations.

### Multi-channel conversion
Many workflows, e.g.g FISH-quant, require that each channel is stored as a
separate z-stack. If your images are stored as multi-channel z-stacks you can split these channels with FIJI.

1.  Create a new folder for each multi-channel image.
2.  Open image stack (`.dv`) in FIJI.
3.  Split channels (FQ only supports mono-channel input images)
    a. From menu: `Image` > `Color` > `Split channels`
    a. Save each channels with a unique channel identifier, e.g. `C1-` or `DAPI_`.
