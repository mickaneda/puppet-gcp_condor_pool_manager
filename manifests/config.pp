class gcp_condor_pool_manager::config {
  $core        = $gcp_condor_pool_manager::core
  $mem         = $gcp_condor_pool_manager::mem
  $disk        = $gcp_condor_pool_manager::disk
  $idle        = $gcp_condor_pool_manager::idle
  $max         = $gcp_condor_pool_manager::max
  $max_cores   = $gcp_condor_pool_manager::max_cores
  $static      = $gcp_condor_pool_manager::static
  $prefix      = $gcp_condor_pool_manager::prefix
  $image       = $gcp_condor_pool_manager::image
  $preemptible = $gcp_condor_pool_manager::preemptible
  $off_timer   = $gcp_condor_pool_manager::off_timer
  $zones       = $gcp_condor_pool_manager::zones
  $network_tag = $gcp_condor_pool_manager::network_tag
  $reuse       = $gcp_condor_pool_manager::reuse
  $interval    = $gcp_condor_pool_manager::interval
  $head_info   = $gcp_condor_pool_manager::head_info
  $port        = $gcp_condor_pool_manager::port
  $bucket      = $gcp_condor_pool_manager::bucket
  $admin       = $gcp_condor_pool_manager::admin
  $owner       = $gcp_condor_pool_manager::owner
  $bg_cmd      = $gcp_condor_pool_manager::bg_cmd
  $log_level   = $gcp_condor_pool_manager::log_level
  $gcloud      = $gcp_condor_pool_manager::gcloud

  file { '/etc/gcpm.conf':
    content => template("${module_name}/gcpm.conf.erb"),
    owner   => 'root',
    group   => 'root',
    mode    => '0644',
  }
}
