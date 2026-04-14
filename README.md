# Docker + Kubernetes + CI/CD Workshop 

Welcome to the hands-on workshop! This repo is designed to get you from "What is a container?" to "Scaling on Kubernetes" in just less than 2.5 hours.

## Prerequisites
- [Docker Desktop](https://www.docker.com/products/docker-desktop/) (or Docker Engine)
- [kind](https://kind.sigs.k8s.io/docs/user/quick-start/) (Kubernetes in Docker)
- [kubectl](https://kubernetes.io/docs/tasks/tools/)
- A GitHub account

## Getting Started

1. **Spin up your local cluster:**
   ```bash
   kind create cluster --config kind-config.yaml
   ```

2. **Build your first image:**
   ```bash
   docker build -t workshop-app .
   ```

3. **Deploy to Kubernetes:**
   ```bash
   kubectl apply -f k8s/
   ```

4. **Check it out:**
   Open [http://localhost:30000](http://localhost:30000) in your browser.

## Java Side-Quest
Ready to see how language-agnostic Docker is?
1. `cd java-example`
2. `docker build -t java-app .`
3. Update `k8s/deployment.yaml` and re-apply!

---
Created by **Firojpaudel** for beginners everywhere.