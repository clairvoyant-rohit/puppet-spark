require 'spec_helper'

describe 'spark' do

  it { should compile.with_all_deps }


  it {
    should contain_file(
      '/usr/share/spark/conf/spark-env.sh'
    ).with({
    'ensure'  => 'present',
    'mode'    => '0644'
    }).with_content(
      /SPARK_PRINT_LAUNCH_COMMAND="1"/
  )}

end