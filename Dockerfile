FROM python:3.12.0
 
RUN conda config --add channels bioconda
conda config --add channels conda-forge
conda install pyega3
