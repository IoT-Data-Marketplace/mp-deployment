helm-install:
	kubectl config set-context --current --namespace="iot-mp-system" 
	helm dependency update ./iot-mp-system/ 
	helm install iot-mp-system ./iot-mp-system/ -f ./values.yaml

helm-upgrade:
	kubectl config set-context --current --namespace="iot-mp-system" 
	helm dependency update ./iot-mp-system/ 
	helm upgrade iot-mp-system ./iot-mp-system/ -f ./values.yaml

helm-install-dry-run:
	kubectl config set-context --current --namespace="iot-mp-system" 
	helm dependency update ./iot-mp-system/
	helm install --debug --dry-run iot-mp-system ./iot-mp-system/ -f ./values.yaml

helm-upgrade-dry-run:
	kubectl config set-context --current --namespace="iot-mp-system"
	helm dependency update ./iot-mp-system/
	helm upgrade --debug --dry-run iot-mp-system ./iot-mp-system/ -f ./values.yaml


helm-delete:
	kubectl config set-context --current --namespace="iot-mp-system"
	helm delete iot-mp-system