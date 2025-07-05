# Helm Charts Repository

Welcome to the Helm Charts repository for Kiberon Labs!

## Overview
This repository contains Helm charts for deploying and managing applications with Kubernetes. We store both internal and external charts for the community. See the [./charts](./charts/) folder for all the charts we store and the relevant readmes for each.

Note that we publish all our charts to [ArtifactHub](https://artifacthub.io/) for visiblity

## Getting Started

### Prerequisites
- [Helm](https://helm.sh/) 3.x
- [Docker](https://www.docker.com/) (optional, for using docker-compose)
- [Kubernetes](https://kubernetes.io/)

### Usage
1. Clone this repository:
   ```sh
   git clone https://github.com/kiberon-labs/helm-charts.git
   cd helm-charts
   ```
2. Install a chart:
   ```sh
   helm install my-release ./<chart-directory>
   ```

## Development

We follow [best practices](https://redhat-cop.github.io/ci/linting-testing-helm-charts.html) from RedHat 

### Linting and Testing
We use the [Chart Testing (ct)](https://github.com/helm/chart-testing) tool for chart linting and testing, and [helm-unittest](https://github.com/helm-unittest/helm-unittest) for unit testing Helm charts. These tools are run automatically in CI via GitHub Actions, and you can also run them locally using Docker Compose or Helm plugins.

#### Using Docker Compose
If you don't have Helm or the required tools installed, you can use the provided `docker-compose.yml` to run linting and tests in a containerized environment:

```sh
docker-compose run lint
docker-compose run test
```

#### Using helm-unittest
You can run unit tests for your charts using the helm-unittest plugin:

```sh
helm plugin install https://github.com/helm-unittest/helm-unittest
helm unittest ./<chart-directory>
```

## Git hooks 

You can use git hooks during local development to assist with keeping documentation up to date with precommit hooks

```
git config core.hooksPath .githooks
```

**Note** The githooks require you to have the required CLIs installed 

- helm-docs

## Documentation 

We use [Helm-docs](https://github.com/norwoodj/helm-docs) to generate helm documentation and 


## Contributing
- Fork the repo and create your branch from `master`.
- Ensure charts pass linting and tests before submitting a PR.
- See [CONTRIBUTING.md](CONTRIBUTING.md) for more details (to be created).

## License
See the relevant licences in the charts 