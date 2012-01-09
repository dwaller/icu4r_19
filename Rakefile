require 'rake/gempackagetask'
spec = Gem::Specification.new do |s|
  s.authors = [ "Nikolai Lugovoi", "Perry Smith" ]
  s.description = %{
ICU4R is an attempt to provide better Unicode support for Ruby.  Since the introduction of Ruby 1.9, much of this function is obsolete, but it still does some things better than Ruby 1.9 - in particular string collation (sorting) in a locale specific way.

To build and use ICU4R_19 you will need GCC and ICU4C v3.4 or later.}
  s.email = "pedz@easesoftware.com"
  s.extensions = [ 'extconf.rb' ]
  s.extra_rdoc_files = [
                        'README',
                        'docs/FORMATTING',
                        'docs/UNICODE_REGEXPS',
                        'MIT-LICENSE',
                        'calendar.c',
                        'collator.c',
                        'converter.c',
                        'icu4r.c',
                        'ubundle.c',
                        'ucore_ext.c',
                        'uregex.c',
                        'ustring.c'
                       ]
  s.files = Dir['**/**']
  s.has_rdoc = true
  s.homepage = "https://github.com/pedz/icu4r_19"
  s.name = "icu4r_19"
  s.platform = Gem::Platform::RUBY
  s.rdoc_options = [ '-c', 'utf-8', '-x', 'dummy' ]
  s.required_ruby_version = '>=1.8'
  s.requirements = [ 'ICU libraries v 3.4' ]
  s.summary = "Ruby extension for Unicode support using ICU"
  s.version = "1.0"
end
Rake::GemPackageTask.new(spec).define
