require 'pp'

java_import java.util.concurrent.Executors
java_import java.util.concurrent.ThreadFactory

class DaemonThreadFactory
  include ThreadFactory

  def newThread(runnable)
    thread = java.lang.Thread.new(runnable)
    thread.daemon = true
    thread
  end
end

executor = Executors.new_cached_thread_pool(DaemonThreadFactory.new)

words = File.readlines("/usr/share/dict/words")
words_count = words.size
threads = 10
words_per_thread = words_count / 10
match = /ruby/

futures = []
threads.times do |i|
  start = words_per_thread * i
  my_words = words.slice(start, words_per_thread)

  futures << executor.submit do
    my_words.select {|word| word =~ match}
  end
end

results = futures.map(&:get).flatten

pp results
