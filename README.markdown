MacMem
======

MacMem is a simple gem that gets the current memory usage of your Ruby process in Mac OS X.

Since apparently the only way to get memory usage in Ruby is calling the `ps` shell command, I built this around proc_pidinfo in an attempt to do things in a cleaner way. My hope is that somebody builds a better, multiplatform Gem for this task.

Beware that my implementation, ableit simple, might be imperfect.

Usage
=====

    require 'macmem'
    
    puts macmem   # prints the memory usage in kbytes.
