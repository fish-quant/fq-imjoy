// Split channels
//
// This macro batch processes all the files in a folder and any
// subfolders in that folder. It will split each image and save
// the different channels separately.
//
// WORKFLOW:
// 1. Scan recursively the specified folder for files ending in a specified suffix.
// 2. Images will be opened, split in different channels and maximum intensity projections (MIPs) created.
// 3. Results will be saved in a new folder
//    a. Macro will replace specified string in original full file path by "acquisition", and create this folder to save the results.
//    b. Will create additional subfolders 'mips' to store the MIPs.
///   
//  PARAMETERS:
//  - Last part of image name, by default  'ome.tif'
//  - String contained in input folder which will be replaced, by default  "multi_channel_stacks"
 
suffix = "ome.tif"
folder_img = "multi_channel_stacks"

setBatchMode(true);
dir = getDirectory("Choose a Directory");
print('Processing directory: ' + dir);   

// Process files
n = 0;
processFolder(dir);

function processFolder(dir) {
    IJ.log("processing directory " + dir);
    list = getFileList(dir);
    
    for (i = 0; i < list.length; i++) {
        if(File.isDirectory(dir + list[i]))   //if it's a directory, go to subfolder
            processFolder("" + dir + list[i]);
            
        if(endsWith(list[i], suffix))   // if file ends with specified suffix, process it
           print('Processing file');
           print(dir + list[i]);
           processFile(dir, list[i]);
    }
}


// Create multi-level directory
function createMultiLevelDirectory(path_create){

	// Check if last part of path is the systems path separator. 
	// If not replace. This happens on windows machines, since
	// getFileList returns directories with and "/".

	if (!endsWith(path_create, File.separator)){
		//print(path_create.replace("/",File.separator));
		path_create=replace(path_create,"/",File.separator);
		print('PATH with bad last character. Modified: ' + path_create);
	}
	
 	parts = split(path_create, File.separator); 
 	path_level =  File.separator + parts[0] + File.separator + parts[1] + File.separator; 
  	for(i=2; i<parts.length; i++){ 
     	path_level = path_level + parts[i]  + File.separator;
     	
     	if (!File.isDirectory(path_level)){
			print("Create new sub-folder:"+path_level);
			File.makeDirectory(path_level);  
     	}
  	}
}


// Actual function performing the processing
function processFile(path,file) {
  	
       	   print(" ");
           print("==== Analyzing new image:");
           print("path: " + path);
		   print("file: " + file);

           // Open image & split channels
           open(path+file);

		   getDimensions(dummy, dummy, nChannels, dummy, nFrames);

		   if(nChannels < 2){
				print("Image is not multi-channel. Number of channels " +  nChannels);
		   }	
		   else{	

				// Folders to save images
				path_img = replace(path, folder_img, "acquisition");
				print("Directory for individual channels :" + path_img);
				createMultiLevelDirectory(path_img);
				
				path_MIP = replace(path, folder_img, "acquisition") + "MIP" + File.separator;
				print("Directory for MIPs                :" + path_MIP);
				createMultiLevelDirectory(path_MIP);

				if (!File.exists(path_img) || !File.exists(path_MIP)){
					exit("Unable to access directories (could not create neccessary folder structure)!");
				}

           	   imgName = getTitle(); 

            
	           // Base-name: get rid of .ome
	           nameBase = File.nameWithoutExtension;
	           nameBase = replace(nameBase, ".ome", "");
	   		   print("Image base name:" + nameBase);

			   // Split channel and save individual channels
			   run("Split Channels");

			   for(i=1; i<=nChannels; i++){

			   		print("Processing channel "+i+"/"+nChannels);
					// Select 1st window
					selectWindow("C"+i+"-"+imgName);
	            	saveAs("Tiff",  path_img + nameBase + "_ch"+i+".tif"); 
			    
	
			 		// MIP projection
			 		run("Z Project...", "projection=[Max Intensity]");
			 		run("8-bit");
	         		saveAs("PNG",  path_MIP + "MIP_" + nameBase + "_ch"+i+".png"); 
	            	close();
					close();
			   }

		   }
      
}
