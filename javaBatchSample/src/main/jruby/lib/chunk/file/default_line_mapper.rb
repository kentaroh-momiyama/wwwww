# -*- encoding: utf-8 -*-

# TODO なぜか File.dirname(__FILE__) の戻り値がカレント (＝javaBatchSampleのトップディレクトリ)になる。
# 1. chdirしてみる。
# 2. java側で Ruby.reinitialize内でカレントを操作してみる。
require File.expand_path(File.join(File.dirname(__FILE__), "/src/main/jruby/lib/common"))


java_import 'org.springframework.batch.item.file.LineMapper'
java_import 'org.springframework.beans.factory.InitializingBean'
class DefaultLineMapper

  def afterPropertiesSet
    @count = 0
  end

  def mapLine( line, line_number)
    @count += 1
    p "mapLine開始...#{@count}回目"
    ret = nil
    begin
      if (line )
        ret = LogLine.new(line)
      end
      #pp ret
      ret
    rescue => ex
      # 発生した例外がjava由来のものかruby由来のそれかをチェック。
      # 次のどちらのコードでも書けるので、使いやすい方で。
      #p "例外発生。#{ex.class.name}     #{ex.is_a?(Java::JavaLang::Throwable)}"
      #p "例外発生。#{ex.class.name}     #{ex.is_a?(java.lang.Throwable)}"
      
      # rubyで定義された例外をそのままjava例外のコンストラクタに渡してもダメ。ラップしてあげる必要がある。
      # TODO RaiseException だと必然的にRuntimeExceptionになってしまうので、もっといい方法がないか模索する。
      unless ( ex.is_a?(java.lang.Throwable) )
        ex = org.jruby.exceptions.RaiseException.new(ex)
      end
      
      raise org.springframework.batch.item.file.FlatFileParseException.new("Parsing error at line: #{line_number}, input=[#{line}]", ex, line, line_number)
    ensure
      p "mapLine終わり..."
    end
    
  end

end

p "これからnewします...."
DefaultLineMapper.new    # ←スクリプト最後のインスタンスを保持しておいて、必要の都度各メソッドを実行するイメージ
