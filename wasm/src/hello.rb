# frozen_string_literal: true

def hello
  time = Time.now.strftime('%Y-%m-%d %H:%M:%S')
  puts "[#{time}]Hello, WASM Ruby!"
end

hello
