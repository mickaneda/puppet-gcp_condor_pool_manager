class gcp_condor_pool_manager {
  $core        = $gcp_condor_pool_manager::params::core
  $mem         = $gcp_condor_pool_manager::params::mem
  $disk        = $gcp_condor_pool_manager::params::disk
  $max         = $gcp_condor_pool_manager::params::max
  $max_cores   = $gcp_condor_pool_manager::params::max_cores
  $static      = $gcp_condor_pool_manager::params::static
  $prefix      = $gcp_condor_pool_manager::params::prefix
  $image       = $gcp_condor_pool_manager::params::image
  $preemptible = $gcp_condor_pool_manager::params::preemptible
  $off_timer   = $gcp_condor_pool_manager::params::off_timer
  $zones       = $gcp_condor_pool_manager::params::zones
  $tag         = $gcp_condor_pool_manager::params::tag
  $reuse       = $gcp_condor_pool_manager::params::reuse
  $interval    = $gcp_condor_pool_manager::params::interval
  $head_info   = $gcp_condor_pool_manager::params::head_info
  $bucket      = $gcp_condor_pool_manager::params::bucket
  $admin       = $gcp_condor_pool_manager::params::admin
  $owner       = $gcp_condor_pool_manager::params::owner
  $log_level   = $gcp_condor_pool_manager::params::log_level
  $gcloud      = $gcp_condor_pool_manager::params::gcloud

  file { '/etc/gcpm.conf':
    content => template("${module_name}/gcpm.conf.erb"),
    owner   => 'root',
    group   => 'root',
    mode    => '0644',
  }
