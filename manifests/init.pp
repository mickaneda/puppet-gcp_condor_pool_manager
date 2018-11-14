class gcp_condor_pool_manager (
  $core        = $gcp_condor_pool_manager::params::core,
  $mem         = $gcp_condor_pool_manager::params::mem,
  $disk        = $gcp_condor_pool_manager::params::disk,
  $idle        = $gcp_condor_pool_manager::params::idle,
  $max         = $gcp_condor_pool_manager::params::max,
  $max_cores   = $gcp_condor_pool_manager::params::max_cores,
  $static      = $gcp_condor_pool_manager::params::static,
  $prefix      = $gcp_condor_pool_manager::params::prefix,
  $image       = $gcp_condor_pool_manager::params::image,
  $preemptible = $gcp_condor_pool_manager::params::preemptible,
  $off_timer   = $gcp_condor_pool_manager::params::off_timer,
  $zones       = $gcp_condor_pool_manager::params::zones,
  $network_tag = $gcp_condor_pool_manager::params::network_tag,
  $reuse       = $gcp_condor_pool_manager::params::reuse,
  $interval    = $gcp_condor_pool_manager::params::interval,
  $head_info   = $gcp_condor_pool_manager::params::head_info,
  $port        = $gcp_condor_pool_manager::params::port,
  $bucket      = $gcp_condor_pool_manager::params::bucket,
  $admin       = $gcp_condor_pool_manager::params::admin,
  $owner       = $gcp_condor_pool_manager::params::owner,
  $bg_cmd      = $gcp_condor_pool_manager::params::bg_cmd,
  $log_level   = $gcp_condor_pool_manager::params::log_level,
  $gcloud      = $gcp_condor_pool_manager::params::gcloud,
  $service     = $gcp_condor_pool_manager::params::service,
) inherits
::gcp_condor_pool_manager::params {
  class { 'gcp_condor_pool_manager::install': }
  Class['gcp_condor_pool_manager::install'] -> Class['gcp_condor_pool_manager::config']
  class { 'gcp_condor_pool_manager::config': }
  if $service {
    Class['gcp_condor_pool_manager::config'] -> Class['gcp_condor_pool_manager::service']
    class { 'gcp_condor_pool_manager::service': }
  }
}
