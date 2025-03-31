pid_file = "./pidfile"

vault {
   address = "{{ vault_address }}"
   tls_skip_verify = true
}

auto_auth {
   method {
      type = "gcp"
      mount_path = "auth/core/gcp"
      config = {
         type = "gce"
         role = "client"
      }
   }
   sink "file" {
      config = {
            path = "{{ config_dir }}/vault-token-via-agent"
      }
   }
}