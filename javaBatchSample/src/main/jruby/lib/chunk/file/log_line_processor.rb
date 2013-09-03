# -*- encoding: utf-8 -*-

# TODO なぜか File.dirname(__FILE__) の戻り値がカレント (＝javaBatchSampleのトップディレクトリ)になる。
# 1. chdirしてみる。
# 2. java側で Ruby.reinitialize内でカレントを操作してみる。
require File.expand_path(File.join(File.dirname(__FILE__), "/src/main/jruby/lib/common"))


java_import 'org.springframework.batch.item.ItemProcessor'
class LogLineProcessor
  # TODO これでうまくいかない？
  # attr_accessor :browsers_str
  def getBrowsersStr
    @browsers_str
  end
  def setBrowsersStr(str)
    @browsers_str = str
  end

  def process( logline )
    @count ||= 0
    @count += 1
    p "LogLineProcessor.process 開始...#{@count}回目"
    #p "LogLineProcessor.process 開始..."
    ret = nil
    @browsers = @browsers_str.split(',') unless @browsers
    
    @browsers.each{|br|
      #p "br = #{br}   logline.browser = #{logline.browser}     #{br == logline.browser}"
      if (br == logline.browser ) # 比較は普通にできる
        ret = LogFilteredLine.new(logline)
        @nonil_count ||= 0
        @nonil_count += 1
        p "LogLineProcessor.process nilではなかった！#{@nonil_count}回目"
      end
    }
    p "LogLineProcessor.process 終わり..."
    ret
  end

end

p "これからnewします...."
LogLineProcessor.new    # ←スクリプト最後のインスタンスを保持しておいて、必要の都度各メソッドを実行するイメージ
