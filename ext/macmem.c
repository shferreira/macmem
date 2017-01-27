#include "ruby.h"
#include <unistd.h>
#include <sys/proc_info.h>

static VALUE rb_MacMem;

VALUE macmem_get();

void Init_macmem()
{
  rb_MacMem = rb_define_module("Macmem");
  rb_define_singleton_method(rb_MacMem, "get", macmem_get, 0);
}

VALUE macmem_get()
{
  pid_t pid = getpid();

  struct proc_taskallinfo info;
  if (proc_pidinfo(pid, PROC_PIDTASKALLINFO, 0, &info, sizeof(info)) >= sizeof(info));
    return ULONG2NUM(info.ptinfo.pti_resident_size / 1024);

  return 0;
}
