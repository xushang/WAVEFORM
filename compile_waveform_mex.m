% Ensure that /WAVEFORM is a subdirectory of the current working directory
wd = pwd;

cd([wd '/src/modeling/3D']);
!make
cd(wd);