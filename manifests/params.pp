class gcp_condor_pool_manager::params {
  $core        = lookup('core',        { default_value => '1'})
  $mem         = lookup('mem',         { default_value => '3750'})
  $disk        = lookup('disk',        { default_value => '50'})
  $idle        = lookup('idle',        { default_value => '0'})
  $max         = lookup('max',         { default_value => '10'})
  $max_cores   = lookup('max_cores',   { default_value => '10'})
  $static      = lookup('static',      { default_value => ''})
  $prefix      = lookup('prefix',      { default_value => 'gcp-wn'})
  $image       = lookup('image',       { default_value => 'gcp-wn-image-01'})
  $preemptible = lookup('preemptible', { default_value => '1'})
  $off_timer   = lookup('off_timer',   { default_value => '600'})
  $zones       = lookup('zones',       { default_value => 'asia-northeast1-b'})
  $network_tag = lookup('network_tag', { default_value => ''})
  $reuse       = lookup('reuse',       { default_value => '0'})
  $interval    = lookup('interval',    { default_value => '10'})
  $head_info   = lookup('head_info',   { default_value => 'gcp'})
  $port        = lookup('port'     ,   { default_value => '9618'})
  $bucket      = lookup('bucket',      { default_value => ''})
  $admin       = lookup('admin',       { default_value => ''})
  $owner       = lookup('owner',       { default_value => 'Condor Owner'})
  $bg_cmd      = lookup('bg_cmd',      { default_value => '1'})
  $log_level   = lookup('log_level',   { default_value => 'INFO'})
  $gcloud      = lookup('gcloud',      { default_value => 'gcloud'})
  $service     = lookup('service',     { default_value => true})
}
