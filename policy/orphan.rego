package main

deny[msg] {
	input[i].contents.kind == "Service"
	svc := input[i].contents
	not search_ingress(svc.metadata.name)
	msg := sprintf("Service '%v' is not associated with any ingress", [svc.metadata.name])
}

search_ingress(service) {
	input[i].contents.kind == "Ingress"
	ingress := input[i].contents
	ingress.spec.rules[_].http.paths[_].backend.service.name == service
}
