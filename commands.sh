# Clone the repository
git https://github.com/ummer-shell/azure-cicd-project.git
cd azure-cicd-project

# Deploy web app (note: the name must be unique globally)
az webapp up --name udacity-flask-cicd-project--resource-group azure-cicd-project
---> Runs at: https://udacity-flask-cicd-project.azurewebsites.net/

# Run locust tests with 100 users and 5 sec in between request
locust --host https://udacity-flask-cicd-project.azurewebsites.net/ --headless -u 100 -r 5