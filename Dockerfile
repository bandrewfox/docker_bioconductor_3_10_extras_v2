FROM ghcr.io/bandrewfox/docker_bioconductor_3_10_extras:main

# set CRAN snapshot repository and save to Rprofile
RUN echo 'options(repos = c(CRAN = "https://packagemanager.posit.co/cran/2022-01-21"))' > ~/.Rprofile
RUN echo 'options(BioC_mirror = "https://packagemanager.posit.co/bioconductor")' >> ~/.Rprofile

RUN install2.r --error gridtext 
RUN install2.r --error ggpubr
RUN install2.r --error survminer
   

