# -*- encoding: utf-8 -*-
p "LOAD_PATHの個数は#{$LOAD_PATH.length}です。"

$LOAD_PATH.concat( [
                       "/Users/momiyama/eclipse_workspace/javaBatchSample/src/main/jruby/vendor/bundler/jruby/1.9/gems/rspec-rails-2.12.0/lib",
                       "/Users/momiyama/eclipse_workspace/javaBatchSample/src/main/jruby/vendor/bundler/jruby/1.9/gems/rspec-2.12.0/lib",
                       "/Users/momiyama/eclipse_workspace/javaBatchSample/src/main/jruby/vendor/bundler/jruby/1.9/gems/rspec-mocks-2.12.2/lib",
                       "/Users/momiyama/eclipse_workspace/javaBatchSample/src/main/jruby/vendor/bundler/jruby/1.9/gems/rspec-expectations-2.12.1/lib",
                       "/Users/momiyama/eclipse_workspace/javaBatchSample/src/main/jruby/vendor/bundler/jruby/1.9/gems/rspec-core-2.12.2/lib",
                       "/Users/momiyama/eclipse_workspace/javaBatchSample/src/main/jruby/vendor/bundler/jruby/1.9/gems/rails-3.1.1/lib",
                       "/Users/momiyama/eclipse_workspace/javaBatchSample/src/main/jruby/vendor/bundler/jruby/1.9/gems/railties-3.1.1/lib",
                       "/Users/momiyama/eclipse_workspace/javaBatchSample/src/main/jruby/vendor/bundler/jruby/1.9/gems/thor-0.14.6/lib",
                       "/Users/momiyama/eclipse_workspace/javaBatchSample/src/main/jruby/vendor/bundler/jruby/1.9/gems/rdoc-3.12.2/lib",
                       "/Users/momiyama/eclipse_workspace/javaBatchSample/src/main/jruby/vendor/bundler/jruby/1.9/gems/rack-ssl-1.3.3/lib",
                       "/Users/momiyama/eclipse_workspace/javaBatchSample/src/main/jruby/vendor/bundler/jruby/1.9/gems/net-sftp-2.1.2/lib",
                       "/Users/momiyama/eclipse_workspace/javaBatchSample/src/main/jruby/vendor/bundler/jruby/1.9/gems/net-ssh-2.6.8/lib",
                       "/Users/momiyama/eclipse_workspace/javaBatchSample/src/main/jruby/vendor/bundler/jruby/1.9/gems/json-1.6.1-java/lib",
                       "/Users/momiyama/eclipse_workspace/javaBatchSample/src/main/jruby/vendor/bundler/jruby/1.9/gems/diff-lcs-1.1.3/lib",
                       "/Users/momiyama/eclipse_workspace/javaBatchSample/src/main/jruby/vendor/bundler/jruby/1.9/gems/delayed_job-2.1.4/lib",
                       "/Users/momiyama/eclipse_workspace/javaBatchSample/src/main/jruby/vendor/bundler/jruby/1.9/gems/daemons-1.1.9/lib",
                       "/Users/momiyama/eclipse_workspace/javaBatchSample/src/main/jruby/vendor/bundler/jruby/1.9/gems/activeresource-3.1.1/lib",
                       "/Users/momiyama/eclipse_workspace/javaBatchSample/src/main/jruby/vendor/bundler/jruby/1.9/gems/activerecord-jdbcmysql-adapter-1.2.9/lib",
                       "/Users/momiyama/eclipse_workspace/javaBatchSample/src/main/jruby/vendor/bundler/jruby/1.9/gems/jdbc-mysql-5.1.25/lib",
                       "/Users/momiyama/eclipse_workspace/javaBatchSample/src/main/jruby/vendor/bundler/jruby/1.9/gems/activerecord-jdbc-adapter-1.2.9.1/lib",
                       "/Users/momiyama/eclipse_workspace/javaBatchSample/src/main/jruby/vendor/bundler/jruby/1.9/gems/activerecord-3.1.1/lib",
                       "/Users/momiyama/eclipse_workspace/javaBatchSample/src/main/jruby/vendor/bundler/jruby/1.9/gems/tzinfo-0.3.37/lib",
                       "/Users/momiyama/eclipse_workspace/javaBatchSample/src/main/jruby/vendor/bundler/jruby/1.9/gems/arel-2.2.3/lib",
                       "/Users/momiyama/eclipse_workspace/javaBatchSample/src/main/jruby/vendor/bundler/jruby/1.9/gems/actionmailer-3.1.1/lib",
                       "/Users/momiyama/eclipse_workspace/javaBatchSample/src/main/jruby/vendor/bundler/jruby/1.9/gems/mail-2.3.3/lib",
                       "/Users/momiyama/eclipse_workspace/javaBatchSample/src/main/jruby/vendor/bundler/jruby/1.9/gems/treetop-1.4.15/lib",
                       "/Users/momiyama/eclipse_workspace/javaBatchSample/src/main/jruby/vendor/bundler/jruby/1.9/gems/polyglot-0.3.3/lib",
                       "/Users/momiyama/eclipse_workspace/javaBatchSample/src/main/jruby/vendor/bundler/jruby/1.9/gems/mime-types-1.24/lib",
                       "/Users/momiyama/eclipse_workspace/javaBatchSample/src/main/jruby/vendor/bundler/jruby/1.9/gems/actionpack-3.1.1/lib",
                       "/Users/momiyama/eclipse_workspace/javaBatchSample/src/main/jruby/vendor/bundler/jruby/1.9/gems/sprockets-2.0.4/lib",
                       "/Users/momiyama/eclipse_workspace/javaBatchSample/src/main/jruby/vendor/bundler/jruby/1.9/gems/tilt-1.4.1/lib",
                       "/Users/momiyama/eclipse_workspace/javaBatchSample/src/main/jruby/vendor/bundler/jruby/1.9/gems/hike-1.2.3/lib",
                       "/Users/momiyama/eclipse_workspace/javaBatchSample/src/main/jruby/vendor/bundler/jruby/1.9/gems/rack-test-0.6.2/lib",
                       "/Users/momiyama/eclipse_workspace/javaBatchSample/src/main/jruby/vendor/bundler/jruby/1.9/gems/rack-mount-0.8.3/lib",
                       "/Users/momiyama/eclipse_workspace/javaBatchSample/src/main/jruby/vendor/bundler/jruby/1.9/gems/rack-cache-1.2/lib",
                       "/Users/momiyama/eclipse_workspace/javaBatchSample/src/main/jruby/vendor/bundler/jruby/1.9/gems/rack-1.3.10/lib",
                       "/Users/momiyama/eclipse_workspace/javaBatchSample/src/main/jruby/vendor/bundler/jruby/1.9/gems/erubis-2.7.0/lib",
                       "/Users/momiyama/eclipse_workspace/javaBatchSample/src/main/jruby/vendor/bundler/jruby/1.9/gems/activemodel-3.1.1/lib",
                       "/Users/momiyama/eclipse_workspace/javaBatchSample/src/main/jruby/vendor/bundler/jruby/1.9/gems/i18n-0.6.5/lib",
                       "/Users/momiyama/eclipse_workspace/javaBatchSample/src/main/jruby/vendor/bundler/jruby/1.9/gems/builder-3.0.4/lib",
                       "/Users/momiyama/eclipse_workspace/javaBatchSample/src/main/jruby/vendor/bundler/jruby/1.9/gems/activesupport-3.1.1/lib",
                       "/Users/momiyama/eclipse_workspace/javaBatchSample/src/main/jruby/vendor/bundler/jruby/1.9/gems/multi_json-1.7.9/lib",
                       "/Users/momiyama/eclipse_workspace/javaBatchSample/src/main/jruby/vendor/bundler/jruby/1.9/gems/rake-10.1.0/lib",
                       "/Users/momiyama/.rbenv/versions/jruby-1.7.4/lib/ruby/gems/shared/gems/bundler-1.3.5/lib/gems/bundler-1.3.5/lib",
                       "/Users/momiyama/.rbenv/versions/jruby-1.7.4/lib/ruby/gems/shared/gems/bundler-1.3.5/lib",
                       "/Users/momiyama/.rbenv/versions/jruby-1.7.4/lib/ruby/1.9/site_ruby",
                       "/Users/momiyama/.rbenv/versions/jruby-1.7.4/lib/ruby/shared",
                       "/Users/momiyama/.rbenv/versions/jruby-1.7.4/lib/ruby/1.9"
                   ])
