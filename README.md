[![test](https://github.com/yutaroyamanaka/orphan-service-conftest/actions/workflows/test.yaml/badge.svg)](https://github.com/yutaroyamanaka/orphan-service-conftest/actions/workflows/test.yaml)

# orphan-service-conftest

This conftest sets up the policy to ensure that developers associate services with the appropriate ingress.

## Usage

```sh
# install conftest 
$ CGO_ENABLED=0 go install github.com/open-policy-agent/conftest@latest
$ kubectl kustomize .  | conftest test --combine -
FAIL - Combined - main - Service 'svc-v2' is not associated with any ingress

1 test, 0 passed, 0 warnings, 1 failure, 0 exceptions
```

## Run tests

```sh
$ conftest verify
```

## References
- [conftest](https://www.conftest.dev/)
