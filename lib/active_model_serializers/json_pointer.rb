# frozen_string_literal: true

module ActiveModelSerializers
  module JsonPointer
    module_function

    POINTERS = {
      attribute: '/data/attributes/%s',
      primary_data: '/data%s'
    }.freeze

    def new(pointer_type, value = nil)
      format(POINTERS[pointer_type], value)
    end
  end
end
