## devops_cicd_final
A project according to the CI/CD principles. Where we use a Flask application to deploy in a kubernetes kluster. 

# Requirements
1. Python 3.10
2. Docker 20.10
3. Requirements.txt

# Create a new venv and activate it (stand in repo root)
1. Python3 -m venv .venv
2. source .venv/bin/activate

# Install requirements.txt (stand in repo root)
1. pip install -r requirements.txt

# Test run
When you create a new branch "feature" to commit, the workflow will run the unit and integration tests. Then you have to simply create a pull request to main from "feature" branch. 
