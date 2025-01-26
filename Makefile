build_helm:
	helm dependency build charts/infra/
	helm install infra charts/infra/ -f charts/infra/values.yaml --dry-run --debug
