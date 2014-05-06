require 'spec_helper'

describe 'spark::config' do

  let(:params) {{
   :mesos_master => 'localhost:5050',
   :executor_uri => '/usr/share/spark',
   :local_ip     => '$::ipaddress',
  }}

  it {
    should contain_file(
      '/usr/share/spark/conf/spark-env.sh'
    ).with({
    'ensure'  => 'present',
    'mode'    => '0644'
    }).with_content(
      /SPARK_PRINT_LAUNCH_COMMAND="1"/
  )}

  context 'should append to java class path' do
    let(:params) {{
      :mesos_master => 'localhost:5050',
      :executor_uri => '/usr/share/spark',
      :local_ip     => '$::ipaddress',
      :paths => [ '/var/foo/bar' ]
    }}

   it {
    should contain_file(
      '/usr/share/spark/conf/spark-env.sh'
    ).with({
    'ensure'  => 'present',
    'mode'    => '0644'
    }).with_content(
      /CLASSPATH:\/var\/foo\/bar/
  )}
  end
end