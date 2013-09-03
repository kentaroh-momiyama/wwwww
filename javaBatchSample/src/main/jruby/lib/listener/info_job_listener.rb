# -*- encoding: utf-8 -*-

# TODO なぜか File.dirname(__FILE__) の戻り値がカレント (＝javaBatchSampleのトップディレクトリ)になる。
# 1. chdirしてみる。
# 2. java側で Ruby.reinitialize内でカレントを操作してみる。
require File.expand_path(File.join(File.dirname(__FILE__), "/src/main/jruby/lib/common"))


java_import 'org.springframework.batch.core.JobExecutionListener'
class InfoJobListener

  def afterJob( job_execution )
    p "afterjob開始..."
    #sleep(200)
    p "afterjob終わり..."
    nil
  end

  def beforeJob( job_execution )
    p "beforejob開始..."
    p "beforejob終わり..."
    nil
  end
end

p "これからnewします...."
InfoJobListener.new    # ←スクリプト最後のインスタンスを保持しておいて、必要の都度各メソッドを実行するイメージ
