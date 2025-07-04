# graphiti-mcp

![Version: 0.1.0](https://img.shields.io/badge/Version-0.1.0-informational?style=flat-square) ![Type: application](https://img.shields.io/badge/Type-application-informational?style=flat-square) ![AppVersion: v0.2.1](https://img.shields.io/badge/AppVersion-v0.2.1-informational?style=flat-square) [![Artifact Hub](https://img.shields.io/endpoint?url=https://artifacthub.io/badge/repository/kiberon-labs)](https://artifacthub.io/packages/search?repo=kiberon-labs)

This Helm chart deploys the [Graphiti](https://github.com/getzep/graphiti) MCP server.

## Features

- Deploys the Graphiti MCP server (`zepai/knowledge-graph-mcp:latest`)
- Configurable replica count, image, service, ingress
- Injects environment variables via `vars` and `additionalEnv` (for secrets/configmaps)

## Installation

```sh
# Create your secrets to reference (For best practivce)
kubectl create secret generic graphiti-secrets --from-literal=NEO4J_PASSWORD=yourpassword
helm install graphiti ./charts/Graphiti
```

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| additionalEnv | list | `[]` |  |
| affinity | object | `{}` |  |
| autoscaling.enabled | bool | `false` |  |
| autoscaling.maxReplicas | int | `100` |  |
| autoscaling.minReplicas | int | `1` |  |
| autoscaling.targetCPUUtilizationPercentage | int | `80` |  |
| fullnameOverride | string | `""` |  |
| image.pullPolicy | string | `"IfNotPresent"` |  |
| image.repository | string | `"zepai/knowledge-graph-mcp"` |  |
| image.tag | string | `"v0.2.1"` |  |
| imagePullSecrets | list | `[]` |  |
| ingress.annotations | object | `{}` |  |
| ingress.className | string | `""` |  |
| ingress.enabled | bool | `false` |  |
| ingress.hosts | list | `[]` |  |
| ingress.tls | list | `[]` |  |
| nameOverride | string | `""` |  |
| nodeSelector | object | `{}` |  |
| podAnnotations | object | `{}` |  |
| podSecurityContext | object | `{}` |  |
| replicaCount | int | `1` |  |
| resources.limits | object | `{}` |  |
| resources.requests | object | `{}` |  |
| securityContext | object | `{}` |  |
| service.port | int | `8000` |  |
| service.type | string | `"ClusterIP"` |  |
| serviceAccount.annotations | object | `{}` |  |
| serviceAccount.create | bool | `true` |  |
| serviceAccount.name | string | `""` |  |
| tolerations | list | `[]` |  |
| vars.MODEL_NAME | string | `"gpt-4.1-mini"` |  |
| vars.NEO4J_USER | string | `"neo4j"` |  |
| vars.PORT | string | `"8000"` |  |
