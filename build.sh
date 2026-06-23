#!/bin/bash

echo "========================================="
echo "Starting CV Generation Sequence..."
echo "========================================="

# 1. Compile the standard clean CV version
echo "-> Building Clean CV: satyam_awasthi_cv.pdf"
pdflatex -interaction=nonstopmode -jobname=satyam_awasthi_cv satyam_awasthi_cv.tex > /dev/null

# 2. Compile the full version with transcripts
echo "-> Building Full CV: satyam_awasthi_cv_transcripts.pdf"
pdflatex -interaction=nonstopmode -jobname=satyam_awasthi_cv_transcripts "\def\WithAttachments{1}\input{satyam_awasthi_cv.tex}" > /dev/null

# 3. Clean up the messy log and auxiliary files left behind
echo "-> Cleaning up logs and auxiliary files..."
rm -f *.aux *.log *.out *.synctex.gz *.toc

echo "========================================="
echo "Success! Both PDF files are ready."
echo "========================================="

# To run 
# 1. Change the run mode to executable: chmod +x build.sh
# 2. run script: ./build.sh