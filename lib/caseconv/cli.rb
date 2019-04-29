require 'thor'

module Caseconv
  class Cli < Thor

    CASE_METHOD_NAME_MAP = {
      'down' => :downcase,
      'up' => :upcase,
      'snake' => :underscore,
      'camel' => :camelize_dfl,
      'Camel' => :camelize,
      'kebab' => :kebab
    }

    desc '', 'convert text to specified cases, available cases: down, up, snake, camel(with first letter be lower case), Camel, kebab'
    option :case, type: :string, aliases: ['-c'], required: true, desc: 'Specify which case converts to, available values: down, up, snake, camel(with first letter be lower case), Camel, kebab'
    def convert(file_name=nil)
      unless case_type = CASE_METHOD_NAME_MAP[options[:case]]
        STDERR.puts "Not supported case: #{options[:case]}"
      end
      if file_name
        File.open(file_name, 'r') do |file|
          Caseconv::App.new.convert_file(file, case_type).each do |line|
            puts line
          end
        end
      else
        Caseconv::App.new.convert_file(STDIN, case_type).each do |line|
          puts line
        end
      end
    end

    default_command :convert
  end
end
