echo "Installing Gatekeeper..."
kubectl apply -f https://raw.githubusercontent.com/open-policy-agent/gatekeeper/master/deploy/gatekeeper.yaml
echo "Installing pod-security-policy template.yamls..."
kubectl apply -f pod-security-policy/host-namespaces/template.yaml
kubectl apply -f pod-security-policy/allow-privilege-escalation/template.yaml
kubectl apply -f pod-security-policy/capabilities/template.yaml
kubectl apply -f pod-security-policy/host-filesystem/template.yaml
kubectl apply -f pod-security-policy/host-network-ports/template.yaml
kubectl apply -f pod-security-policy/apparmor/template.yaml
kubectl apply -f pod-security-policy/selinux/template.yaml
kubectl apply -f pod-security-policy/proc-mount/template.yaml
kubectl apply -f pod-security-policy/forbidden-sysctls/template.yaml
sleep 5
echo "Installing pod-security-policy constraint.yamls..."
kubectl apply -f pod-security-policy/host-namespaces/constraint.yaml
kubectl apply -f pod-security-policy/allow-privilege-escalation/constraint.yaml
kubectl apply -f pod-security-policy/capabilities/constraint.yaml
kubectl apply -f pod-security-policy/host-filesystem/constraint.yaml
kubectl apply -f pod-security-policy/host-network-ports/constraint.yaml
kubectl apply -f pod-security-policy/apparmor/constraint.yaml
kubectl apply -f pod-security-policy/selinux/constraint.yaml
kubectl apply -f pod-security-policy/proc-mount/constraint.yaml
kubectl apply -f pod-security-policy/forbidden-sysctls/constraint.yaml