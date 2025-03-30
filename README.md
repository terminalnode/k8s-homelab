# Kubernetes Homelab setup with ArgoCD
Each namespace is given it's own "app" in this setup, with the main one being the "homelab-app".

## Fetching repository with SSH key
To use an SSH key, you will need to apply `codeberg-homelab-repo-secret.yml`, which can be
created using the included `codeberg-homelab-repo-secret.yml.example`. Of course this secret
can also be customized for whatever private repository you want to use.

## Using the ArgoCD App
The ArgoCD App will set up an IngressRoute (a CRD specific to Traefik ingress), which I use to
forward traffic from my VPN (where I do all routing). For this to work properly, the ArgoCD Server
must run with `server.insecure: "true"` to remove the HTTPS requirement.
