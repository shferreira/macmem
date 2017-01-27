require 'macmem/macmem'

# Get the memory usage of your Ruby process in Mac OS X, in kbytes.
def macmem
  Macmem.get
end

