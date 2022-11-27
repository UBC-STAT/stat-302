FROM prairielearn/prairielearn

# RUN Rscript /r-requirements.R


# RUN echo "installing R..."
# RUN conda install --channel r r-base r-essentials

# Install R packages
RUN conda install --quiet --yes \
    'r-gsdesign' \
    'r-car' \
    'r-cardata' \
    && conda clean --all -f -y


# run
# docker build -t pl:v1 .
# docker run -it --rm -p 3000:3000 -v /home/alireza/Desktop/STAT302:/course pl:v1

