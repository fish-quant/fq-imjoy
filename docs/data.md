# Data 

##  Organization

We strongly recommend the following data-organization on which this workflow has been tested. 

The same data organization is also used in the package to perform [cell and nuclear segmentation](https://github.com/fish-quant/segmentation/). This permits to easily combine these workflows.

1. Images are store as single-channel multi-z-stack tif files, e.g on tif per position and channel. If your data are not single-channel, see the section on how to split channels with [Fiji](fiji-split-channels.md).
2. All raw 3D images are stored in a folder `acquisition`
3. All analysis results are stored in subfolder `analysis`, where each analysis step has a separate subfolder. This folder can be automatically created as explained in the section about data import.

The organization of the provided test data is the following

```
├─ example_data/
│  ├─ acquisition                          # Folder with raw data
│  │  ├─ test_pos001_cy3.tif
│  │  ├─ test_pos002_dapi.tif
│  │  ├─ test_pos002_cy3.tif
│  │  ├─ test_pos002_dapi.tif
│  ├─ analysis                              # Folder with all analysis results
│  │  ├─ segmentation-results               # Folder with segmentation results 
│  │  │  ├─ test_pos001_cy3.tif
│  │  │  ├─ test_pos001_cy3.tif
│  │  │  ├─ test_pos001_cy3.tif
│  │  ├─ spot-detection                         # FQ detection results
│  │  │  ├─ test_pos001_cy3__settings.json      # Settings files
│  │  │  ├─ test_pos001_cy3__spots.csv          # Spot detection results 

```

# Naming convention
FISH-quant will extract information directly from the file-names. The names MUST contain an identifier for

* experiment (`file_ident`): string specifying an experiment, e.g. what gene was imaged. Has to be shared by (at least) the images corresponding to the different channels.
* field of view (`fov`): what position was acquired
* channel (`channel`): which channel is stored
* image extension (`img_ext`): image format.

These information are extracted by using regular expression and capture groups. You can either define your own regular expression, or use the **default expression** that assumes a naming scheme as used in the example above, where the different elements are separated by `_` and ordered as `<file_ident>_<fov>_<channel>.<img_ext>`, e.g.

```
       fov      img_ext
        |          |
  test_pos001_cy3.tif
    |          |
file_ident   channel
```

The corresponding regular expression is `(?P<file_i dent>.*)__(?P<fov>.*)_(?P<channel>.*)\.(?P<img_ext>.*)$`.
This might look confusing at the beginning. A good website to learn more about regular epxression, and importantly test them on strings is [https://regex101.com/](https://regex101.com/). 


## Test data
Already processed test data can be downloaded from [**Dropbox**](https://www.dropbox.com/sh/yr1s5olqwkvyx0i/AADH0QQtdNuWWq7z9wgQpLiOa?dl=0). With these data, you can verify if the different analysis steps are properly executed.