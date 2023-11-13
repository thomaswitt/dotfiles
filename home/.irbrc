#{irbtools irbtools/more}
%w{rubygems irb/ext/save-history irb/completion awesome_print hirb pry}.each do |lib|
  begin
    require lib
  rescue LoadError => err
    $stderr.puts "Couldn't load #{lib}: #{err}"
  end
end

# Use the simple prompt if possible.
IRB.conf[:PROMPT_MODE] = :SIMPLE if IRB.conf[:PROMPT_MODE] == :DEFAULT

IRB.conf[:SAVE_HISTORY] = 10000
IRB.conf[:HISTORY_FILE] = "#{ENV['HOME']}/.irb-save-history"
