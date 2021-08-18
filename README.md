# Helm charts for the Cloud-Native SD-WAN project components

This repository hosts *Helm* charts for the components of the *Cloud-Native
SD-WAN Project*.

## TL;DR

```bash
helm repo add cnwan https://CloudNativeSDWAN.github.io/cnwan-helm-charts
kubectl create ns cnwan-operator-system
helm install cnwan-operator cnwan/<chart>
```

## Before you begin

### Prerequisites

- Kubernetes 1.10+
- Helm 3.1.0

### Install Helm

Helm helps you manage Kubernetes applications — *Helm Charts* help you define,
install, and upgrade even the most complex Kubernetes application.

To install Helm, refer to the [Helm install guide](https://github.com/helm/helm#install)
and ensure that the `helm` binary is in the `PATH` of your shell.

### Add Repo

Run this command to download -- and later install -- all the charts from this
repository:

```bash
helm repo add cnwan https://CloudNativeSDWAN.github.io/cnwan-helm-charts
```

### Install charts

As of now, this repository allows you to install the *CN-WAN Operator*.

There are multiple ways to install it on your cluster, and all are based
on this command:

```bash
helm install cnwan-operator cnwan/cnwan-operator <settings>
```

Please refer to *CN-WAN Operator*'s [chart guide](./cnwan-operator/README.md)
to learn more about the installation process and its
[official repository](https://github.com/CloudNativeSDWAN/cnwan-operator) for
the settings and understanding how it works.

## Contributing

Thank you for interest in contributing to this project.
Before starting, please make sure you know and agree to our [Code of conduct](./code-of-conduct.md).

1. Fork it
2. Download your fork
    `git clone https://github.com/your_username/cnwan-helm-charts && cd cnwan-helm-charts`
3. Create your feature branch
    `git checkout -b my-new-feature`
4. Make changes and add them
    `git add .`
5. Commit your changes
    `git commit -m 'Add some feature'`
6. Push to the branch
    `git push origin my-new-feature`
7. Create new pull request to this repository

Before opening a pull request, please make sure you have updated any relevant
values in `Chart.yaml` and `values.yaml`, including:

- `appVersion` in `Chart.yaml`
- `version` in `Chart.yaml`
- `description` in `Chart.yaml`
- `image.tag` in `values.yaml`

and documented any changes that you have made and would like to be merged.

## License

These charts are released under the Apache 2.0 license. See [LICENSE](./LICENSE)
