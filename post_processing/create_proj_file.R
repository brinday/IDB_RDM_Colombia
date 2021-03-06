#library('devtools')
#install_github('JGCRI/rgcam', build_vignettes=TRUE)

# The purpose of this file is to post-process csv files from various RDM runs by combining them into a single compressed
# file (.proj). This single file can be downloaded and opened in rgcam using loadProject.

library('rgcam')
files <- list.files('../output/FinalRuns/IDB_RDM', pattern = "*.csv", full.names=TRUE)
files
# Note the "temp", saveProj = FALSE
# this is to avoid saving a project file for each individual .csv in addition to all.proj
proj <- mergeProjects("../output/FinalRuns/IDB_RDM/allResults.proj", lapply(files, addMIBatchCSV, "temp", saveProj = FALSE))
# rgcam::addMIBatchCSV('../output/FinalRuns/IDB_RDM/all_results.csv', '../output/FinalRuns/IDB_RDM/results.dat')