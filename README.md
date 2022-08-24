# helm
Package manager for kubernetes.

# Free LAB:
Please feel free to use the lab for your practice and share your feedback with comments and ratings.

https://killercoda.com/0744d4d1-76b1-4f38-8788-aa233e1bbd76/scenario/helm-how-to

# helm installation procedure for Debian/Ubuntu
```
curl https://baltocdn.com/helm/signing.asc | gpg --dearmor | sudo tee /usr/share/keyrings/helm.gpg > /dev/null
sudo apt-get install apt-transport-https --yes
echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/helm.gpg] https://baltocdn.com/helm/stable/debian/ all main" | sudo tee /etc/apt/sources.list.d/helm-stable-debian.list
sudo apt-get update
sudo apt-get install helm
```

# helm scripts
* helm-install.sh: To install the helm package on Debian/Ubuntu
* helm-create.sh: To create a sample helm package for le-app
* helm-deploy.sh: To deploy the le-app using helm chart
