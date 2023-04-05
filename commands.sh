# Clone the repository
git https://github.com/ummer-shell/azure-cicd-project.git
cd azure-cicd-project

# Create a python virtual environmemt
python3 -m venv ~/.cicd_project
source ~/.cicd_project/bin/activate

# Test With makefile
make all

# Deploy web app (note: the name must be unique globally)
az webapp up --name udacity-flask-cicd-project--resource-group azure-cicd-project

# Run the prediction
chmod +x ./make_predict_azure_app.sh
./make_predict_azure_app.sh

# Show the web app log
az webapp log tail

# Run locust tests with 100 users and 5 sec in between request
locust --host https://udacity-flask-cicd-project.azurewebsites.net/ --headless -u 100 -r 5