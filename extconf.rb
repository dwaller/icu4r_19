require 'mkmf'

# ICU4C installs its libraries to /usr/local/lib (at least if you install the
# pre-built binaries) so use the -R flag to ensure that this is on the library
# load path.  For compatibility with gcc 4.6 use -Wl, to indicate that this is
# an argument for the linker.
$LDFLAGS = "-licuuc -licui18n -licudata -lstdc++ -Wl,-R/usr/local/lib"
$CFLAGS = "-Wall"
create_makefile('icu4r')
File.open("Makefile", "a") << <<-EOT

check:	$(DLLIB)
	@$(RUBY) $(srcdir)/test/test_ustring.rb
	@$(RUBY) $(srcdir)/test/test_calendar.rb
	@$(RUBY) $(srcdir)/test/test_converter.rb
	@$(RUBY) $(srcdir)/test/test_collator.rb

EOT
