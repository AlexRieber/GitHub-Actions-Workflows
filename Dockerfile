FROM rocker/tidyverse:latest

# Install additional R packages
RUN R -e "install.packages(c('stringr', 'readxl', 'haven', 'broom', 'purrr', 'kableExtra', 'ivreg', 'modelsummary', 'fixest', 'officer', 'ggpubr'))"

# Set the working directory
WORKDIR /workspace

# Default command
CMD ["bash"]