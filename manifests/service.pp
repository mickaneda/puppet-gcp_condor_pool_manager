class gcp_condor_pool_manager::service (
  $service = true
){
  if $service {
    service { 'gcpm':
      ensure     => running,
      enable     => true,
      hasrestart => true,
      hasstatus  => true,
    }
  } else {
    service { 'gcpm':
      ensure     => stopped,
      enable     => false,
      hasrestart => true,
      hasstatus  => true,
    }
  }
}
