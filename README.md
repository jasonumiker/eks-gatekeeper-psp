1. Run `install-gatekeeper.sh` to install Gatekeeper on your cluster as well as the equivilent of the Baseline/Default PSP policy https://kubernetes.io/docs/concepts/security/pod-security-standards/#baseline-default.
1. Run `test-gatekeeper.sh` to attempt to deploy all the example.yaml templates that violate these policies and see them fail

NOTE: `pod-security-policy/` was cloned from https://github.com/open-policy-agent/gatekeeper/tree/master/library/pod-security-policy on 31/8/2020