p "LOAD_PATHの個数は#{$LOAD_PATH.length}です。"


require "rubygems"
require "active_record"
require 'java' # 必要なし

# 文字エンコーディングは UTF-8
# $KCODE = 'u'

# DB接続設定
ActiveRecord::Base.establish_connection(
    adapter:  "jdbcmysql",
    host:     "localhost",
    username: "root",
    password: "",
    database: "spring_batch_sample",
    encoding: "UTF8",
)

# テーブルにアクセスするためのクラスを宣言
class JobInstance < ActiveRecord::Base
  # テーブル名が命名規則に沿わない場合、
  self.table_name = 'BATCH_JOB_INSTANCE'  # set_table_nameは古いから注意
end

=begin
def tak x, y, z
  if y >= x
    return z
  else
    return tak( tak(x-1, y, z),
                tak(y-1, z, x),
                tak(z-1, x, y))
  end
end

require 'benchmark'ああ

N = (ARGV.shift || 5).to_i

Benchmark.bm do |make|
  N.times do
    make.report do
      i = 0
      while i<10
        tak(24, 16, 8)
        i += 1
      end
    end
  end
end
=end

java_import 'org.springframework.batch.core.StepExecutionListener'
class OutputFileListener

  def print_job_instance
    p JobInstance.find(1)
  end

  def afterStep( step_execution )
    p "afterstep開始..."
    print_job_instance
    #p "寝ます....."
    #sleep 10
    #p "起きました！"
    p "afterstep終わり..."
    nil
  end

  def beforeStep( stepExecution )
    # def before_step( se ) ← この書式は使えない
    p "beforestep開始..."

    # javaのクラス使用。下のコードはどちらも使える。
    # path = stepExecution.getExecutionContext.getString("fileName")
    path = stepExecution.get_execution_context.get_string("fileName")

    # 下のコードはどちらも標準出力に出力できる。
    # p path
    # java.lang.System.out.println(path)

    # javaのクラス使用。引数以外のクラスを使うときは、FQDNで呼ぶ。
    # filename = org.springframework.util.StringUtils.getFilename(path)
    # p filename + " from java"

    filename = File.basename(path)
    # p filename + " from ruby"

    ret = stepExecution.getExecutionContext.put("outFile", filename)
    p "beforestep終わり..."
    ret
  end
end

p "これからnewします...."
# OutputFileListener.new.print_job_instance
OutputFileListener.new    # ←スクリプト最後のインスタンスを保持しておいて、必要の都度各メソッドを実行するイメージ
