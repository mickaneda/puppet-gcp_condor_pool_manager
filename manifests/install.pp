class gcp_condor_pool_manager::install {
  exec {"install gcp_condor_pool_manager":
    command => "curl -fsSL https://raw.github.com/mikaneda/gcp_condor_pool_manager/install/install.sh| sh"
  }
}
