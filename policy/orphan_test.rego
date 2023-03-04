package main

test_no_error {
	count(deny) == 0 with input as parse_combined_config_files(["../tests/success.yaml"])
}

test_error {
	deny with input as parse_combined_config_files(["../tests/failure.yaml"])
}
