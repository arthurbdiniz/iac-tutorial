export AWS_ACCESS_KEY_ID?=
export AWS_SECRET_ACCESS_KEY?=
export AWS_DEFAULT_REGION?=sa-east-1


init:
	docker run -it --rm \
		-e AWS_ACCESS_KEY_ID=$(AWS_ACCESS_KEY_ID) \
		-e AWS_SECRET_ACCESS_KEY=$(AWS_SECRET_ACCESS_KEY) \
		-e AWS_DEFAULT_REGION=$(AWS_DEFAULT_REGION) \
		-v $(PWD):/work \
		--network host \
		dnxsolutions/terraform:1.2.6-dnx1 \
		init

plan:
	docker run -it --rm \
		-e AWS_ACCESS_KEY_ID=$(AWS_ACCESS_KEY_ID) \
		-e AWS_SECRET_ACCESS_KEY=$(AWS_SECRET_ACCESS_KEY) \
		-e AWS_DEFAULT_REGION=$(AWS_DEFAULT_REGION) \
		-v $(PWD):/work \
		--network host \
		dnxsolutions/terraform:1.2.6-dnx1 \
		plan


apply:
	docker run -it --rm \
		-e AWS_ACCESS_KEY_ID=$(AWS_ACCESS_KEY_ID) \
		-e AWS_SECRET_ACCESS_KEY=$(AWS_SECRET_ACCESS_KEY) \
		-e AWS_DEFAULT_REGION=$(AWS_DEFAULT_REGION) \
		-v $(PWD):/work \
		--network host \
		dnxsolutions/terraform:1.2.6-dnx1 \
		apply -auto-approve

destroy:
	docker run -it --rm \
		-e AWS_ACCESS_KEY_ID=$(AWS_ACCESS_KEY_ID) \
		-e AWS_SECRET_ACCESS_KEY=$(AWS_SECRET_ACCESS_KEY) \
		-e AWS_DEFAULT_REGION=$(AWS_DEFAULT_REGION) \
		-v $(PWD):/work \
		--network host \
		dnxsolutions/terraform:1.2.6-dnx1 \
		destroy -auto-approve

sensitive:
	docker run -it --rm \
		-e AWS_ACCESS_KEY_ID=$(AWS_ACCESS_KEY_ID) \
		-e AWS_SECRET_ACCESS_KEY=$(AWS_SECRET_ACCESS_KEY) \
		-e AWS_DEFAULT_REGION=$(AWS_DEFAULT_REGION) \
		-v $(PWD):/work \
		--network host \
		dnxsolutions/terraform:1.2.6-dnx1 \
		output -json card