# frozen_string_literal: true

require 'querylicious/types'
require 'querylicious/parser'
require 'querylicious/transform'
require 'querylicious/matcher'

require 'dry-initializer'

module Querylicious
  # Query Reducer for processing parsed query
  class QueryReducer
    extend Dry::Initializer

    param :reducer, Types::Any.constrained(attr: :to_proc)

    def self.call(reducable, query, &block)
      new(block).call(reducable, query)
    end

    def call(reducable, query)
      parse_query(query).reduce(reducable) do |memo, rule|
        Matcher.call(rule, &reducer.to_proc.curry.call(memo))
      end
    end

    def curry(*args)
      to_proc.curry(*args)
    end

    def to_proc
      public_method(:call).to_proc
    end

    private

    def transformer
      @transformer ||= Transform.new
    end

    def parser
      @parser ||= Parser.new
    end

    def parse_query(query)
      Array(transformer.apply(parser.parse(query.to_s)))
    end
  end
end
