require 'spec_helper'

describe 'spark' do

  it { should compile.with_all_deps }

  it { should contain_package('apache-spark').with({
      'ensure' => 'present'
  }) }

  context 'install package' do
    let(:version) { '0.9.0' }
    let(:params) {{
      :version => version
    }}

    it { should contain_package('apache-spark').with({
      'ensure' => version
    }) }

    it { should contain_file('/usr/share/spark/conf/spark-env.sh') }
    it { should contain_file('/usr/share/spark/conf/log4j.properties') }
  end
end
