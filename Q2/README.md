# Q2 Kubernetes Manifests

This directory contains Kubernetes manifests for deploying the **shop backend API** and a scheduled CronJob.

## Resources

- **Deployment**: Runs 3 replicas of the `shop-backend` container (`strm/helloworld-http:latest`) with liveness and readiness probes.
- **CronJob**: Runs every 30 minutes and prints "Hello SRE" using a BusyBox container.
- **Service**: Exposes the deployment internally as a ClusterIP service on port 80.
- **Ingress**: Routes HTTP traffic from `localhost` to the `shop-backend-service`.

> You may want to replace `localhost` with a custom hostname (e.g., `shop.example.com`) if accessing through a browser. See below.

## Usage

Apply all resources:

```sh
kubectl apply -f shop-backend.yaml
```

Check deployment status:

```sh
kubectl get deployments
kubectl get pods
```

Access the application:

- Open [http://localhost/](http://localhost/) in your browser.

Check CronJob logs:

```sh
kubectl get cronjobs
kubectl get jobs
kubectl logs <pod-name>
```

Delete all resources:

```sh
kubectl delete -f shop-backend.yaml
```

## Notes

- Ensure your cluster has an Ingress controller running for the Ingress resource to work.
- The CronJob simply prints "Hello SRE" every 30 minutes and is for demonstration purposes.