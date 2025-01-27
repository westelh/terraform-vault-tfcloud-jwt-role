resource "vault_jwt_auth_backend_role" "this" {
  backend = var.backend
  role_name = var.name
  token_policies = var.policies
  bound_audiences = ["vault.workload.identity"]
  bound_claims_type = "glob"
  bound_claims = {
    sub = "organization:${ var.organization }:project:${ var.project }:workspace:${ var.workspace }:run_phase:*"
  }
  role_type = "jwt"
  user_claim = "terraform_full_workspace"
  token_ttl = var.ttl
}
