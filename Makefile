build_helm:
	helm dependency build charts/infra/
	helm install infra charts/infra/ -f charts/infra/values.yaml --dry-run --debug

cert:
	kubectl create secret tls cloudflare-origin-ssl --cert=cloudflare-origin.pem --key=cloudflare-origin.key -n infra