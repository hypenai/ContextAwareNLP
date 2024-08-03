#!/bin/bash

# Create tests directory
mkdir -p tests

# Create requirements.txt file
touch requirements.txt

# Add dependencies to requirements.txt
echo "prometheus_client" >> requirements.txt
echo "bandit" >> requirements.txt
echo "sphinx" >> requirements.txt
echo "line_profiler" >> requirements.txt
echo "coverage" >> requirements.txt

# Install dependencies
pip install -r requirements.txt

# Resolve jupyterlab and notebook dependency conflict
pip install jupyterlab==4.0.2
pip install notebook --upgrade

# Create Dockerfile
touch Dockerfile

# Create CANLP.sh script
touch CANLP.sh

# Add content to CANLP.sh script
echo "#!/bin/bash" >> CANLP.sh
echo "echo 'Running CANLP script'" >> CANLP.sh

# Make CANLP.sh executable
chmod +x CANLP.sh

# Run CANLP.sh script
./CANLP.sh
