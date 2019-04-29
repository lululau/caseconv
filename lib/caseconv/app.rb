require 'caseconv/cli'
require 'active_support/core_ext/string'

class ::String
  def camelize_dfl
    camelize.sub(/^[A-Z]/) { |c| c.downcase}
  end

  def kebab
    underscore.gsub(/_/, '-')
  end
end

module Caseconv
  class App
    def main(args)
      Caseconv::Cli.start(args)
    rescue StandardError => e
      STDERR.puts(e.message)
    end

    def convert_file(file, case_type)
      file.map do |line|
        convert(line.chomp, case_type)
      end
    end

    def convert(str, case_type)
      str.send(case_type)
    end
  end
end
