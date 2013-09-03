# -*- encoding: utf-8 -*-

# TODO なぜか File.dirname(__FILE__) の戻り値がカレント (＝javaBatchSampleのトップディレクトリ)になる。
# 1. chdirしてみる。
# 2. java側で Ruby.reinitialize内でカレントを操作してみる。
require File.expand_path(File.join(File.dirname(__FILE__), "/src/main/jruby/lib/common"))


java_import 'org.springframework.batch.item.file.transform.LineAggregator'
class LogLineLineAggregator

  def aggregate( log_filtered_line )
    @count ||= 0
    @count += 1
    p "aggregate開始...#{@count}回目"
    ret = log_filtered_line.to_json
    p "aggregate終わり..."
    ret
  end

end

p "これからnewします...."
LogLineLineAggregator.new    # ←スクリプト最後のインスタンスを保持しておいて、必要の都度各メソッドを実行するイメージ
