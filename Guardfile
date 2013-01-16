# A sample Guardfile
# More info at https://github.com/guard/guard#readme

guard 'haml', :output => '.', :input => 'lib' do
  watch %r{^lib/.+(\.html\.haml)}
end

guard 'sass', :input => 'lib/css', :output => 'css'

guard 'minitest' do
  watch(%r|^spec/(.*)_spec\.rb|)
  watch(%r{^lib/(.*/)?([^/]+)\.rb$})  { |m| "spec/#{m[1]}#{m[2]}_spec.rb" }
  watch(%r|^spec/spec_helper\.rb|)    { "spec" }
end
