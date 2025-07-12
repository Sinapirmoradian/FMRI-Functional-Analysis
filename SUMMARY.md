This project is focused on the analysis of fMRI data from a facetask experiment. The goal is to separate brain imaging data into two categories: trials where the subject was shown a face, and trials where the subject was shown a non-face image.

The project consists of the following files:

*   `separation.m`: A MATLAB script that processes the experimental data. It loads data from four blocks of the experiment (`sub-01_data_B1.mat` to `sub-01_data_B4.mat`), identifies which trials correspond to face and non-face stimuli, and saves the indices of these trials into text files.
*   `face*.txt` and `nonface*.txt`: These text files contain the indices of the face and non-face trials for each of the four blocks.
*   `total-face.txt` and `total-nonface.txt`: These files contain the concatenated indices of all face and non-face trials across all blocks.
*   `*.nii`: These are Nifti files, which contain the fMRI data.
*   `*.mat`: These are MATLAB data files, which contain information about the experimental trials.
*   `statistic design_001.png`: An image that likely illustrates the experimental design.
*   `HW_4_CS_Sina_Pirmoradian.pdf`: A PDF document that is likely a report or paper related to the project.
*   `LICENSE`: A license file.

The `separation.m` script is the central piece of code in this project. It requires MATLAB to run and depends on the `sub-01_data_B*.mat` files. After running the script, the `face*.txt`, `nonface*.txt`, `total-face.txt`, and `total-nonface.txt` files will be generated. These files can then be used for further analysis of the fMRI data.
