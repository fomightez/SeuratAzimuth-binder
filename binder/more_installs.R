# install the R libraries which doesn't seem to have current versions on conda-forge or bioconda/bioconductor & so cannot use environment.yml to handle
# For Seurat and Azimuth I knew what to use because worked on Mac at home
install.packages("remotes", dependencies = TRUE, repos = "http://cran.us.r-project.org") # based on pull request https://github.com/salzman-lab/SICILIAN/pull/3/commits/617af331bed45458d646a5be66878dfb82e77965 that points out in clean R environment `GLM_script_light.R` fails because a mirror for CRAN needed
install.packages("Seurat", dependencies = TRUE, repos = "http://cran.us.r-project.org")
remotes::install_github("satijalab/azimuth", upgrade = "always")
remotes::install_github("satijalab/seurat-data", upgrade = "always")