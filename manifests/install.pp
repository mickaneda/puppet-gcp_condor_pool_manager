class gcp_condor_pool_manager::install {
  exec {"install gcp_condor_pool_manager":
    command => "/usr/bin/curl -fsSL https://raw.githubusercontent.com/mickaneda/gcp_condor_pool_manager/install/install.sh|sh"
  }
}
