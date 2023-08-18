
%% Load sub-01_data_B1.mat
load('sub-01_data_B1.mat');
face1 = [];  % Initialize face variable for block 1
nonface1 = [];  % Initialize nonface variable for block 1

% Loop through the data in block 1
for i = 1:240
    name = tmpB.trialSet(i).fimgName;  % Get the image name
    if contains(name, 'face')
        face1 = [face1 i];  % Append index to face if image name contains 'face'
    else
        nonface1 = [nonface1 i];  % Append index to nonface if image name does not contain 'face'
    end
end

%% Load sub-01_data_B2.mat
load('sub-01_data_B2.mat');
face2 = [];  % Initialize face variable for block 2
nonface2 = [];  % Initialize nonface variable for block 2

% Loop through the data in block 2
for i = 1:240
    name = tmpB.trialSet(i).fimgName;  % Get the image name
    if contains(name, 'face')
        face2 = [face2 i+240];  % Append index (with offset) to face if image name contains 'face'
    else
        nonface2 = [nonface2 i+240];  % Append index (with offset) to nonface if image name does not contain 'face'
    end
end

%% Load sub-01_data_B3.mat
load('sub-01_data_B3.mat');
face3 = [];  % Initialize face variable for block 3
nonface3 = [];  % Initialize nonface variable for block 3

% Loop through the data in block 3
for i = 1:240
    name = tmpB.trialSet(i).fimgName;  % Get the image name
    if contains(name, 'face')
        face3 = [face3 i+480];  % Append index (with offset) to face if image name contains 'face'
    else
        nonface3 = [nonface3 i+480];  % Append index (with offset) to nonface if image name does not contain 'face'
    end
end

%% Load sub-01_data_B4.mat
load('sub-01_data_B4.mat');
face4 = [];  % Initialize face variable for block 4
nonface4 = [];  % Initialize nonface variable for block 4

% Loop through the data in block 4
for i = 1:240
    name = tmpB.trialSet(i).fimgName;  % Get the image name
    if contains(name, 'face')
        face4 = [face4 i+720];  % Append index (with offset) to face if image name contains 'face'
    else
        nonface4 = [nonface4 i+720];  % Append index (with offset) to nonface if image name does not contain 'face'
    end
end

%% Save face and nonface variables to text files
% Write face and nonface variables for each block to separate text files
dlmwrite('face1.txt', face1, ' ');
dlmwrite('nonface1.txt', nonface1, ' ');

dlmwrite('face2.txt', face2, ' ');
dlmwrite('nonface2.txt', nonface2, ' ');

dlmwrite('face3.txt', face3, ' ');
dlmwrite('nonface3.txt', nonface3, ' ');

dlmwrite('face4.txt', face4, ' ');
dlmwrite('nonface4.txt', nonface4, ' ');
%%
%% Concatenate face and nonface variables
totalFace = [face1 face2 face3 face4];
totalNonFace = [nonface1 nonface2 nonface3 nonface4];

%% Save concatenated variables to text files
dlmwrite('total-face.txt', totalFace, ' ');
dlmwrite('total-nonface.txt', totalNonFace, ' ');