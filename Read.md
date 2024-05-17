1. GitHub Repository: https://github.com/bhaskarDM/node_hello.git

2. Docker Image on DockerHub: https://hub.docker.com/repository/docker/bhaskar150/node-hello-world/general

3. Deployment Instructions:
To deploy the application install kubernetes cluster,helm, argocd and argocd cli
argocd login <ARGOCD_SERVER>

create project
argocd proj create myproject

file name given to argocd yaml is argocd.yaml and name of application is node
kubectl apply -f argocd.yaml

sync the application
argocd app sync node

verify the deployment
argocd app get node

Access the ArgoCD UI to manage and monitor application:
kubectl port-forward svc/argocd-server 8080:443

Then open https://localhost:8080 in your web browser.




git clone https://github.com/bhaskarDM/node_hello.git
● Provide clear documentation on how to deploy and use the solution.
● Include steps to:
● Clone the repository.
● Set up any necessary environment variables or configurations.
● Deploy the application on a Kubernetes cluster using ArgoCD.