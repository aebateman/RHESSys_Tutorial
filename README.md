# Tutorial for using RHESSys in Carvins Cove Reservoir 
Tutorial to walk through setting up RHESSys and needed maps to run RHESSys in CCR.
Instructions below are high level steps for setting up and running RHESSys, see RHESSys_Tutorial_Guide.pdf for extended instructions on every step.

## Part A: Instructions to set up repo and docker container 

1.  Clone or fork this repository to your local computer 
2.  Set up Docker container (you will need a docker account and have docker desktop downloaded)
3.  To get RHESSys image run 'docker pull rhessys/rhessys:develop' in the powershell
4.  To mount repo to docker container run this code in the powershell after updating local repo path 'docker run -v C:/Users/dwh18/OneDrive/Desktop/R_projects/RHESSys_Tutorial:/RHESSys/repo -it rhessys/rhessys:develop'


## Part B: Generating input maps and world files 
To run RHESSys you need to generate needed input maps and create worldfiles and flowtables for your watershed.

The expanded tutorial word doc walks through these instructions, but for the purposes of the inperson tutorial I have pre-generated these maps and worldfiles.
Which are stored in the folder 'Spatial Data'.

If you want to recreate the worldfiles and flowtables using the spatial data you can run the HPB_RHESSys_PreProcessing.Rmd found in HPB_files


## Part C: Running RHESSys

1.  Once you have mounted the repo the docker container (Part A) and have needed maps and input files (Part B) you can begin running the model
2.  All needed configurations files can be found within folder HPB_files
3.  In HPB_files - open runHPB.Rmd - follow instructions in this script for how to run model within the docker container and how to access the output locally

