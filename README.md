# fMRI Facetask Analysis

This project contains MATLAB scripts and data for analyzing fMRI data from a facetask experiment. The primary goal is to categorize fMRI trials based on whether the subject was presented with a "face" or a "non-face" stimulus.

## Project Structure

The repository includes the following files:

-   `separation.m`: A MATLAB script that reads trial data, separates trials into "face" and "non-face" categories, and saves the trial indices to text files.
-   `face1.txt`, `face2.txt`, `face3.txt`, `face4.txt`: Text files containing the indices of "face" trials for each of the four experimental blocks.
-   `nonface1.txt`, `nonface2.txt`, `nonface3.txt`, `nonface4.txt`: Text files containing the indices of "non-face" trials for each of the four experimental blocks.
-   `total-face.txt`: A text file containing the concatenated indices of all "face" trials.
-   `total-nonface.txt`: A text file containing the concatenated indices of all "non-face" trials.
-   `ffa.nii`, `ppa.nii`, `meanurasub-01_task-Facetask_run-01_bold.nii`: Nifti files containing fMRI data.
-   `fmri model separation.mat`, `preprocessing.mat`: MATLAB data files.
-   `statistic design_001.png`: An image illustrating the experimental design.
-   `HW_4_CS_Sina_Pirmoradian.pdf`: A PDF document, likely a report or paper related to the project.
-   `LICENSE`: The license for this project.

## How to Run

To regenerate the `face*.txt`, `nonface*.txt`, `total-face.txt`, and `total-nonface.txt` files, you will need to have the `sub-01_data_B1.mat`, `sub-01_data_B2.mat`, `sub-01_data_B3.mat`, and `sub-01_data_B4.mat` files in the same directory as the `separation.m` script. Then, you can run the script in MATLAB.

```matlab
run separation.m
```

This will create or overwrite the text files with the trial indices. These files can then be used for subsequent fMRI data analysis.
