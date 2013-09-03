# -*- encoding: utf-8 -*-

# TODO なぜか File.dirname(__FILE__) の戻り値がカレント (＝javaBatchSampleのトップディレクトリ)になる。
# 1. chdirしてみる。
# 2. java側で Ruby.reinitialize内でカレントを操作してみる。
require File.expand_path(File.join(File.dirname(__FILE__), "/src/main/jruby/lib/common"))


java_import 'org.springframework.batch.core.ItemProcessListener'
class InfoItemProcessListener

  def beforeProcess( logline )
    p "beforeprocess開始..."
    p "beforeprocess終わり..."
    nil
  end

  def afterProcess( logline, log_filtered_line)
    p "afterprocess開始..."
    p logline.to_json
    p log_filtered_line.to_json
    p "afterprocess終わり..."
    nil
  end

  def onProcessError( logline, jexcptn )
    p "onProcessError!"
    jexcptn.print_stack_trace
  end
end

p "これからnewします...."
InfoItemProcessListener.new    # ←スクリプト最後のインスタンスを保持しておいて、必要の都度各メソッドを実行するイメージ
