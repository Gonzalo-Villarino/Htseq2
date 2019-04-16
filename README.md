# Tophat2_submitt_multipleJobs
for i in ls *sh; do sbatch $i; done


#To remove ALL files EXCEPT D.tct
find . | grep -v  "D.tct" | xargs  rm

