# Tutorial for using RHESSys in Carvins Cove Reservoir 
Tutorial to walk through setting up RHESSys and needed maps to run RHESSys in CCR 

## Part A: Instructions to set up repo and docker container 

1.  Clone or fork this repository to your local computer 
2.  Set up Docker container (you will need a docker account and have docker desktop downloaded)
2a. To get RHESSys image run 'docker pull rhessys/rhessys:develop' in the powershell
3.  To mount repo to docker container run this code in the powershell after updating local repo path 'docker run -v C:/Users/dwh18/OneDrive/Desktop/R_projects/RHESSys_Tutorial:/RHESSys/repo -it rhessys/rhessys:develop'


## Part B: Generating input maps and world files 
To run RHESSys you need to generate needed input maps and create worldfiles and flowtables for your watershed.
The expanded tutorial word doc walks through these instructions, but for the purposes of the inperson tutorial I have pre-generated these maps and worldfiles.
Which are stored in the folder 'Spatial Data'.


## Part C: Running RHESSys

1.  Once you have mounted the repo the docker container (Part A) and have needed maps and input files (Part B) you can begin running the model
2.  In the Docker container (powershell) run 'R' to open an R session
3.  

