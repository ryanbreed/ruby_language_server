module RubyLanguageServer
  module ScopeData
    class Variable < Base
      attr_accessor :line            # line
      attr_accessor :column          # column
      attr_accessor :name            # name
      attr_accessor :full_name       # Module::Class name
      attr_accessor :type            # type

      def initialize(scope, name, line = 1, column = 1, type = TYPE_VARIABLE)
        @name = name
        @line = line
        @column = column
        @full_name = [scope.full_name, @name].join(JoinHash[TYPE_VARIABLE])
        @type = type
      end
    end
  end
end
