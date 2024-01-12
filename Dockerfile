FROM docker.io/aquasec/trivy

RUN trivy image --download-db-only
RUN trivy image --download-java-db-only

# An external OCI registry can be specified using the --db-repository
# and --java-db-repository options.  For example:
# RUN trivy image --db-repository registry.gitlab.com/gitlab-org/security-products/dependencies/trivy-db --download-db-only
# RUN trivy image --java-db-repository registry.gitlab.com/gitlab-org/security-products/dependencies/trivy-java-db --download-java-db-only
