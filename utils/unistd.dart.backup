import 'dart:ffi' as ffi;

class Unistd {
  /// Holds the Dynamic library.
  final ffi.DynamicLibrary _dylib;

  /// The symbols are looked up in [dynamicLibrary].
  Unistd(ffi.DynamicLibrary dynamicLibrary) : _dylib = dynamicLibrary;

  ffi.Pointer<__dirstream> opendir(
    ffi.Pointer<ffi.Int8> __name,
  ) {
    _opendir ??= _dylib.lookupFunction<_c_opendir, _dart_opendir>('opendir');
    return _opendir(
      __name,
    );
  }

  _dart_opendir _opendir;

  ffi.Pointer<__dirstream> fdopendir(
    int __fd,
  ) {
    _fdopendir ??=
        _dylib.lookupFunction<_c_fdopendir, _dart_fdopendir>('fdopendir');
    return _fdopendir(
      __fd,
    );
  }

  _dart_fdopendir _fdopendir;

  int closedir(
    ffi.Pointer<__dirstream> __dirp,
  ) {
    _closedir ??=
        _dylib.lookupFunction<_c_closedir, _dart_closedir>('closedir');
    return _closedir(
      __dirp,
    );
  }

  _dart_closedir _closedir;

  ffi.Pointer<dirent> readdir(
    ffi.Pointer<__dirstream> __dirp,
  ) {
    _readdir ??= _dylib.lookupFunction<_c_readdir, _dart_readdir>('readdir');
    return _readdir(
      __dirp,
    );
  }

  _dart_readdir _readdir;

  int readdir_r(
    ffi.Pointer<__dirstream> __dirp,
    ffi.Pointer<dirent> __entry,
    ffi.Pointer<ffi.Pointer<dirent>> __result,
  ) {
    _readdir_r ??=
        _dylib.lookupFunction<_c_readdir_r, _dart_readdir_r>('readdir_r');
    return _readdir_r(
      __dirp,
      __entry,
      __result,
    );
  }

  _dart_readdir_r _readdir_r;

  void rewinddir(
    ffi.Pointer<__dirstream> __dirp,
  ) {
    _rewinddir ??=
        _dylib.lookupFunction<_c_rewinddir, _dart_rewinddir>('rewinddir');
    return _rewinddir(
      __dirp,
    );
  }

  _dart_rewinddir _rewinddir;

  void seekdir(
    ffi.Pointer<__dirstream> __dirp,
    int __pos,
  ) {
    _seekdir ??= _dylib.lookupFunction<_c_seekdir, _dart_seekdir>('seekdir');
    return _seekdir(
      __dirp,
      __pos,
    );
  }

  _dart_seekdir _seekdir;

  int telldir(
    ffi.Pointer<__dirstream> __dirp,
  ) {
    _telldir ??= _dylib.lookupFunction<_c_telldir, _dart_telldir>('telldir');
    return _telldir(
      __dirp,
    );
  }

  _dart_telldir _telldir;

  int dirfd(
    ffi.Pointer<__dirstream> __dirp,
  ) {
    _dirfd ??= _dylib.lookupFunction<_c_dirfd, _dart_dirfd>('dirfd');
    return _dirfd(
      __dirp,
    );
  }

  _dart_dirfd _dirfd;

  int alphasort(
    ffi.Pointer<ffi.Pointer<dirent>> __e1,
    ffi.Pointer<ffi.Pointer<dirent>> __e2,
  ) {
    _alphasort ??=
        _dylib.lookupFunction<_c_alphasort, _dart_alphasort>('alphasort');
    return _alphasort(
      __e1,
      __e2,
    );
  }

  _dart_alphasort _alphasort;

  int getdirentries(
    int __fd,
    ffi.Pointer<ffi.Int8> __buf,
    int __nbytes,
    ffi.Pointer<ffi.Int64> __basep,
  ) {
    _getdirentries ??= _dylib
        .lookupFunction<_c_getdirentries, _dart_getdirentries>('getdirentries');
    return _getdirentries(
      __fd,
      __buf,
      __nbytes,
      __basep,
    );
  }

  _dart_getdirentries _getdirentries;

  int fcntl(
    int __fd,
    int __cmd,
  ) {
    _fcntl ??= _dylib.lookupFunction<_c_fcntl, _dart_fcntl>('fcntl');
    return _fcntl(
      __fd,
      __cmd,
    );
  }

  _dart_fcntl _fcntl;

  int open(
    ffi.Pointer<ffi.Int8> __file,
    int __oflag,
  ) {
    _open ??= _dylib.lookupFunction<_c_open, _dart_open>('open');
    return _open(
      __file,
      __oflag,
    );
  }

  _dart_open _open;

  int openat(
    int __fd,
    ffi.Pointer<ffi.Int8> __file,
    int __oflag,
  ) {
    _openat ??= _dylib.lookupFunction<_c_openat, _dart_openat>('openat');
    return _openat(
      __fd,
      __file,
      __oflag,
    );
  }

  _dart_openat _openat;

  int creat(
    ffi.Pointer<ffi.Int8> __file,
    int __mode,
  ) {
    _creat ??= _dylib.lookupFunction<_c_creat, _dart_creat>('creat');
    return _creat(
      __file,
      __mode,
    );
  }

  _dart_creat _creat;

  int lockf(
    int __fd,
    int __cmd,
    int __len,
  ) {
    _lockf ??= _dylib.lookupFunction<_c_lockf, _dart_lockf>('lockf');
    return _lockf(
      __fd,
      __cmd,
      __len,
    );
  }

  _dart_lockf _lockf;

  int posix_fadvise(
    int __fd,
    int __offset,
    int __len,
    int __advise,
  ) {
    _posix_fadvise ??= _dylib
        .lookupFunction<_c_posix_fadvise, _dart_posix_fadvise>('posix_fadvise');
    return _posix_fadvise(
      __fd,
      __offset,
      __len,
      __advise,
    );
  }

  _dart_posix_fadvise _posix_fadvise;

  int posix_fallocate(
    int __fd,
    int __offset,
    int __len,
  ) {
    _posix_fallocate ??=
        _dylib.lookupFunction<_c_posix_fallocate, _dart_posix_fallocate>(
            'posix_fallocate');
    return _posix_fallocate(
      __fd,
      __offset,
      __len,
    );
  }

  _dart_posix_fallocate _posix_fallocate;

  ffi.Pointer<ffi.NativeFunction<__sighandler_t_2>> __sysv_signal(
    int __sig,
    ffi.Pointer<ffi.NativeFunction<__sighandler_t_2>> __handler,
  ) {
    ___sysv_signal ??= _dylib
        .lookupFunction<_c___sysv_signal, _dart___sysv_signal>('__sysv_signal');
    return ___sysv_signal(
      __sig,
      __handler,
    );
  }

  _dart___sysv_signal ___sysv_signal;

  ffi.Pointer<ffi.NativeFunction<__sighandler_t_2>> signal(
    int __sig,
    ffi.Pointer<ffi.NativeFunction<__sighandler_t_2>> __handler,
  ) {
    _signal ??= _dylib.lookupFunction<_c_signal, _dart_signal>('signal');
    return _signal(
      __sig,
      __handler,
    );
  }

  _dart_signal _signal;

  int kill(
    int __pid,
    int __sig,
  ) {
    _kill ??= _dylib.lookupFunction<_c_kill, _dart_kill>('kill');
    return _kill(
      __pid,
      __sig,
    );
  }

  _dart_kill _kill;

  int killpg(
    int __pgrp,
    int __sig,
  ) {
    _killpg ??= _dylib.lookupFunction<_c_killpg, _dart_killpg>('killpg');
    return _killpg(
      __pgrp,
      __sig,
    );
  }

  _dart_killpg _killpg;

  int raise(
    int __sig,
  ) {
    _raise ??= _dylib.lookupFunction<_c_raise, _dart_raise>('raise');
    return _raise(
      __sig,
    );
  }

  _dart_raise _raise;

  ffi.Pointer<ffi.NativeFunction<__sighandler_t_2>> ssignal(
    int __sig,
    ffi.Pointer<ffi.NativeFunction<__sighandler_t_2>> __handler,
  ) {
    _ssignal ??= _dylib.lookupFunction<_c_ssignal, _dart_ssignal>('ssignal');
    return _ssignal(
      __sig,
      __handler,
    );
  }

  _dart_ssignal _ssignal;

  int gsignal(
    int __sig,
  ) {
    _gsignal ??= _dylib.lookupFunction<_c_gsignal, _dart_gsignal>('gsignal');
    return _gsignal(
      __sig,
    );
  }

  _dart_gsignal _gsignal;

  void psignal(
    int __sig,
    ffi.Pointer<ffi.Int8> __s,
  ) {
    _psignal ??= _dylib.lookupFunction<_c_psignal, _dart_psignal>('psignal');
    return _psignal(
      __sig,
      __s,
    );
  }

  _dart_psignal _psignal;

  void psiginfo(
    ffi.Pointer<siginfo_t> __pinfo,
    ffi.Pointer<ffi.Int8> __s,
  ) {
    _psiginfo ??=
        _dylib.lookupFunction<_c_psiginfo, _dart_psiginfo>('psiginfo');
    return _psiginfo(
      __pinfo,
      __s,
    );
  }

  _dart_psiginfo _psiginfo;

  int sigblock(
    int __mask,
  ) {
    _sigblock ??=
        _dylib.lookupFunction<_c_sigblock, _dart_sigblock>('sigblock');
    return _sigblock(
      __mask,
    );
  }

  _dart_sigblock _sigblock;

  int sigsetmask(
    int __mask,
  ) {
    _sigsetmask ??=
        _dylib.lookupFunction<_c_sigsetmask, _dart_sigsetmask>('sigsetmask');
    return _sigsetmask(
      __mask,
    );
  }

  _dart_sigsetmask _sigsetmask;

  int siggetmask() {
    _siggetmask ??=
        _dylib.lookupFunction<_c_siggetmask, _dart_siggetmask>('siggetmask');
    return _siggetmask();
  }

  _dart_siggetmask _siggetmask;

  int sigemptyset(
    ffi.Pointer<ffi.Uint64> __set,
  ) {
    _sigemptyset ??=
        _dylib.lookupFunction<_c_sigemptyset, _dart_sigemptyset>('sigemptyset');
    return _sigemptyset(
      __set,
    );
  }

  _dart_sigemptyset _sigemptyset;

  int sigfillset(
    ffi.Pointer<ffi.Uint64> __set,
  ) {
    _sigfillset ??=
        _dylib.lookupFunction<_c_sigfillset, _dart_sigfillset>('sigfillset');
    return _sigfillset(
      __set,
    );
  }

  _dart_sigfillset _sigfillset;

  int sigaddset(
    ffi.Pointer<ffi.Uint64> __set,
    int __signo,
  ) {
    _sigaddset ??=
        _dylib.lookupFunction<_c_sigaddset, _dart_sigaddset>('sigaddset');
    return _sigaddset(
      __set,
      __signo,
    );
  }

  _dart_sigaddset _sigaddset;

  int sigdelset(
    ffi.Pointer<ffi.Uint64> __set,
    int __signo,
  ) {
    _sigdelset ??=
        _dylib.lookupFunction<_c_sigdelset, _dart_sigdelset>('sigdelset');
    return _sigdelset(
      __set,
      __signo,
    );
  }

  _dart_sigdelset _sigdelset;

  int sigismember(
    ffi.Pointer<ffi.Uint64> __set,
    int __signo,
  ) {
    _sigismember ??=
        _dylib.lookupFunction<_c_sigismember, _dart_sigismember>('sigismember');
    return _sigismember(
      __set,
      __signo,
    );
  }

  _dart_sigismember _sigismember;

  int sigprocmask(
    int __how,
    ffi.Pointer<ffi.Uint64> __set,
    ffi.Pointer<ffi.Uint64> __oset,
  ) {
    _sigprocmask ??=
        _dylib.lookupFunction<_c_sigprocmask, _dart_sigprocmask>('sigprocmask');
    return _sigprocmask(
      __how,
      __set,
      __oset,
    );
  }

  _dart_sigprocmask _sigprocmask;

  int sigsuspend(
    ffi.Pointer<ffi.Uint64> __set,
  ) {
    _sigsuspend ??=
        _dylib.lookupFunction<_c_sigsuspend, _dart_sigsuspend>('sigsuspend');
    return _sigsuspend(
      __set,
    );
  }

  _dart_sigsuspend _sigsuspend;

// int sigaction(
//   int __sig,
//   ffi.Pointer<sigaction> __act,
//   ffi.Pointer<sigaction> __oact,
// ) {
// _sigaction ??= _dylib.lookupFunction<_c_sigaction,_dart_sigaction>('sigaction');
//   return _sigaction(
//     __sig,
//     __act,
//     __oact,
//   );
// }
// _dart_sigaction _sigaction;

  int sigpending(
    ffi.Pointer<ffi.Uint64> __set,
  ) {
    _sigpending ??=
        _dylib.lookupFunction<_c_sigpending, _dart_sigpending>('sigpending');
    return _sigpending(
      __set,
    );
  }

  _dart_sigpending _sigpending;

  int sigwait(
    ffi.Pointer<ffi.Uint64> __set,
    ffi.Pointer<ffi.Int32> __sig,
  ) {
    _sigwait ??= _dylib.lookupFunction<_c_sigwait, _dart_sigwait>('sigwait');
    return _sigwait(
      __set,
      __sig,
    );
  }

  _dart_sigwait _sigwait;

  int sigwaitinfo(
    ffi.Pointer<ffi.Uint64> __set,
    ffi.Pointer<siginfo_t> __info,
  ) {
    _sigwaitinfo ??=
        _dylib.lookupFunction<_c_sigwaitinfo, _dart_sigwaitinfo>('sigwaitinfo');
    return _sigwaitinfo(
      __set,
      __info,
    );
  }

  _dart_sigwaitinfo _sigwaitinfo;

  int sigtimedwait(
    ffi.Pointer<ffi.Uint64> __set,
    ffi.Pointer<siginfo_t> __info,
    ffi.Pointer<timespec> __timeout,
  ) {
    _sigtimedwait ??= _dylib
        .lookupFunction<_c_sigtimedwait, _dart_sigtimedwait>('sigtimedwait');
    return _sigtimedwait(
      __set,
      __info,
      __timeout,
    );
  }

  _dart_sigtimedwait _sigtimedwait;

  int sigreturn(
    ffi.Pointer<sigcontext> __scp,
  ) {
    _sigreturn ??=
        _dylib.lookupFunction<_c_sigreturn, _dart_sigreturn>('sigreturn');
    return _sigreturn(
      __scp,
    );
  }

  _dart_sigreturn _sigreturn;

  int siginterrupt(
    int __sig,
    int __interrupt,
  ) {
    _siginterrupt ??= _dylib
        .lookupFunction<_c_siginterrupt, _dart_siginterrupt>('siginterrupt');
    return _siginterrupt(
      __sig,
      __interrupt,
    );
  }

  _dart_siginterrupt _siginterrupt;

// int sigaltstack(
//   ffi.Pointer<struct (anonymous at /usr/include/x86_64-linux-gnu/bits/types/stack_t.h:26:9)> __ss,
//   ffi.Pointer<struct (anonymous at /usr/include/x86_64-linux-gnu/bits/types/stack_t.h:26:9)> __oss,
// ) {
// _sigaltstack ??= _dylib.lookupFunction<_c_sigaltstack,_dart_sigaltstack>('sigaltstack');
//   return _sigaltstack(
//     __ss,
//     __oss,
//   );
// }
// _dart_sigaltstack _sigaltstack;

// int sigstack(
//   ffi.Pointer<sigstack> __ss,
//   ffi.Pointer<sigstack> __oss,
// ) {
// _sigstack ??= _dylib.lookupFunction<_c_sigstack,_dart_sigstack>('sigstack');
//   return _sigstack(
//     __ss,
//     __oss,
//   );
// }
// _dart_sigstack _sigstack;

  int pthread_sigmask(
    int __how,
    ffi.Pointer<ffi.Uint64> __newmask,
    ffi.Pointer<ffi.Uint64> __oldmask,
  ) {
    _pthread_sigmask ??=
        _dylib.lookupFunction<_c_pthread_sigmask, _dart_pthread_sigmask>(
            'pthread_sigmask');
    return _pthread_sigmask(
      __how,
      __newmask,
      __oldmask,
    );
  }

  _dart_pthread_sigmask _pthread_sigmask;

  int pthread_kill(
    int __threadid,
    int __signo,
  ) {
    _pthread_kill ??= _dylib
        .lookupFunction<_c_pthread_kill, _dart_pthread_kill>('pthread_kill');
    return _pthread_kill(
      __threadid,
      __signo,
    );
  }

  _dart_pthread_kill _pthread_kill;

  int __libc_current_sigrtmin() {
    ___libc_current_sigrtmin ??= _dylib.lookupFunction<
        _c___libc_current_sigrtmin,
        _dart___libc_current_sigrtmin>('__libc_current_sigrtmin');
    return ___libc_current_sigrtmin();
  }

  _dart___libc_current_sigrtmin ___libc_current_sigrtmin;

  int __libc_current_sigrtmax() {
    ___libc_current_sigrtmax ??= _dylib.lookupFunction<
        _c___libc_current_sigrtmax,
        _dart___libc_current_sigrtmax>('__libc_current_sigrtmax');
    return ___libc_current_sigrtmax();
  }

  _dart___libc_current_sigrtmax ___libc_current_sigrtmax;

  int __underflow(
    ffi.Pointer<_IO_FILE> arg0,
  ) {
    ___underflow ??=
        _dylib.lookupFunction<_c___underflow, _dart___underflow>('__underflow');
    return ___underflow(
      arg0,
    );
  }

  _dart___underflow ___underflow;

  int __uflow(
    ffi.Pointer<_IO_FILE> arg0,
  ) {
    ___uflow ??= _dylib.lookupFunction<_c___uflow, _dart___uflow>('__uflow');
    return ___uflow(
      arg0,
    );
  }

  _dart___uflow ___uflow;

  int __overflow(
    ffi.Pointer<_IO_FILE> arg0,
    int arg1,
  ) {
    ___overflow ??=
        _dylib.lookupFunction<_c___overflow, _dart___overflow>('__overflow');
    return ___overflow(
      arg0,
      arg1,
    );
  }

  _dart___overflow ___overflow;

  int _IO_getc(
    ffi.Pointer<_IO_FILE> __fp,
  ) {
    __IO_getc ??=
        _dylib.lookupFunction<_c__IO_getc, _dart__IO_getc>('_IO_getc');
    return __IO_getc(
      __fp,
    );
  }

  _dart__IO_getc __IO_getc;

  int _IO_putc(
    int __c,
    ffi.Pointer<_IO_FILE> __fp,
  ) {
    __IO_putc ??=
        _dylib.lookupFunction<_c__IO_putc, _dart__IO_putc>('_IO_putc');
    return __IO_putc(
      __c,
      __fp,
    );
  }

  _dart__IO_putc __IO_putc;

  int _IO_feof(
    ffi.Pointer<_IO_FILE> __fp,
  ) {
    __IO_feof ??=
        _dylib.lookupFunction<_c__IO_feof, _dart__IO_feof>('_IO_feof');
    return __IO_feof(
      __fp,
    );
  }

  _dart__IO_feof __IO_feof;

  int _IO_ferror(
    ffi.Pointer<_IO_FILE> __fp,
  ) {
    __IO_ferror ??=
        _dylib.lookupFunction<_c__IO_ferror, _dart__IO_ferror>('_IO_ferror');
    return __IO_ferror(
      __fp,
    );
  }

  _dart__IO_ferror __IO_ferror;

  int _IO_peekc_locked(
    ffi.Pointer<_IO_FILE> __fp,
  ) {
    __IO_peekc_locked ??=
        _dylib.lookupFunction<_c__IO_peekc_locked, _dart__IO_peekc_locked>(
            '_IO_peekc_locked');
    return __IO_peekc_locked(
      __fp,
    );
  }

  _dart__IO_peekc_locked __IO_peekc_locked;

  void _IO_flockfile(
    ffi.Pointer<_IO_FILE> arg0,
  ) {
    __IO_flockfile ??= _dylib
        .lookupFunction<_c__IO_flockfile, _dart__IO_flockfile>('_IO_flockfile');
    return __IO_flockfile(
      arg0,
    );
  }

  _dart__IO_flockfile __IO_flockfile;

  void _IO_funlockfile(
    ffi.Pointer<_IO_FILE> arg0,
  ) {
    __IO_funlockfile ??=
        _dylib.lookupFunction<_c__IO_funlockfile, _dart__IO_funlockfile>(
            '_IO_funlockfile');
    return __IO_funlockfile(
      arg0,
    );
  }

  _dart__IO_funlockfile __IO_funlockfile;

  int _IO_ftrylockfile(
    ffi.Pointer<_IO_FILE> arg0,
  ) {
    __IO_ftrylockfile ??=
        _dylib.lookupFunction<_c__IO_ftrylockfile, _dart__IO_ftrylockfile>(
            '_IO_ftrylockfile');
    return __IO_ftrylockfile(
      arg0,
    );
  }

  _dart__IO_ftrylockfile __IO_ftrylockfile;

  int _IO_vfscanf(
    ffi.Pointer<_IO_FILE> arg0,
    ffi.Pointer<ffi.Int8> arg1,
    int __gnuc_va_list,
    ffi.Pointer<ffi.Int32> arg3,
  ) {
    __IO_vfscanf ??=
        _dylib.lookupFunction<_c__IO_vfscanf, _dart__IO_vfscanf>('_IO_vfscanf');
    return __IO_vfscanf(
      arg0,
      arg1,
      __gnuc_va_list,
      arg3,
    );
  }

  _dart__IO_vfscanf __IO_vfscanf;

  int _IO_vfprintf(
    ffi.Pointer<_IO_FILE> arg0,
    ffi.Pointer<ffi.Int8> arg1,
    int __gnuc_va_list,
  ) {
    __IO_vfprintf ??= _dylib
        .lookupFunction<_c__IO_vfprintf, _dart__IO_vfprintf>('_IO_vfprintf');
    return __IO_vfprintf(
      arg0,
      arg1,
      __gnuc_va_list,
    );
  }

  _dart__IO_vfprintf __IO_vfprintf;

  int _IO_padn(
    ffi.Pointer<_IO_FILE> arg0,
    int arg1,
    int arg2,
  ) {
    __IO_padn ??=
        _dylib.lookupFunction<_c__IO_padn, _dart__IO_padn>('_IO_padn');
    return __IO_padn(
      arg0,
      arg1,
      arg2,
    );
  }

  _dart__IO_padn __IO_padn;

  int _IO_sgetn(
    ffi.Pointer<_IO_FILE> arg0,
    ffi.Pointer<ffi.Void> arg1,
    int size_t,
  ) {
    __IO_sgetn ??=
        _dylib.lookupFunction<_c__IO_sgetn, _dart__IO_sgetn>('_IO_sgetn');
    return __IO_sgetn(
      arg0,
      arg1,
      size_t,
    );
  }

  _dart__IO_sgetn __IO_sgetn;

  int _IO_seekoff(
    ffi.Pointer<_IO_FILE> arg0,
    int arg1,
    int arg2,
    int arg3,
  ) {
    __IO_seekoff ??=
        _dylib.lookupFunction<_c__IO_seekoff, _dart__IO_seekoff>('_IO_seekoff');
    return __IO_seekoff(
      arg0,
      arg1,
      arg2,
      arg3,
    );
  }

  _dart__IO_seekoff __IO_seekoff;

  int _IO_seekpos(
    ffi.Pointer<_IO_FILE> arg0,
    int arg1,
    int arg2,
  ) {
    __IO_seekpos ??=
        _dylib.lookupFunction<_c__IO_seekpos, _dart__IO_seekpos>('_IO_seekpos');
    return __IO_seekpos(
      arg0,
      arg1,
      arg2,
    );
  }

  _dart__IO_seekpos __IO_seekpos;

  void _IO_free_backup_area(
    ffi.Pointer<_IO_FILE> arg0,
  ) {
    __IO_free_backup_area ??= _dylib.lookupFunction<_c__IO_free_backup_area,
        _dart__IO_free_backup_area>('_IO_free_backup_area');
    return __IO_free_backup_area(
      arg0,
    );
  }

  _dart__IO_free_backup_area __IO_free_backup_area;

  int remove(
    ffi.Pointer<ffi.Int8> __filename,
  ) {
    _remove ??= _dylib.lookupFunction<_c_remove, _dart_remove>('remove');
    return _remove(
      __filename,
    );
  }

  _dart_remove _remove;

  int rename(
    ffi.Pointer<ffi.Int8> __old,
    ffi.Pointer<ffi.Int8> __new,
  ) {
    _rename ??= _dylib.lookupFunction<_c_rename, _dart_rename>('rename');
    return _rename(
      __old,
      __new,
    );
  }

  _dart_rename _rename;

  int renameat(
    int __oldfd,
    ffi.Pointer<ffi.Int8> __old,
    int __newfd,
    ffi.Pointer<ffi.Int8> __new,
  ) {
    _renameat ??=
        _dylib.lookupFunction<_c_renameat, _dart_renameat>('renameat');
    return _renameat(
      __oldfd,
      __old,
      __newfd,
      __new,
    );
  }

  _dart_renameat _renameat;

  ffi.Pointer<_IO_FILE> tmpfile() {
    _tmpfile ??= _dylib.lookupFunction<_c_tmpfile, _dart_tmpfile>('tmpfile');
    return _tmpfile();
  }

  _dart_tmpfile _tmpfile;

  ffi.Pointer<ffi.Int8> tmpnam(
    ffi.Pointer<ffi.Int8> __s,
  ) {
    _tmpnam ??= _dylib.lookupFunction<_c_tmpnam, _dart_tmpnam>('tmpnam');
    return _tmpnam(
      __s,
    );
  }

  _dart_tmpnam _tmpnam;

  ffi.Pointer<ffi.Int8> tmpnam_r(
    ffi.Pointer<ffi.Int8> __s,
  ) {
    _tmpnam_r ??=
        _dylib.lookupFunction<_c_tmpnam_r, _dart_tmpnam_r>('tmpnam_r');
    return _tmpnam_r(
      __s,
    );
  }

  _dart_tmpnam_r _tmpnam_r;

  ffi.Pointer<ffi.Int8> tempnam(
    ffi.Pointer<ffi.Int8> __dir,
    ffi.Pointer<ffi.Int8> __pfx,
  ) {
    _tempnam ??= _dylib.lookupFunction<_c_tempnam, _dart_tempnam>('tempnam');
    return _tempnam(
      __dir,
      __pfx,
    );
  }

  _dart_tempnam _tempnam;

  int fclose(
    ffi.Pointer<_IO_FILE> __stream,
  ) {
    _fclose ??= _dylib.lookupFunction<_c_fclose, _dart_fclose>('fclose');
    return _fclose(
      __stream,
    );
  }

  _dart_fclose _fclose;

  int fflush(
    ffi.Pointer<_IO_FILE> __stream,
  ) {
    _fflush ??= _dylib.lookupFunction<_c_fflush, _dart_fflush>('fflush');
    return _fflush(
      __stream,
    );
  }

  _dart_fflush _fflush;

  int fflush_unlocked(
    ffi.Pointer<_IO_FILE> __stream,
  ) {
    _fflush_unlocked ??=
        _dylib.lookupFunction<_c_fflush_unlocked, _dart_fflush_unlocked>(
            'fflush_unlocked');
    return _fflush_unlocked(
      __stream,
    );
  }

  _dart_fflush_unlocked _fflush_unlocked;

  ffi.Pointer<_IO_FILE> fopen(
    ffi.Pointer<ffi.Int8> __filename,
    ffi.Pointer<ffi.Int8> __modes,
  ) {
    _fopen ??= _dylib.lookupFunction<_c_fopen, _dart_fopen>('fopen');
    return _fopen(
      __filename,
      __modes,
    );
  }

  _dart_fopen _fopen;

  ffi.Pointer<_IO_FILE> freopen(
    ffi.Pointer<ffi.Int8> __filename,
    ffi.Pointer<ffi.Int8> __modes,
    ffi.Pointer<_IO_FILE> __stream,
  ) {
    _freopen ??= _dylib.lookupFunction<_c_freopen, _dart_freopen>('freopen');
    return _freopen(
      __filename,
      __modes,
      __stream,
    );
  }

  _dart_freopen _freopen;

  ffi.Pointer<_IO_FILE> fdopen(
    int __fd,
    ffi.Pointer<ffi.Int8> __modes,
  ) {
    _fdopen ??= _dylib.lookupFunction<_c_fdopen, _dart_fdopen>('fdopen');
    return _fdopen(
      __fd,
      __modes,
    );
  }

  _dart_fdopen _fdopen;

  ffi.Pointer<_IO_FILE> fmemopen(
    ffi.Pointer<ffi.Void> __s,
    int __len,
    ffi.Pointer<ffi.Int8> __modes,
  ) {
    _fmemopen ??=
        _dylib.lookupFunction<_c_fmemopen, _dart_fmemopen>('fmemopen');
    return _fmemopen(
      __s,
      __len,
      __modes,
    );
  }

  _dart_fmemopen _fmemopen;

  ffi.Pointer<_IO_FILE> open_memstream(
    ffi.Pointer<ffi.Pointer<ffi.Int8>> __bufloc,
    ffi.Pointer<ffi.Int32> __sizeloc,
  ) {
    _open_memstream ??=
        _dylib.lookupFunction<_c_open_memstream, _dart_open_memstream>(
            'open_memstream');
    return _open_memstream(
      __bufloc,
      __sizeloc,
    );
  }

  _dart_open_memstream _open_memstream;

  void setbuf(
    ffi.Pointer<_IO_FILE> __stream,
    ffi.Pointer<ffi.Int8> __buf,
  ) {
    _setbuf ??= _dylib.lookupFunction<_c_setbuf, _dart_setbuf>('setbuf');
    return _setbuf(
      __stream,
      __buf,
    );
  }

  _dart_setbuf _setbuf;

  int setvbuf(
    ffi.Pointer<_IO_FILE> __stream,
    ffi.Pointer<ffi.Int8> __buf,
    int __modes,
    int __n,
  ) {
    _setvbuf ??= _dylib.lookupFunction<_c_setvbuf, _dart_setvbuf>('setvbuf');
    return _setvbuf(
      __stream,
      __buf,
      __modes,
      __n,
    );
  }

  _dart_setvbuf _setvbuf;

  void setbuffer(
    ffi.Pointer<_IO_FILE> __stream,
    ffi.Pointer<ffi.Int8> __buf,
    int __size,
  ) {
    _setbuffer ??=
        _dylib.lookupFunction<_c_setbuffer, _dart_setbuffer>('setbuffer');
    return _setbuffer(
      __stream,
      __buf,
      __size,
    );
  }

  _dart_setbuffer _setbuffer;

  void setlinebuf(
    ffi.Pointer<_IO_FILE> __stream,
  ) {
    _setlinebuf ??=
        _dylib.lookupFunction<_c_setlinebuf, _dart_setlinebuf>('setlinebuf');
    return _setlinebuf(
      __stream,
    );
  }

  _dart_setlinebuf _setlinebuf;

  int fprintf(
    ffi.Pointer<_IO_FILE> __stream,
    ffi.Pointer<ffi.Int8> __format,
  ) {
    _fprintf ??= _dylib.lookupFunction<_c_fprintf, _dart_fprintf>('fprintf');
    return _fprintf(
      __stream,
      __format,
    );
  }

  _dart_fprintf _fprintf;

  int printf(
    ffi.Pointer<ffi.Int8> __format,
  ) {
    _printf ??= _dylib.lookupFunction<_c_printf, _dart_printf>('printf');
    return _printf(
      __format,
    );
  }

  _dart_printf _printf;

  int sprintf(
    ffi.Pointer<ffi.Int8> __s,
    ffi.Pointer<ffi.Int8> __format,
  ) {
    _sprintf ??= _dylib.lookupFunction<_c_sprintf, _dart_sprintf>('sprintf');
    return _sprintf(
      __s,
      __format,
    );
  }

  _dart_sprintf _sprintf;

  int vfprintf(
    ffi.Pointer<_IO_FILE> __s,
    ffi.Pointer<ffi.Int8> __format,
    int __arg,
  ) {
    _vfprintf ??=
        _dylib.lookupFunction<_c_vfprintf, _dart_vfprintf>('vfprintf');
    return _vfprintf(
      __s,
      __format,
      __arg,
    );
  }

  _dart_vfprintf _vfprintf;

  int vprintf(
    ffi.Pointer<ffi.Int8> __format,
    int __arg,
  ) {
    _vprintf ??= _dylib.lookupFunction<_c_vprintf, _dart_vprintf>('vprintf');
    return _vprintf(
      __format,
      __arg,
    );
  }

  _dart_vprintf _vprintf;

  int vsprintf(
    ffi.Pointer<ffi.Int8> __s,
    ffi.Pointer<ffi.Int8> __format,
    int __arg,
  ) {
    _vsprintf ??=
        _dylib.lookupFunction<_c_vsprintf, _dart_vsprintf>('vsprintf');
    return _vsprintf(
      __s,
      __format,
      __arg,
    );
  }

  _dart_vsprintf _vsprintf;

  int snprintf(
    ffi.Pointer<ffi.Int8> __s,
    int __maxlen,
    ffi.Pointer<ffi.Int8> __format,
  ) {
    _snprintf ??=
        _dylib.lookupFunction<_c_snprintf, _dart_snprintf>('snprintf');
    return _snprintf(
      __s,
      __maxlen,
      __format,
    );
  }

  _dart_snprintf _snprintf;

  int vsnprintf(
    ffi.Pointer<ffi.Int8> __s,
    int __maxlen,
    ffi.Pointer<ffi.Int8> __format,
    int __arg,
  ) {
    _vsnprintf ??=
        _dylib.lookupFunction<_c_vsnprintf, _dart_vsnprintf>('vsnprintf');
    return _vsnprintf(
      __s,
      __maxlen,
      __format,
      __arg,
    );
  }

  _dart_vsnprintf _vsnprintf;

  int vdprintf(
    int __fd,
    ffi.Pointer<ffi.Int8> __fmt,
    int __arg,
  ) {
    _vdprintf ??=
        _dylib.lookupFunction<_c_vdprintf, _dart_vdprintf>('vdprintf');
    return _vdprintf(
      __fd,
      __fmt,
      __arg,
    );
  }

  _dart_vdprintf _vdprintf;

  int dprintf(
    int __fd,
    ffi.Pointer<ffi.Int8> __fmt,
  ) {
    _dprintf ??= _dylib.lookupFunction<_c_dprintf, _dart_dprintf>('dprintf');
    return _dprintf(
      __fd,
      __fmt,
    );
  }

  _dart_dprintf _dprintf;

  int fscanf(
    ffi.Pointer<_IO_FILE> __stream,
    ffi.Pointer<ffi.Int8> __format,
  ) {
    _fscanf ??= _dylib.lookupFunction<_c_fscanf, _dart_fscanf>('fscanf');
    return _fscanf(
      __stream,
      __format,
    );
  }

  _dart_fscanf _fscanf;

  int scanf(
    ffi.Pointer<ffi.Int8> __format,
  ) {
    _scanf ??= _dylib.lookupFunction<_c_scanf, _dart_scanf>('scanf');
    return _scanf(
      __format,
    );
  }

  _dart_scanf _scanf;

  int sscanf(
    ffi.Pointer<ffi.Int8> __s,
    ffi.Pointer<ffi.Int8> __format,
  ) {
    _sscanf ??= _dylib.lookupFunction<_c_sscanf, _dart_sscanf>('sscanf');
    return _sscanf(
      __s,
      __format,
    );
  }

  _dart_sscanf _sscanf;

  int vfscanf(
    ffi.Pointer<_IO_FILE> __s,
    ffi.Pointer<ffi.Int8> __format,
    int __arg,
  ) {
    _vfscanf ??= _dylib.lookupFunction<_c_vfscanf, _dart_vfscanf>('vfscanf');
    return _vfscanf(
      __s,
      __format,
      __arg,
    );
  }

  _dart_vfscanf _vfscanf;

  int vscanf(
    ffi.Pointer<ffi.Int8> __format,
    int __arg,
  ) {
    _vscanf ??= _dylib.lookupFunction<_c_vscanf, _dart_vscanf>('vscanf');
    return _vscanf(
      __format,
      __arg,
    );
  }

  _dart_vscanf _vscanf;

  int vsscanf(
    ffi.Pointer<ffi.Int8> __s,
    ffi.Pointer<ffi.Int8> __format,
    int __arg,
  ) {
    _vsscanf ??= _dylib.lookupFunction<_c_vsscanf, _dart_vsscanf>('vsscanf');
    return _vsscanf(
      __s,
      __format,
      __arg,
    );
  }

  _dart_vsscanf _vsscanf;

  int fgetc(
    ffi.Pointer<_IO_FILE> __stream,
  ) {
    _fgetc ??= _dylib.lookupFunction<_c_fgetc, _dart_fgetc>('fgetc');
    return _fgetc(
      __stream,
    );
  }

  _dart_fgetc _fgetc;

  int getc(
    ffi.Pointer<_IO_FILE> __stream,
  ) {
    _getc ??= _dylib.lookupFunction<_c_getc, _dart_getc>('getc');
    return _getc(
      __stream,
    );
  }

  _dart_getc _getc;

  int getchar() {
    _getchar ??= _dylib.lookupFunction<_c_getchar, _dart_getchar>('getchar');
    return _getchar();
  }

  _dart_getchar _getchar;

  int getc_unlocked(
    ffi.Pointer<_IO_FILE> __stream,
  ) {
    _getc_unlocked ??= _dylib
        .lookupFunction<_c_getc_unlocked, _dart_getc_unlocked>('getc_unlocked');
    return _getc_unlocked(
      __stream,
    );
  }

  _dart_getc_unlocked _getc_unlocked;

  int getchar_unlocked() {
    _getchar_unlocked ??=
        _dylib.lookupFunction<_c_getchar_unlocked, _dart_getchar_unlocked>(
            'getchar_unlocked');
    return _getchar_unlocked();
  }

  _dart_getchar_unlocked _getchar_unlocked;

  int fgetc_unlocked(
    ffi.Pointer<_IO_FILE> __stream,
  ) {
    _fgetc_unlocked ??=
        _dylib.lookupFunction<_c_fgetc_unlocked, _dart_fgetc_unlocked>(
            'fgetc_unlocked');
    return _fgetc_unlocked(
      __stream,
    );
  }

  _dart_fgetc_unlocked _fgetc_unlocked;

  int fputc(
    int __c,
    ffi.Pointer<_IO_FILE> __stream,
  ) {
    _fputc ??= _dylib.lookupFunction<_c_fputc, _dart_fputc>('fputc');
    return _fputc(
      __c,
      __stream,
    );
  }

  _dart_fputc _fputc;

  int putc(
    int __c,
    ffi.Pointer<_IO_FILE> __stream,
  ) {
    _putc ??= _dylib.lookupFunction<_c_putc, _dart_putc>('putc');
    return _putc(
      __c,
      __stream,
    );
  }

  _dart_putc _putc;

  int putchar(
    int __c,
  ) {
    _putchar ??= _dylib.lookupFunction<_c_putchar, _dart_putchar>('putchar');
    return _putchar(
      __c,
    );
  }

  _dart_putchar _putchar;

  int fputc_unlocked(
    int __c,
    ffi.Pointer<_IO_FILE> __stream,
  ) {
    _fputc_unlocked ??=
        _dylib.lookupFunction<_c_fputc_unlocked, _dart_fputc_unlocked>(
            'fputc_unlocked');
    return _fputc_unlocked(
      __c,
      __stream,
    );
  }

  _dart_fputc_unlocked _fputc_unlocked;

  int putc_unlocked(
    int __c,
    ffi.Pointer<_IO_FILE> __stream,
  ) {
    _putc_unlocked ??= _dylib
        .lookupFunction<_c_putc_unlocked, _dart_putc_unlocked>('putc_unlocked');
    return _putc_unlocked(
      __c,
      __stream,
    );
  }

  _dart_putc_unlocked _putc_unlocked;

  int putchar_unlocked(
    int __c,
  ) {
    _putchar_unlocked ??=
        _dylib.lookupFunction<_c_putchar_unlocked, _dart_putchar_unlocked>(
            'putchar_unlocked');
    return _putchar_unlocked(
      __c,
    );
  }

  _dart_putchar_unlocked _putchar_unlocked;

  int getw(
    ffi.Pointer<_IO_FILE> __stream,
  ) {
    _getw ??= _dylib.lookupFunction<_c_getw, _dart_getw>('getw');
    return _getw(
      __stream,
    );
  }

  _dart_getw _getw;

  int putw(
    int __w,
    ffi.Pointer<_IO_FILE> __stream,
  ) {
    _putw ??= _dylib.lookupFunction<_c_putw, _dart_putw>('putw');
    return _putw(
      __w,
      __stream,
    );
  }

  _dart_putw _putw;

  ffi.Pointer<ffi.Int8> fgets(
    ffi.Pointer<ffi.Int8> __s,
    int __n,
    ffi.Pointer<_IO_FILE> __stream,
  ) {
    _fgets ??= _dylib.lookupFunction<_c_fgets, _dart_fgets>('fgets');
    return _fgets(
      __s,
      __n,
      __stream,
    );
  }

  _dart_fgets _fgets;

  int __getdelim(
    ffi.Pointer<ffi.Pointer<ffi.Int8>> __lineptr,
    ffi.Pointer<ffi.Int32> __n,
    int __delimiter,
    ffi.Pointer<_IO_FILE> __stream,
  ) {
    ___getdelim ??=
        _dylib.lookupFunction<_c___getdelim, _dart___getdelim>('__getdelim');
    return ___getdelim(
      __lineptr,
      __n,
      __delimiter,
      __stream,
    );
  }

  _dart___getdelim ___getdelim;

  int getdelim(
    ffi.Pointer<ffi.Pointer<ffi.Int8>> __lineptr,
    ffi.Pointer<ffi.Int32> __n,
    int __delimiter,
    ffi.Pointer<_IO_FILE> __stream,
  ) {
    _getdelim ??=
        _dylib.lookupFunction<_c_getdelim, _dart_getdelim>('getdelim');
    return _getdelim(
      __lineptr,
      __n,
      __delimiter,
      __stream,
    );
  }

  _dart_getdelim _getdelim;

  int getline(
    ffi.Pointer<ffi.Pointer<ffi.Int8>> __lineptr,
    ffi.Pointer<ffi.Int32> __n,
    ffi.Pointer<_IO_FILE> __stream,
  ) {
    _getline ??= _dylib.lookupFunction<_c_getline, _dart_getline>('getline');
    return _getline(
      __lineptr,
      __n,
      __stream,
    );
  }

  _dart_getline _getline;

  int fputs(
    ffi.Pointer<ffi.Int8> __s,
    ffi.Pointer<_IO_FILE> __stream,
  ) {
    _fputs ??= _dylib.lookupFunction<_c_fputs, _dart_fputs>('fputs');
    return _fputs(
      __s,
      __stream,
    );
  }

  _dart_fputs _fputs;

  int puts(
    ffi.Pointer<ffi.Int8> __s,
  ) {
    _puts ??= _dylib.lookupFunction<_c_puts, _dart_puts>('puts');
    return _puts(
      __s,
    );
  }

  _dart_puts _puts;

  int ungetc(
    int __c,
    ffi.Pointer<_IO_FILE> __stream,
  ) {
    _ungetc ??= _dylib.lookupFunction<_c_ungetc, _dart_ungetc>('ungetc');
    return _ungetc(
      __c,
      __stream,
    );
  }

  _dart_ungetc _ungetc;

  int fread(
    ffi.Pointer<ffi.Void> __ptr,
    int __size,
    int __n,
    ffi.Pointer<_IO_FILE> __stream,
  ) {
    _fread ??= _dylib.lookupFunction<_c_fread, _dart_fread>('fread');
    return _fread(
      __ptr,
      __size,
      __n,
      __stream,
    );
  }

  _dart_fread _fread;

  int fwrite(
    ffi.Pointer<ffi.Void> __ptr,
    int __size,
    int __n,
    ffi.Pointer<_IO_FILE> __s,
  ) {
    _fwrite ??= _dylib.lookupFunction<_c_fwrite, _dart_fwrite>('fwrite');
    return _fwrite(
      __ptr,
      __size,
      __n,
      __s,
    );
  }

  _dart_fwrite _fwrite;

  int fread_unlocked(
    ffi.Pointer<ffi.Void> __ptr,
    int __size,
    int __n,
    ffi.Pointer<_IO_FILE> __stream,
  ) {
    _fread_unlocked ??=
        _dylib.lookupFunction<_c_fread_unlocked, _dart_fread_unlocked>(
            'fread_unlocked');
    return _fread_unlocked(
      __ptr,
      __size,
      __n,
      __stream,
    );
  }

  _dart_fread_unlocked _fread_unlocked;

  int fwrite_unlocked(
    ffi.Pointer<ffi.Void> __ptr,
    int __size,
    int __n,
    ffi.Pointer<_IO_FILE> __stream,
  ) {
    _fwrite_unlocked ??=
        _dylib.lookupFunction<_c_fwrite_unlocked, _dart_fwrite_unlocked>(
            'fwrite_unlocked');
    return _fwrite_unlocked(
      __ptr,
      __size,
      __n,
      __stream,
    );
  }

  _dart_fwrite_unlocked _fwrite_unlocked;

  int fseek(
    ffi.Pointer<_IO_FILE> __stream,
    int __off,
    int __whence,
  ) {
    _fseek ??= _dylib.lookupFunction<_c_fseek, _dart_fseek>('fseek');
    return _fseek(
      __stream,
      __off,
      __whence,
    );
  }

  _dart_fseek _fseek;

  int ftell(
    ffi.Pointer<_IO_FILE> __stream,
  ) {
    _ftell ??= _dylib.lookupFunction<_c_ftell, _dart_ftell>('ftell');
    return _ftell(
      __stream,
    );
  }

  _dart_ftell _ftell;

  void rewind(
    ffi.Pointer<_IO_FILE> __stream,
  ) {
    _rewind ??= _dylib.lookupFunction<_c_rewind, _dart_rewind>('rewind');
    return _rewind(
      __stream,
    );
  }

  _dart_rewind _rewind;

  int fseeko(
    ffi.Pointer<_IO_FILE> __stream,
    int __off,
    int __whence,
  ) {
    _fseeko ??= _dylib.lookupFunction<_c_fseeko, _dart_fseeko>('fseeko');
    return _fseeko(
      __stream,
      __off,
      __whence,
    );
  }

  _dart_fseeko _fseeko;

  int ftello(
    ffi.Pointer<_IO_FILE> __stream,
  ) {
    _ftello ??= _dylib.lookupFunction<_c_ftello, _dart_ftello>('ftello');
    return _ftello(
      __stream,
    );
  }

  _dart_ftello _ftello;

  int fgetpos(
    ffi.Pointer<_IO_FILE> __stream,
    ffi.Pointer<_G_fpos_t> __pos,
  ) {
    _fgetpos ??= _dylib.lookupFunction<_c_fgetpos, _dart_fgetpos>('fgetpos');
    return _fgetpos(
      __stream,
      __pos,
    );
  }

  _dart_fgetpos _fgetpos;

  int fsetpos(
    ffi.Pointer<_IO_FILE> __stream,
    ffi.Pointer<_G_fpos_t> __pos,
  ) {
    _fsetpos ??= _dylib.lookupFunction<_c_fsetpos, _dart_fsetpos>('fsetpos');
    return _fsetpos(
      __stream,
      __pos,
    );
  }

  _dart_fsetpos _fsetpos;

  void clearerr(
    ffi.Pointer<_IO_FILE> __stream,
  ) {
    _clearerr ??=
        _dylib.lookupFunction<_c_clearerr, _dart_clearerr>('clearerr');
    return _clearerr(
      __stream,
    );
  }

  _dart_clearerr _clearerr;

  int feof(
    ffi.Pointer<_IO_FILE> __stream,
  ) {
    _feof ??= _dylib.lookupFunction<_c_feof, _dart_feof>('feof');
    return _feof(
      __stream,
    );
  }

  _dart_feof _feof;

  int ferror(
    ffi.Pointer<_IO_FILE> __stream,
  ) {
    _ferror ??= _dylib.lookupFunction<_c_ferror, _dart_ferror>('ferror');
    return _ferror(
      __stream,
    );
  }

  _dart_ferror _ferror;

  void clearerr_unlocked(
    ffi.Pointer<_IO_FILE> __stream,
  ) {
    _clearerr_unlocked ??=
        _dylib.lookupFunction<_c_clearerr_unlocked, _dart_clearerr_unlocked>(
            'clearerr_unlocked');
    return _clearerr_unlocked(
      __stream,
    );
  }

  _dart_clearerr_unlocked _clearerr_unlocked;

  int feof_unlocked(
    ffi.Pointer<_IO_FILE> __stream,
  ) {
    _feof_unlocked ??= _dylib
        .lookupFunction<_c_feof_unlocked, _dart_feof_unlocked>('feof_unlocked');
    return _feof_unlocked(
      __stream,
    );
  }

  _dart_feof_unlocked _feof_unlocked;

  int ferror_unlocked(
    ffi.Pointer<_IO_FILE> __stream,
  ) {
    _ferror_unlocked ??=
        _dylib.lookupFunction<_c_ferror_unlocked, _dart_ferror_unlocked>(
            'ferror_unlocked');
    return _ferror_unlocked(
      __stream,
    );
  }

  _dart_ferror_unlocked _ferror_unlocked;

  void perror(
    ffi.Pointer<ffi.Int8> __s,
  ) {
    _perror ??= _dylib.lookupFunction<_c_perror, _dart_perror>('perror');
    return _perror(
      __s,
    );
  }

  _dart_perror _perror;

  int fileno(
    ffi.Pointer<_IO_FILE> __stream,
  ) {
    _fileno ??= _dylib.lookupFunction<_c_fileno, _dart_fileno>('fileno');
    return _fileno(
      __stream,
    );
  }

  _dart_fileno _fileno;

  int fileno_unlocked(
    ffi.Pointer<_IO_FILE> __stream,
  ) {
    _fileno_unlocked ??=
        _dylib.lookupFunction<_c_fileno_unlocked, _dart_fileno_unlocked>(
            'fileno_unlocked');
    return _fileno_unlocked(
      __stream,
    );
  }

  _dart_fileno_unlocked _fileno_unlocked;

  ffi.Pointer<_IO_FILE> popen(
    ffi.Pointer<ffi.Int8> __command,
    ffi.Pointer<ffi.Int8> __modes,
  ) {
    _popen ??= _dylib.lookupFunction<_c_popen, _dart_popen>('popen');
    return _popen(
      __command,
      __modes,
    );
  }

  _dart_popen _popen;

  int pclose(
    ffi.Pointer<_IO_FILE> __stream,
  ) {
    _pclose ??= _dylib.lookupFunction<_c_pclose, _dart_pclose>('pclose');
    return _pclose(
      __stream,
    );
  }

  _dart_pclose _pclose;

  ffi.Pointer<ffi.Int8> ctermid(
    ffi.Pointer<ffi.Int8> __s,
  ) {
    _ctermid ??= _dylib.lookupFunction<_c_ctermid, _dart_ctermid>('ctermid');
    return _ctermid(
      __s,
    );
  }

  _dart_ctermid _ctermid;

  void flockfile(
    ffi.Pointer<_IO_FILE> __stream,
  ) {
    _flockfile ??=
        _dylib.lookupFunction<_c_flockfile, _dart_flockfile>('flockfile');
    return _flockfile(
      __stream,
    );
  }

  _dart_flockfile _flockfile;

  int ftrylockfile(
    ffi.Pointer<_IO_FILE> __stream,
  ) {
    _ftrylockfile ??= _dylib
        .lookupFunction<_c_ftrylockfile, _dart_ftrylockfile>('ftrylockfile');
    return _ftrylockfile(
      __stream,
    );
  }

  _dart_ftrylockfile _ftrylockfile;

  void funlockfile(
    ffi.Pointer<_IO_FILE> __stream,
  ) {
    _funlockfile ??=
        _dylib.lookupFunction<_c_funlockfile, _dart_funlockfile>('funlockfile');
    return _funlockfile(
      __stream,
    );
  }

  _dart_funlockfile _funlockfile;

  int __ctype_get_mb_cur_max() {
    ___ctype_get_mb_cur_max ??= _dylib.lookupFunction<_c___ctype_get_mb_cur_max,
        _dart___ctype_get_mb_cur_max>('__ctype_get_mb_cur_max');
    return ___ctype_get_mb_cur_max();
  }

  _dart___ctype_get_mb_cur_max ___ctype_get_mb_cur_max;

  double atof(
    ffi.Pointer<ffi.Int8> __nptr,
  ) {
    _atof ??= _dylib.lookupFunction<_c_atof, _dart_atof>('atof');
    return _atof(
      __nptr,
    );
  }

  _dart_atof _atof;

  int atoi(
    ffi.Pointer<ffi.Int8> __nptr,
  ) {
    _atoi ??= _dylib.lookupFunction<_c_atoi, _dart_atoi>('atoi');
    return _atoi(
      __nptr,
    );
  }

  _dart_atoi _atoi;

  int atol(
    ffi.Pointer<ffi.Int8> __nptr,
  ) {
    _atol ??= _dylib.lookupFunction<_c_atol, _dart_atol>('atol');
    return _atol(
      __nptr,
    );
  }

  _dart_atol _atol;

  int atoll(
    ffi.Pointer<ffi.Int8> __nptr,
  ) {
    _atoll ??= _dylib.lookupFunction<_c_atoll, _dart_atoll>('atoll');
    return _atoll(
      __nptr,
    );
  }

  _dart_atoll _atoll;

  double strtod(
    ffi.Pointer<ffi.Int8> __nptr,
    ffi.Pointer<ffi.Pointer<ffi.Int8>> __endptr,
  ) {
    _strtod ??= _dylib.lookupFunction<_c_strtod, _dart_strtod>('strtod');
    return _strtod(
      __nptr,
      __endptr,
    );
  }

  _dart_strtod _strtod;

  double strtof(
    ffi.Pointer<ffi.Int8> __nptr,
    ffi.Pointer<ffi.Pointer<ffi.Int8>> __endptr,
  ) {
    _strtof ??= _dylib.lookupFunction<_c_strtof, _dart_strtof>('strtof');
    return _strtof(
      __nptr,
      __endptr,
    );
  }

  _dart_strtof _strtof;

  int strtol(
    ffi.Pointer<ffi.Int8> __nptr,
    ffi.Pointer<ffi.Pointer<ffi.Int8>> __endptr,
    int __base,
  ) {
    _strtol ??= _dylib.lookupFunction<_c_strtol, _dart_strtol>('strtol');
    return _strtol(
      __nptr,
      __endptr,
      __base,
    );
  }

  _dart_strtol _strtol;

  int strtoul(
    ffi.Pointer<ffi.Int8> __nptr,
    ffi.Pointer<ffi.Pointer<ffi.Int8>> __endptr,
    int __base,
  ) {
    _strtoul ??= _dylib.lookupFunction<_c_strtoul, _dart_strtoul>('strtoul');
    return _strtoul(
      __nptr,
      __endptr,
      __base,
    );
  }

  _dart_strtoul _strtoul;

  int strtoq(
    ffi.Pointer<ffi.Int8> __nptr,
    ffi.Pointer<ffi.Pointer<ffi.Int8>> __endptr,
    int __base,
  ) {
    _strtoq ??= _dylib.lookupFunction<_c_strtoq, _dart_strtoq>('strtoq');
    return _strtoq(
      __nptr,
      __endptr,
      __base,
    );
  }

  _dart_strtoq _strtoq;

  int strtouq(
    ffi.Pointer<ffi.Int8> __nptr,
    ffi.Pointer<ffi.Pointer<ffi.Int8>> __endptr,
    int __base,
  ) {
    _strtouq ??= _dylib.lookupFunction<_c_strtouq, _dart_strtouq>('strtouq');
    return _strtouq(
      __nptr,
      __endptr,
      __base,
    );
  }

  _dart_strtouq _strtouq;

  int strtoll(
    ffi.Pointer<ffi.Int8> __nptr,
    ffi.Pointer<ffi.Pointer<ffi.Int8>> __endptr,
    int __base,
  ) {
    _strtoll ??= _dylib.lookupFunction<_c_strtoll, _dart_strtoll>('strtoll');
    return _strtoll(
      __nptr,
      __endptr,
      __base,
    );
  }

  _dart_strtoll _strtoll;

  int strtoull(
    ffi.Pointer<ffi.Int8> __nptr,
    ffi.Pointer<ffi.Pointer<ffi.Int8>> __endptr,
    int __base,
  ) {
    _strtoull ??=
        _dylib.lookupFunction<_c_strtoull, _dart_strtoull>('strtoull');
    return _strtoull(
      __nptr,
      __endptr,
      __base,
    );
  }

  _dart_strtoull _strtoull;

  ffi.Pointer<ffi.Int8> l64a(
    int __n,
  ) {
    _l64a ??= _dylib.lookupFunction<_c_l64a, _dart_l64a>('l64a');
    return _l64a(
      __n,
    );
  }

  _dart_l64a _l64a;

  int a64l(
    ffi.Pointer<ffi.Int8> __s,
  ) {
    _a64l ??= _dylib.lookupFunction<_c_a64l, _dart_a64l>('a64l');
    return _a64l(
      __s,
    );
  }

  _dart_a64l _a64l;

  int __uint16_identity(
    int __x,
  ) {
    ___uint16_identity ??=
        _dylib.lookupFunction<_c___uint16_identity, _dart___uint16_identity>(
            '__uint16_identity');
    return ___uint16_identity(
      __x,
    );
  }

  _dart___uint16_identity ___uint16_identity;

  int __uint32_identity(
    int __x,
  ) {
    ___uint32_identity ??=
        _dylib.lookupFunction<_c___uint32_identity, _dart___uint32_identity>(
            '__uint32_identity');
    return ___uint32_identity(
      __x,
    );
  }

  _dart___uint32_identity ___uint32_identity;

  int __uint64_identity(
    int __x,
  ) {
    ___uint64_identity ??=
        _dylib.lookupFunction<_c___uint64_identity, _dart___uint64_identity>(
            '__uint64_identity');
    return ___uint64_identity(
      __x,
    );
  }

  _dart___uint64_identity ___uint64_identity;

  int select(
    int __nfds,
    ffi.Pointer<fd_set> __readfds,
    ffi.Pointer<fd_set> __writefds,
    ffi.Pointer<fd_set> __exceptfds,
    ffi.Pointer<timeval> __timeout,
  ) {
    _select ??= _dylib.lookupFunction<_c_select, _dart_select>('select');
    return _select(
      __nfds,
      __readfds,
      __writefds,
      __exceptfds,
      __timeout,
    );
  }

  _dart_select _select;

  int pselect(
    int __nfds,
    ffi.Pointer<fd_set> __readfds,
    ffi.Pointer<fd_set> __writefds,
    ffi.Pointer<fd_set> __exceptfds,
    ffi.Pointer<timespec> __timeout,
    ffi.Pointer<ffi.Uint64> __sigmask,
  ) {
    _pselect ??= _dylib.lookupFunction<_c_pselect, _dart_pselect>('pselect');
    return _pselect(
      __nfds,
      __readfds,
      __writefds,
      __exceptfds,
      __timeout,
      __sigmask,
    );
  }

  _dart_pselect _pselect;

  int gnu_dev_major(
    int __dev,
  ) {
    _gnu_dev_major ??= _dylib
        .lookupFunction<_c_gnu_dev_major, _dart_gnu_dev_major>('gnu_dev_major');
    return _gnu_dev_major(
      __dev,
    );
  }

  _dart_gnu_dev_major _gnu_dev_major;

  int gnu_dev_minor(
    int __dev,
  ) {
    _gnu_dev_minor ??= _dylib
        .lookupFunction<_c_gnu_dev_minor, _dart_gnu_dev_minor>('gnu_dev_minor');
    return _gnu_dev_minor(
      __dev,
    );
  }

  _dart_gnu_dev_minor _gnu_dev_minor;

  int gnu_dev_makedev(
    int __major,
    int __minor,
  ) {
    _gnu_dev_makedev ??=
        _dylib.lookupFunction<_c_gnu_dev_makedev, _dart_gnu_dev_makedev>(
            'gnu_dev_makedev');
    return _gnu_dev_makedev(
      __major,
      __minor,
    );
  }

  _dart_gnu_dev_makedev _gnu_dev_makedev;

  int random() {
    _random ??= _dylib.lookupFunction<_c_random, _dart_random>('random');
    return _random();
  }

  _dart_random _random;

  void srandom(
    int __seed,
  ) {
    _srandom ??= _dylib.lookupFunction<_c_srandom, _dart_srandom>('srandom');
    return _srandom(
      __seed,
    );
  }

  _dart_srandom _srandom;

  ffi.Pointer<ffi.Int8> initstate(
    int __seed,
    ffi.Pointer<ffi.Int8> __statebuf,
    int __statelen,
  ) {
    _initstate ??=
        _dylib.lookupFunction<_c_initstate, _dart_initstate>('initstate');
    return _initstate(
      __seed,
      __statebuf,
      __statelen,
    );
  }

  _dart_initstate _initstate;

  ffi.Pointer<ffi.Int8> setstate(
    ffi.Pointer<ffi.Int8> __statebuf,
  ) {
    _setstate ??=
        _dylib.lookupFunction<_c_setstate, _dart_setstate>('setstate');
    return _setstate(
      __statebuf,
    );
  }

  _dart_setstate _setstate;

  int random_r(
    ffi.Pointer<random_data> __buf,
    ffi.Pointer<ffi.Int32> __result,
  ) {
    _random_r ??=
        _dylib.lookupFunction<_c_random_r, _dart_random_r>('random_r');
    return _random_r(
      __buf,
      __result,
    );
  }

  _dart_random_r _random_r;

  int srandom_r(
    int __seed,
    ffi.Pointer<random_data> __buf,
  ) {
    _srandom_r ??=
        _dylib.lookupFunction<_c_srandom_r, _dart_srandom_r>('srandom_r');
    return _srandom_r(
      __seed,
      __buf,
    );
  }

  _dart_srandom_r _srandom_r;

  int initstate_r(
    int __seed,
    ffi.Pointer<ffi.Int8> __statebuf,
    int __statelen,
    ffi.Pointer<random_data> __buf,
  ) {
    _initstate_r ??=
        _dylib.lookupFunction<_c_initstate_r, _dart_initstate_r>('initstate_r');
    return _initstate_r(
      __seed,
      __statebuf,
      __statelen,
      __buf,
    );
  }

  _dart_initstate_r _initstate_r;

  int setstate_r(
    ffi.Pointer<ffi.Int8> __statebuf,
    ffi.Pointer<random_data> __buf,
  ) {
    _setstate_r ??=
        _dylib.lookupFunction<_c_setstate_r, _dart_setstate_r>('setstate_r');
    return _setstate_r(
      __statebuf,
      __buf,
    );
  }

  _dart_setstate_r _setstate_r;

  int rand() {
    _rand ??= _dylib.lookupFunction<_c_rand, _dart_rand>('rand');
    return _rand();
  }

  _dart_rand _rand;

  void srand(
    int __seed,
  ) {
    _srand ??= _dylib.lookupFunction<_c_srand, _dart_srand>('srand');
    return _srand(
      __seed,
    );
  }

  _dart_srand _srand;

  int rand_r(
    ffi.Pointer<ffi.Uint32> __seed,
  ) {
    _rand_r ??= _dylib.lookupFunction<_c_rand_r, _dart_rand_r>('rand_r');
    return _rand_r(
      __seed,
    );
  }

  _dart_rand_r _rand_r;

  double drand48() {
    _drand48 ??= _dylib.lookupFunction<_c_drand48, _dart_drand48>('drand48');
    return _drand48();
  }

  _dart_drand48 _drand48;

  double erand48(
    ffi.Pointer<ffi.Uint16> __xsubi,
  ) {
    _erand48 ??= _dylib.lookupFunction<_c_erand48, _dart_erand48>('erand48');
    return _erand48(
      __xsubi,
    );
  }

  _dart_erand48 _erand48;

  int lrand48() {
    _lrand48 ??= _dylib.lookupFunction<_c_lrand48, _dart_lrand48>('lrand48');
    return _lrand48();
  }

  _dart_lrand48 _lrand48;

  int nrand48(
    ffi.Pointer<ffi.Uint16> __xsubi,
  ) {
    _nrand48 ??= _dylib.lookupFunction<_c_nrand48, _dart_nrand48>('nrand48');
    return _nrand48(
      __xsubi,
    );
  }

  _dart_nrand48 _nrand48;

  int mrand48() {
    _mrand48 ??= _dylib.lookupFunction<_c_mrand48, _dart_mrand48>('mrand48');
    return _mrand48();
  }

  _dart_mrand48 _mrand48;

  int jrand48(
    ffi.Pointer<ffi.Uint16> __xsubi,
  ) {
    _jrand48 ??= _dylib.lookupFunction<_c_jrand48, _dart_jrand48>('jrand48');
    return _jrand48(
      __xsubi,
    );
  }

  _dart_jrand48 _jrand48;

  void srand48(
    int __seedval,
  ) {
    _srand48 ??= _dylib.lookupFunction<_c_srand48, _dart_srand48>('srand48');
    return _srand48(
      __seedval,
    );
  }

  _dart_srand48 _srand48;

  ffi.Pointer<ffi.Uint16> seed48(
    ffi.Pointer<ffi.Uint16> __seed16v,
  ) {
    _seed48 ??= _dylib.lookupFunction<_c_seed48, _dart_seed48>('seed48');
    return _seed48(
      __seed16v,
    );
  }

  _dart_seed48 _seed48;

  void lcong48(
    ffi.Pointer<ffi.Uint16> __param,
  ) {
    _lcong48 ??= _dylib.lookupFunction<_c_lcong48, _dart_lcong48>('lcong48');
    return _lcong48(
      __param,
    );
  }

  _dart_lcong48 _lcong48;

  int drand48_r(
    ffi.Pointer<drand48_data> __buffer,
    ffi.Pointer<ffi.Double> __result,
  ) {
    _drand48_r ??=
        _dylib.lookupFunction<_c_drand48_r, _dart_drand48_r>('drand48_r');
    return _drand48_r(
      __buffer,
      __result,
    );
  }

  _dart_drand48_r _drand48_r;

  int erand48_r(
    ffi.Pointer<ffi.Uint16> __xsubi,
    ffi.Pointer<drand48_data> __buffer,
    ffi.Pointer<ffi.Double> __result,
  ) {
    _erand48_r ??=
        _dylib.lookupFunction<_c_erand48_r, _dart_erand48_r>('erand48_r');
    return _erand48_r(
      __xsubi,
      __buffer,
      __result,
    );
  }

  _dart_erand48_r _erand48_r;

  int lrand48_r(
    ffi.Pointer<drand48_data> __buffer,
    ffi.Pointer<ffi.Int64> __result,
  ) {
    _lrand48_r ??=
        _dylib.lookupFunction<_c_lrand48_r, _dart_lrand48_r>('lrand48_r');
    return _lrand48_r(
      __buffer,
      __result,
    );
  }

  _dart_lrand48_r _lrand48_r;

  int nrand48_r(
    ffi.Pointer<ffi.Uint16> __xsubi,
    ffi.Pointer<drand48_data> __buffer,
    ffi.Pointer<ffi.Int64> __result,
  ) {
    _nrand48_r ??=
        _dylib.lookupFunction<_c_nrand48_r, _dart_nrand48_r>('nrand48_r');
    return _nrand48_r(
      __xsubi,
      __buffer,
      __result,
    );
  }

  _dart_nrand48_r _nrand48_r;

  int mrand48_r(
    ffi.Pointer<drand48_data> __buffer,
    ffi.Pointer<ffi.Int64> __result,
  ) {
    _mrand48_r ??=
        _dylib.lookupFunction<_c_mrand48_r, _dart_mrand48_r>('mrand48_r');
    return _mrand48_r(
      __buffer,
      __result,
    );
  }

  _dart_mrand48_r _mrand48_r;

  int jrand48_r(
    ffi.Pointer<ffi.Uint16> __xsubi,
    ffi.Pointer<drand48_data> __buffer,
    ffi.Pointer<ffi.Int64> __result,
  ) {
    _jrand48_r ??=
        _dylib.lookupFunction<_c_jrand48_r, _dart_jrand48_r>('jrand48_r');
    return _jrand48_r(
      __xsubi,
      __buffer,
      __result,
    );
  }

  _dart_jrand48_r _jrand48_r;

  int srand48_r(
    int __seedval,
    ffi.Pointer<drand48_data> __buffer,
  ) {
    _srand48_r ??=
        _dylib.lookupFunction<_c_srand48_r, _dart_srand48_r>('srand48_r');
    return _srand48_r(
      __seedval,
      __buffer,
    );
  }

  _dart_srand48_r _srand48_r;

  int seed48_r(
    ffi.Pointer<ffi.Uint16> __seed16v,
    ffi.Pointer<drand48_data> __buffer,
  ) {
    _seed48_r ??=
        _dylib.lookupFunction<_c_seed48_r, _dart_seed48_r>('seed48_r');
    return _seed48_r(
      __seed16v,
      __buffer,
    );
  }

  _dart_seed48_r _seed48_r;

  int lcong48_r(
    ffi.Pointer<ffi.Uint16> __param,
    ffi.Pointer<drand48_data> __buffer,
  ) {
    _lcong48_r ??=
        _dylib.lookupFunction<_c_lcong48_r, _dart_lcong48_r>('lcong48_r');
    return _lcong48_r(
      __param,
      __buffer,
    );
  }

  _dart_lcong48_r _lcong48_r;

  ffi.Pointer<ffi.Void> malloc(
    int __size,
  ) {
    _malloc ??= _dylib.lookupFunction<_c_malloc, _dart_malloc>('malloc');
    return _malloc(
      __size,
    );
  }

  _dart_malloc _malloc;

  ffi.Pointer<ffi.Void> calloc(
    int __nmemb,
    int __size,
  ) {
    _calloc ??= _dylib.lookupFunction<_c_calloc, _dart_calloc>('calloc');
    return _calloc(
      __nmemb,
      __size,
    );
  }

  _dart_calloc _calloc;

  ffi.Pointer<ffi.Void> realloc(
    ffi.Pointer<ffi.Void> __ptr,
    int __size,
  ) {
    _realloc ??= _dylib.lookupFunction<_c_realloc, _dart_realloc>('realloc');
    return _realloc(
      __ptr,
      __size,
    );
  }

  _dart_realloc _realloc;

  void free(
    ffi.Pointer<ffi.Void> __ptr,
  ) {
    _free ??= _dylib.lookupFunction<_c_free, _dart_free>('free');
    return _free(
      __ptr,
    );
  }

  _dart_free _free;

  ffi.Pointer<ffi.Void> alloca(
    int __size,
  ) {
    _alloca ??= _dylib.lookupFunction<_c_alloca, _dart_alloca>('alloca');
    return _alloca(
      __size,
    );
  }

  _dart_alloca _alloca;

  ffi.Pointer<ffi.Void> valloc(
    int __size,
  ) {
    _valloc ??= _dylib.lookupFunction<_c_valloc, _dart_valloc>('valloc');
    return _valloc(
      __size,
    );
  }

  _dart_valloc _valloc;

  int posix_memalign(
    ffi.Pointer<ffi.Pointer<ffi.Void>> __memptr,
    int __alignment,
    int __size,
  ) {
    _posix_memalign ??=
        _dylib.lookupFunction<_c_posix_memalign, _dart_posix_memalign>(
            'posix_memalign');
    return _posix_memalign(
      __memptr,
      __alignment,
      __size,
    );
  }

  _dart_posix_memalign _posix_memalign;

  ffi.Pointer<ffi.Void> aligned_alloc(
    int __alignment,
    int __size,
  ) {
    _aligned_alloc ??= _dylib
        .lookupFunction<_c_aligned_alloc, _dart_aligned_alloc>('aligned_alloc');
    return _aligned_alloc(
      __alignment,
      __size,
    );
  }

  _dart_aligned_alloc _aligned_alloc;

  void abort() {
    _abort ??= _dylib.lookupFunction<_c_abort, _dart_abort>('abort');
    return _abort();
  }

  _dart_abort _abort;

  void exit(
    int __status,
  ) {
    _exit_1 ??= _dylib.lookupFunction<_c_exit, _dart_exit>('exit');
    return _exit_1(
      __status,
    );
  }

  _dart_exit _exit_1;

  void quick_exit(
    int __status,
  ) {
    _quick_exit ??=
        _dylib.lookupFunction<_c_quick_exit, _dart_quick_exit>('quick_exit');
    return _quick_exit(
      __status,
    );
  }

  _dart_quick_exit _quick_exit;

  void _Exit(
    int __status,
  ) {
    __Exit ??= _dylib.lookupFunction<_c__Exit, _dart__Exit>('_Exit');
    return __Exit(
      __status,
    );
  }

  _dart__Exit __Exit;

  ffi.Pointer<ffi.Int8> getenv(
    ffi.Pointer<ffi.Int8> __name,
  ) {
    _getenv ??= _dylib.lookupFunction<_c_getenv, _dart_getenv>('getenv');
    return _getenv(
      __name,
    );
  }

  _dart_getenv _getenv;

  int putenv(
    ffi.Pointer<ffi.Int8> __string,
  ) {
    _putenv ??= _dylib.lookupFunction<_c_putenv, _dart_putenv>('putenv');
    return _putenv(
      __string,
    );
  }

  _dart_putenv _putenv;

  int setenv(
    ffi.Pointer<ffi.Int8> __name,
    ffi.Pointer<ffi.Int8> __value,
    int __replace,
  ) {
    _setenv ??= _dylib.lookupFunction<_c_setenv, _dart_setenv>('setenv');
    return _setenv(
      __name,
      __value,
      __replace,
    );
  }

  _dart_setenv _setenv;

  int unsetenv(
    ffi.Pointer<ffi.Int8> __name,
  ) {
    _unsetenv ??=
        _dylib.lookupFunction<_c_unsetenv, _dart_unsetenv>('unsetenv');
    return _unsetenv(
      __name,
    );
  }

  _dart_unsetenv _unsetenv;

  int clearenv() {
    _clearenv ??=
        _dylib.lookupFunction<_c_clearenv, _dart_clearenv>('clearenv');
    return _clearenv();
  }

  _dart_clearenv _clearenv;

  ffi.Pointer<ffi.Int8> mktemp(
    ffi.Pointer<ffi.Int8> __template,
  ) {
    _mktemp ??= _dylib.lookupFunction<_c_mktemp, _dart_mktemp>('mktemp');
    return _mktemp(
      __template,
    );
  }

  _dart_mktemp _mktemp;

  int mkstemp(
    ffi.Pointer<ffi.Int8> __template,
  ) {
    _mkstemp ??= _dylib.lookupFunction<_c_mkstemp, _dart_mkstemp>('mkstemp');
    return _mkstemp(
      __template,
    );
  }

  _dart_mkstemp _mkstemp;

  int mkstemps(
    ffi.Pointer<ffi.Int8> __template,
    int __suffixlen,
  ) {
    _mkstemps ??=
        _dylib.lookupFunction<_c_mkstemps, _dart_mkstemps>('mkstemps');
    return _mkstemps(
      __template,
      __suffixlen,
    );
  }

  _dart_mkstemps _mkstemps;

  ffi.Pointer<ffi.Int8> mkdtemp(
    ffi.Pointer<ffi.Int8> __template,
  ) {
    _mkdtemp ??= _dylib.lookupFunction<_c_mkdtemp, _dart_mkdtemp>('mkdtemp');
    return _mkdtemp(
      __template,
    );
  }

  _dart_mkdtemp _mkdtemp;

  int system(
    ffi.Pointer<ffi.Int8> __command,
  ) {
    _system ??= _dylib.lookupFunction<_c_system, _dart_system>('system');
    return _system(
      __command,
    );
  }

  _dart_system _system;

  ffi.Pointer<ffi.Int8> realpath(
    ffi.Pointer<ffi.Int8> __name,
    ffi.Pointer<ffi.Int8> __resolved,
  ) {
    _realpath ??=
        _dylib.lookupFunction<_c_realpath, _dart_realpath>('realpath');
    return _realpath(
      __name,
      __resolved,
    );
  }

  _dart_realpath _realpath;

  ffi.Pointer<ffi.Void> bsearch(
    ffi.Pointer<ffi.Void> __key,
    ffi.Pointer<ffi.Void> __base,
    int __nmemb,
    int __size,
    ffi.Pointer<ffi.NativeFunction<__compar_fn_t_1>> __compar,
  ) {
    _bsearch ??= _dylib.lookupFunction<_c_bsearch, _dart_bsearch>('bsearch');
    return _bsearch(
      __key,
      __base,
      __nmemb,
      __size,
      __compar,
    );
  }

  _dart_bsearch _bsearch;

  void qsort(
    ffi.Pointer<ffi.Void> __base,
    int __nmemb,
    int __size,
    ffi.Pointer<ffi.NativeFunction<__compar_fn_t_2>> __compar,
  ) {
    _qsort ??= _dylib.lookupFunction<_c_qsort, _dart_qsort>('qsort');
    return _qsort(
      __base,
      __nmemb,
      __size,
      __compar,
    );
  }

  _dart_qsort _qsort;

  int abs(
    int __x,
  ) {
    _abs ??= _dylib.lookupFunction<_c_abs, _dart_abs>('abs');
    return _abs(
      __x,
    );
  }

  _dart_abs _abs;

  int labs(
    int __x,
  ) {
    _labs ??= _dylib.lookupFunction<_c_labs, _dart_labs>('labs');
    return _labs(
      __x,
    );
  }

  _dart_labs _labs;

  int llabs(
    int __x,
  ) {
    _llabs ??= _dylib.lookupFunction<_c_llabs, _dart_llabs>('llabs');
    return _llabs(
      __x,
    );
  }

  _dart_llabs _llabs;

  ffi.Pointer<ffi.Int8> ecvt(
    double __value,
    int __ndigit,
    ffi.Pointer<ffi.Int32> __decpt,
    ffi.Pointer<ffi.Int32> __sign,
  ) {
    _ecvt ??= _dylib.lookupFunction<_c_ecvt, _dart_ecvt>('ecvt');
    return _ecvt(
      __value,
      __ndigit,
      __decpt,
      __sign,
    );
  }

  _dart_ecvt _ecvt;

  ffi.Pointer<ffi.Int8> fcvt(
    double __value,
    int __ndigit,
    ffi.Pointer<ffi.Int32> __decpt,
    ffi.Pointer<ffi.Int32> __sign,
  ) {
    _fcvt ??= _dylib.lookupFunction<_c_fcvt, _dart_fcvt>('fcvt');
    return _fcvt(
      __value,
      __ndigit,
      __decpt,
      __sign,
    );
  }

  _dart_fcvt _fcvt;

  ffi.Pointer<ffi.Int8> gcvt(
    double __value,
    int __ndigit,
    ffi.Pointer<ffi.Int8> __buf,
  ) {
    _gcvt ??= _dylib.lookupFunction<_c_gcvt, _dart_gcvt>('gcvt');
    return _gcvt(
      __value,
      __ndigit,
      __buf,
    );
  }

  _dart_gcvt _gcvt;

  int ecvt_r(
    double __value,
    int __ndigit,
    ffi.Pointer<ffi.Int32> __decpt,
    ffi.Pointer<ffi.Int32> __sign,
    ffi.Pointer<ffi.Int8> __buf,
    int __len,
  ) {
    _ecvt_r ??= _dylib.lookupFunction<_c_ecvt_r, _dart_ecvt_r>('ecvt_r');
    return _ecvt_r(
      __value,
      __ndigit,
      __decpt,
      __sign,
      __buf,
      __len,
    );
  }

  _dart_ecvt_r _ecvt_r;

  int fcvt_r(
    double __value,
    int __ndigit,
    ffi.Pointer<ffi.Int32> __decpt,
    ffi.Pointer<ffi.Int32> __sign,
    ffi.Pointer<ffi.Int8> __buf,
    int __len,
  ) {
    _fcvt_r ??= _dylib.lookupFunction<_c_fcvt_r, _dart_fcvt_r>('fcvt_r');
    return _fcvt_r(
      __value,
      __ndigit,
      __decpt,
      __sign,
      __buf,
      __len,
    );
  }

  _dart_fcvt_r _fcvt_r;

  int mblen(
    ffi.Pointer<ffi.Int8> __s,
    int __n,
  ) {
    _mblen ??= _dylib.lookupFunction<_c_mblen, _dart_mblen>('mblen');
    return _mblen(
      __s,
      __n,
    );
  }

  _dart_mblen _mblen;

  int mbtowc(
    ffi.Pointer<ffi.Int32> __pwc,
    ffi.Pointer<ffi.Int8> __s,
    int __n,
  ) {
    _mbtowc ??= _dylib.lookupFunction<_c_mbtowc, _dart_mbtowc>('mbtowc');
    return _mbtowc(
      __pwc,
      __s,
      __n,
    );
  }

  _dart_mbtowc _mbtowc;

  int wctomb(
    ffi.Pointer<ffi.Int8> __s,
    int __wchar,
  ) {
    _wctomb ??= _dylib.lookupFunction<_c_wctomb, _dart_wctomb>('wctomb');
    return _wctomb(
      __s,
      __wchar,
    );
  }

  _dart_wctomb _wctomb;

  int mbstowcs(
    ffi.Pointer<ffi.Int32> __pwcs,
    ffi.Pointer<ffi.Int8> __s,
    int __n,
  ) {
    _mbstowcs ??=
        _dylib.lookupFunction<_c_mbstowcs, _dart_mbstowcs>('mbstowcs');
    return _mbstowcs(
      __pwcs,
      __s,
      __n,
    );
  }

  _dart_mbstowcs _mbstowcs;

  int wcstombs(
    ffi.Pointer<ffi.Int8> __s,
    ffi.Pointer<ffi.Int32> __pwcs,
    int __n,
  ) {
    _wcstombs ??=
        _dylib.lookupFunction<_c_wcstombs, _dart_wcstombs>('wcstombs');
    return _wcstombs(
      __s,
      __pwcs,
      __n,
    );
  }

  _dart_wcstombs _wcstombs;

  int rpmatch(
    ffi.Pointer<ffi.Int8> __response,
  ) {
    _rpmatch ??= _dylib.lookupFunction<_c_rpmatch, _dart_rpmatch>('rpmatch');
    return _rpmatch(
      __response,
    );
  }

  _dart_rpmatch _rpmatch;

  int getsubopt(
    ffi.Pointer<ffi.Pointer<ffi.Int8>> __optionp,
    ffi.Pointer<ffi.Pointer<ffi.Int8>> __tokens,
    ffi.Pointer<ffi.Pointer<ffi.Int8>> __valuep,
  ) {
    _getsubopt ??=
        _dylib.lookupFunction<_c_getsubopt, _dart_getsubopt>('getsubopt');
    return _getsubopt(
      __optionp,
      __tokens,
      __valuep,
    );
  }

  _dart_getsubopt _getsubopt;

  int getloadavg(
    ffi.Pointer<ffi.Double> __loadavg,
    int __nelem,
  ) {
    _getloadavg ??=
        _dylib.lookupFunction<_c_getloadavg, _dart_getloadavg>('getloadavg');
    return _getloadavg(
      __loadavg,
      __nelem,
    );
  }

  _dart_getloadavg _getloadavg;

  ffi.Pointer<ffi.Void> memcpy(
    ffi.Pointer<ffi.Void> __dest,
    ffi.Pointer<ffi.Void> __src,
    int __n,
  ) {
    _memcpy ??= _dylib.lookupFunction<_c_memcpy, _dart_memcpy>('memcpy');
    return _memcpy(
      __dest,
      __src,
      __n,
    );
  }

  _dart_memcpy _memcpy;

  ffi.Pointer<ffi.Void> memmove(
    ffi.Pointer<ffi.Void> __dest,
    ffi.Pointer<ffi.Void> __src,
    int __n,
  ) {
    _memmove ??= _dylib.lookupFunction<_c_memmove, _dart_memmove>('memmove');
    return _memmove(
      __dest,
      __src,
      __n,
    );
  }

  _dart_memmove _memmove;

  ffi.Pointer<ffi.Void> memccpy(
    ffi.Pointer<ffi.Void> __dest,
    ffi.Pointer<ffi.Void> __src,
    int __c,
    int __n,
  ) {
    _memccpy ??= _dylib.lookupFunction<_c_memccpy, _dart_memccpy>('memccpy');
    return _memccpy(
      __dest,
      __src,
      __c,
      __n,
    );
  }

  _dart_memccpy _memccpy;

  ffi.Pointer<ffi.Void> memset(
    ffi.Pointer<ffi.Void> __s,
    int __c,
    int __n,
  ) {
    _memset ??= _dylib.lookupFunction<_c_memset, _dart_memset>('memset');
    return _memset(
      __s,
      __c,
      __n,
    );
  }

  _dart_memset _memset;

  int memcmp(
    ffi.Pointer<ffi.Void> __s1,
    ffi.Pointer<ffi.Void> __s2,
    int __n,
  ) {
    _memcmp ??= _dylib.lookupFunction<_c_memcmp, _dart_memcmp>('memcmp');
    return _memcmp(
      __s1,
      __s2,
      __n,
    );
  }

  _dart_memcmp _memcmp;

  ffi.Pointer<ffi.Void> memchr(
    ffi.Pointer<ffi.Void> __s,
    int __c,
    int __n,
  ) {
    _memchr ??= _dylib.lookupFunction<_c_memchr, _dart_memchr>('memchr');
    return _memchr(
      __s,
      __c,
      __n,
    );
  }

  _dart_memchr _memchr;

  ffi.Pointer<ffi.Int8> strcpy(
    ffi.Pointer<ffi.Int8> __dest,
    ffi.Pointer<ffi.Int8> __src,
  ) {
    _strcpy ??= _dylib.lookupFunction<_c_strcpy, _dart_strcpy>('strcpy');
    return _strcpy(
      __dest,
      __src,
    );
  }

  _dart_strcpy _strcpy;

  ffi.Pointer<ffi.Int8> strncpy(
    ffi.Pointer<ffi.Int8> __dest,
    ffi.Pointer<ffi.Int8> __src,
    int __n,
  ) {
    _strncpy ??= _dylib.lookupFunction<_c_strncpy, _dart_strncpy>('strncpy');
    return _strncpy(
      __dest,
      __src,
      __n,
    );
  }

  _dart_strncpy _strncpy;

  ffi.Pointer<ffi.Int8> strcat(
    ffi.Pointer<ffi.Int8> __dest,
    ffi.Pointer<ffi.Int8> __src,
  ) {
    _strcat ??= _dylib.lookupFunction<_c_strcat, _dart_strcat>('strcat');
    return _strcat(
      __dest,
      __src,
    );
  }

  _dart_strcat _strcat;

  ffi.Pointer<ffi.Int8> strncat(
    ffi.Pointer<ffi.Int8> __dest,
    ffi.Pointer<ffi.Int8> __src,
    int __n,
  ) {
    _strncat ??= _dylib.lookupFunction<_c_strncat, _dart_strncat>('strncat');
    return _strncat(
      __dest,
      __src,
      __n,
    );
  }

  _dart_strncat _strncat;

  int strcmp(
    ffi.Pointer<ffi.Int8> __s1,
    ffi.Pointer<ffi.Int8> __s2,
  ) {
    _strcmp ??= _dylib.lookupFunction<_c_strcmp, _dart_strcmp>('strcmp');
    return _strcmp(
      __s1,
      __s2,
    );
  }

  _dart_strcmp _strcmp;

  int strncmp(
    ffi.Pointer<ffi.Int8> __s1,
    ffi.Pointer<ffi.Int8> __s2,
    int __n,
  ) {
    _strncmp ??= _dylib.lookupFunction<_c_strncmp, _dart_strncmp>('strncmp');
    return _strncmp(
      __s1,
      __s2,
      __n,
    );
  }

  _dart_strncmp _strncmp;

  int strcoll(
    ffi.Pointer<ffi.Int8> __s1,
    ffi.Pointer<ffi.Int8> __s2,
  ) {
    _strcoll ??= _dylib.lookupFunction<_c_strcoll, _dart_strcoll>('strcoll');
    return _strcoll(
      __s1,
      __s2,
    );
  }

  _dart_strcoll _strcoll;

  int strxfrm(
    ffi.Pointer<ffi.Int8> __dest,
    ffi.Pointer<ffi.Int8> __src,
    int __n,
  ) {
    _strxfrm ??= _dylib.lookupFunction<_c_strxfrm, _dart_strxfrm>('strxfrm');
    return _strxfrm(
      __dest,
      __src,
      __n,
    );
  }

  _dart_strxfrm _strxfrm;

  int strcoll_l(
    ffi.Pointer<ffi.Int8> __s1,
    ffi.Pointer<ffi.Int8> __s2,
    ffi.Pointer<__locale_struct> __l,
  ) {
    _strcoll_l ??=
        _dylib.lookupFunction<_c_strcoll_l, _dart_strcoll_l>('strcoll_l');
    return _strcoll_l(
      __s1,
      __s2,
      __l,
    );
  }

  _dart_strcoll_l _strcoll_l;

  int strxfrm_l(
    ffi.Pointer<ffi.Int8> __dest,
    ffi.Pointer<ffi.Int8> __src,
    int __n,
    ffi.Pointer<__locale_struct> __l,
  ) {
    _strxfrm_l ??=
        _dylib.lookupFunction<_c_strxfrm_l, _dart_strxfrm_l>('strxfrm_l');
    return _strxfrm_l(
      __dest,
      __src,
      __n,
      __l,
    );
  }

  _dart_strxfrm_l _strxfrm_l;

  ffi.Pointer<ffi.Int8> strdup(
    ffi.Pointer<ffi.Int8> __s,
  ) {
    _strdup ??= _dylib.lookupFunction<_c_strdup, _dart_strdup>('strdup');
    return _strdup(
      __s,
    );
  }

  _dart_strdup _strdup;

  ffi.Pointer<ffi.Int8> strndup(
    ffi.Pointer<ffi.Int8> __string,
    int __n,
  ) {
    _strndup ??= _dylib.lookupFunction<_c_strndup, _dart_strndup>('strndup');
    return _strndup(
      __string,
      __n,
    );
  }

  _dart_strndup _strndup;

  ffi.Pointer<ffi.Int8> strchr(
    ffi.Pointer<ffi.Int8> __s,
    int __c,
  ) {
    _strchr ??= _dylib.lookupFunction<_c_strchr, _dart_strchr>('strchr');
    return _strchr(
      __s,
      __c,
    );
  }

  _dart_strchr _strchr;

  ffi.Pointer<ffi.Int8> strrchr(
    ffi.Pointer<ffi.Int8> __s,
    int __c,
  ) {
    _strrchr ??= _dylib.lookupFunction<_c_strrchr, _dart_strrchr>('strrchr');
    return _strrchr(
      __s,
      __c,
    );
  }

  _dart_strrchr _strrchr;

  int strcspn(
    ffi.Pointer<ffi.Int8> __s,
    ffi.Pointer<ffi.Int8> __reject,
  ) {
    _strcspn ??= _dylib.lookupFunction<_c_strcspn, _dart_strcspn>('strcspn');
    return _strcspn(
      __s,
      __reject,
    );
  }

  _dart_strcspn _strcspn;

  int strspn(
    ffi.Pointer<ffi.Int8> __s,
    ffi.Pointer<ffi.Int8> __accept,
  ) {
    _strspn ??= _dylib.lookupFunction<_c_strspn, _dart_strspn>('strspn');
    return _strspn(
      __s,
      __accept,
    );
  }

  _dart_strspn _strspn;

  ffi.Pointer<ffi.Int8> strpbrk(
    ffi.Pointer<ffi.Int8> __s,
    ffi.Pointer<ffi.Int8> __accept,
  ) {
    _strpbrk ??= _dylib.lookupFunction<_c_strpbrk, _dart_strpbrk>('strpbrk');
    return _strpbrk(
      __s,
      __accept,
    );
  }

  _dart_strpbrk _strpbrk;

  ffi.Pointer<ffi.Int8> strstr(
    ffi.Pointer<ffi.Int8> __haystack,
    ffi.Pointer<ffi.Int8> __needle,
  ) {
    _strstr ??= _dylib.lookupFunction<_c_strstr, _dart_strstr>('strstr');
    return _strstr(
      __haystack,
      __needle,
    );
  }

  _dart_strstr _strstr;

  ffi.Pointer<ffi.Int8> strtok(
    ffi.Pointer<ffi.Int8> __s,
    ffi.Pointer<ffi.Int8> __delim,
  ) {
    _strtok ??= _dylib.lookupFunction<_c_strtok, _dart_strtok>('strtok');
    return _strtok(
      __s,
      __delim,
    );
  }

  _dart_strtok _strtok;

  ffi.Pointer<ffi.Int8> __strtok_r(
    ffi.Pointer<ffi.Int8> __s,
    ffi.Pointer<ffi.Int8> __delim,
    ffi.Pointer<ffi.Pointer<ffi.Int8>> __save_ptr,
  ) {
    ___strtok_r ??=
        _dylib.lookupFunction<_c___strtok_r, _dart___strtok_r>('__strtok_r');
    return ___strtok_r(
      __s,
      __delim,
      __save_ptr,
    );
  }

  _dart___strtok_r ___strtok_r;

  ffi.Pointer<ffi.Int8> strtok_r(
    ffi.Pointer<ffi.Int8> __s,
    ffi.Pointer<ffi.Int8> __delim,
    ffi.Pointer<ffi.Pointer<ffi.Int8>> __save_ptr,
  ) {
    _strtok_r ??=
        _dylib.lookupFunction<_c_strtok_r, _dart_strtok_r>('strtok_r');
    return _strtok_r(
      __s,
      __delim,
      __save_ptr,
    );
  }

  _dart_strtok_r _strtok_r;

  int strlen(
    ffi.Pointer<ffi.Int8> __s,
  ) {
    _strlen ??= _dylib.lookupFunction<_c_strlen, _dart_strlen>('strlen');
    return _strlen(
      __s,
    );
  }

  _dart_strlen _strlen;

  int strnlen(
    ffi.Pointer<ffi.Int8> __string,
    int __maxlen,
  ) {
    _strnlen ??= _dylib.lookupFunction<_c_strnlen, _dart_strnlen>('strnlen');
    return _strnlen(
      __string,
      __maxlen,
    );
  }

  _dart_strnlen _strnlen;

  ffi.Pointer<ffi.Int8> strerror(
    int __errnum,
  ) {
    _strerror ??=
        _dylib.lookupFunction<_c_strerror, _dart_strerror>('strerror');
    return _strerror(
      __errnum,
    );
  }

  _dart_strerror _strerror;

  int strerror_r(
    int __errnum,
    ffi.Pointer<ffi.Int8> __buf,
    int __buflen,
  ) {
    _strerror_r ??=
        _dylib.lookupFunction<_c_strerror_r, _dart_strerror_r>('strerror_r');
    return _strerror_r(
      __errnum,
      __buf,
      __buflen,
    );
  }

  _dart_strerror_r _strerror_r;

  ffi.Pointer<ffi.Int8> strerror_l(
    int __errnum,
    ffi.Pointer<__locale_struct> __l,
  ) {
    _strerror_l ??=
        _dylib.lookupFunction<_c_strerror_l, _dart_strerror_l>('strerror_l');
    return _strerror_l(
      __errnum,
      __l,
    );
  }

  _dart_strerror_l _strerror_l;

  int bcmp(
    ffi.Pointer<ffi.Void> __s1,
    ffi.Pointer<ffi.Void> __s2,
    int __n,
  ) {
    _bcmp ??= _dylib.lookupFunction<_c_bcmp, _dart_bcmp>('bcmp');
    return _bcmp(
      __s1,
      __s2,
      __n,
    );
  }

  _dart_bcmp _bcmp;

  void bcopy(
    ffi.Pointer<ffi.Void> __src,
    ffi.Pointer<ffi.Void> __dest,
    int __n,
  ) {
    _bcopy ??= _dylib.lookupFunction<_c_bcopy, _dart_bcopy>('bcopy');
    return _bcopy(
      __src,
      __dest,
      __n,
    );
  }

  _dart_bcopy _bcopy;

  void bzero(
    ffi.Pointer<ffi.Void> __s,
    int __n,
  ) {
    _bzero ??= _dylib.lookupFunction<_c_bzero, _dart_bzero>('bzero');
    return _bzero(
      __s,
      __n,
    );
  }

  _dart_bzero _bzero;

  ffi.Pointer<ffi.Int8> index(
    ffi.Pointer<ffi.Int8> __s,
    int __c,
  ) {
    _index ??= _dylib.lookupFunction<_c_index, _dart_index>('index');
    return _index(
      __s,
      __c,
    );
  }

  _dart_index _index;

  ffi.Pointer<ffi.Int8> rindex(
    ffi.Pointer<ffi.Int8> __s,
    int __c,
  ) {
    _rindex ??= _dylib.lookupFunction<_c_rindex, _dart_rindex>('rindex');
    return _rindex(
      __s,
      __c,
    );
  }

  _dart_rindex _rindex;

  int ffs(
    int __i,
  ) {
    _ffs ??= _dylib.lookupFunction<_c_ffs, _dart_ffs>('ffs');
    return _ffs(
      __i,
    );
  }

  _dart_ffs _ffs;

  int ffsl(
    int __l,
  ) {
    _ffsl ??= _dylib.lookupFunction<_c_ffsl, _dart_ffsl>('ffsl');
    return _ffsl(
      __l,
    );
  }

  _dart_ffsl _ffsl;

  int ffsll(
    int __ll,
  ) {
    _ffsll ??= _dylib.lookupFunction<_c_ffsll, _dart_ffsll>('ffsll');
    return _ffsll(
      __ll,
    );
  }

  _dart_ffsll _ffsll;

  int strcasecmp(
    ffi.Pointer<ffi.Int8> __s1,
    ffi.Pointer<ffi.Int8> __s2,
  ) {
    _strcasecmp ??=
        _dylib.lookupFunction<_c_strcasecmp, _dart_strcasecmp>('strcasecmp');
    return _strcasecmp(
      __s1,
      __s2,
    );
  }

  _dart_strcasecmp _strcasecmp;

  int strncasecmp(
    ffi.Pointer<ffi.Int8> __s1,
    ffi.Pointer<ffi.Int8> __s2,
    int __n,
  ) {
    _strncasecmp ??=
        _dylib.lookupFunction<_c_strncasecmp, _dart_strncasecmp>('strncasecmp');
    return _strncasecmp(
      __s1,
      __s2,
      __n,
    );
  }

  _dart_strncasecmp _strncasecmp;

  int strcasecmp_l(
    ffi.Pointer<ffi.Int8> __s1,
    ffi.Pointer<ffi.Int8> __s2,
    ffi.Pointer<__locale_struct> __loc,
  ) {
    _strcasecmp_l ??= _dylib
        .lookupFunction<_c_strcasecmp_l, _dart_strcasecmp_l>('strcasecmp_l');
    return _strcasecmp_l(
      __s1,
      __s2,
      __loc,
    );
  }

  _dart_strcasecmp_l _strcasecmp_l;

  int strncasecmp_l(
    ffi.Pointer<ffi.Int8> __s1,
    ffi.Pointer<ffi.Int8> __s2,
    int __n,
    ffi.Pointer<__locale_struct> __loc,
  ) {
    _strncasecmp_l ??= _dylib
        .lookupFunction<_c_strncasecmp_l, _dart_strncasecmp_l>('strncasecmp_l');
    return _strncasecmp_l(
      __s1,
      __s2,
      __n,
      __loc,
    );
  }

  _dart_strncasecmp_l _strncasecmp_l;

  void explicit_bzero(
    ffi.Pointer<ffi.Void> __s,
    int __n,
  ) {
    _explicit_bzero ??=
        _dylib.lookupFunction<_c_explicit_bzero, _dart_explicit_bzero>(
            'explicit_bzero');
    return _explicit_bzero(
      __s,
      __n,
    );
  }

  _dart_explicit_bzero _explicit_bzero;

  ffi.Pointer<ffi.Int8> strsep(
    ffi.Pointer<ffi.Pointer<ffi.Int8>> __stringp,
    ffi.Pointer<ffi.Int8> __delim,
  ) {
    _strsep ??= _dylib.lookupFunction<_c_strsep, _dart_strsep>('strsep');
    return _strsep(
      __stringp,
      __delim,
    );
  }

  _dart_strsep _strsep;

  ffi.Pointer<ffi.Int8> strsignal(
    int __sig,
  ) {
    _strsignal ??=
        _dylib.lookupFunction<_c_strsignal, _dart_strsignal>('strsignal');
    return _strsignal(
      __sig,
    );
  }

  _dart_strsignal _strsignal;

  ffi.Pointer<ffi.Int8> __stpcpy(
    ffi.Pointer<ffi.Int8> __dest,
    ffi.Pointer<ffi.Int8> __src,
  ) {
    ___stpcpy ??=
        _dylib.lookupFunction<_c___stpcpy, _dart___stpcpy>('__stpcpy');
    return ___stpcpy(
      __dest,
      __src,
    );
  }

  _dart___stpcpy ___stpcpy;

  ffi.Pointer<ffi.Int8> stpcpy(
    ffi.Pointer<ffi.Int8> __dest,
    ffi.Pointer<ffi.Int8> __src,
  ) {
    _stpcpy ??= _dylib.lookupFunction<_c_stpcpy, _dart_stpcpy>('stpcpy');
    return _stpcpy(
      __dest,
      __src,
    );
  }

  _dart_stpcpy _stpcpy;

  ffi.Pointer<ffi.Int8> __stpncpy(
    ffi.Pointer<ffi.Int8> __dest,
    ffi.Pointer<ffi.Int8> __src,
    int __n,
  ) {
    ___stpncpy ??=
        _dylib.lookupFunction<_c___stpncpy, _dart___stpncpy>('__stpncpy');
    return ___stpncpy(
      __dest,
      __src,
      __n,
    );
  }

  _dart___stpncpy ___stpncpy;

  ffi.Pointer<ffi.Int8> stpncpy(
    ffi.Pointer<ffi.Int8> __dest,
    ffi.Pointer<ffi.Int8> __src,
    int __n,
  ) {
    _stpncpy ??= _dylib.lookupFunction<_c_stpncpy, _dart_stpncpy>('stpncpy');
    return _stpncpy(
      __dest,
      __src,
      __n,
    );
  }

  _dart_stpncpy _stpncpy;

  int ioctl(
    int __fd,
    int __request,
    ffi.Pointer<ffi.Void> sz,
  ) {
    _ioctl ??= _dylib.lookupFunction<_c_ioctl, _dart_ioctl>('ioctl');
    return _ioctl(
      __fd,
      __request,
      sz
    );
  }

  _dart_ioctl _ioctl;

  int wait(
    ffi.Pointer<ffi.Int32> __stat_loc,
  ) {
    _wait ??= _dylib.lookupFunction<_c_wait, _dart_wait>('wait');
    return _wait(
      __stat_loc,
    );
  }

  _dart_wait _wait;

  int waitpid(
    int __pid,
    ffi.Pointer<ffi.Int32> __stat_loc,
    int __options,
  ) {
    _waitpid ??= _dylib.lookupFunction<_c_waitpid, _dart_waitpid>('waitpid');
    return _waitpid(
      __pid,
      __stat_loc,
      __options,
    );
  }

  _dart_waitpid _waitpid;

  int waitid(
    int __idtype,
    int __id,
    ffi.Pointer<siginfo_t> __infop,
    int __options,
  ) {
    _waitid ??= _dylib.lookupFunction<_c_waitid, _dart_waitid>('waitid');
    return _waitid(
      __idtype,
      __id,
      __infop,
      __options,
    );
  }

  _dart_waitid _waitid;

  int wait3(
    ffi.Pointer<ffi.Int32> __stat_loc,
    int __options,
    ffi.Pointer<rusage> __usage,
  ) {
    _wait3 ??= _dylib.lookupFunction<_c_wait3, _dart_wait3>('wait3');
    return _wait3(
      __stat_loc,
      __options,
      __usage,
    );
  }

  _dart_wait3 _wait3;

  int wait4(
    int __pid,
    ffi.Pointer<ffi.Int32> __stat_loc,
    int __options,
    ffi.Pointer<rusage> __usage,
  ) {
    _wait4 ??= _dylib.lookupFunction<_c_wait4, _dart_wait4>('wait4');
    return _wait4(
      __pid,
      __stat_loc,
      __options,
      __usage,
    );
  }

  _dart_wait4 _wait4;

  int cfgetospeed(
    ffi.Pointer<termios> __termios_p,
  ) {
    _cfgetospeed ??=
        _dylib.lookupFunction<_c_cfgetospeed, _dart_cfgetospeed>('cfgetospeed');
    return _cfgetospeed(
      __termios_p,
    );
  }

  _dart_cfgetospeed _cfgetospeed;

  int cfgetispeed(
    ffi.Pointer<termios> __termios_p,
  ) {
    _cfgetispeed ??=
        _dylib.lookupFunction<_c_cfgetispeed, _dart_cfgetispeed>('cfgetispeed');
    return _cfgetispeed(
      __termios_p,
    );
  }

  _dart_cfgetispeed _cfgetispeed;

  int cfsetospeed(
    ffi.Pointer<termios> __termios_p,
    int __speed,
  ) {
    _cfsetospeed ??=
        _dylib.lookupFunction<_c_cfsetospeed, _dart_cfsetospeed>('cfsetospeed');
    return _cfsetospeed(
      __termios_p,
      __speed,
    );
  }

  _dart_cfsetospeed _cfsetospeed;

  int cfsetispeed(
    ffi.Pointer<termios> __termios_p,
    int __speed,
  ) {
    _cfsetispeed ??=
        _dylib.lookupFunction<_c_cfsetispeed, _dart_cfsetispeed>('cfsetispeed');
    return _cfsetispeed(
      __termios_p,
      __speed,
    );
  }

  _dart_cfsetispeed _cfsetispeed;

  int cfsetspeed(
    ffi.Pointer<termios> __termios_p,
    int __speed,
  ) {
    _cfsetspeed ??=
        _dylib.lookupFunction<_c_cfsetspeed, _dart_cfsetspeed>('cfsetspeed');
    return _cfsetspeed(
      __termios_p,
      __speed,
    );
  }

  _dart_cfsetspeed _cfsetspeed;

  int tcgetattr(
    int __fd,
    ffi.Pointer<termios> __termios_p,
  ) {
    _tcgetattr ??=
        _dylib.lookupFunction<_c_tcgetattr, _dart_tcgetattr>('tcgetattr');
    return _tcgetattr(
      __fd,
      __termios_p,
    );
  }

  _dart_tcgetattr _tcgetattr;

  int tcsetattr(
    int __fd,
    int __optional_actions,
    ffi.Pointer<termios> __termios_p,
  ) {
    _tcsetattr ??=
        _dylib.lookupFunction<_c_tcsetattr, _dart_tcsetattr>('tcsetattr');
    return _tcsetattr(
      __fd,
      __optional_actions,
      __termios_p,
    );
  }

  _dart_tcsetattr _tcsetattr;

  void cfmakeraw(
    ffi.Pointer<termios> __termios_p,
  ) {
    _cfmakeraw ??=
        _dylib.lookupFunction<_c_cfmakeraw, _dart_cfmakeraw>('cfmakeraw');
    return _cfmakeraw(
      __termios_p,
    );
  }

  _dart_cfmakeraw _cfmakeraw;

  int tcsendbreak(
    int __fd,
    int __duration,
  ) {
    _tcsendbreak ??=
        _dylib.lookupFunction<_c_tcsendbreak, _dart_tcsendbreak>('tcsendbreak');
    return _tcsendbreak(
      __fd,
      __duration,
    );
  }

  _dart_tcsendbreak _tcsendbreak;

  int tcdrain(
    int __fd,
  ) {
    _tcdrain ??= _dylib.lookupFunction<_c_tcdrain, _dart_tcdrain>('tcdrain');
    return _tcdrain(
      __fd,
    );
  }

  _dart_tcdrain _tcdrain;

  int tcflush(
    int __fd,
    int __queue_selector,
  ) {
    _tcflush ??= _dylib.lookupFunction<_c_tcflush, _dart_tcflush>('tcflush');
    return _tcflush(
      __fd,
      __queue_selector,
    );
  }

  _dart_tcflush _tcflush;

  int tcflow(
    int __fd,
    int __action,
  ) {
    _tcflow ??= _dylib.lookupFunction<_c_tcflow, _dart_tcflow>('tcflow');
    return _tcflow(
      __fd,
      __action,
    );
  }

  _dart_tcflow _tcflow;

  int tcgetsid(
    int __fd,
  ) {
    _tcgetsid ??=
        _dylib.lookupFunction<_c_tcgetsid, _dart_tcgetsid>('tcgetsid');
    return _tcgetsid(
      __fd,
    );
  }

  _dart_tcgetsid _tcgetsid;

  int access(
    ffi.Pointer<ffi.Int8> __name,
    int __type,
  ) {
    _access ??= _dylib.lookupFunction<_c_access, _dart_access>('access');
    return _access(
      __name,
      __type,
    );
  }

  _dart_access _access;

  int faccessat(
    int __fd,
    ffi.Pointer<ffi.Int8> __file,
    int __type,
    int __flag,
  ) {
    _faccessat ??=
        _dylib.lookupFunction<_c_faccessat, _dart_faccessat>('faccessat');
    return _faccessat(
      __fd,
      __file,
      __type,
      __flag,
    );
  }

  _dart_faccessat _faccessat;

  int lseek(
    int __fd,
    int __offset,
    int __whence,
  ) {
    _lseek ??= _dylib.lookupFunction<_c_lseek, _dart_lseek>('lseek');
    return _lseek(
      __fd,
      __offset,
      __whence,
    );
  }

  _dart_lseek _lseek;

  int close(
    int __fd,
  ) {
    _close ??= _dylib.lookupFunction<_c_close, _dart_close>('close');
    return _close(
      __fd,
    );
  }

  _dart_close _close;

  int read(
    int __fd,
    ffi.Pointer<ffi.Void> __buf,
    int __nbytes,
  ) {
    _read ??= _dylib.lookupFunction<_c_read, _dart_read>('read');
    return _read(
      __fd,
      __buf,
      __nbytes,
    );
  }

  _dart_read _read;

  int write(
    int __fd,
    ffi.Pointer<ffi.Void> __buf,
    int __n,
  ) {
    _write ??= _dylib.lookupFunction<_c_write, _dart_write>('write');
    return _write(
      __fd,
      __buf,
      __n,
    );
  }

  _dart_write _write;

  int pread(
    int __fd,
    ffi.Pointer<ffi.Void> __buf,
    int __nbytes,
    int __offset,
  ) {
    _pread ??= _dylib.lookupFunction<_c_pread, _dart_pread>('pread');
    return _pread(
      __fd,
      __buf,
      __nbytes,
      __offset,
    );
  }

  _dart_pread _pread;

  int pwrite(
    int __fd,
    ffi.Pointer<ffi.Void> __buf,
    int __n,
    int __offset,
  ) {
    _pwrite ??= _dylib.lookupFunction<_c_pwrite, _dart_pwrite>('pwrite');
    return _pwrite(
      __fd,
      __buf,
      __n,
      __offset,
    );
  }

  _dart_pwrite _pwrite;

  int pipe(
    ffi.Pointer<ffi.Int32> __pipedes,
  ) {
    _pipe ??= _dylib.lookupFunction<_c_pipe, _dart_pipe>('pipe');
    return _pipe(
      __pipedes,
    );
  }

  _dart_pipe _pipe;

  int alarm(
    int __seconds,
  ) {
    _alarm ??= _dylib.lookupFunction<_c_alarm, _dart_alarm>('alarm');
    return _alarm(
      __seconds,
    );
  }

  _dart_alarm _alarm;

  int sleep(
    int __seconds,
  ) {
    _sleep ??= _dylib.lookupFunction<_c_sleep, _dart_sleep>('sleep');
    return _sleep(
      __seconds,
    );
  }

  _dart_sleep _sleep;

  int ualarm(
    int __value,
    int __interval,
  ) {
    _ualarm ??= _dylib.lookupFunction<_c_ualarm, _dart_ualarm>('ualarm');
    return _ualarm(
      __value,
      __interval,
    );
  }

  _dart_ualarm _ualarm;

  int usleep(
    int __useconds,
  ) {
    _usleep ??= _dylib.lookupFunction<_c_usleep, _dart_usleep>('usleep');
    return _usleep(
      __useconds,
    );
  }

  _dart_usleep _usleep;

  int pause() {
    _pause ??= _dylib.lookupFunction<_c_pause, _dart_pause>('pause');
    return _pause();
  }

  _dart_pause _pause;

  int chown(
    ffi.Pointer<ffi.Int8> __file,
    int __owner,
    int __group,
  ) {
    _chown ??= _dylib.lookupFunction<_c_chown, _dart_chown>('chown');
    return _chown(
      __file,
      __owner,
      __group,
    );
  }

  _dart_chown _chown;

  int fchown(
    int __fd,
    int __owner,
    int __group,
  ) {
    _fchown ??= _dylib.lookupFunction<_c_fchown, _dart_fchown>('fchown');
    return _fchown(
      __fd,
      __owner,
      __group,
    );
  }

  _dart_fchown _fchown;

  int lchown(
    ffi.Pointer<ffi.Int8> __file,
    int __owner,
    int __group,
  ) {
    _lchown ??= _dylib.lookupFunction<_c_lchown, _dart_lchown>('lchown');
    return _lchown(
      __file,
      __owner,
      __group,
    );
  }

  _dart_lchown _lchown;

  int fchownat(
    int __fd,
    ffi.Pointer<ffi.Int8> __file,
    int __owner,
    int __group,
    int __flag,
  ) {
    _fchownat ??=
        _dylib.lookupFunction<_c_fchownat, _dart_fchownat>('fchownat');
    return _fchownat(
      __fd,
      __file,
      __owner,
      __group,
      __flag,
    );
  }

  _dart_fchownat _fchownat;

  int chdir(
    ffi.Pointer<ffi.Int8> __path,
  ) {
    _chdir ??= _dylib.lookupFunction<_c_chdir, _dart_chdir>('chdir');
    return _chdir(
      __path,
    );
  }

  _dart_chdir _chdir;

  int fchdir(
    int __fd,
  ) {
    _fchdir ??= _dylib.lookupFunction<_c_fchdir, _dart_fchdir>('fchdir');
    return _fchdir(
      __fd,
    );
  }

  _dart_fchdir _fchdir;

  ffi.Pointer<ffi.Int8> getcwd(
    ffi.Pointer<ffi.Int8> __buf,
    int __size,
  ) {
    _getcwd ??= _dylib.lookupFunction<_c_getcwd, _dart_getcwd>('getcwd');
    return _getcwd(
      __buf,
      __size,
    );
  }

  _dart_getcwd _getcwd;

  ffi.Pointer<ffi.Int8> getwd(
    ffi.Pointer<ffi.Int8> __buf,
  ) {
    _getwd ??= _dylib.lookupFunction<_c_getwd, _dart_getwd>('getwd');
    return _getwd(
      __buf,
    );
  }

  _dart_getwd _getwd;

  int dup(
    int __fd,
  ) {
    _dup ??= _dylib.lookupFunction<_c_dup, _dart_dup>('dup');
    return _dup(
      __fd,
    );
  }

  _dart_dup _dup;

  int dup2(
    int __fd,
    int __fd2,
  ) {
    _dup2 ??= _dylib.lookupFunction<_c_dup2, _dart_dup2>('dup2');
    return _dup2(
      __fd,
      __fd2,
    );
  }

  _dart_dup2 _dup2;

  int execve(
    ffi.Pointer<ffi.Int8> __path,
    ffi.Pointer<ffi.Pointer<ffi.Int8>> __argv,
    ffi.Pointer<ffi.Pointer<ffi.Int8>> __envp,
  ) {
    _execve ??= _dylib.lookupFunction<_c_execve, _dart_execve>('execve');
    return _execve(
      __path,
      __argv,
      __envp,
    );
  }

  _dart_execve _execve;

  int fexecve(
    int __fd,
    ffi.Pointer<ffi.Pointer<ffi.Int8>> __argv,
    ffi.Pointer<ffi.Pointer<ffi.Int8>> __envp,
  ) {
    _fexecve ??= _dylib.lookupFunction<_c_fexecve, _dart_fexecve>('fexecve');
    return _fexecve(
      __fd,
      __argv,
      __envp,
    );
  }

  _dart_fexecve _fexecve;

  int execv(
    ffi.Pointer<ffi.Int8> __path,
    ffi.Pointer<ffi.Pointer<ffi.Int8>> __argv,
  ) {
    _execv ??= _dylib.lookupFunction<_c_execv, _dart_execv>('execv');
    return _execv(
      __path,
      __argv,
    );
  }

  _dart_execv _execv;

  int execle(
    ffi.Pointer<ffi.Int8> __path,
    ffi.Pointer<ffi.Int8> __arg,
  ) {
    _execle ??= _dylib.lookupFunction<_c_execle, _dart_execle>('execle');
    return _execle(
      __path,
      __arg,
    );
  }

  _dart_execle _execle;

  int execl(
    ffi.Pointer<ffi.Int8> __path,
    ffi.Pointer<ffi.Int8> __arg,
  ) {
    _execl ??= _dylib.lookupFunction<_c_execl, _dart_execl>('execl');
    return _execl(
      __path,
      __arg,
    );
  }

  _dart_execl _execl;

  int execvp(
    ffi.Pointer<ffi.Int8> __file,
    ffi.Pointer<ffi.Pointer<ffi.Int8>> __argv,
  ) {
    _execvp ??= _dylib.lookupFunction<_c_execvp, _dart_execvp>('execvp');
    return _execvp(
      __file,
      __argv,
    );
  }

  _dart_execvp _execvp;

  int execlp(
    ffi.Pointer<ffi.Int8> __file,
    ffi.Pointer<ffi.Int8> __arg,
  ) {
    _execlp ??= _dylib.lookupFunction<_c_execlp, _dart_execlp>('execlp');
    return _execlp(
      __file,
      __arg,
    );
  }

  _dart_execlp _execlp;

  int nice(
    int __inc,
  ) {
    _nice ??= _dylib.lookupFunction<_c_nice, _dart_nice>('nice');
    return _nice(
      __inc,
    );
  }

  _dart_nice _nice;

  void _exit(
    int __status,
  ) {
    __exit ??= _dylib.lookupFunction<_c__exit, _dart__exit>('_exit');
    return __exit(
      __status,
    );
  }

  _dart__exit __exit;

  int pathconf(
    ffi.Pointer<ffi.Int8> __path,
    int __name,
  ) {
    _pathconf ??=
        _dylib.lookupFunction<_c_pathconf, _dart_pathconf>('pathconf');
    return _pathconf(
      __path,
      __name,
    );
  }

  _dart_pathconf _pathconf;

  int fpathconf(
    int __fd,
    int __name,
  ) {
    _fpathconf ??=
        _dylib.lookupFunction<_c_fpathconf, _dart_fpathconf>('fpathconf');
    return _fpathconf(
      __fd,
      __name,
    );
  }

  _dart_fpathconf _fpathconf;

  int sysconf(
    int __name,
  ) {
    _sysconf ??= _dylib.lookupFunction<_c_sysconf, _dart_sysconf>('sysconf');
    return _sysconf(
      __name,
    );
  }

  _dart_sysconf _sysconf;

  int confstr(
    int __name,
    ffi.Pointer<ffi.Int8> __buf,
    int __len,
  ) {
    _confstr ??= _dylib.lookupFunction<_c_confstr, _dart_confstr>('confstr');
    return _confstr(
      __name,
      __buf,
      __len,
    );
  }

  _dart_confstr _confstr;

  int getpid() {
    _getpid ??= _dylib.lookupFunction<_c_getpid, _dart_getpid>('getpid');
    return _getpid();
  }

  _dart_getpid _getpid;

  int getppid() {
    _getppid ??= _dylib.lookupFunction<_c_getppid, _dart_getppid>('getppid');
    return _getppid();
  }

  _dart_getppid _getppid;

  int getpgrp() {
    _getpgrp ??= _dylib.lookupFunction<_c_getpgrp, _dart_getpgrp>('getpgrp');
    return _getpgrp();
  }

  _dart_getpgrp _getpgrp;

  int __getpgid(
    int __pid,
  ) {
    ___getpgid ??=
        _dylib.lookupFunction<_c___getpgid, _dart___getpgid>('__getpgid');
    return ___getpgid(
      __pid,
    );
  }

  _dart___getpgid ___getpgid;

  int getpgid(
    int __pid,
  ) {
    _getpgid ??= _dylib.lookupFunction<_c_getpgid, _dart_getpgid>('getpgid');
    return _getpgid(
      __pid,
    );
  }

  _dart_getpgid _getpgid;

  int setpgid(
    int __pid,
    int __pgid,
  ) {
    _setpgid ??= _dylib.lookupFunction<_c_setpgid, _dart_setpgid>('setpgid');
    return _setpgid(
      __pid,
      __pgid,
    );
  }

  _dart_setpgid _setpgid;

  int setpgrp() {
    _setpgrp ??= _dylib.lookupFunction<_c_setpgrp, _dart_setpgrp>('setpgrp');
    return _setpgrp();
  }

  _dart_setpgrp _setpgrp;

  int setsid() {
    _setsid ??= _dylib.lookupFunction<_c_setsid, _dart_setsid>('setsid');
    return _setsid();
  }

  _dart_setsid _setsid;

  int getsid(
    int __pid,
  ) {
    _getsid ??= _dylib.lookupFunction<_c_getsid, _dart_getsid>('getsid');
    return _getsid(
      __pid,
    );
  }

  _dart_getsid _getsid;

  int getuid() {
    _getuid ??= _dylib.lookupFunction<_c_getuid, _dart_getuid>('getuid');
    return _getuid();
  }

  _dart_getuid _getuid;

  int geteuid() {
    _geteuid ??= _dylib.lookupFunction<_c_geteuid, _dart_geteuid>('geteuid');
    return _geteuid();
  }

  _dart_geteuid _geteuid;

  int getgid() {
    _getgid ??= _dylib.lookupFunction<_c_getgid, _dart_getgid>('getgid');
    return _getgid();
  }

  _dart_getgid _getgid;

  int getegid() {
    _getegid ??= _dylib.lookupFunction<_c_getegid, _dart_getegid>('getegid');
    return _getegid();
  }

  _dart_getegid _getegid;

  int getgroups(
    int __size,
    ffi.Pointer<ffi.Uint32> __list,
  ) {
    _getgroups ??=
        _dylib.lookupFunction<_c_getgroups, _dart_getgroups>('getgroups');
    return _getgroups(
      __size,
      __list,
    );
  }

  _dart_getgroups _getgroups;

  int setuid(
    int __uid,
  ) {
    _setuid ??= _dylib.lookupFunction<_c_setuid, _dart_setuid>('setuid');
    return _setuid(
      __uid,
    );
  }

  _dart_setuid _setuid;

  int setreuid(
    int __ruid,
    int __euid,
  ) {
    _setreuid ??=
        _dylib.lookupFunction<_c_setreuid, _dart_setreuid>('setreuid');
    return _setreuid(
      __ruid,
      __euid,
    );
  }

  _dart_setreuid _setreuid;

  int seteuid(
    int __uid,
  ) {
    _seteuid ??= _dylib.lookupFunction<_c_seteuid, _dart_seteuid>('seteuid');
    return _seteuid(
      __uid,
    );
  }

  _dart_seteuid _seteuid;

  int setgid(
    int __gid,
  ) {
    _setgid ??= _dylib.lookupFunction<_c_setgid, _dart_setgid>('setgid');
    return _setgid(
      __gid,
    );
  }

  _dart_setgid _setgid;

  int setregid(
    int __rgid,
    int __egid,
  ) {
    _setregid ??=
        _dylib.lookupFunction<_c_setregid, _dart_setregid>('setregid');
    return _setregid(
      __rgid,
      __egid,
    );
  }

  _dart_setregid _setregid;

  int setegid(
    int __gid,
  ) {
    _setegid ??= _dylib.lookupFunction<_c_setegid, _dart_setegid>('setegid');
    return _setegid(
      __gid,
    );
  }

  _dart_setegid _setegid;

  int fork() {
    _fork ??= _dylib.lookupFunction<_c_fork, _dart_fork>('fork');
    return _fork();
  }

  _dart_fork _fork;

  int vfork() {
    _vfork ??= _dylib.lookupFunction<_c_vfork, _dart_vfork>('vfork');
    return _vfork();
  }

  _dart_vfork _vfork;

  ffi.Pointer<ffi.Int8> ttyname(
    int __fd,
  ) {
    _ttyname ??= _dylib.lookupFunction<_c_ttyname, _dart_ttyname>('ttyname');
    return _ttyname(
      __fd,
    );
  }

  _dart_ttyname _ttyname;

  int ttyname_r(
    int __fd,
    ffi.Pointer<ffi.Int8> __buf,
    int __buflen,
  ) {
    _ttyname_r ??=
        _dylib.lookupFunction<_c_ttyname_r, _dart_ttyname_r>('ttyname_r');
    return _ttyname_r(
      __fd,
      __buf,
      __buflen,
    );
  }

  _dart_ttyname_r _ttyname_r;

  int isatty(
    int __fd,
  ) {
    _isatty ??= _dylib.lookupFunction<_c_isatty, _dart_isatty>('isatty');
    return _isatty(
      __fd,
    );
  }

  _dart_isatty _isatty;

  int ttyslot() {
    _ttyslot ??= _dylib.lookupFunction<_c_ttyslot, _dart_ttyslot>('ttyslot');
    return _ttyslot();
  }

  _dart_ttyslot _ttyslot;

  int link(
    ffi.Pointer<ffi.Int8> __from,
    ffi.Pointer<ffi.Int8> __to,
  ) {
    _link ??= _dylib.lookupFunction<_c_link, _dart_link>('link');
    return _link(
      __from,
      __to,
    );
  }

  _dart_link _link;

  int linkat(
    int __fromfd,
    ffi.Pointer<ffi.Int8> __from,
    int __tofd,
    ffi.Pointer<ffi.Int8> __to,
    int __flags,
  ) {
    _linkat ??= _dylib.lookupFunction<_c_linkat, _dart_linkat>('linkat');
    return _linkat(
      __fromfd,
      __from,
      __tofd,
      __to,
      __flags,
    );
  }

  _dart_linkat _linkat;

  int symlink(
    ffi.Pointer<ffi.Int8> __from,
    ffi.Pointer<ffi.Int8> __to,
  ) {
    _symlink ??= _dylib.lookupFunction<_c_symlink, _dart_symlink>('symlink');
    return _symlink(
      __from,
      __to,
    );
  }

  _dart_symlink _symlink;

  int readlink(
    ffi.Pointer<ffi.Int8> __path,
    ffi.Pointer<ffi.Int8> __buf,
    int __len,
  ) {
    _readlink ??=
        _dylib.lookupFunction<_c_readlink, _dart_readlink>('readlink');
    return _readlink(
      __path,
      __buf,
      __len,
    );
  }

  _dart_readlink _readlink;

  int symlinkat(
    ffi.Pointer<ffi.Int8> __from,
    int __tofd,
    ffi.Pointer<ffi.Int8> __to,
  ) {
    _symlinkat ??=
        _dylib.lookupFunction<_c_symlinkat, _dart_symlinkat>('symlinkat');
    return _symlinkat(
      __from,
      __tofd,
      __to,
    );
  }

  _dart_symlinkat _symlinkat;

  int readlinkat(
    int __fd,
    ffi.Pointer<ffi.Int8> __path,
    ffi.Pointer<ffi.Int8> __buf,
    int __len,
  ) {
    _readlinkat ??=
        _dylib.lookupFunction<_c_readlinkat, _dart_readlinkat>('readlinkat');
    return _readlinkat(
      __fd,
      __path,
      __buf,
      __len,
    );
  }

  _dart_readlinkat _readlinkat;

  int unlink(
    ffi.Pointer<ffi.Int8> __name,
  ) {
    _unlink ??= _dylib.lookupFunction<_c_unlink, _dart_unlink>('unlink');
    return _unlink(
      __name,
    );
  }

  _dart_unlink _unlink;

  int unlinkat(
    int __fd,
    ffi.Pointer<ffi.Int8> __name,
    int __flag,
  ) {
    _unlinkat ??=
        _dylib.lookupFunction<_c_unlinkat, _dart_unlinkat>('unlinkat');
    return _unlinkat(
      __fd,
      __name,
      __flag,
    );
  }

  _dart_unlinkat _unlinkat;

  int rmdir(
    ffi.Pointer<ffi.Int8> __path,
  ) {
    _rmdir ??= _dylib.lookupFunction<_c_rmdir, _dart_rmdir>('rmdir');
    return _rmdir(
      __path,
    );
  }

  _dart_rmdir _rmdir;

  int tcgetpgrp(
    int __fd,
  ) {
    _tcgetpgrp ??=
        _dylib.lookupFunction<_c_tcgetpgrp, _dart_tcgetpgrp>('tcgetpgrp');
    return _tcgetpgrp(
      __fd,
    );
  }

  _dart_tcgetpgrp _tcgetpgrp;

  int tcsetpgrp(
    int __fd,
    int __pgrp_id,
  ) {
    _tcsetpgrp ??=
        _dylib.lookupFunction<_c_tcsetpgrp, _dart_tcsetpgrp>('tcsetpgrp');
    return _tcsetpgrp(
      __fd,
      __pgrp_id,
    );
  }

  _dart_tcsetpgrp _tcsetpgrp;

  ffi.Pointer<ffi.Int8> getlogin() {
    _getlogin ??=
        _dylib.lookupFunction<_c_getlogin, _dart_getlogin>('getlogin');
    return _getlogin();
  }

  _dart_getlogin _getlogin;

  int getlogin_r(
    ffi.Pointer<ffi.Int8> __name,
    int __name_len,
  ) {
    _getlogin_r ??=
        _dylib.lookupFunction<_c_getlogin_r, _dart_getlogin_r>('getlogin_r');
    return _getlogin_r(
      __name,
      __name_len,
    );
  }

  _dart_getlogin_r _getlogin_r;

  int setlogin(
    ffi.Pointer<ffi.Int8> __name,
  ) {
    _setlogin ??=
        _dylib.lookupFunction<_c_setlogin, _dart_setlogin>('setlogin');
    return _setlogin(
      __name,
    );
  }

  _dart_setlogin _setlogin;

  int getopt(
    int ___argc,
    ffi.Pointer<ffi.Pointer<ffi.Int8>> ___argv,
    ffi.Pointer<ffi.Int8> __shortopts,
  ) {
    _getopt ??= _dylib.lookupFunction<_c_getopt, _dart_getopt>('getopt');
    return _getopt(
      ___argc,
      ___argv,
      __shortopts,
    );
  }

  _dart_getopt _getopt;

  int gethostname(
    ffi.Pointer<ffi.Int8> __name,
    int __len,
  ) {
    _gethostname ??=
        _dylib.lookupFunction<_c_gethostname, _dart_gethostname>('gethostname');
    return _gethostname(
      __name,
      __len,
    );
  }

  _dart_gethostname _gethostname;

  int sethostname(
    ffi.Pointer<ffi.Int8> __name,
    int __len,
  ) {
    _sethostname ??=
        _dylib.lookupFunction<_c_sethostname, _dart_sethostname>('sethostname');
    return _sethostname(
      __name,
      __len,
    );
  }

  _dart_sethostname _sethostname;

  int sethostid(
    int __id,
  ) {
    _sethostid ??=
        _dylib.lookupFunction<_c_sethostid, _dart_sethostid>('sethostid');
    return _sethostid(
      __id,
    );
  }

  _dart_sethostid _sethostid;

  int getdomainname(
    ffi.Pointer<ffi.Int8> __name,
    int __len,
  ) {
    _getdomainname ??= _dylib
        .lookupFunction<_c_getdomainname, _dart_getdomainname>('getdomainname');
    return _getdomainname(
      __name,
      __len,
    );
  }

  _dart_getdomainname _getdomainname;

  int setdomainname(
    ffi.Pointer<ffi.Int8> __name,
    int __len,
  ) {
    _setdomainname ??= _dylib
        .lookupFunction<_c_setdomainname, _dart_setdomainname>('setdomainname');
    return _setdomainname(
      __name,
      __len,
    );
  }

  _dart_setdomainname _setdomainname;

  int vhangup() {
    _vhangup ??= _dylib.lookupFunction<_c_vhangup, _dart_vhangup>('vhangup');
    return _vhangup();
  }

  _dart_vhangup _vhangup;

  int revoke(
    ffi.Pointer<ffi.Int8> __file,
  ) {
    _revoke ??= _dylib.lookupFunction<_c_revoke, _dart_revoke>('revoke');
    return _revoke(
      __file,
    );
  }

  _dart_revoke _revoke;

  int profil(
    ffi.Pointer<ffi.Uint16> __sample_buffer,
    int __size,
    int __offset,
    int __scale,
  ) {
    _profil ??= _dylib.lookupFunction<_c_profil, _dart_profil>('profil');
    return _profil(
      __sample_buffer,
      __size,
      __offset,
      __scale,
    );
  }

  _dart_profil _profil;

  int acct(
    ffi.Pointer<ffi.Int8> __name,
  ) {
    _acct ??= _dylib.lookupFunction<_c_acct, _dart_acct>('acct');
    return _acct(
      __name,
    );
  }

  _dart_acct _acct;

  ffi.Pointer<ffi.Int8> getusershell() {
    _getusershell ??= _dylib
        .lookupFunction<_c_getusershell, _dart_getusershell>('getusershell');
    return _getusershell();
  }

  _dart_getusershell _getusershell;

  void endusershell() {
    _endusershell ??= _dylib
        .lookupFunction<_c_endusershell, _dart_endusershell>('endusershell');
    return _endusershell();
  }

  _dart_endusershell _endusershell;

  void setusershell() {
    _setusershell ??= _dylib
        .lookupFunction<_c_setusershell, _dart_setusershell>('setusershell');
    return _setusershell();
  }

  _dart_setusershell _setusershell;

  int daemon(
    int __nochdir,
    int __noclose,
  ) {
    _daemon ??= _dylib.lookupFunction<_c_daemon, _dart_daemon>('daemon');
    return _daemon(
      __nochdir,
      __noclose,
    );
  }

  _dart_daemon _daemon;

  int chroot(
    ffi.Pointer<ffi.Int8> __path,
  ) {
    _chroot ??= _dylib.lookupFunction<_c_chroot, _dart_chroot>('chroot');
    return _chroot(
      __path,
    );
  }

  _dart_chroot _chroot;

  ffi.Pointer<ffi.Int8> getpass(
    ffi.Pointer<ffi.Int8> __prompt,
  ) {
    _getpass ??= _dylib.lookupFunction<_c_getpass, _dart_getpass>('getpass');
    return _getpass(
      __prompt,
    );
  }

  _dart_getpass _getpass;

  int fsync(
    int __fd,
  ) {
    _fsync ??= _dylib.lookupFunction<_c_fsync, _dart_fsync>('fsync');
    return _fsync(
      __fd,
    );
  }

  _dart_fsync _fsync;

  int gethostid() {
    _gethostid ??=
        _dylib.lookupFunction<_c_gethostid, _dart_gethostid>('gethostid');
    return _gethostid();
  }

  _dart_gethostid _gethostid;

  void sync_1() {
    _sync_1 ??= _dylib.lookupFunction<_c_sync_1, _dart_sync_1>('sync');
    return _sync_1();
  }

  _dart_sync_1 _sync_1;

  int getpagesize() {
    _getpagesize ??=
        _dylib.lookupFunction<_c_getpagesize, _dart_getpagesize>('getpagesize');
    return _getpagesize();
  }

  _dart_getpagesize _getpagesize;

  int getdtablesize() {
    _getdtablesize ??= _dylib
        .lookupFunction<_c_getdtablesize, _dart_getdtablesize>('getdtablesize');
    return _getdtablesize();
  }

  _dart_getdtablesize _getdtablesize;

  int truncate(
    ffi.Pointer<ffi.Int8> __file,
    int __length,
  ) {
    _truncate ??=
        _dylib.lookupFunction<_c_truncate, _dart_truncate>('truncate');
    return _truncate(
      __file,
      __length,
    );
  }

  _dart_truncate _truncate;

  int ftruncate(
    int __fd,
    int __length,
  ) {
    _ftruncate ??=
        _dylib.lookupFunction<_c_ftruncate, _dart_ftruncate>('ftruncate');
    return _ftruncate(
      __fd,
      __length,
    );
  }

  _dart_ftruncate _ftruncate;

  int brk(
    ffi.Pointer<ffi.Void> __addr,
  ) {
    _brk ??= _dylib.lookupFunction<_c_brk, _dart_brk>('brk');
    return _brk(
      __addr,
    );
  }

  _dart_brk _brk;

  ffi.Pointer<ffi.Void> sbrk(
    int __delta,
  ) {
    _sbrk ??= _dylib.lookupFunction<_c_sbrk, _dart_sbrk>('sbrk');
    return _sbrk(
      __delta,
    );
  }

  _dart_sbrk _sbrk;

  int syscall(
    int __sysno,
  ) {
    _syscall ??= _dylib.lookupFunction<_c_syscall, _dart_syscall>('syscall');
    return _syscall(
      __sysno,
    );
  }

  _dart_syscall _syscall;

  int fdatasync(
    int __fildes,
  ) {
    _fdatasync ??=
        _dylib.lookupFunction<_c_fdatasync, _dart_fdatasync>('fdatasync');
    return _fdatasync(
      __fildes,
    );
  }

  _dart_fdatasync _fdatasync;

  int getentropy(
    ffi.Pointer<ffi.Void> __buffer,
    int __length,
  ) {
    _getentropy ??=
        _dylib.lookupFunction<_c_getentropy, _dart_getentropy>('getentropy');
    return _getentropy(
      __buffer,
      __length,
    );
  }

  _dart_getentropy _getentropy;

  ffi.Pointer<ffi.Int8> ptsname(
    int __ptm,
  ) {
    _ptsname ??= _dylib.lookupFunction<_c_ptsname, _dart_ptsname>('ptsname');
    return _ptsname(
      __ptm,
    );
  }

  _dart_ptsname _ptsname;

  int grantpt(
    int __fd,
  ) {
    _grantpt ??= _dylib.lookupFunction<_c_grantpt, _dart_grantpt>('grantpt');
    return _grantpt(
      __fd,
    );
  }

  _dart_grantpt _grantpt;

  int unlockpt(
    int __fd,
  ) {
    _unlockpt ??= _dylib.lookupFunction<_c_unlockpt, _dart_unlockpt>('unlockpt');
    return _unlockpt(
      __fd,
    );
  }

  _dart_unlockpt _unlockpt;
}

class __fsid_t extends ffi.Struct {}

class dirent extends ffi.Struct {}

class __dirstream extends ffi.Struct {}

class flock extends ffi.Struct {
  @ffi.Int16()
  int l_type;

  @ffi.Int16()
  int l_whence;

  @ffi.Int64()
  int l_start;

  @ffi.Int64()
  int l_len;

  @ffi.Int32()
  int l_pid;
}

class timespec extends ffi.Struct {
  @ffi.Int64()
  int tv_sec;

  @ffi.Int64()
  int tv_nsec;
}

class stat extends ffi.Struct {}

class siginfo_t extends ffi.Struct {}

class sigevent extends ffi.Struct {}

class sigevent_t extends ffi.Struct {}

class sigaction extends ffi.Struct {}

class _fpx_sw_bytes extends ffi.Struct {}

class _fpreg extends ffi.Struct {}

class _fpxreg extends ffi.Struct {}

class _xmmreg extends ffi.Struct {}

class _fpstate extends ffi.Struct {}

class sigcontext extends ffi.Struct {}

class _xsave_hdr extends ffi.Struct {}

class _ymmh_state extends ffi.Struct {}

class _xstate extends ffi.Struct {}

class stack_t extends ffi.Struct {
  ffi.Pointer<ffi.Void> ss_sp;

  @ffi.Int32()
  int ss_flags;

  @ffi.Int32()
  int ss_size;
}

class _libc_fpxreg extends ffi.Struct {}

class _libc_xmmreg extends ffi.Struct {}

class _libc_fpstate extends ffi.Struct {}

class mcontext_t extends ffi.Struct {}

// class struct (anonymous at /usr/include/x86_64-linux-gnu/bits/types/stack_t.h:26:9) extends ffi.Struct{
//   ffi.Pointer<ffi.Void> ss_sp;

//   @ffi.Int32()
//   int ss_flags;

//   @ffi.Int32()
//   int ss_size;

// }

class ucontext_t extends ffi.Struct {}

class sigstack extends ffi.Struct {
  ffi.Pointer<ffi.Void> ss_sp;

  @ffi.Int32()
  int ss_onstack;
}

class __pthread_rwlock_arch_t extends ffi.Struct {}

class __pthread_internal_list extends ffi.Struct {
  ffi.Pointer<__pthread_internal_list> __prev;

  ffi.Pointer<__pthread_internal_list> __next;
}

class __pthread_list_t extends ffi.Struct {
  ffi.Pointer<__pthread_internal_list> __prev;

  ffi.Pointer<__pthread_internal_list> __next;
}

class __pthread_mutex_s extends ffi.Struct {}

class __pthread_cond_s extends ffi.Struct {}

class _IO_FILE extends ffi.Struct {}

class __mbstate_t extends ffi.Struct {}

class _G_fpos_t extends ffi.Struct {}

class _G_fpos64_t extends ffi.Struct {}

class _IO_jump_t extends ffi.Struct {}

class _IO_marker extends ffi.Struct {
  ffi.Pointer<_IO_marker> _next;

  ffi.Pointer<_IO_FILE> _sbuf;

  @ffi.Int32()
  int _pos;
}

abstract class __codecvt_result {
  static const int __codecvt_ok = 0;
  static const int __codecvt_partial = 1;
  static const int __codecvt_error = 2;
  static const int __codecvt_noconv = 3;
}

class _IO_FILE_plus extends ffi.Struct {}

abstract class idtype_t {
  static const int P_ALL = 0;
  static const int P_PID = 1;
  static const int P_PGID = 2;
}

class div_t extends ffi.Struct {
  @ffi.Int32()
  int quot;

  @ffi.Int32()
  int rem;
}

class ldiv_t extends ffi.Struct {
  @ffi.Int64()
  int quot;

  @ffi.Int64()
  int rem;
}

class lldiv_t extends ffi.Struct {
  @ffi.Int64()
  int quot;

  @ffi.Int64()
  int rem;
}

class timeval extends ffi.Struct {
  @ffi.Int64()
  int tv_sec;

  @ffi.Int64()
  int tv_usec;
}

class fd_set extends ffi.Struct {}

class random_data extends ffi.Struct {
  ffi.Pointer<ffi.Int32> fptr;

  ffi.Pointer<ffi.Int32> rptr;

  ffi.Pointer<ffi.Int32> state;

  @ffi.Int32()
  int rand_type;

  @ffi.Int32()
  int rand_deg;

  @ffi.Int32()
  int rand_sep;

  ffi.Pointer<ffi.Int32> end_ptr;
}

class drand48_data extends ffi.Struct {}

class __locale_data extends ffi.Struct {}

class __locale_struct extends ffi.Struct {}

class winsize extends ffi.Struct {
  @ffi.Uint16()
  int ws_row;

  @ffi.Uint16()
  int ws_col;

  @ffi.Uint16()
  int ws_xpixel;

  @ffi.Uint16()
  int ws_ypixel;
}

class termio extends ffi.Struct {}

class rusage extends ffi.Struct {}

class termios extends ffi.Struct {
  @ffi.Uint64()
  int c_iflag; /* input mode flags */
  @ffi.Uint64()
  int c_oflag; /* output mode flags */
  @ffi.Uint64()
  int c_cflag; /* control mode flags */
  @ffi.Uint64()
  int c_lflag; /* local mode flags */

  @ffi.Uint8()
  int c_line; /* line discipline */

  @ffi.Int8()
  int c_cc_0;
  @ffi.Int8()
  int c_cc_1;
  @ffi.Int8()
  int c_cc_2;
  @ffi.Int8()
  int c_cc_3;
  @ffi.Int8()
  int c_cc_4;
  @ffi.Int8()
  int c_cc_5;
  @ffi.Int8()
  int c_cc_6;
  @ffi.Int8()
  int c_cc_7;
  @ffi.Int8()
  int c_cc_8;
  @ffi.Int8()
  int c_cc_9;
  @ffi.Int8()
  int c_cc_10;
  @ffi.Int8()
  int c_cc_11;
  @ffi.Int8()
  int c_cc_12;
  @ffi.Int8()
  int c_cc_13;
  @ffi.Int8()
  int c_cc_14;
  @ffi.Int8()
  int c_cc_15;
  @ffi.Int8()
  int c_cc_16;
  @ffi.Int8()
  int c_cc_17;
  @ffi.Int8()
  int c_cc_18;
  @ffi.Int8()
  int c_cc_19;
  @ffi.Int8()
  int c_cc_20;
  @ffi.Int8()
  int c_cc_21;
  @ffi.Int8()
  int c_cc_22;
  @ffi.Int8()
  int c_cc_23;
  @ffi.Int8()
  int c_cc_24;
  @ffi.Int8()
  int c_cc_25;
  @ffi.Int8()
  int c_cc_26;
  @ffi.Int8()
  int c_cc_27;
  @ffi.Int8()
  int c_cc_28;
  @ffi.Int8()
  int c_cc_29;
  @ffi.Int8()
  int c_cc_30;
  @ffi.Int8()
  int c_cc_31;

  @ffi.Uint64()
  int c_ispeed; /* input speed */
  @ffi.Uint64()
  int c_ospeed; /* output speed */
}

const int _DIRENT_H = 1;

const int _FEATURES_H = 1;

const int _DEFAULT_SOURCE = 1;

const int __USE_ISOC11 = 1;

const int __USE_ISOC99 = 1;

const int __USE_ISOC95 = 1;

const int _POSIX_SOURCE = 1;

const int _POSIX_C_SOURCE = 200809;

const int __USE_POSIX = 1;

const int __USE_POSIX2 = 1;

const int __USE_POSIX199309 = 1;

const int __USE_POSIX199506 = 1;

const int __USE_XOPEN2K = 1;

const int __USE_XOPEN2K8 = 1;

const int _ATFILE_SOURCE = 1;

const int __USE_MISC = 1;

const int __USE_ATFILE = 1;

const int __USE_FORTIFY_LEVEL = 0;

const int __GLIBC_USE_DEPRECATED_GETS = 0;

const int _STDC_PREDEF_H = 1;

const int __STDC_IEC_559__ = 1;

const int __STDC_IEC_559_COMPLEX__ = 1;

const int __STDC_ISO_10646__ = 201706;

const int __STDC_NO_THREADS__ = 1;

const int __GNU_LIBRARY__ = 6;

const int __GLIBC__ = 2;

const int __GLIBC_MINOR__ = 27;

const int _SYS_CDEFS_H = 1;

const int __glibc_c99_flexarr_available = 1;

const int __WORDSIZE = 64;

const int __WORDSIZE_TIME64_COMPAT32 = 1;

const int __SYSCALL_WORDSIZE = 64;

const int __HAVE_GENERIC_SELECTION = 0;

const int _BITS_TYPES_H = 1;

const int _BITS_TYPESIZES_H = 1;

const int __OFF_T_MATCHES_OFF64_T = 1;

const int __INO_T_MATCHES_INO64_T = 1;

const int __RLIM_T_MATCHES_RLIM64_T = 1;

const int __FD_SETSIZE = 1024;

const int _DIRENT_MATCHES_DIRENT64 = 1;

const int DT_UNKNOWN = 0;

const int DT_FIFO = 1;

const int DT_CHR = 2;

const int DT_DIR = 4;

const int DT_BLK = 6;

const int DT_REG = 8;

const int DT_LNK = 10;

const int DT_SOCK = 12;

const int DT_WHT = 14;

const int _BITS_POSIX1_LIM_H = 1;

const int _POSIX_AIO_LISTIO_MAX = 2;

const int _POSIX_AIO_MAX = 1;

const int _POSIX_ARG_MAX = 4096;

const int _POSIX_CHILD_MAX = 25;

const int _POSIX_DELAYTIMER_MAX = 32;

const int _POSIX_HOST_NAME_MAX = 255;

const int _POSIX_LINK_MAX = 8;

const int _POSIX_LOGIN_NAME_MAX = 9;

const int _POSIX_MAX_CANON = 255;

const int _POSIX_MAX_INPUT = 255;

const int _POSIX_MQ_OPEN_MAX = 8;

const int _POSIX_MQ_PRIO_MAX = 32;

const int _POSIX_NAME_MAX = 14;

const int _POSIX_NGROUPS_MAX = 8;

const int _POSIX_OPEN_MAX = 20;

const int _POSIX_PATH_MAX = 256;

const int _POSIX_PIPE_BUF = 512;

const int _POSIX_RE_DUP_MAX = 255;

const int _POSIX_RTSIG_MAX = 8;

const int _POSIX_SEM_NSEMS_MAX = 256;

const int _POSIX_SEM_VALUE_MAX = 32767;

const int _POSIX_SIGQUEUE_MAX = 32;

const int _POSIX_SSIZE_MAX = 32767;

const int _POSIX_STREAM_MAX = 8;

const int _POSIX_SYMLINK_MAX = 255;

const int _POSIX_SYMLOOP_MAX = 8;

const int _POSIX_TIMER_MAX = 32;

const int _POSIX_TTY_NAME_MAX = 9;

const int _POSIX_TZNAME_MAX = 6;

const int _POSIX_CLOCKRES_MIN = 20000000;

const int NGROUPS_MAX = 65536;

const int MAX_CANON = 255;

const int MAX_INPUT = 255;

const int NAME_MAX = 255;

const int PATH_MAX = 4096;

const int PIPE_BUF = 4096;

const int XATTR_NAME_MAX = 255;

const int XATTR_SIZE_MAX = 65536;

const int XATTR_LIST_MAX = 65536;

const int RTSIG_MAX = 32;

const int _POSIX_THREAD_KEYS_MAX = 128;

const int PTHREAD_KEYS_MAX = 1024;

const int _POSIX_THREAD_DESTRUCTOR_ITERATIONS = 4;

const int PTHREAD_DESTRUCTOR_ITERATIONS = 4;

const int _POSIX_THREAD_THREADS_MAX = 64;

const int AIO_PRIO_DELTA_MAX = 20;

const int PTHREAD_STACK_MIN = 16384;

const int DELAYTIMER_MAX = 2147483647;

const int TTY_NAME_MAX = 32;

const int LOGIN_NAME_MAX = 256;

const int HOST_NAME_MAX = 64;

const int MQ_PRIO_MAX = 32768;

const int SEM_VALUE_MAX = 2147483647;

const int MAXNAMLEN = 255;

const int _FCNTL_H = 1;

const int __O_LARGEFILE = 0;

const int F_GETLK64 = 5;

const int F_SETLK64 = 6;

const int F_SETLKW64 = 7;

const int O_ACCMODE = 3;

const int O_RDONLY = 0;

const int O_WRONLY = 1;

const int O_RDWR = 2;

const int O_CREAT = 64;

const int O_EXCL = 128;

const int O_NOCTTY = 256;

const int O_TRUNC = 512;

const int O_APPEND = 1024;

const int O_NONBLOCK = 2048;

const int O_NDELAY = 2048;

const int O_SYNC = 1052672;

const int O_FSYNC = 1052672;

const int O_ASYNC = 8192;

const int __O_DIRECTORY = 65536;

const int __O_NOFOLLOW = 131072;

const int __O_CLOEXEC = 524288;

const int __O_DIRECT = 16384;

const int __O_NOATIME = 262144;

const int __O_PATH = 2097152;

const int __O_DSYNC = 4096;

const int __O_TMPFILE = 4259840;

const int F_GETLK = 5;

const int F_SETLK = 6;

const int F_SETLKW = 7;

const int O_DIRECTORY = 65536;

const int O_NOFOLLOW = 131072;

const int O_CLOEXEC = 524288;

const int O_DSYNC = 4096;

const int O_RSYNC = 1052672;

const int F_DUPFD = 0;

const int F_GETFD = 1;

const int F_SETFD = 2;

const int F_GETFL = 3;

const int F_SETFL = 4;

const int __F_SETOWN = 8;

const int __F_GETOWN = 9;

const int F_SETOWN = 8;

const int F_GETOWN = 9;

const int __F_SETSIG = 10;

const int __F_GETSIG = 11;

const int __F_SETOWN_EX = 15;

const int __F_GETOWN_EX = 16;

const int F_DUPFD_CLOEXEC = 1030;

const int FD_CLOEXEC = 1;

const int F_RDLCK = 0;

const int F_WRLCK = 1;

const int F_UNLCK = 2;

const int F_EXLCK = 4;

const int F_SHLCK = 8;

const int LOCK_SH = 1;

const int LOCK_EX = 2;

const int LOCK_NB = 4;

const int LOCK_UN = 8;

const int FAPPEND = 1024;

const int FFSYNC = 1052672;

const int FASYNC = 8192;

const int FNONBLOCK = 2048;

const int FNDELAY = 2048;

const int __POSIX_FADV_DONTNEED = 4;

const int __POSIX_FADV_NOREUSE = 5;

const int POSIX_FADV_NORMAL = 0;

const int POSIX_FADV_RANDOM = 1;

const int POSIX_FADV_SEQUENTIAL = 2;

const int POSIX_FADV_WILLNEED = 3;

const int POSIX_FADV_DONTNEED = 4;

const int POSIX_FADV_NOREUSE = 5;

const int AT_FDCWD = -100;

const int AT_SYMLINK_NOFOLLOW = 256;

const int AT_REMOVEDIR = 512;

const int AT_SYMLINK_FOLLOW = 1024;

const int AT_EACCESS = 512;

const int __timespec_defined = 1;

const int _BITS_STAT_H = 1;

const int _STAT_VER_KERNEL = 0;

const int _STAT_VER_LINUX = 1;

const int _MKNOD_VER_LINUX = 0;

const int _STAT_VER = 1;

const int __S_IFMT = 61440;

const int __S_IFDIR = 16384;

const int __S_IFCHR = 8192;

const int __S_IFBLK = 24576;

const int __S_IFREG = 32768;

const int __S_IFIFO = 4096;

const int __S_IFLNK = 40960;

const int __S_IFSOCK = 49152;

const int __S_ISUID = 2048;

const int __S_ISGID = 1024;

const int __S_ISVTX = 512;

const int __S_IREAD = 256;

const int __S_IWRITE = 128;

const int __S_IEXEC = 64;

const int UTIME_NOW = 1073741823;

const int UTIME_OMIT = 1073741822;

const int S_IFMT = 61440;

const int S_IFDIR = 16384;

const int S_IFCHR = 8192;

const int S_IFBLK = 24576;

const int S_IFREG = 32768;

const int S_IFIFO = 4096;

const int S_IFLNK = 40960;

const int S_IFSOCK = 49152;

const int S_ISUID = 2048;

const int S_ISGID = 1024;

const int S_ISVTX = 512;

const int S_IRUSR = 256;

const int S_IWUSR = 128;

const int S_IXUSR = 64;

const int S_IRWXU = 448;

const int S_IRGRP = 32;

const int S_IWGRP = 16;

const int S_IXGRP = 8;

const int S_IRWXG = 56;

const int S_IROTH = 4;

const int S_IWOTH = 2;

const int S_IXOTH = 1;

const int S_IRWXO = 7;

const int R_OK = 4;

const int W_OK = 2;

const int X_OK = 1;

const int F_OK = 0;

const int SEEK_SET = 0;

const int SEEK_CUR = 1;

const int SEEK_END = 2;

const int F_ULOCK = 0;

const int F_LOCK = 1;

const int F_TLOCK = 2;

const int F_TEST = 3;

const int _BITS_SIGNUM_H = 1;

const int _BITS_SIGNUM_GENERIC_H = 1;

const int SIGINT = 2;

const int SIGILL = 4;

const int SIGABRT = 6;

const int SIGFPE = 8;

const int SIGSEGV = 11;

const int SIGTERM = 15;

const int SIGHUP = 1;

const int SIGQUIT = 3;

const int SIGTRAP = 5;

const int SIGKILL = 9;

const int SIGBUS = 7;

const int SIGSYS = 31;

const int SIGPIPE = 13;

const int SIGALRM = 14;

const int SIGURG = 23;

const int SIGSTOP = 19;

const int SIGTSTP = 20;

const int SIGCONT = 18;

const int SIGCHLD = 17;

const int SIGTTIN = 21;

const int SIGTTOU = 22;

const int SIGPOLL = 29;

const int SIGXCPU = 24;

const int SIGXFSZ = 25;

const int SIGVTALRM = 26;

const int SIGPROF = 27;

const int SIGUSR1 = 10;

const int SIGUSR2 = 12;

const int SIGWINCH = 28;

const int SIGIO = 29;

const int SIGIOT = 6;

const int SIGCLD = 17;

const int __SIGRTMIN = 32;

const int __SIGRTMAX = 64;

const int _NSIG = 65;

const int SIGSTKFLT = 16;

const int SIGPWR = 30;

const int __sig_atomic_t_defined = 1;

const int __sigset_t_defined = 1;

const int _SIGSET_NWORDS = 16;

const int __siginfo_t_defined = 1;

const int __SI_MAX_SIZE = 128;

const int __SI_PAD_SIZE = 28;

const int _BITS_SIGINFO_ARCH_H = 1;

const int __SI_ERRNO_THEN_CODE = 1;

const int __SI_HAVE_SIGSYS = 1;

const int _BITS_SIGINFO_CONSTS_H = 1;

const int __SI_ASYNCIO_AFTER_SIGIO = 1;

const int SI_ASYNCNL = -60;

const int SI_TKILL = -6;

const int SI_SIGIO = -5;

const int SI_ASYNCIO = -4;

const int SI_MESGQ = -3;

const int SI_TIMER = -2;

const int SI_QUEUE = -1;

const int SI_USER = 0;

const int SI_KERNEL = 128;

const int ILL_ILLOPC = 1;

const int ILL_ILLOPN = 2;

const int ILL_ILLADR = 3;

const int ILL_ILLTRP = 4;

const int ILL_PRVOPC = 5;

const int ILL_PRVREG = 6;

const int ILL_COPROC = 7;

const int ILL_BADSTK = 8;

const int FPE_INTDIV = 1;

const int FPE_INTOVF = 2;

const int FPE_FLTDIV = 3;

const int FPE_FLTOVF = 4;

const int FPE_FLTUND = 5;

const int FPE_FLTRES = 6;

const int FPE_FLTINV = 7;

const int FPE_FLTSUB = 8;

const int SEGV_MAPERR = 1;

const int SEGV_ACCERR = 2;

const int SEGV_BNDERR = 3;

const int SEGV_PKUERR = 4;

const int BUS_ADRALN = 1;

const int BUS_ADRERR = 2;

const int BUS_OBJERR = 3;

const int BUS_MCEERR_AR = 4;

const int BUS_MCEERR_AO = 5;

const int CLD_EXITED = 1;

const int CLD_KILLED = 2;

const int CLD_DUMPED = 3;

const int CLD_TRAPPED = 4;

const int CLD_STOPPED = 5;

const int CLD_CONTINUED = 6;

const int POLL_IN = 1;

const int POLL_OUT = 2;

const int POLL_MSG = 3;

const int POLL_ERR = 4;

const int POLL_PRI = 5;

const int POLL_HUP = 6;

const int __sigevent_t_defined = 1;

const int __SIGEV_MAX_SIZE = 64;

const int __SIGEV_PAD_SIZE = 12;

const int __have_pthread_attr_t = 1;

const int _BITS_SIGEVENT_CONSTS_H = 1;

const int SIGEV_SIGNAL = 0;

const int SIGEV_NONE = 1;

const int SIGEV_THREAD = 2;

const int SIGEV_THREAD_ID = 4;

const int NSIG = 65;

const int SA_NOCLDSTOP = 1;

const int SA_NOCLDWAIT = 2;

const int SA_SIGINFO = 4;

const int SA_ONSTACK = 134217728;

const int SA_RESTART = 268435456;

const int SA_NODEFER = 1073741824;

const int SA_RESETHAND = 2147483648;

const int SA_INTERRUPT = 536870912;

const int SA_NOMASK = 1073741824;

const int SA_ONESHOT = 2147483648;

const int SA_STACK = 134217728;

const int SIG_BLOCK = 0;

const int SIG_UNBLOCK = 1;

const int SIG_SETMASK = 2;

const int _BITS_SIGCONTEXT_H = 1;

const int FP_XSTATE_MAGIC1 = 1179670611;

const int FP_XSTATE_MAGIC2 = 1179670597;

const int FP_XSTATE_MAGIC2_SIZE = 4;

const int __stack_t_defined = 1;

const int _SYS_UCONTEXT_H = 1;

const int __NGREG = 23;

const int NGREG = 23;

const int _BITS_SIGSTACK_H = 1;

const int MINSIGSTKSZ = 2048;

const int SIGSTKSZ = 8192;

const int _BITS_SS_FLAGS_H = 1;

const int SS_ONSTACK = 1;

const int SS_DISABLE = 2;

const int __sigstack_defined = 1;

const int _BITS_PTHREADTYPES_COMMON_H = 1;

const int _THREAD_SHARED_TYPES_H = 1;

const int _BITS_PTHREADTYPES_ARCH_H = 1;

const int __SIZEOF_PTHREAD_MUTEX_T = 40;

const int __SIZEOF_PTHREAD_ATTR_T = 56;

const int __SIZEOF_PTHREAD_RWLOCK_T = 56;

const int __SIZEOF_PTHREAD_BARRIER_T = 32;

const int __SIZEOF_PTHREAD_MUTEXATTR_T = 4;

const int __SIZEOF_PTHREAD_COND_T = 48;

const int __SIZEOF_PTHREAD_CONDATTR_T = 4;

const int __SIZEOF_PTHREAD_RWLOCKATTR_T = 8;

const int __SIZEOF_PTHREAD_BARRIERATTR_T = 4;

const int __PTHREAD_MUTEX_LOCK_ELISION = 1;

const int __PTHREAD_MUTEX_NUSERS_AFTER_KIND = 0;

const int __PTHREAD_MUTEX_USE_UNION = 0;

const int __PTHREAD_RWLOCK_ELISION_EXTRA = 0;

const int __PTHREAD_RWLOCK_INT_FLAGS_SHARED = 1;

const int __PTHREAD_SPINS = 0;

const int __PTHREAD_MUTEX_HAVE_PREV = 1;

const int _BITS_SIGTHREAD_H = 1;

const int _STDIO_H = 1;

const int __GLIBC_USE_LIB_EXT2 = 1;

const int __GLIBC_USE_IEC_60559_BFP_EXT = 1;

const int __GLIBC_USE_IEC_60559_FUNCS_EXT = 1;

const int __GLIBC_USE_IEC_60559_TYPES_EXT = 1;

const int ____FILE_defined = 1;

const int __FILE_defined = 1;

const int _BITS_LIBIO_H = 1;

const int _BITS_G_CONFIG_H = 1;

const int ____mbstate_t_defined = 1;

const int _G_HAVE_MMAP = 1;

const int _G_HAVE_MREMAP = 1;

const int _G_IO_IO_FILE_VERSION = 131073;

const int _G_BUFSIZ = 8192;

const int _IO_BUFSIZ = 8192;

const int _IO_UNIFIED_JUMPTABLES = 1;

const int EOF = -1;

const int NULL = 0;

const int _IOS_INPUT = 1;

const int _IOS_OUTPUT = 2;

const int _IOS_ATEND = 4;

const int _IOS_APPEND = 8;

const int _IOS_TRUNC = 16;

const int _IOS_NOCREATE = 32;

const int _IOS_NOREPLACE = 64;

const int _IOS_BIN = 128;

const int _IO_MAGIC = 4222418944;

const int _OLD_STDIO_MAGIC = 4206624768;

const int _IO_MAGIC_MASK = 4294901760;

const int _IO_USER_BUF = 1;

const int _IO_UNBUFFERED = 2;

const int _IO_NO_READS = 4;

const int _IO_NO_WRITES = 8;

const int _IO_EOF_SEEN = 16;

const int _IO_ERR_SEEN = 32;

const int _IO_DELETE_DONT_CLOSE = 64;

const int _IO_LINKED = 128;

const int _IO_IN_BACKUP = 256;

const int _IO_LINE_BUF = 512;

const int _IO_TIED_PUT_GET = 1024;

const int _IO_CURRENTLY_PUTTING = 2048;

const int _IO_IS_APPENDING = 4096;

const int _IO_IS_FILEBUF = 8192;

const int _IO_BAD_SEEN = 16384;

const int _IO_USER_LOCK = 32768;

const int _IO_FLAGS2_MMAP = 1;

const int _IO_FLAGS2_NOTCANCEL = 2;

const int _IO_FLAGS2_USER_WBUF = 8;

const int _IO_SKIPWS = 1;

const int _IO_LEFT = 2;

const int _IO_RIGHT = 4;

const int _IO_INTERNAL = 8;

const int _IO_DEC = 16;

const int _IO_OCT = 32;

const int _IO_HEX = 64;

const int _IO_SHOWBASE = 128;

const int _IO_SHOWPOINT = 256;

const int _IO_UPPERCASE = 512;

const int _IO_SHOWPOS = 1024;

const int _IO_SCIENTIFIC = 2048;

const int _IO_FIXED = 4096;

const int _IO_UNITBUF = 8192;

const int _IO_STDIO = 16384;

const int _IO_DONT_CLOSE = 32768;

const int _IO_BOOLALPHA = 65536;

const int _IOFBF = 0;

const int _IOLBF = 1;

const int _IONBF = 2;

const int BUFSIZ = 8192;

const String P_tmpdir = '/tmp';

const int _BITS_STDIO_LIM_H = 1;

const int L_tmpnam = 20;

const int TMP_MAX = 238328;

const int FILENAME_MAX = 4096;

const int L_ctermid = 9;

const int FOPEN_MAX = 16;

const int _STDLIB_H = 1;

const int WNOHANG = 1;

const int WUNTRACED = 2;

const int WSTOPPED = 2;

const int WEXITED = 4;

const int WCONTINUED = 8;

const int WNOWAIT = 16777216;

const int __WNOTHREAD = 536870912;

const int __WALL = 1073741824;

const int __WCLONE = 2147483648;

const int __ENUM_IDTYPE_T = 1;

const int __W_CONTINUED = 65535;

const int __WCOREFLAG = 128;

const int __HAVE_FLOAT128 = 0;

const int __HAVE_DISTINCT_FLOAT128 = 0;

const int __HAVE_FLOAT64X = 1;

const int __HAVE_FLOAT64X_LONG_DOUBLE = 1;

const int __HAVE_FLOAT16 = 0;

const int __HAVE_FLOAT32 = 1;

const int __HAVE_FLOAT64 = 1;

const int __HAVE_FLOAT32X = 1;

const int __HAVE_FLOAT128X = 0;

const int __HAVE_DISTINCT_FLOAT16 = 0;

const int __HAVE_DISTINCT_FLOAT32 = 0;

const int __HAVE_DISTINCT_FLOAT64 = 0;

const int __HAVE_DISTINCT_FLOAT32X = 0;

const int __HAVE_DISTINCT_FLOAT64X = 0;

const int __HAVE_DISTINCT_FLOAT128X = 0;

const int __HAVE_FLOATN_NOT_TYPEDEF = 0;

const int __ldiv_t_defined = 1;

const int __lldiv_t_defined = 1;

const int RAND_MAX = 2147483647;

const int EXIT_FAILURE = 1;

const int EXIT_SUCCESS = 0;

const int _SYS_TYPES_H = 1;

const int __clock_t_defined = 1;

const int __clockid_t_defined = 1;

const int __time_t_defined = 1;

const int __timer_t_defined = 1;

const int _BITS_STDINT_INTN_H = 1;

const int __BIT_TYPES_DEFINED__ = 1;

const int _ENDIAN_H = 1;

const int __LITTLE_ENDIAN = 1234;

const int __BIG_ENDIAN = 4321;

const int __PDP_ENDIAN = 3412;

const int __BYTE_ORDER = 1234;

const int __FLOAT_WORD_ORDER = 1234;

const int LITTLE_ENDIAN = 1234;

const int BIG_ENDIAN = 4321;

const int PDP_ENDIAN = 3412;

const int BYTE_ORDER = 1234;

const int _BITS_BYTESWAP_H = 1;

const int _BITS_UINTN_IDENTITY_H = 1;

const int _SYS_SELECT_H = 1;

const String __FD_ZERO_STOS = 'stosq';

const int __timeval_defined = 1;

const int __NFDBITS = 64;

const int FD_SETSIZE = 1024;

const int NFDBITS = 64;

const int _SYS_SYSMACROS_H = 1;

const int _BITS_SYSMACROS_H = 1;

const int _ALLOCA_H = 1;

const int _STRING_H = 1;

const int _BITS_TYPES_LOCALE_T_H = 1;

const int _BITS_TYPES___LOCALE_T_H = 1;

const int _STRINGS_H = 1;

const int _SYS_IOCTL_H = 1;

const int _IOC_NRBITS = 8;

const int _IOC_TYPEBITS = 8;

const int _IOC_SIZEBITS = 14;

const int _IOC_DIRBITS = 2;

const int _IOC_NRMASK = 255;

const int _IOC_TYPEMASK = 255;

const int _IOC_SIZEMASK = 16383;

const int _IOC_DIRMASK = 3;

const int _IOC_NRSHIFT = 0;

const int _IOC_TYPESHIFT = 8;

const int _IOC_SIZESHIFT = 16;

const int _IOC_DIRSHIFT = 30;

const int _IOC_NONE = 0;

const int _IOC_WRITE = 1;

const int _IOC_READ = 2;

const int IOC_IN = 1073741824;

const int IOC_OUT = 2147483648;

const int IOC_INOUT = 3221225472;

const int IOCSIZE_MASK = 1073676288;

const int IOCSIZE_SHIFT = 16;

const int TCGETS = 21505;

const int TCSETS = 21506;

const int TCSETSW = 21507;

const int TCSETSF = 21508;

const int TCGETA = 21509;

const int TCSETA = 21510;

const int TCSETAW = 21511;

const int TCSETAF = 21512;

const int TCSBRK = 21513;

const int TCXONC = 21514;

const int TCFLSH = 21515;

const int TIOCEXCL = 21516;

const int TIOCNXCL = 21517;

const int TIOCSCTTY = 21518;

const int TIOCGPGRP = 21519;

const int TIOCSPGRP = 21520;

const int TIOCOUTQ = 21521;

const int TIOCSTI = 21522;

const int TIOCGWINSZ = 21523;

const int TIOCSWINSZ = 21524;

const int TIOCMGET = 21525;

const int TIOCMBIS = 21526;

const int TIOCMBIC = 21527;

const int TIOCMSET = 21528;

const int TIOCGSOFTCAR = 21529;

const int TIOCSSOFTCAR = 21530;

const int FIONREAD = 21531;

const int TIOCINQ = 21531;

const int TIOCLINUX = 21532;

const int TIOCCONS = 21533;

const int TIOCGSERIAL = 21534;

const int TIOCSSERIAL = 21535;

const int TIOCPKT = 21536;

const int FIONBIO = 21537;

const int TIOCNOTTY = 21538;

const int TIOCSETD = 21539;

const int TIOCGETD = 21540;

const int TCSBRKP = 21541;

const int TIOCSBRK = 21543;

const int TIOCCBRK = 21544;

const int TIOCGSID = 21545;

const int TIOCGRS485 = 21550;

const int TIOCSRS485 = 21551;

const int TIOCGPTN = 2147767344;

const int TIOCSPTLCK = 1074025521;

const int TIOCGDEV = 2147767346;

const int TCGETX = 21554;

const int TCSETX = 21555;

const int TCSETXF = 21556;

const int TCSETXW = 21557;

const int TIOCSIG = 1074025526;

const int TIOCVHANGUP = 21559;

const int TIOCGPKT = 2147767352;

const int TIOCGPTLCK = 2147767353;

const int TIOCGEXCL = 2147767360;

const int TIOCGPTPEER = 21569;

const int FIONCLEX = 21584;

const int FIOCLEX = 21585;

const int FIOASYNC = 21586;

const int TIOCSERCONFIG = 21587;

const int TIOCSERGWILD = 21588;

const int TIOCSERSWILD = 21589;

const int TIOCGLCKTRMIOS = 21590;

const int TIOCSLCKTRMIOS = 21591;

const int TIOCSERGSTRUCT = 21592;

const int TIOCSERGETLSR = 21593;

const int TIOCSERGETMULTI = 21594;

const int TIOCSERSETMULTI = 21595;

const int TIOCMIWAIT = 21596;

const int TIOCGICOUNT = 21597;

const int FIOQSIZE = 21600;

const int TIOCPKT_DATA = 0;

const int TIOCPKT_FLUSHREAD = 1;

const int TIOCPKT_FLUSHWRITE = 2;

const int TIOCPKT_STOP = 4;

const int TIOCPKT_START = 8;

const int TIOCPKT_NOSTOP = 16;

const int TIOCPKT_DOSTOP = 32;

const int TIOCPKT_IOCTL = 64;

const int TIOCSER_TEMT = 1;

const int SIOCADDRT = 35083;

const int SIOCDELRT = 35084;

const int SIOCRTMSG = 35085;

const int SIOCGIFNAME = 35088;

const int SIOCSIFLINK = 35089;

const int SIOCGIFCONF = 35090;

const int SIOCGIFFLAGS = 35091;

const int SIOCSIFFLAGS = 35092;

const int SIOCGIFADDR = 35093;

const int SIOCSIFADDR = 35094;

const int SIOCGIFDSTADDR = 35095;

const int SIOCSIFDSTADDR = 35096;

const int SIOCGIFBRDADDR = 35097;

const int SIOCSIFBRDADDR = 35098;

const int SIOCGIFNETMASK = 35099;

const int SIOCSIFNETMASK = 35100;

const int SIOCGIFMETRIC = 35101;

const int SIOCSIFMETRIC = 35102;

const int SIOCGIFMEM = 35103;

const int SIOCSIFMEM = 35104;

const int SIOCGIFMTU = 35105;

const int SIOCSIFMTU = 35106;

const int SIOCSIFNAME = 35107;

const int SIOCSIFHWADDR = 35108;

const int SIOCGIFENCAP = 35109;

const int SIOCSIFENCAP = 35110;

const int SIOCGIFHWADDR = 35111;

const int SIOCGIFSLAVE = 35113;

const int SIOCSIFSLAVE = 35120;

const int SIOCADDMULTI = 35121;

const int SIOCDELMULTI = 35122;

const int SIOCGIFINDEX = 35123;

const int SIOGIFINDEX = 35123;

const int SIOCSIFPFLAGS = 35124;

const int SIOCGIFPFLAGS = 35125;

const int SIOCDIFADDR = 35126;

const int SIOCSIFHWBROADCAST = 35127;

const int SIOCGIFCOUNT = 35128;

const int SIOCGIFBR = 35136;

const int SIOCSIFBR = 35137;

const int SIOCGIFTXQLEN = 35138;

const int SIOCSIFTXQLEN = 35139;

const int SIOCDARP = 35155;

const int SIOCGARP = 35156;

const int SIOCSARP = 35157;

const int SIOCDRARP = 35168;

const int SIOCGRARP = 35169;

const int SIOCSRARP = 35170;

const int SIOCGIFMAP = 35184;

const int SIOCSIFMAP = 35185;

const int SIOCADDDLCI = 35200;

const int SIOCDELDLCI = 35201;

const int SIOCDEVPRIVATE = 35312;

const int SIOCPROTOPRIVATE = 35296;

const int NCC = 8;

const int TIOCM_LE = 1;

const int TIOCM_DTR = 2;

const int TIOCM_RTS = 4;

const int TIOCM_ST = 8;

const int TIOCM_SR = 16;

const int TIOCM_CTS = 32;

const int TIOCM_CAR = 64;

const int TIOCM_RNG = 128;

const int TIOCM_DSR = 256;

const int TIOCM_CD = 64;

const int TIOCM_RI = 128;

const int N_TTY = 0;

const int N_SLIP = 1;

const int N_MOUSE = 2;

const int N_PPP = 3;

const int N_STRIP = 4;

const int N_AX25 = 5;

const int N_X25 = 6;

const int N_6PACK = 7;

const int N_MASC = 8;

const int N_R3964 = 9;

const int N_PROFIBUS_FDL = 10;

const int N_IRDA = 11;

const int N_SMSBLOCK = 12;

const int N_HDLC = 13;

const int N_SYNC_PPP = 14;

const int N_HCI = 15;

const int TTYDEF_IFLAG = 11554;

const int TTYDEF_OFLAG = 6149;

const int TTYDEF_LFLAG = 35355;

const int TTYDEF_CFLAG = 1440;

const int TTYDEF_SPEED = 13;

const int CEOF = 4;

const int CEOL = 0;

const int CERASE = 127;

const int CINTR = 3;

const int CSTATUS = 0;

const int CKILL = 21;

const int CMIN = 1;

const int CQUIT = 28;

const int CSUSP = 26;

const int CTIME = 0;

const int CDSUSP = 25;

const int CSTART = 17;

const int CSTOP = 19;

const int CLNEXT = 22;

const int CDISCARD = 15;

const int CWERASE = 23;

const int CREPRINT = 18;

const int CEOT = 4;

const int CBRK = 0;

const int CRPRNT = 18;

const int CFLUSH = 15;

const int _SYS_WAIT_H = 1;

const int WCOREFLAG = 128;

const int WAIT_ANY = -1;

const int WAIT_MYPGRP = 0;

const int _TERMIOS_H = 1;

const int NCCS = 32;

const int _HAVE_STRUCT_TERMIOS_C_ISPEED = 1;

const int _HAVE_STRUCT_TERMIOS_C_OSPEED = 1;

const int VINTR = 0;

const int VQUIT = 1;

const int VERASE = 2;

const int VKILL = 3;

const int VEOF = 4;

const int VTIME = 5;

const int VMIN = 6;

const int VSWTC = 7;

const int VSTART = 8;

const int VSTOP = 9;

const int VSUSP = 10;

const int VEOL = 11;

const int VREPRINT = 12;

const int VDISCARD = 13;

const int VWERASE = 14;

const int VLNEXT = 15;

const int VEOL2 = 16;

const int IGNBRK = 1;

const int BRKINT = 2;

const int IGNPAR = 4;

const int PARMRK = 8;

const int INPCK = 16;

const int ISTRIP = 32;

const int INLCR = 64;

const int IGNCR = 128;

const int ICRNL = 256;

const int IUCLC = 512;

const int IXON = 1024;

const int IXANY = 2048;

const int IXOFF = 4096;

const int IMAXBEL = 8192;

const int IUTF8 = 16384;

const int OPOST = 1;

const int OLCUC = 2;

const int ONLCR = 4;

const int OCRNL = 8;

const int ONOCR = 16;

const int ONLRET = 32;

const int OFILL = 64;

const int OFDEL = 128;

const int NLDLY = 256;

const int NL0 = 0;

const int NL1 = 256;

const int CRDLY = 1536;

const int CR0 = 0;

const int CR1 = 512;

const int CR2 = 1024;

const int CR3 = 1536;

const int TABDLY = 6144;

const int TAB0 = 0;

const int TAB1 = 2048;

const int TAB2 = 4096;

const int TAB3 = 6144;

const int BSDLY = 8192;

const int BS0 = 0;

const int BS1 = 8192;

const int FFDLY = 32768;

const int FF0 = 0;

const int FF1 = 32768;

const int VTDLY = 16384;

const int VT0 = 0;

const int VT1 = 16384;

const int XTABS = 6144;

const int CBAUD = 4111;

const int B0 = 0;

const int B50 = 1;

const int B75 = 2;

const int B110 = 3;

const int B134 = 4;

const int B150 = 5;

const int B200 = 6;

const int B300 = 7;

const int B600 = 8;

const int B1200 = 9;

const int B1800 = 10;

const int B2400 = 11;

const int B4800 = 12;

const int B9600 = 13;

const int B19200 = 14;

const int B38400 = 15;

const int EXTA = 14;

const int EXTB = 15;

const int CSIZE = 48;

const int CS5 = 0;

const int CS6 = 16;

const int CS7 = 32;

const int CS8 = 48;

const int CSTOPB = 64;

const int CREAD = 128;

const int PARENB = 256;

const int PARODD = 512;

const int HUPCL = 1024;

const int CLOCAL = 2048;

const int CBAUDEX = 4096;

const int B57600 = 4097;

const int B115200 = 4098;

const int B230400 = 4099;

const int B460800 = 4100;

const int B500000 = 4101;

const int B576000 = 4102;

const int B921600 = 4103;

const int B1000000 = 4104;

const int B1152000 = 4105;

const int B1500000 = 4106;

const int B2000000 = 4107;

const int B2500000 = 4108;

const int B3000000 = 4109;

const int B3500000 = 4110;

const int B4000000 = 4111;

const int __MAX_BAUD = 4111;

const int CIBAUD = 269418496;

const int CMSPAR = 1073741824;

const int CRTSCTS = 2147483648;

const int ISIG = 1;

const int ICANON = 2;

const int XCASE = 4;

const int ECHO = 8;

const int ECHOE = 16;

const int ECHOK = 32;

const int ECHONL = 64;

const int NOFLSH = 128;

const int TOSTOP = 256;

const int ECHOCTL = 512;

const int ECHOPRT = 1024;

const int ECHOKE = 2048;

const int FLUSHO = 4096;

const int PENDIN = 16384;

const int IEXTEN = 32768;

const int EXTPROC = 65536;

const int TCOOFF = 0;

const int TCOON = 1;

const int TCIOFF = 2;

const int TCION = 3;

const int TCIFLUSH = 0;

const int TCOFLUSH = 1;

const int TCIOFLUSH = 2;

const int TCSANOW = 0;

const int TCSADRAIN = 1;

const int TCSAFLUSH = 2;

const int _UNISTD_H = 1;

const int _POSIX_VERSION = 200809;

const int __POSIX2_THIS_VERSION = 200809;

const int _POSIX2_VERSION = 200809;

const int _POSIX2_C_VERSION = 200809;

const int _POSIX2_C_BIND = 200809;

const int _POSIX2_C_DEV = 200809;

const int _POSIX2_SW_DEV = 200809;

const int _POSIX2_LOCALEDEF = 200809;

const int _XOPEN_VERSION = 700;

const int _XOPEN_XCU_VERSION = 4;

const int _XOPEN_XPG2 = 1;

const int _XOPEN_XPG3 = 1;

const int _XOPEN_XPG4 = 1;

const int _XOPEN_UNIX = 1;

const int _XOPEN_CRYPT = 1;

const int _XOPEN_ENH_I18N = 1;

const int _XOPEN_LEGACY = 1;

const int _BITS_POSIX_OPT_H = 1;

const int _POSIX_JOB_CONTROL = 1;

const int _POSIX_SAVED_IDS = 1;

const int _POSIX_PRIORITY_SCHEDULING = 200809;

const int _POSIX_SYNCHRONIZED_IO = 200809;

const int _POSIX_FSYNC = 200809;

const int _POSIX_MAPPED_FILES = 200809;

const int _POSIX_MEMLOCK = 200809;

const int _POSIX_MEMLOCK_RANGE = 200809;

const int _POSIX_MEMORY_PROTECTION = 200809;

const int _POSIX_CHOWN_RESTRICTED = 0;

const int _POSIX_VDISABLE = 0;

const int _POSIX_NO_TRUNC = 1;

const int _XOPEN_REALTIME = 1;

const int _XOPEN_REALTIME_THREADS = 1;

const int _XOPEN_SHM = 1;

const int _POSIX_THREADS = 200809;

const int _POSIX_REENTRANT_FUNCTIONS = 1;

const int _POSIX_THREAD_SAFE_FUNCTIONS = 200809;

const int _POSIX_THREAD_PRIORITY_SCHEDULING = 200809;

const int _POSIX_THREAD_ATTR_STACKSIZE = 200809;

const int _POSIX_THREAD_ATTR_STACKADDR = 200809;

const int _POSIX_THREAD_PRIO_INHERIT = 200809;

const int _POSIX_THREAD_PRIO_PROTECT = 200809;

const int _POSIX_THREAD_ROBUST_PRIO_INHERIT = 200809;

const int _POSIX_THREAD_ROBUST_PRIO_PROTECT = -1;

const int _POSIX_SEMAPHORES = 200809;

const int _POSIX_REALTIME_SIGNALS = 200809;

const int _POSIX_ASYNCHRONOUS_IO = 200809;

const int _POSIX_ASYNC_IO = 1;

const int _LFS_ASYNCHRONOUS_IO = 1;

const int _POSIX_PRIORITIZED_IO = 200809;

const int _LFS64_ASYNCHRONOUS_IO = 1;

const int _LFS_LARGEFILE = 1;

const int _LFS64_LARGEFILE = 1;

const int _LFS64_STDIO = 1;

const int _POSIX_SHARED_MEMORY_OBJECTS = 200809;

const int _POSIX_CPUTIME = 0;

const int _POSIX_THREAD_CPUTIME = 0;

const int _POSIX_REGEXP = 1;

const int _POSIX_READER_WRITER_LOCKS = 200809;

const int _POSIX_SHELL = 1;

const int _POSIX_TIMEOUTS = 200809;

const int _POSIX_SPIN_LOCKS = 200809;

const int _POSIX_SPAWN = 200809;

const int _POSIX_TIMERS = 200809;

const int _POSIX_BARRIERS = 200809;

const int _POSIX_MESSAGE_PASSING = 200809;

const int _POSIX_THREAD_PROCESS_SHARED = 200809;

const int _POSIX_MONOTONIC_CLOCK = 0;

const int _POSIX_CLOCK_SELECTION = 200809;

const int _POSIX_ADVISORY_INFO = 200809;

const int _POSIX_IPV6 = 200809;

const int _POSIX_RAW_SOCKETS = 200809;

const int _POSIX2_CHAR_TERM = 200809;

const int _POSIX_SPORADIC_SERVER = -1;

const int _POSIX_THREAD_SPORADIC_SERVER = -1;

const int _POSIX_TRACE = -1;

const int _POSIX_TRACE_EVENT_FILTER = -1;

const int _POSIX_TRACE_INHERIT = -1;

const int _POSIX_TRACE_LOG = -1;

const int _POSIX_TYPED_MEMORY_OBJECTS = -1;

const int _POSIX_V7_LPBIG_OFFBIG = -1;

const int _POSIX_V6_LPBIG_OFFBIG = -1;

const int _XBS5_LPBIG_OFFBIG = -1;

const int _POSIX_V7_LP64_OFF64 = 1;

const int _POSIX_V6_LP64_OFF64 = 1;

const int _XBS5_LP64_OFF64 = 1;

const String __ILP32_OFF32_CFLAGS = '-m32';

const String __ILP32_OFF32_LDFLAGS = '-m32';

const String __ILP32_OFFBIG_CFLAGS =
    '-m32 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64';

const String __ILP32_OFFBIG_LDFLAGS = '-m32';

const String __LP64_OFF64_CFLAGS = '-m64';

const String __LP64_OFF64_LDFLAGS = '-m64';

const int STDIN_FILENO = 0;

const int STDOUT_FILENO = 1;

const int STDERR_FILENO = 2;

const int L_SET = 0;

const int L_INCR = 1;

const int L_XTND = 2;

const int _PC_LINK_MAX = 0;

const int _PC_MAX_CANON = 1;

const int _PC_MAX_INPUT = 2;

const int _PC_NAME_MAX = 3;

const int _PC_PATH_MAX = 4;

const int _PC_PIPE_BUF = 5;

const int _PC_CHOWN_RESTRICTED = 6;

const int _PC_NO_TRUNC = 7;

const int _PC_VDISABLE = 8;

const int _PC_SYNC_IO = 9;

const int _PC_ASYNC_IO = 10;

const int _PC_PRIO_IO = 11;

const int _PC_SOCK_MAXBUF = 12;

const int _PC_FILESIZEBITS = 13;

const int _PC_REC_INCR_XFER_SIZE = 14;

const int _PC_REC_MAX_XFER_SIZE = 15;

const int _PC_REC_MIN_XFER_SIZE = 16;

const int _PC_REC_XFER_ALIGN = 17;

const int _PC_ALLOC_SIZE_MIN = 18;

const int _PC_SYMLINK_MAX = 19;

const int _PC_2_SYMLINKS = 20;

const int _SC_ARG_MAX = 0;

const int _SC_CHILD_MAX = 1;

const int _SC_CLK_TCK = 2;

const int _SC_NGROUPS_MAX = 3;

const int _SC_OPEN_MAX = 4;

const int _SC_STREAM_MAX = 5;

const int _SC_TZNAME_MAX = 6;

const int _SC_JOB_CONTROL = 7;

const int _SC_SAVED_IDS = 8;

const int _SC_REALTIME_SIGNALS = 9;

const int _SC_PRIORITY_SCHEDULING = 10;

const int _SC_TIMERS = 11;

const int _SC_ASYNCHRONOUS_IO = 12;

const int _SC_PRIORITIZED_IO = 13;

const int _SC_SYNCHRONIZED_IO = 14;

const int _SC_FSYNC = 15;

const int _SC_MAPPED_FILES = 16;

const int _SC_MEMLOCK = 17;

const int _SC_MEMLOCK_RANGE = 18;

const int _SC_MEMORY_PROTECTION = 19;

const int _SC_MESSAGE_PASSING = 20;

const int _SC_SEMAPHORES = 21;

const int _SC_SHARED_MEMORY_OBJECTS = 22;

const int _SC_AIO_LISTIO_MAX = 23;

const int _SC_AIO_MAX = 24;

const int _SC_AIO_PRIO_DELTA_MAX = 25;

const int _SC_DELAYTIMER_MAX = 26;

const int _SC_MQ_OPEN_MAX = 27;

const int _SC_MQ_PRIO_MAX = 28;

const int _SC_VERSION = 29;

const int _SC_PAGESIZE = 30;

const int _SC_PAGE_SIZE = 30;

const int _SC_RTSIG_MAX = 31;

const int _SC_SEM_NSEMS_MAX = 32;

const int _SC_SEM_VALUE_MAX = 33;

const int _SC_SIGQUEUE_MAX = 34;

const int _SC_TIMER_MAX = 35;

const int _SC_BC_BASE_MAX = 36;

const int _SC_BC_DIM_MAX = 37;

const int _SC_BC_SCALE_MAX = 38;

const int _SC_BC_STRING_MAX = 39;

const int _SC_COLL_WEIGHTS_MAX = 40;

const int _SC_EQUIV_CLASS_MAX = 41;

const int _SC_EXPR_NEST_MAX = 42;

const int _SC_LINE_MAX = 43;

const int _SC_RE_DUP_MAX = 44;

const int _SC_CHARCLASS_NAME_MAX = 45;

const int _SC_2_VERSION = 46;

const int _SC_2_C_BIND = 47;

const int _SC_2_C_DEV = 48;

const int _SC_2_FORT_DEV = 49;

const int _SC_2_FORT_RUN = 50;

const int _SC_2_SW_DEV = 51;

const int _SC_2_LOCALEDEF = 52;

const int _SC_PII = 53;

const int _SC_PII_XTI = 54;

const int _SC_PII_SOCKET = 55;

const int _SC_PII_INTERNET = 56;

const int _SC_PII_OSI = 57;

const int _SC_POLL = 58;

const int _SC_SELECT = 59;

const int _SC_UIO_MAXIOV = 60;

const int _SC_IOV_MAX = 60;

const int _SC_PII_INTERNET_STREAM = 61;

const int _SC_PII_INTERNET_DGRAM = 62;

const int _SC_PII_OSI_COTS = 63;

const int _SC_PII_OSI_CLTS = 64;

const int _SC_PII_OSI_M = 65;

const int _SC_T_IOV_MAX = 66;

const int _SC_THREADS = 67;

const int _SC_THREAD_SAFE_FUNCTIONS = 68;

const int _SC_GETGR_R_SIZE_MAX = 69;

const int _SC_GETPW_R_SIZE_MAX = 70;

const int _SC_LOGIN_NAME_MAX = 71;

const int _SC_TTY_NAME_MAX = 72;

const int _SC_THREAD_DESTRUCTOR_ITERATIONS = 73;

const int _SC_THREAD_KEYS_MAX = 74;

const int _SC_THREAD_STACK_MIN = 75;

const int _SC_THREAD_THREADS_MAX = 76;

const int _SC_THREAD_ATTR_STACKADDR = 77;

const int _SC_THREAD_ATTR_STACKSIZE = 78;

const int _SC_THREAD_PRIORITY_SCHEDULING = 79;

const int _SC_THREAD_PRIO_INHERIT = 80;

const int _SC_THREAD_PRIO_PROTECT = 81;

const int _SC_THREAD_PROCESS_SHARED = 82;

const int _SC_NPROCESSORS_CONF = 83;

const int _SC_NPROCESSORS_ONLN = 84;

const int _SC_PHYS_PAGES = 85;

const int _SC_AVPHYS_PAGES = 86;

const int _SC_ATEXIT_MAX = 87;

const int _SC_PASS_MAX = 88;

const int _SC_XOPEN_VERSION = 89;

const int _SC_XOPEN_XCU_VERSION = 90;

const int _SC_XOPEN_UNIX = 91;

const int _SC_XOPEN_CRYPT = 92;

const int _SC_XOPEN_ENH_I18N = 93;

const int _SC_XOPEN_SHM = 94;

const int _SC_2_CHAR_TERM = 95;

const int _SC_2_C_VERSION = 96;

const int _SC_2_UPE = 97;

const int _SC_XOPEN_XPG2 = 98;

const int _SC_XOPEN_XPG3 = 99;

const int _SC_XOPEN_XPG4 = 100;

const int _SC_CHAR_BIT = 101;

const int _SC_CHAR_MAX = 102;

const int _SC_CHAR_MIN = 103;

const int _SC_INT_MAX = 104;

const int _SC_INT_MIN = 105;

const int _SC_LONG_BIT = 106;

const int _SC_WORD_BIT = 107;

const int _SC_MB_LEN_MAX = 108;

const int _SC_NZERO = 109;

const int _SC_SSIZE_MAX = 110;

const int _SC_SCHAR_MAX = 111;

const int _SC_SCHAR_MIN = 112;

const int _SC_SHRT_MAX = 113;

const int _SC_SHRT_MIN = 114;

const int _SC_UCHAR_MAX = 115;

const int _SC_UINT_MAX = 116;

const int _SC_ULONG_MAX = 117;

const int _SC_USHRT_MAX = 118;

const int _SC_NL_ARGMAX = 119;

const int _SC_NL_LANGMAX = 120;

const int _SC_NL_MSGMAX = 121;

const int _SC_NL_NMAX = 122;

const int _SC_NL_SETMAX = 123;

const int _SC_NL_TEXTMAX = 124;

const int _SC_XBS5_ILP32_OFF32 = 125;

const int _SC_XBS5_ILP32_OFFBIG = 126;

const int _SC_XBS5_LP64_OFF64 = 127;

const int _SC_XBS5_LPBIG_OFFBIG = 128;

const int _SC_XOPEN_LEGACY = 129;

const int _SC_XOPEN_REALTIME = 130;

const int _SC_XOPEN_REALTIME_THREADS = 131;

const int _SC_ADVISORY_INFO = 132;

const int _SC_BARRIERS = 133;

const int _SC_BASE = 134;

const int _SC_C_LANG_SUPPORT = 135;

const int _SC_C_LANG_SUPPORT_R = 136;

const int _SC_CLOCK_SELECTION = 137;

const int _SC_CPUTIME = 138;

const int _SC_THREAD_CPUTIME = 139;

const int _SC_DEVICE_IO = 140;

const int _SC_DEVICE_SPECIFIC = 141;

const int _SC_DEVICE_SPECIFIC_R = 142;

const int _SC_FD_MGMT = 143;

const int _SC_FIFO = 144;

const int _SC_PIPE = 145;

const int _SC_FILE_ATTRIBUTES = 146;

const int _SC_FILE_LOCKING = 147;

const int _SC_FILE_SYSTEM = 148;

const int _SC_MONOTONIC_CLOCK = 149;

const int _SC_MULTI_PROCESS = 150;

const int _SC_SINGLE_PROCESS = 151;

const int _SC_NETWORKING = 152;

const int _SC_READER_WRITER_LOCKS = 153;

const int _SC_SPIN_LOCKS = 154;

const int _SC_REGEXP = 155;

const int _SC_REGEX_VERSION = 156;

const int _SC_SHELL = 157;

const int _SC_SIGNALS = 158;

const int _SC_SPAWN = 159;

const int _SC_SPORADIC_SERVER = 160;

const int _SC_THREAD_SPORADIC_SERVER = 161;

const int _SC_SYSTEM_DATABASE = 162;

const int _SC_SYSTEM_DATABASE_R = 163;

const int _SC_TIMEOUTS = 164;

const int _SC_TYPED_MEMORY_OBJECTS = 165;

const int _SC_USER_GROUPS = 166;

const int _SC_USER_GROUPS_R = 167;

const int _SC_2_PBS = 168;

const int _SC_2_PBS_ACCOUNTING = 169;

const int _SC_2_PBS_LOCATE = 170;

const int _SC_2_PBS_MESSAGE = 171;

const int _SC_2_PBS_TRACK = 172;

const int _SC_SYMLOOP_MAX = 173;

const int _SC_STREAMS = 174;

const int _SC_2_PBS_CHECKPOINT = 175;

const int _SC_V6_ILP32_OFF32 = 176;

const int _SC_V6_ILP32_OFFBIG = 177;

const int _SC_V6_LP64_OFF64 = 178;

const int _SC_V6_LPBIG_OFFBIG = 179;

const int _SC_HOST_NAME_MAX = 180;

const int _SC_TRACE = 181;

const int _SC_TRACE_EVENT_FILTER = 182;

const int _SC_TRACE_INHERIT = 183;

const int _SC_TRACE_LOG = 184;

const int _SC_LEVEL1_ICACHE_SIZE = 185;

const int _SC_LEVEL1_ICACHE_ASSOC = 186;

const int _SC_LEVEL1_ICACHE_LINESIZE = 187;

const int _SC_LEVEL1_DCACHE_SIZE = 188;

const int _SC_LEVEL1_DCACHE_ASSOC = 189;

const int _SC_LEVEL1_DCACHE_LINESIZE = 190;

const int _SC_LEVEL2_CACHE_SIZE = 191;

const int _SC_LEVEL2_CACHE_ASSOC = 192;

const int _SC_LEVEL2_CACHE_LINESIZE = 193;

const int _SC_LEVEL3_CACHE_SIZE = 194;

const int _SC_LEVEL3_CACHE_ASSOC = 195;

const int _SC_LEVEL3_CACHE_LINESIZE = 196;

const int _SC_LEVEL4_CACHE_SIZE = 197;

const int _SC_LEVEL4_CACHE_ASSOC = 198;

const int _SC_LEVEL4_CACHE_LINESIZE = 199;

const int _SC_IPV6 = 235;

const int _SC_RAW_SOCKETS = 236;

const int _SC_V7_ILP32_OFF32 = 237;

const int _SC_V7_ILP32_OFFBIG = 238;

const int _SC_V7_LP64_OFF64 = 239;

const int _SC_V7_LPBIG_OFFBIG = 240;

const int _SC_SS_REPL_MAX = 241;

const int _SC_TRACE_EVENT_NAME_MAX = 242;

const int _SC_TRACE_NAME_MAX = 243;

const int _SC_TRACE_SYS_MAX = 244;

const int _SC_TRACE_USER_EVENT_MAX = 245;

const int _SC_XOPEN_STREAMS = 246;

const int _SC_THREAD_ROBUST_PRIO_INHERIT = 247;

const int _SC_THREAD_ROBUST_PRIO_PROTECT = 248;

const int _CS_PATH = 0;

const int _CS_V6_WIDTH_RESTRICTED_ENVS = 1;

const int _CS_POSIX_V6_WIDTH_RESTRICTED_ENVS = 1;

const int _CS_GNU_LIBC_VERSION = 2;

const int _CS_GNU_LIBPTHREAD_VERSION = 3;

const int _CS_V5_WIDTH_RESTRICTED_ENVS = 4;

const int _CS_POSIX_V5_WIDTH_RESTRICTED_ENVS = 4;

const int _CS_V7_WIDTH_RESTRICTED_ENVS = 5;

const int _CS_POSIX_V7_WIDTH_RESTRICTED_ENVS = 5;

const int _CS_LFS_CFLAGS = 1000;

const int _CS_LFS_LDFLAGS = 1001;

const int _CS_LFS_LIBS = 1002;

const int _CS_LFS_LINTFLAGS = 1003;

const int _CS_LFS64_CFLAGS = 1004;

const int _CS_LFS64_LDFLAGS = 1005;

const int _CS_LFS64_LIBS = 1006;

const int _CS_LFS64_LINTFLAGS = 1007;

const int _CS_XBS5_ILP32_OFF32_CFLAGS = 1100;

const int _CS_XBS5_ILP32_OFF32_LDFLAGS = 1101;

const int _CS_XBS5_ILP32_OFF32_LIBS = 1102;

const int _CS_XBS5_ILP32_OFF32_LINTFLAGS = 1103;

const int _CS_XBS5_ILP32_OFFBIG_CFLAGS = 1104;

const int _CS_XBS5_ILP32_OFFBIG_LDFLAGS = 1105;

const int _CS_XBS5_ILP32_OFFBIG_LIBS = 1106;

const int _CS_XBS5_ILP32_OFFBIG_LINTFLAGS = 1107;

const int _CS_XBS5_LP64_OFF64_CFLAGS = 1108;

const int _CS_XBS5_LP64_OFF64_LDFLAGS = 1109;

const int _CS_XBS5_LP64_OFF64_LIBS = 1110;

const int _CS_XBS5_LP64_OFF64_LINTFLAGS = 1111;

const int _CS_XBS5_LPBIG_OFFBIG_CFLAGS = 1112;

const int _CS_XBS5_LPBIG_OFFBIG_LDFLAGS = 1113;

const int _CS_XBS5_LPBIG_OFFBIG_LIBS = 1114;

const int _CS_XBS5_LPBIG_OFFBIG_LINTFLAGS = 1115;

const int _CS_POSIX_V6_ILP32_OFF32_CFLAGS = 1116;

const int _CS_POSIX_V6_ILP32_OFF32_LDFLAGS = 1117;

const int _CS_POSIX_V6_ILP32_OFF32_LIBS = 1118;

const int _CS_POSIX_V6_ILP32_OFF32_LINTFLAGS = 1119;

const int _CS_POSIX_V6_ILP32_OFFBIG_CFLAGS = 1120;

const int _CS_POSIX_V6_ILP32_OFFBIG_LDFLAGS = 1121;

const int _CS_POSIX_V6_ILP32_OFFBIG_LIBS = 1122;

const int _CS_POSIX_V6_ILP32_OFFBIG_LINTFLAGS = 1123;

const int _CS_POSIX_V6_LP64_OFF64_CFLAGS = 1124;

const int _CS_POSIX_V6_LP64_OFF64_LDFLAGS = 1125;

const int _CS_POSIX_V6_LP64_OFF64_LIBS = 1126;

const int _CS_POSIX_V6_LP64_OFF64_LINTFLAGS = 1127;

const int _CS_POSIX_V6_LPBIG_OFFBIG_CFLAGS = 1128;

const int _CS_POSIX_V6_LPBIG_OFFBIG_LDFLAGS = 1129;

const int _CS_POSIX_V6_LPBIG_OFFBIG_LIBS = 1130;

const int _CS_POSIX_V6_LPBIG_OFFBIG_LINTFLAGS = 1131;

const int _CS_POSIX_V7_ILP32_OFF32_CFLAGS = 1132;

const int _CS_POSIX_V7_ILP32_OFF32_LDFLAGS = 1133;

const int _CS_POSIX_V7_ILP32_OFF32_LIBS = 1134;

const int _CS_POSIX_V7_ILP32_OFF32_LINTFLAGS = 1135;

const int _CS_POSIX_V7_ILP32_OFFBIG_CFLAGS = 1136;

const int _CS_POSIX_V7_ILP32_OFFBIG_LDFLAGS = 1137;

const int _CS_POSIX_V7_ILP32_OFFBIG_LIBS = 1138;

const int _CS_POSIX_V7_ILP32_OFFBIG_LINTFLAGS = 1139;

const int _CS_POSIX_V7_LP64_OFF64_CFLAGS = 1140;

const int _CS_POSIX_V7_LP64_OFF64_LDFLAGS = 1141;

const int _CS_POSIX_V7_LP64_OFF64_LIBS = 1142;

const int _CS_POSIX_V7_LP64_OFF64_LINTFLAGS = 1143;

const int _CS_POSIX_V7_LPBIG_OFFBIG_CFLAGS = 1144;

const int _CS_POSIX_V7_LPBIG_OFFBIG_LDFLAGS = 1145;

const int _CS_POSIX_V7_LPBIG_OFFBIG_LIBS = 1146;

const int _CS_POSIX_V7_LPBIG_OFFBIG_LINTFLAGS = 1147;

const int _CS_V6_ENV = 1148;

const int _CS_V7_ENV = 1149;

const int _GETOPT_POSIX_H = 1;

const int _GETOPT_CORE_H = 1;

typedef _c_opendir = ffi.Pointer<__dirstream> Function(
  ffi.Pointer<ffi.Int8> __name,
);

typedef _dart_opendir = ffi.Pointer<__dirstream> Function(
  ffi.Pointer<ffi.Int8> __name,
);

typedef _c_fdopendir = ffi.Pointer<__dirstream> Function(
  ffi.Int32 __fd,
);

typedef _dart_fdopendir = ffi.Pointer<__dirstream> Function(
  int __fd,
);

typedef _c_closedir = ffi.Int32 Function(
  ffi.Pointer<__dirstream> __dirp,
);

typedef _dart_closedir = int Function(
  ffi.Pointer<__dirstream> __dirp,
);

typedef _c_readdir = ffi.Pointer<dirent> Function(
  ffi.Pointer<__dirstream> __dirp,
);

typedef _dart_readdir = ffi.Pointer<dirent> Function(
  ffi.Pointer<__dirstream> __dirp,
);

typedef _c_readdir_r = ffi.Int32 Function(
  ffi.Pointer<__dirstream> __dirp,
  ffi.Pointer<dirent> __entry,
  ffi.Pointer<ffi.Pointer<dirent>> __result,
);

typedef _dart_readdir_r = int Function(
  ffi.Pointer<__dirstream> __dirp,
  ffi.Pointer<dirent> __entry,
  ffi.Pointer<ffi.Pointer<dirent>> __result,
);

typedef _c_rewinddir = ffi.Void Function(
  ffi.Pointer<__dirstream> __dirp,
);

typedef _dart_rewinddir = void Function(
  ffi.Pointer<__dirstream> __dirp,
);

typedef _c_seekdir = ffi.Void Function(
  ffi.Pointer<__dirstream> __dirp,
  ffi.Int64 __pos,
);

typedef _dart_seekdir = void Function(
  ffi.Pointer<__dirstream> __dirp,
  int __pos,
);

typedef _c_telldir = ffi.Int64 Function(
  ffi.Pointer<__dirstream> __dirp,
);

typedef _dart_telldir = int Function(
  ffi.Pointer<__dirstream> __dirp,
);

typedef _c_dirfd = ffi.Int32 Function(
  ffi.Pointer<__dirstream> __dirp,
);

typedef _dart_dirfd = int Function(
  ffi.Pointer<__dirstream> __dirp,
);

typedef _c_alphasort = ffi.Int32 Function(
  ffi.Pointer<ffi.Pointer<dirent>> __e1,
  ffi.Pointer<ffi.Pointer<dirent>> __e2,
);

typedef _dart_alphasort = int Function(
  ffi.Pointer<ffi.Pointer<dirent>> __e1,
  ffi.Pointer<ffi.Pointer<dirent>> __e2,
);

typedef _c_getdirentries = ffi.Int64 Function(
  ffi.Int32 __fd,
  ffi.Pointer<ffi.Int8> __buf,
  ffi.Int32 __nbytes,
  ffi.Pointer<ffi.Int64> __basep,
);

typedef _dart_getdirentries = int Function(
  int __fd,
  ffi.Pointer<ffi.Int8> __buf,
  int __nbytes,
  ffi.Pointer<ffi.Int64> __basep,
);

typedef _c_fcntl = ffi.Int32 Function(
  ffi.Int32 __fd,
  ffi.Int32 __cmd,
);

typedef _dart_fcntl = int Function(
  int __fd,
  int __cmd,
);

typedef _c_open = ffi.Int32 Function(
  ffi.Pointer<ffi.Int8> __file,
  ffi.Int32 __oflag,
);

typedef _dart_open = int Function(
  ffi.Pointer<ffi.Int8> __file,
  int __oflag,
);

typedef _c_openat = ffi.Int32 Function(
  ffi.Int32 __fd,
  ffi.Pointer<ffi.Int8> __file,
  ffi.Int32 __oflag,
);

typedef _dart_openat = int Function(
  int __fd,
  ffi.Pointer<ffi.Int8> __file,
  int __oflag,
);

typedef _c_creat = ffi.Int32 Function(
  ffi.Pointer<ffi.Int8> __file,
  ffi.Uint32 __mode,
);

typedef _dart_creat = int Function(
  ffi.Pointer<ffi.Int8> __file,
  int __mode,
);

typedef _c_lockf = ffi.Int32 Function(
  ffi.Int32 __fd,
  ffi.Int32 __cmd,
  ffi.Int64 __len,
);

typedef _dart_lockf = int Function(
  int __fd,
  int __cmd,
  int __len,
);

typedef _c_posix_fadvise = ffi.Int32 Function(
  ffi.Int32 __fd,
  ffi.Int64 __offset,
  ffi.Int64 __len,
  ffi.Int32 __advise,
);

typedef _dart_posix_fadvise = int Function(
  int __fd,
  int __offset,
  int __len,
  int __advise,
);

typedef _c_posix_fallocate = ffi.Int32 Function(
  ffi.Int32 __fd,
  ffi.Int64 __offset,
  ffi.Int64 __len,
);

typedef _dart_posix_fallocate = int Function(
  int __fd,
  int __offset,
  int __len,
);

typedef __sighandler_t_2 = ffi.Void Function(
  ffi.Int32,
);

typedef _c___sysv_signal = ffi.Pointer<ffi.NativeFunction<__sighandler_t_2>>
    Function(
  ffi.Int32 __sig,
  ffi.Pointer<ffi.NativeFunction<__sighandler_t_2>> __handler,
);

typedef _dart___sysv_signal = ffi.Pointer<ffi.NativeFunction<__sighandler_t_2>>
    Function(
  int __sig,
  ffi.Pointer<ffi.NativeFunction<__sighandler_t_2>> __handler,
);

typedef _c_signal = ffi.Pointer<ffi.NativeFunction<__sighandler_t_2>> Function(
  ffi.Int32 __sig,
  ffi.Pointer<ffi.NativeFunction<__sighandler_t_2>> __handler,
);

typedef _dart_signal = ffi.Pointer<ffi.NativeFunction<__sighandler_t_2>>
    Function(
  int __sig,
  ffi.Pointer<ffi.NativeFunction<__sighandler_t_2>> __handler,
);

typedef _c_kill = ffi.Int32 Function(
  ffi.Int32 __pid,
  ffi.Int32 __sig,
);

typedef _dart_kill = int Function(
  int __pid,
  int __sig,
);

typedef _c_killpg = ffi.Int32 Function(
  ffi.Int32 __pgrp,
  ffi.Int32 __sig,
);

typedef _dart_killpg = int Function(
  int __pgrp,
  int __sig,
);

typedef _c_raise = ffi.Int32 Function(
  ffi.Int32 __sig,
);

typedef _dart_raise = int Function(
  int __sig,
);

typedef _c_ssignal = ffi.Pointer<ffi.NativeFunction<__sighandler_t_2>> Function(
  ffi.Int32 __sig,
  ffi.Pointer<ffi.NativeFunction<__sighandler_t_2>> __handler,
);

typedef _dart_ssignal = ffi.Pointer<ffi.NativeFunction<__sighandler_t_2>>
    Function(
  int __sig,
  ffi.Pointer<ffi.NativeFunction<__sighandler_t_2>> __handler,
);

typedef _c_gsignal = ffi.Int32 Function(
  ffi.Int32 __sig,
);

typedef _dart_gsignal = int Function(
  int __sig,
);

typedef _c_psignal = ffi.Void Function(
  ffi.Int32 __sig,
  ffi.Pointer<ffi.Int8> __s,
);

typedef _dart_psignal = void Function(
  int __sig,
  ffi.Pointer<ffi.Int8> __s,
);

typedef _c_psiginfo = ffi.Void Function(
  ffi.Pointer<siginfo_t> __pinfo,
  ffi.Pointer<ffi.Int8> __s,
);

typedef _dart_psiginfo = void Function(
  ffi.Pointer<siginfo_t> __pinfo,
  ffi.Pointer<ffi.Int8> __s,
);

typedef _c_sigblock = ffi.Int32 Function(
  ffi.Int32 __mask,
);

typedef _dart_sigblock = int Function(
  int __mask,
);

typedef _c_sigsetmask = ffi.Int32 Function(
  ffi.Int32 __mask,
);

typedef _dart_sigsetmask = int Function(
  int __mask,
);

typedef _c_siggetmask = ffi.Int32 Function();

typedef _dart_siggetmask = int Function();

typedef _c_sigemptyset = ffi.Int32 Function(
  ffi.Pointer<ffi.Uint64> __set,
);

typedef _dart_sigemptyset = int Function(
  ffi.Pointer<ffi.Uint64> __set,
);

typedef _c_sigfillset = ffi.Int32 Function(
  ffi.Pointer<ffi.Uint64> __set,
);

typedef _dart_sigfillset = int Function(
  ffi.Pointer<ffi.Uint64> __set,
);

typedef _c_sigaddset = ffi.Int32 Function(
  ffi.Pointer<ffi.Uint64> __set,
  ffi.Int32 __signo,
);

typedef _dart_sigaddset = int Function(
  ffi.Pointer<ffi.Uint64> __set,
  int __signo,
);

typedef _c_sigdelset = ffi.Int32 Function(
  ffi.Pointer<ffi.Uint64> __set,
  ffi.Int32 __signo,
);

typedef _dart_sigdelset = int Function(
  ffi.Pointer<ffi.Uint64> __set,
  int __signo,
);

typedef _c_sigismember = ffi.Int32 Function(
  ffi.Pointer<ffi.Uint64> __set,
  ffi.Int32 __signo,
);

typedef _dart_sigismember = int Function(
  ffi.Pointer<ffi.Uint64> __set,
  int __signo,
);

typedef _c_sigprocmask = ffi.Int32 Function(
  ffi.Int32 __how,
  ffi.Pointer<ffi.Uint64> __set,
  ffi.Pointer<ffi.Uint64> __oset,
);

typedef _dart_sigprocmask = int Function(
  int __how,
  ffi.Pointer<ffi.Uint64> __set,
  ffi.Pointer<ffi.Uint64> __oset,
);

typedef _c_sigsuspend = ffi.Int32 Function(
  ffi.Pointer<ffi.Uint64> __set,
);

typedef _dart_sigsuspend = int Function(
  ffi.Pointer<ffi.Uint64> __set,
);

typedef _c_sigaction = ffi.Int32 Function(
  ffi.Int32 __sig,
  ffi.Pointer<sigaction> __act,
  ffi.Pointer<sigaction> __oact,
);

typedef _dart_sigaction = int Function(
  int __sig,
  ffi.Pointer<sigaction> __act,
  ffi.Pointer<sigaction> __oact,
);

typedef _c_sigpending = ffi.Int32 Function(
  ffi.Pointer<ffi.Uint64> __set,
);

typedef _dart_sigpending = int Function(
  ffi.Pointer<ffi.Uint64> __set,
);

typedef _c_sigwait = ffi.Int32 Function(
  ffi.Pointer<ffi.Uint64> __set,
  ffi.Pointer<ffi.Int32> __sig,
);

typedef _dart_sigwait = int Function(
  ffi.Pointer<ffi.Uint64> __set,
  ffi.Pointer<ffi.Int32> __sig,
);

typedef _c_sigwaitinfo = ffi.Int32 Function(
  ffi.Pointer<ffi.Uint64> __set,
  ffi.Pointer<siginfo_t> __info,
);

typedef _dart_sigwaitinfo = int Function(
  ffi.Pointer<ffi.Uint64> __set,
  ffi.Pointer<siginfo_t> __info,
);

typedef _c_sigtimedwait = ffi.Int32 Function(
  ffi.Pointer<ffi.Uint64> __set,
  ffi.Pointer<siginfo_t> __info,
  ffi.Pointer<timespec> __timeout,
);

typedef _dart_sigtimedwait = int Function(
  ffi.Pointer<ffi.Uint64> __set,
  ffi.Pointer<siginfo_t> __info,
  ffi.Pointer<timespec> __timeout,
);

typedef _c_sigreturn = ffi.Int32 Function(
  ffi.Pointer<sigcontext> __scp,
);

typedef _dart_sigreturn = int Function(
  ffi.Pointer<sigcontext> __scp,
);

typedef _c_siginterrupt = ffi.Int32 Function(
  ffi.Int32 __sig,
  ffi.Int32 __interrupt,
);

typedef _dart_siginterrupt = int Function(
  int __sig,
  int __interrupt,
);

// typedef _c_sigaltstack = ffi.Int32 Function(
//   ffi.Pointer<struct (anonymous at /usr/include/x86_64-linux-gnu/bits/types/stack_t.h:26:9)> __ss,
//   ffi.Pointer<struct (anonymous at /usr/include/x86_64-linux-gnu/bits/types/stack_t.h:26:9)> __oss,
// );

// typedef _dart_sigaltstack = int Function(
//   ffi.Pointer<struct (anonymous at /usr/include/x86_64-linux-gnu/bits/types/stack_t.h:26:9)> __ss,
//   ffi.Pointer<struct (anonymous at /usr/include/x86_64-linux-gnu/bits/types/stack_t.h:26:9)> __oss,
// );

typedef _c_sigstack = ffi.Int32 Function(
  ffi.Pointer<sigstack> __ss,
  ffi.Pointer<sigstack> __oss,
);

typedef _dart_sigstack = int Function(
  ffi.Pointer<sigstack> __ss,
  ffi.Pointer<sigstack> __oss,
);

typedef _c_pthread_sigmask = ffi.Int32 Function(
  ffi.Int32 __how,
  ffi.Pointer<ffi.Uint64> __newmask,
  ffi.Pointer<ffi.Uint64> __oldmask,
);

typedef _dart_pthread_sigmask = int Function(
  int __how,
  ffi.Pointer<ffi.Uint64> __newmask,
  ffi.Pointer<ffi.Uint64> __oldmask,
);

typedef _c_pthread_kill = ffi.Int32 Function(
  ffi.Uint64 __threadid,
  ffi.Int32 __signo,
);

typedef _dart_pthread_kill = int Function(
  int __threadid,
  int __signo,
);

typedef _c___libc_current_sigrtmin = ffi.Int32 Function();

typedef _dart___libc_current_sigrtmin = int Function();

typedef _c___libc_current_sigrtmax = ffi.Int32 Function();

typedef _dart___libc_current_sigrtmax = int Function();

typedef _c___underflow = ffi.Int32 Function(
  ffi.Pointer<_IO_FILE> arg0,
);

typedef _dart___underflow = int Function(
  ffi.Pointer<_IO_FILE> arg0,
);

typedef _c___uflow = ffi.Int32 Function(
  ffi.Pointer<_IO_FILE> arg0,
);

typedef _dart___uflow = int Function(
  ffi.Pointer<_IO_FILE> arg0,
);

typedef _c___overflow = ffi.Int32 Function(
  ffi.Pointer<_IO_FILE> arg0,
  ffi.Int32 arg1,
);

typedef _dart___overflow = int Function(
  ffi.Pointer<_IO_FILE> arg0,
  int arg1,
);

typedef _c__IO_getc = ffi.Int32 Function(
  ffi.Pointer<_IO_FILE> __fp,
);

typedef _dart__IO_getc = int Function(
  ffi.Pointer<_IO_FILE> __fp,
);

typedef _c__IO_putc = ffi.Int32 Function(
  ffi.Int32 __c,
  ffi.Pointer<_IO_FILE> __fp,
);

typedef _dart__IO_putc = int Function(
  int __c,
  ffi.Pointer<_IO_FILE> __fp,
);

typedef _c__IO_feof = ffi.Int32 Function(
  ffi.Pointer<_IO_FILE> __fp,
);

typedef _dart__IO_feof = int Function(
  ffi.Pointer<_IO_FILE> __fp,
);

typedef _c__IO_ferror = ffi.Int32 Function(
  ffi.Pointer<_IO_FILE> __fp,
);

typedef _dart__IO_ferror = int Function(
  ffi.Pointer<_IO_FILE> __fp,
);

typedef _c__IO_peekc_locked = ffi.Int32 Function(
  ffi.Pointer<_IO_FILE> __fp,
);

typedef _dart__IO_peekc_locked = int Function(
  ffi.Pointer<_IO_FILE> __fp,
);

typedef _c__IO_flockfile = ffi.Void Function(
  ffi.Pointer<_IO_FILE> arg0,
);

typedef _dart__IO_flockfile = void Function(
  ffi.Pointer<_IO_FILE> arg0,
);

typedef _c__IO_funlockfile = ffi.Void Function(
  ffi.Pointer<_IO_FILE> arg0,
);

typedef _dart__IO_funlockfile = void Function(
  ffi.Pointer<_IO_FILE> arg0,
);

typedef _c__IO_ftrylockfile = ffi.Int32 Function(
  ffi.Pointer<_IO_FILE> arg0,
);

typedef _dart__IO_ftrylockfile = int Function(
  ffi.Pointer<_IO_FILE> arg0,
);

typedef _c__IO_vfscanf = ffi.Int32 Function(
  ffi.Pointer<_IO_FILE> arg0,
  ffi.Pointer<ffi.Int8> arg1,
  ffi.Int32 __gnuc_va_list,
  ffi.Pointer<ffi.Int32> arg3,
);

typedef _dart__IO_vfscanf = int Function(
  ffi.Pointer<_IO_FILE> arg0,
  ffi.Pointer<ffi.Int8> arg1,
  int __gnuc_va_list,
  ffi.Pointer<ffi.Int32> arg3,
);

typedef _c__IO_vfprintf = ffi.Int32 Function(
  ffi.Pointer<_IO_FILE> arg0,
  ffi.Pointer<ffi.Int8> arg1,
  ffi.Int32 __gnuc_va_list,
);

typedef _dart__IO_vfprintf = int Function(
  ffi.Pointer<_IO_FILE> arg0,
  ffi.Pointer<ffi.Int8> arg1,
  int __gnuc_va_list,
);

typedef _c__IO_padn = ffi.Int64 Function(
  ffi.Pointer<_IO_FILE> arg0,
  ffi.Int32 arg1,
  ffi.Int64 arg2,
);

typedef _dart__IO_padn = int Function(
  ffi.Pointer<_IO_FILE> arg0,
  int arg1,
  int arg2,
);

typedef _c__IO_sgetn = ffi.Int32 Function(
  ffi.Pointer<_IO_FILE> arg0,
  ffi.Pointer<ffi.Void> arg1,
  ffi.Int32 size_t,
);

typedef _dart__IO_sgetn = int Function(
  ffi.Pointer<_IO_FILE> arg0,
  ffi.Pointer<ffi.Void> arg1,
  int size_t,
);

typedef _c__IO_seekoff = ffi.Int64 Function(
  ffi.Pointer<_IO_FILE> arg0,
  ffi.Int64 arg1,
  ffi.Int32 arg2,
  ffi.Int32 arg3,
);

typedef _dart__IO_seekoff = int Function(
  ffi.Pointer<_IO_FILE> arg0,
  int arg1,
  int arg2,
  int arg3,
);

typedef _c__IO_seekpos = ffi.Int64 Function(
  ffi.Pointer<_IO_FILE> arg0,
  ffi.Int64 arg1,
  ffi.Int32 arg2,
);

typedef _dart__IO_seekpos = int Function(
  ffi.Pointer<_IO_FILE> arg0,
  int arg1,
  int arg2,
);

typedef _c__IO_free_backup_area = ffi.Void Function(
  ffi.Pointer<_IO_FILE> arg0,
);

typedef _dart__IO_free_backup_area = void Function(
  ffi.Pointer<_IO_FILE> arg0,
);

typedef _c_remove = ffi.Int32 Function(
  ffi.Pointer<ffi.Int8> __filename,
);

typedef _dart_remove = int Function(
  ffi.Pointer<ffi.Int8> __filename,
);

typedef _c_rename = ffi.Int32 Function(
  ffi.Pointer<ffi.Int8> __old,
  ffi.Pointer<ffi.Int8> __new,
);

typedef _dart_rename = int Function(
  ffi.Pointer<ffi.Int8> __old,
  ffi.Pointer<ffi.Int8> __new,
);

typedef _c_renameat = ffi.Int32 Function(
  ffi.Int32 __oldfd,
  ffi.Pointer<ffi.Int8> __old,
  ffi.Int32 __newfd,
  ffi.Pointer<ffi.Int8> __new,
);

typedef _dart_renameat = int Function(
  int __oldfd,
  ffi.Pointer<ffi.Int8> __old,
  int __newfd,
  ffi.Pointer<ffi.Int8> __new,
);

typedef _c_tmpfile = ffi.Pointer<_IO_FILE> Function();

typedef _dart_tmpfile = ffi.Pointer<_IO_FILE> Function();

typedef _c_tmpnam = ffi.Pointer<ffi.Int8> Function(
  ffi.Pointer<ffi.Int8> __s,
);

typedef _dart_tmpnam = ffi.Pointer<ffi.Int8> Function(
  ffi.Pointer<ffi.Int8> __s,
);

typedef _c_tmpnam_r = ffi.Pointer<ffi.Int8> Function(
  ffi.Pointer<ffi.Int8> __s,
);

typedef _dart_tmpnam_r = ffi.Pointer<ffi.Int8> Function(
  ffi.Pointer<ffi.Int8> __s,
);

typedef _c_tempnam = ffi.Pointer<ffi.Int8> Function(
  ffi.Pointer<ffi.Int8> __dir,
  ffi.Pointer<ffi.Int8> __pfx,
);

typedef _dart_tempnam = ffi.Pointer<ffi.Int8> Function(
  ffi.Pointer<ffi.Int8> __dir,
  ffi.Pointer<ffi.Int8> __pfx,
);

typedef _c_fclose = ffi.Int32 Function(
  ffi.Pointer<_IO_FILE> __stream,
);

typedef _dart_fclose = int Function(
  ffi.Pointer<_IO_FILE> __stream,
);

typedef _c_fflush = ffi.Int32 Function(
  ffi.Pointer<_IO_FILE> __stream,
);

typedef _dart_fflush = int Function(
  ffi.Pointer<_IO_FILE> __stream,
);

typedef _c_fflush_unlocked = ffi.Int32 Function(
  ffi.Pointer<_IO_FILE> __stream,
);

typedef _dart_fflush_unlocked = int Function(
  ffi.Pointer<_IO_FILE> __stream,
);

typedef _c_fopen = ffi.Pointer<_IO_FILE> Function(
  ffi.Pointer<ffi.Int8> __filename,
  ffi.Pointer<ffi.Int8> __modes,
);

typedef _dart_fopen = ffi.Pointer<_IO_FILE> Function(
  ffi.Pointer<ffi.Int8> __filename,
  ffi.Pointer<ffi.Int8> __modes,
);

typedef _c_freopen = ffi.Pointer<_IO_FILE> Function(
  ffi.Pointer<ffi.Int8> __filename,
  ffi.Pointer<ffi.Int8> __modes,
  ffi.Pointer<_IO_FILE> __stream,
);

typedef _dart_freopen = ffi.Pointer<_IO_FILE> Function(
  ffi.Pointer<ffi.Int8> __filename,
  ffi.Pointer<ffi.Int8> __modes,
  ffi.Pointer<_IO_FILE> __stream,
);

typedef _c_fdopen = ffi.Pointer<_IO_FILE> Function(
  ffi.Int32 __fd,
  ffi.Pointer<ffi.Int8> __modes,
);

typedef _dart_fdopen = ffi.Pointer<_IO_FILE> Function(
  int __fd,
  ffi.Pointer<ffi.Int8> __modes,
);

typedef _c_fmemopen = ffi.Pointer<_IO_FILE> Function(
  ffi.Pointer<ffi.Void> __s,
  ffi.Int32 __len,
  ffi.Pointer<ffi.Int8> __modes,
);

typedef _dart_fmemopen = ffi.Pointer<_IO_FILE> Function(
  ffi.Pointer<ffi.Void> __s,
  int __len,
  ffi.Pointer<ffi.Int8> __modes,
);

typedef _c_open_memstream = ffi.Pointer<_IO_FILE> Function(
  ffi.Pointer<ffi.Pointer<ffi.Int8>> __bufloc,
  ffi.Pointer<ffi.Int32> __sizeloc,
);

typedef _dart_open_memstream = ffi.Pointer<_IO_FILE> Function(
  ffi.Pointer<ffi.Pointer<ffi.Int8>> __bufloc,
  ffi.Pointer<ffi.Int32> __sizeloc,
);

typedef _c_setbuf = ffi.Void Function(
  ffi.Pointer<_IO_FILE> __stream,
  ffi.Pointer<ffi.Int8> __buf,
);

typedef _dart_setbuf = void Function(
  ffi.Pointer<_IO_FILE> __stream,
  ffi.Pointer<ffi.Int8> __buf,
);

typedef _c_setvbuf = ffi.Int32 Function(
  ffi.Pointer<_IO_FILE> __stream,
  ffi.Pointer<ffi.Int8> __buf,
  ffi.Int32 __modes,
  ffi.Int32 __n,
);

typedef _dart_setvbuf = int Function(
  ffi.Pointer<_IO_FILE> __stream,
  ffi.Pointer<ffi.Int8> __buf,
  int __modes,
  int __n,
);

typedef _c_setbuffer = ffi.Void Function(
  ffi.Pointer<_IO_FILE> __stream,
  ffi.Pointer<ffi.Int8> __buf,
  ffi.Int32 __size,
);

typedef _dart_setbuffer = void Function(
  ffi.Pointer<_IO_FILE> __stream,
  ffi.Pointer<ffi.Int8> __buf,
  int __size,
);

typedef _c_setlinebuf = ffi.Void Function(
  ffi.Pointer<_IO_FILE> __stream,
);

typedef _dart_setlinebuf = void Function(
  ffi.Pointer<_IO_FILE> __stream,
);

typedef _c_fprintf = ffi.Int32 Function(
  ffi.Pointer<_IO_FILE> __stream,
  ffi.Pointer<ffi.Int8> __format,
);

typedef _dart_fprintf = int Function(
  ffi.Pointer<_IO_FILE> __stream,
  ffi.Pointer<ffi.Int8> __format,
);

typedef _c_printf = ffi.Int32 Function(
  ffi.Pointer<ffi.Int8> __format,
);

typedef _dart_printf = int Function(
  ffi.Pointer<ffi.Int8> __format,
);

typedef _c_sprintf = ffi.Int32 Function(
  ffi.Pointer<ffi.Int8> __s,
  ffi.Pointer<ffi.Int8> __format,
);

typedef _dart_sprintf = int Function(
  ffi.Pointer<ffi.Int8> __s,
  ffi.Pointer<ffi.Int8> __format,
);

typedef _c_vfprintf = ffi.Int32 Function(
  ffi.Pointer<_IO_FILE> __s,
  ffi.Pointer<ffi.Int8> __format,
  ffi.Int32 __arg,
);

typedef _dart_vfprintf = int Function(
  ffi.Pointer<_IO_FILE> __s,
  ffi.Pointer<ffi.Int8> __format,
  int __arg,
);

typedef _c_vprintf = ffi.Int32 Function(
  ffi.Pointer<ffi.Int8> __format,
  ffi.Int32 __arg,
);

typedef _dart_vprintf = int Function(
  ffi.Pointer<ffi.Int8> __format,
  int __arg,
);

typedef _c_vsprintf = ffi.Int32 Function(
  ffi.Pointer<ffi.Int8> __s,
  ffi.Pointer<ffi.Int8> __format,
  ffi.Int32 __arg,
);

typedef _dart_vsprintf = int Function(
  ffi.Pointer<ffi.Int8> __s,
  ffi.Pointer<ffi.Int8> __format,
  int __arg,
);

typedef _c_snprintf = ffi.Int32 Function(
  ffi.Pointer<ffi.Int8> __s,
  ffi.Int32 __maxlen,
  ffi.Pointer<ffi.Int8> __format,
);

typedef _dart_snprintf = int Function(
  ffi.Pointer<ffi.Int8> __s,
  int __maxlen,
  ffi.Pointer<ffi.Int8> __format,
);

typedef _c_vsnprintf = ffi.Int32 Function(
  ffi.Pointer<ffi.Int8> __s,
  ffi.Int32 __maxlen,
  ffi.Pointer<ffi.Int8> __format,
  ffi.Int32 __arg,
);

typedef _dart_vsnprintf = int Function(
  ffi.Pointer<ffi.Int8> __s,
  int __maxlen,
  ffi.Pointer<ffi.Int8> __format,
  int __arg,
);

typedef _c_vdprintf = ffi.Int32 Function(
  ffi.Int32 __fd,
  ffi.Pointer<ffi.Int8> __fmt,
  ffi.Int32 __arg,
);

typedef _dart_vdprintf = int Function(
  int __fd,
  ffi.Pointer<ffi.Int8> __fmt,
  int __arg,
);

typedef _c_dprintf = ffi.Int32 Function(
  ffi.Int32 __fd,
  ffi.Pointer<ffi.Int8> __fmt,
);

typedef _dart_dprintf = int Function(
  int __fd,
  ffi.Pointer<ffi.Int8> __fmt,
);

typedef _c_fscanf = ffi.Int32 Function(
  ffi.Pointer<_IO_FILE> __stream,
  ffi.Pointer<ffi.Int8> __format,
);

typedef _dart_fscanf = int Function(
  ffi.Pointer<_IO_FILE> __stream,
  ffi.Pointer<ffi.Int8> __format,
);

typedef _c_scanf = ffi.Int32 Function(
  ffi.Pointer<ffi.Int8> __format,
);

typedef _dart_scanf = int Function(
  ffi.Pointer<ffi.Int8> __format,
);

typedef _c_sscanf = ffi.Int32 Function(
  ffi.Pointer<ffi.Int8> __s,
  ffi.Pointer<ffi.Int8> __format,
);

typedef _dart_sscanf = int Function(
  ffi.Pointer<ffi.Int8> __s,
  ffi.Pointer<ffi.Int8> __format,
);

typedef _c_vfscanf = ffi.Int32 Function(
  ffi.Pointer<_IO_FILE> __s,
  ffi.Pointer<ffi.Int8> __format,
  ffi.Int32 __arg,
);

typedef _dart_vfscanf = int Function(
  ffi.Pointer<_IO_FILE> __s,
  ffi.Pointer<ffi.Int8> __format,
  int __arg,
);

typedef _c_vscanf = ffi.Int32 Function(
  ffi.Pointer<ffi.Int8> __format,
  ffi.Int32 __arg,
);

typedef _dart_vscanf = int Function(
  ffi.Pointer<ffi.Int8> __format,
  int __arg,
);

typedef _c_vsscanf = ffi.Int32 Function(
  ffi.Pointer<ffi.Int8> __s,
  ffi.Pointer<ffi.Int8> __format,
  ffi.Int32 __arg,
);

typedef _dart_vsscanf = int Function(
  ffi.Pointer<ffi.Int8> __s,
  ffi.Pointer<ffi.Int8> __format,
  int __arg,
);

typedef _c_fgetc = ffi.Int32 Function(
  ffi.Pointer<_IO_FILE> __stream,
);

typedef _dart_fgetc = int Function(
  ffi.Pointer<_IO_FILE> __stream,
);

typedef _c_getc = ffi.Int32 Function(
  ffi.Pointer<_IO_FILE> __stream,
);

typedef _dart_getc = int Function(
  ffi.Pointer<_IO_FILE> __stream,
);

typedef _c_getchar = ffi.Int32 Function();

typedef _dart_getchar = int Function();

typedef _c_getc_unlocked = ffi.Int32 Function(
  ffi.Pointer<_IO_FILE> __stream,
);

typedef _dart_getc_unlocked = int Function(
  ffi.Pointer<_IO_FILE> __stream,
);

typedef _c_getchar_unlocked = ffi.Int32 Function();

typedef _dart_getchar_unlocked = int Function();

typedef _c_fgetc_unlocked = ffi.Int32 Function(
  ffi.Pointer<_IO_FILE> __stream,
);

typedef _dart_fgetc_unlocked = int Function(
  ffi.Pointer<_IO_FILE> __stream,
);

typedef _c_fputc = ffi.Int32 Function(
  ffi.Int32 __c,
  ffi.Pointer<_IO_FILE> __stream,
);

typedef _dart_fputc = int Function(
  int __c,
  ffi.Pointer<_IO_FILE> __stream,
);

typedef _c_putc = ffi.Int32 Function(
  ffi.Int32 __c,
  ffi.Pointer<_IO_FILE> __stream,
);

typedef _dart_putc = int Function(
  int __c,
  ffi.Pointer<_IO_FILE> __stream,
);

typedef _c_putchar = ffi.Int32 Function(
  ffi.Int32 __c,
);

typedef _dart_putchar = int Function(
  int __c,
);

typedef _c_fputc_unlocked = ffi.Int32 Function(
  ffi.Int32 __c,
  ffi.Pointer<_IO_FILE> __stream,
);

typedef _dart_fputc_unlocked = int Function(
  int __c,
  ffi.Pointer<_IO_FILE> __stream,
);

typedef _c_putc_unlocked = ffi.Int32 Function(
  ffi.Int32 __c,
  ffi.Pointer<_IO_FILE> __stream,
);

typedef _dart_putc_unlocked = int Function(
  int __c,
  ffi.Pointer<_IO_FILE> __stream,
);

typedef _c_putchar_unlocked = ffi.Int32 Function(
  ffi.Int32 __c,
);

typedef _dart_putchar_unlocked = int Function(
  int __c,
);

typedef _c_getw = ffi.Int32 Function(
  ffi.Pointer<_IO_FILE> __stream,
);

typedef _dart_getw = int Function(
  ffi.Pointer<_IO_FILE> __stream,
);

typedef _c_putw = ffi.Int32 Function(
  ffi.Int32 __w,
  ffi.Pointer<_IO_FILE> __stream,
);

typedef _dart_putw = int Function(
  int __w,
  ffi.Pointer<_IO_FILE> __stream,
);

typedef _c_fgets = ffi.Pointer<ffi.Int8> Function(
  ffi.Pointer<ffi.Int8> __s,
  ffi.Int32 __n,
  ffi.Pointer<_IO_FILE> __stream,
);

typedef _dart_fgets = ffi.Pointer<ffi.Int8> Function(
  ffi.Pointer<ffi.Int8> __s,
  int __n,
  ffi.Pointer<_IO_FILE> __stream,
);

typedef _c___getdelim = ffi.Int64 Function(
  ffi.Pointer<ffi.Pointer<ffi.Int8>> __lineptr,
  ffi.Pointer<ffi.Int32> __n,
  ffi.Int32 __delimiter,
  ffi.Pointer<_IO_FILE> __stream,
);

typedef _dart___getdelim = int Function(
  ffi.Pointer<ffi.Pointer<ffi.Int8>> __lineptr,
  ffi.Pointer<ffi.Int32> __n,
  int __delimiter,
  ffi.Pointer<_IO_FILE> __stream,
);

typedef _c_getdelim = ffi.Int64 Function(
  ffi.Pointer<ffi.Pointer<ffi.Int8>> __lineptr,
  ffi.Pointer<ffi.Int32> __n,
  ffi.Int32 __delimiter,
  ffi.Pointer<_IO_FILE> __stream,
);

typedef _dart_getdelim = int Function(
  ffi.Pointer<ffi.Pointer<ffi.Int8>> __lineptr,
  ffi.Pointer<ffi.Int32> __n,
  int __delimiter,
  ffi.Pointer<_IO_FILE> __stream,
);

typedef _c_getline = ffi.Int64 Function(
  ffi.Pointer<ffi.Pointer<ffi.Int8>> __lineptr,
  ffi.Pointer<ffi.Int32> __n,
  ffi.Pointer<_IO_FILE> __stream,
);

typedef _dart_getline = int Function(
  ffi.Pointer<ffi.Pointer<ffi.Int8>> __lineptr,
  ffi.Pointer<ffi.Int32> __n,
  ffi.Pointer<_IO_FILE> __stream,
);

typedef _c_fputs = ffi.Int32 Function(
  ffi.Pointer<ffi.Int8> __s,
  ffi.Pointer<_IO_FILE> __stream,
);

typedef _dart_fputs = int Function(
  ffi.Pointer<ffi.Int8> __s,
  ffi.Pointer<_IO_FILE> __stream,
);

typedef _c_puts = ffi.Int32 Function(
  ffi.Pointer<ffi.Int8> __s,
);

typedef _dart_puts = int Function(
  ffi.Pointer<ffi.Int8> __s,
);

typedef _c_ungetc = ffi.Int32 Function(
  ffi.Int32 __c,
  ffi.Pointer<_IO_FILE> __stream,
);

typedef _dart_ungetc = int Function(
  int __c,
  ffi.Pointer<_IO_FILE> __stream,
);

typedef _c_fread = ffi.Int32 Function(
  ffi.Pointer<ffi.Void> __ptr,
  ffi.Int32 __size,
  ffi.Int32 __n,
  ffi.Pointer<_IO_FILE> __stream,
);

typedef _dart_fread = int Function(
  ffi.Pointer<ffi.Void> __ptr,
  int __size,
  int __n,
  ffi.Pointer<_IO_FILE> __stream,
);

typedef _c_fwrite = ffi.Int32 Function(
  ffi.Pointer<ffi.Void> __ptr,
  ffi.Int32 __size,
  ffi.Int32 __n,
  ffi.Pointer<_IO_FILE> __s,
);

typedef _dart_fwrite = int Function(
  ffi.Pointer<ffi.Void> __ptr,
  int __size,
  int __n,
  ffi.Pointer<_IO_FILE> __s,
);

typedef _c_fread_unlocked = ffi.Int32 Function(
  ffi.Pointer<ffi.Void> __ptr,
  ffi.Int32 __size,
  ffi.Int32 __n,
  ffi.Pointer<_IO_FILE> __stream,
);

typedef _dart_fread_unlocked = int Function(
  ffi.Pointer<ffi.Void> __ptr,
  int __size,
  int __n,
  ffi.Pointer<_IO_FILE> __stream,
);

typedef _c_fwrite_unlocked = ffi.Int32 Function(
  ffi.Pointer<ffi.Void> __ptr,
  ffi.Int32 __size,
  ffi.Int32 __n,
  ffi.Pointer<_IO_FILE> __stream,
);

typedef _dart_fwrite_unlocked = int Function(
  ffi.Pointer<ffi.Void> __ptr,
  int __size,
  int __n,
  ffi.Pointer<_IO_FILE> __stream,
);

typedef _c_fseek = ffi.Int32 Function(
  ffi.Pointer<_IO_FILE> __stream,
  ffi.Int64 __off,
  ffi.Int32 __whence,
);

typedef _dart_fseek = int Function(
  ffi.Pointer<_IO_FILE> __stream,
  int __off,
  int __whence,
);

typedef _c_ftell = ffi.Int64 Function(
  ffi.Pointer<_IO_FILE> __stream,
);

typedef _dart_ftell = int Function(
  ffi.Pointer<_IO_FILE> __stream,
);

typedef _c_rewind = ffi.Void Function(
  ffi.Pointer<_IO_FILE> __stream,
);

typedef _dart_rewind = void Function(
  ffi.Pointer<_IO_FILE> __stream,
);

typedef _c_fseeko = ffi.Int32 Function(
  ffi.Pointer<_IO_FILE> __stream,
  ffi.Int64 __off,
  ffi.Int32 __whence,
);

typedef _dart_fseeko = int Function(
  ffi.Pointer<_IO_FILE> __stream,
  int __off,
  int __whence,
);

typedef _c_ftello = ffi.Int64 Function(
  ffi.Pointer<_IO_FILE> __stream,
);

typedef _dart_ftello = int Function(
  ffi.Pointer<_IO_FILE> __stream,
);

typedef _c_fgetpos = ffi.Int32 Function(
  ffi.Pointer<_IO_FILE> __stream,
  ffi.Pointer<_G_fpos_t> __pos,
);

typedef _dart_fgetpos = int Function(
  ffi.Pointer<_IO_FILE> __stream,
  ffi.Pointer<_G_fpos_t> __pos,
);

typedef _c_fsetpos = ffi.Int32 Function(
  ffi.Pointer<_IO_FILE> __stream,
  ffi.Pointer<_G_fpos_t> __pos,
);

typedef _dart_fsetpos = int Function(
  ffi.Pointer<_IO_FILE> __stream,
  ffi.Pointer<_G_fpos_t> __pos,
);

typedef _c_clearerr = ffi.Void Function(
  ffi.Pointer<_IO_FILE> __stream,
);

typedef _dart_clearerr = void Function(
  ffi.Pointer<_IO_FILE> __stream,
);

typedef _c_feof = ffi.Int32 Function(
  ffi.Pointer<_IO_FILE> __stream,
);

typedef _dart_feof = int Function(
  ffi.Pointer<_IO_FILE> __stream,
);

typedef _c_ferror = ffi.Int32 Function(
  ffi.Pointer<_IO_FILE> __stream,
);

typedef _dart_ferror = int Function(
  ffi.Pointer<_IO_FILE> __stream,
);

typedef _c_clearerr_unlocked = ffi.Void Function(
  ffi.Pointer<_IO_FILE> __stream,
);

typedef _dart_clearerr_unlocked = void Function(
  ffi.Pointer<_IO_FILE> __stream,
);

typedef _c_feof_unlocked = ffi.Int32 Function(
  ffi.Pointer<_IO_FILE> __stream,
);

typedef _dart_feof_unlocked = int Function(
  ffi.Pointer<_IO_FILE> __stream,
);

typedef _c_ferror_unlocked = ffi.Int32 Function(
  ffi.Pointer<_IO_FILE> __stream,
);

typedef _dart_ferror_unlocked = int Function(
  ffi.Pointer<_IO_FILE> __stream,
);

typedef _c_perror = ffi.Void Function(
  ffi.Pointer<ffi.Int8> __s,
);

typedef _dart_perror = void Function(
  ffi.Pointer<ffi.Int8> __s,
);

typedef _c_fileno = ffi.Int32 Function(
  ffi.Pointer<_IO_FILE> __stream,
);

typedef _dart_fileno = int Function(
  ffi.Pointer<_IO_FILE> __stream,
);

typedef _c_fileno_unlocked = ffi.Int32 Function(
  ffi.Pointer<_IO_FILE> __stream,
);

typedef _dart_fileno_unlocked = int Function(
  ffi.Pointer<_IO_FILE> __stream,
);

typedef _c_popen = ffi.Pointer<_IO_FILE> Function(
  ffi.Pointer<ffi.Int8> __command,
  ffi.Pointer<ffi.Int8> __modes,
);

typedef _dart_popen = ffi.Pointer<_IO_FILE> Function(
  ffi.Pointer<ffi.Int8> __command,
  ffi.Pointer<ffi.Int8> __modes,
);

typedef _c_pclose = ffi.Int32 Function(
  ffi.Pointer<_IO_FILE> __stream,
);

typedef _dart_pclose = int Function(
  ffi.Pointer<_IO_FILE> __stream,
);

typedef _c_ctermid = ffi.Pointer<ffi.Int8> Function(
  ffi.Pointer<ffi.Int8> __s,
);

typedef _dart_ctermid = ffi.Pointer<ffi.Int8> Function(
  ffi.Pointer<ffi.Int8> __s,
);

typedef _c_flockfile = ffi.Void Function(
  ffi.Pointer<_IO_FILE> __stream,
);

typedef _dart_flockfile = void Function(
  ffi.Pointer<_IO_FILE> __stream,
);

typedef _c_ftrylockfile = ffi.Int32 Function(
  ffi.Pointer<_IO_FILE> __stream,
);

typedef _dart_ftrylockfile = int Function(
  ffi.Pointer<_IO_FILE> __stream,
);

typedef _c_funlockfile = ffi.Void Function(
  ffi.Pointer<_IO_FILE> __stream,
);

typedef _dart_funlockfile = void Function(
  ffi.Pointer<_IO_FILE> __stream,
);

typedef _c___ctype_get_mb_cur_max = ffi.Int32 Function();

typedef _dart___ctype_get_mb_cur_max = int Function();

typedef _c_atof = ffi.Double Function(
  ffi.Pointer<ffi.Int8> __nptr,
);

typedef _dart_atof = double Function(
  ffi.Pointer<ffi.Int8> __nptr,
);

typedef _c_atoi = ffi.Int32 Function(
  ffi.Pointer<ffi.Int8> __nptr,
);

typedef _dart_atoi = int Function(
  ffi.Pointer<ffi.Int8> __nptr,
);

typedef _c_atol = ffi.Int64 Function(
  ffi.Pointer<ffi.Int8> __nptr,
);

typedef _dart_atol = int Function(
  ffi.Pointer<ffi.Int8> __nptr,
);

typedef _c_atoll = ffi.Int64 Function(
  ffi.Pointer<ffi.Int8> __nptr,
);

typedef _dart_atoll = int Function(
  ffi.Pointer<ffi.Int8> __nptr,
);

typedef _c_strtod = ffi.Double Function(
  ffi.Pointer<ffi.Int8> __nptr,
  ffi.Pointer<ffi.Pointer<ffi.Int8>> __endptr,
);

typedef _dart_strtod = double Function(
  ffi.Pointer<ffi.Int8> __nptr,
  ffi.Pointer<ffi.Pointer<ffi.Int8>> __endptr,
);

typedef _c_strtof = ffi.Float Function(
  ffi.Pointer<ffi.Int8> __nptr,
  ffi.Pointer<ffi.Pointer<ffi.Int8>> __endptr,
);

typedef _dart_strtof = double Function(
  ffi.Pointer<ffi.Int8> __nptr,
  ffi.Pointer<ffi.Pointer<ffi.Int8>> __endptr,
);

typedef _c_strtol = ffi.Int64 Function(
  ffi.Pointer<ffi.Int8> __nptr,
  ffi.Pointer<ffi.Pointer<ffi.Int8>> __endptr,
  ffi.Int32 __base,
);

typedef _dart_strtol = int Function(
  ffi.Pointer<ffi.Int8> __nptr,
  ffi.Pointer<ffi.Pointer<ffi.Int8>> __endptr,
  int __base,
);

typedef _c_strtoul = ffi.Uint64 Function(
  ffi.Pointer<ffi.Int8> __nptr,
  ffi.Pointer<ffi.Pointer<ffi.Int8>> __endptr,
  ffi.Int32 __base,
);

typedef _dart_strtoul = int Function(
  ffi.Pointer<ffi.Int8> __nptr,
  ffi.Pointer<ffi.Pointer<ffi.Int8>> __endptr,
  int __base,
);

typedef _c_strtoq = ffi.Int64 Function(
  ffi.Pointer<ffi.Int8> __nptr,
  ffi.Pointer<ffi.Pointer<ffi.Int8>> __endptr,
  ffi.Int32 __base,
);

typedef _dart_strtoq = int Function(
  ffi.Pointer<ffi.Int8> __nptr,
  ffi.Pointer<ffi.Pointer<ffi.Int8>> __endptr,
  int __base,
);

typedef _c_strtouq = ffi.Uint64 Function(
  ffi.Pointer<ffi.Int8> __nptr,
  ffi.Pointer<ffi.Pointer<ffi.Int8>> __endptr,
  ffi.Int32 __base,
);

typedef _dart_strtouq = int Function(
  ffi.Pointer<ffi.Int8> __nptr,
  ffi.Pointer<ffi.Pointer<ffi.Int8>> __endptr,
  int __base,
);

typedef _c_strtoll = ffi.Int64 Function(
  ffi.Pointer<ffi.Int8> __nptr,
  ffi.Pointer<ffi.Pointer<ffi.Int8>> __endptr,
  ffi.Int32 __base,
);

typedef _dart_strtoll = int Function(
  ffi.Pointer<ffi.Int8> __nptr,
  ffi.Pointer<ffi.Pointer<ffi.Int8>> __endptr,
  int __base,
);

typedef _c_strtoull = ffi.Uint64 Function(
  ffi.Pointer<ffi.Int8> __nptr,
  ffi.Pointer<ffi.Pointer<ffi.Int8>> __endptr,
  ffi.Int32 __base,
);

typedef _dart_strtoull = int Function(
  ffi.Pointer<ffi.Int8> __nptr,
  ffi.Pointer<ffi.Pointer<ffi.Int8>> __endptr,
  int __base,
);

typedef _c_l64a = ffi.Pointer<ffi.Int8> Function(
  ffi.Int64 __n,
);

typedef _dart_l64a = ffi.Pointer<ffi.Int8> Function(
  int __n,
);

typedef _c_a64l = ffi.Int64 Function(
  ffi.Pointer<ffi.Int8> __s,
);

typedef _dart_a64l = int Function(
  ffi.Pointer<ffi.Int8> __s,
);

typedef _c___uint16_identity = ffi.Uint16 Function(
  ffi.Uint16 __x,
);

typedef _dart___uint16_identity = int Function(
  int __x,
);

typedef _c___uint32_identity = ffi.Uint32 Function(
  ffi.Uint32 __x,
);

typedef _dart___uint32_identity = int Function(
  int __x,
);

typedef _c___uint64_identity = ffi.Uint64 Function(
  ffi.Uint64 __x,
);

typedef _dart___uint64_identity = int Function(
  int __x,
);

typedef _c_select = ffi.Int32 Function(
  ffi.Int32 __nfds,
  ffi.Pointer<fd_set> __readfds,
  ffi.Pointer<fd_set> __writefds,
  ffi.Pointer<fd_set> __exceptfds,
  ffi.Pointer<timeval> __timeout,
);

typedef _dart_select = int Function(
  int __nfds,
  ffi.Pointer<fd_set> __readfds,
  ffi.Pointer<fd_set> __writefds,
  ffi.Pointer<fd_set> __exceptfds,
  ffi.Pointer<timeval> __timeout,
);

typedef _c_pselect = ffi.Int32 Function(
  ffi.Int32 __nfds,
  ffi.Pointer<fd_set> __readfds,
  ffi.Pointer<fd_set> __writefds,
  ffi.Pointer<fd_set> __exceptfds,
  ffi.Pointer<timespec> __timeout,
  ffi.Pointer<ffi.Uint64> __sigmask,
);

typedef _dart_pselect = int Function(
  int __nfds,
  ffi.Pointer<fd_set> __readfds,
  ffi.Pointer<fd_set> __writefds,
  ffi.Pointer<fd_set> __exceptfds,
  ffi.Pointer<timespec> __timeout,
  ffi.Pointer<ffi.Uint64> __sigmask,
);

typedef _c_gnu_dev_major = ffi.Uint32 Function(
  ffi.Uint64 __dev,
);

typedef _dart_gnu_dev_major = int Function(
  int __dev,
);

typedef _c_gnu_dev_minor = ffi.Uint32 Function(
  ffi.Uint64 __dev,
);

typedef _dart_gnu_dev_minor = int Function(
  int __dev,
);

typedef _c_gnu_dev_makedev = ffi.Uint64 Function(
  ffi.Uint32 __major,
  ffi.Uint32 __minor,
);

typedef _dart_gnu_dev_makedev = int Function(
  int __major,
  int __minor,
);

typedef _c_random = ffi.Int64 Function();

typedef _dart_random = int Function();

typedef _c_srandom = ffi.Void Function(
  ffi.Uint32 __seed,
);

typedef _dart_srandom = void Function(
  int __seed,
);

typedef _c_initstate = ffi.Pointer<ffi.Int8> Function(
  ffi.Uint32 __seed,
  ffi.Pointer<ffi.Int8> __statebuf,
  ffi.Int32 __statelen,
);

typedef _dart_initstate = ffi.Pointer<ffi.Int8> Function(
  int __seed,
  ffi.Pointer<ffi.Int8> __statebuf,
  int __statelen,
);

typedef _c_setstate = ffi.Pointer<ffi.Int8> Function(
  ffi.Pointer<ffi.Int8> __statebuf,
);

typedef _dart_setstate = ffi.Pointer<ffi.Int8> Function(
  ffi.Pointer<ffi.Int8> __statebuf,
);

typedef _c_random_r = ffi.Int32 Function(
  ffi.Pointer<random_data> __buf,
  ffi.Pointer<ffi.Int32> __result,
);

typedef _dart_random_r = int Function(
  ffi.Pointer<random_data> __buf,
  ffi.Pointer<ffi.Int32> __result,
);

typedef _c_srandom_r = ffi.Int32 Function(
  ffi.Uint32 __seed,
  ffi.Pointer<random_data> __buf,
);

typedef _dart_srandom_r = int Function(
  int __seed,
  ffi.Pointer<random_data> __buf,
);

typedef _c_initstate_r = ffi.Int32 Function(
  ffi.Uint32 __seed,
  ffi.Pointer<ffi.Int8> __statebuf,
  ffi.Int32 __statelen,
  ffi.Pointer<random_data> __buf,
);

typedef _dart_initstate_r = int Function(
  int __seed,
  ffi.Pointer<ffi.Int8> __statebuf,
  int __statelen,
  ffi.Pointer<random_data> __buf,
);

typedef _c_setstate_r = ffi.Int32 Function(
  ffi.Pointer<ffi.Int8> __statebuf,
  ffi.Pointer<random_data> __buf,
);

typedef _dart_setstate_r = int Function(
  ffi.Pointer<ffi.Int8> __statebuf,
  ffi.Pointer<random_data> __buf,
);

typedef _c_rand = ffi.Int32 Function();

typedef _dart_rand = int Function();

typedef _c_srand = ffi.Void Function(
  ffi.Uint32 __seed,
);

typedef _dart_srand = void Function(
  int __seed,
);

typedef _c_rand_r = ffi.Int32 Function(
  ffi.Pointer<ffi.Uint32> __seed,
);

typedef _dart_rand_r = int Function(
  ffi.Pointer<ffi.Uint32> __seed,
);

typedef _c_drand48 = ffi.Double Function();

typedef _dart_drand48 = double Function();

typedef _c_erand48 = ffi.Double Function(
  ffi.Pointer<ffi.Uint16> __xsubi,
);

typedef _dart_erand48 = double Function(
  ffi.Pointer<ffi.Uint16> __xsubi,
);

typedef _c_lrand48 = ffi.Int64 Function();

typedef _dart_lrand48 = int Function();

typedef _c_nrand48 = ffi.Int64 Function(
  ffi.Pointer<ffi.Uint16> __xsubi,
);

typedef _dart_nrand48 = int Function(
  ffi.Pointer<ffi.Uint16> __xsubi,
);

typedef _c_mrand48 = ffi.Int64 Function();

typedef _dart_mrand48 = int Function();

typedef _c_jrand48 = ffi.Int64 Function(
  ffi.Pointer<ffi.Uint16> __xsubi,
);

typedef _dart_jrand48 = int Function(
  ffi.Pointer<ffi.Uint16> __xsubi,
);

typedef _c_srand48 = ffi.Void Function(
  ffi.Int64 __seedval,
);

typedef _dart_srand48 = void Function(
  int __seedval,
);

typedef _c_seed48 = ffi.Pointer<ffi.Uint16> Function(
  ffi.Pointer<ffi.Uint16> __seed16v,
);

typedef _dart_seed48 = ffi.Pointer<ffi.Uint16> Function(
  ffi.Pointer<ffi.Uint16> __seed16v,
);

typedef _c_lcong48 = ffi.Void Function(
  ffi.Pointer<ffi.Uint16> __param,
);

typedef _dart_lcong48 = void Function(
  ffi.Pointer<ffi.Uint16> __param,
);

typedef _c_drand48_r = ffi.Int32 Function(
  ffi.Pointer<drand48_data> __buffer,
  ffi.Pointer<ffi.Double> __result,
);

typedef _dart_drand48_r = int Function(
  ffi.Pointer<drand48_data> __buffer,
  ffi.Pointer<ffi.Double> __result,
);

typedef _c_erand48_r = ffi.Int32 Function(
  ffi.Pointer<ffi.Uint16> __xsubi,
  ffi.Pointer<drand48_data> __buffer,
  ffi.Pointer<ffi.Double> __result,
);

typedef _dart_erand48_r = int Function(
  ffi.Pointer<ffi.Uint16> __xsubi,
  ffi.Pointer<drand48_data> __buffer,
  ffi.Pointer<ffi.Double> __result,
);

typedef _c_lrand48_r = ffi.Int32 Function(
  ffi.Pointer<drand48_data> __buffer,
  ffi.Pointer<ffi.Int64> __result,
);

typedef _dart_lrand48_r = int Function(
  ffi.Pointer<drand48_data> __buffer,
  ffi.Pointer<ffi.Int64> __result,
);

typedef _c_nrand48_r = ffi.Int32 Function(
  ffi.Pointer<ffi.Uint16> __xsubi,
  ffi.Pointer<drand48_data> __buffer,
  ffi.Pointer<ffi.Int64> __result,
);

typedef _dart_nrand48_r = int Function(
  ffi.Pointer<ffi.Uint16> __xsubi,
  ffi.Pointer<drand48_data> __buffer,
  ffi.Pointer<ffi.Int64> __result,
);

typedef _c_mrand48_r = ffi.Int32 Function(
  ffi.Pointer<drand48_data> __buffer,
  ffi.Pointer<ffi.Int64> __result,
);

typedef _dart_mrand48_r = int Function(
  ffi.Pointer<drand48_data> __buffer,
  ffi.Pointer<ffi.Int64> __result,
);

typedef _c_jrand48_r = ffi.Int32 Function(
  ffi.Pointer<ffi.Uint16> __xsubi,
  ffi.Pointer<drand48_data> __buffer,
  ffi.Pointer<ffi.Int64> __result,
);

typedef _dart_jrand48_r = int Function(
  ffi.Pointer<ffi.Uint16> __xsubi,
  ffi.Pointer<drand48_data> __buffer,
  ffi.Pointer<ffi.Int64> __result,
);

typedef _c_srand48_r = ffi.Int32 Function(
  ffi.Int64 __seedval,
  ffi.Pointer<drand48_data> __buffer,
);

typedef _dart_srand48_r = int Function(
  int __seedval,
  ffi.Pointer<drand48_data> __buffer,
);

typedef _c_seed48_r = ffi.Int32 Function(
  ffi.Pointer<ffi.Uint16> __seed16v,
  ffi.Pointer<drand48_data> __buffer,
);

typedef _dart_seed48_r = int Function(
  ffi.Pointer<ffi.Uint16> __seed16v,
  ffi.Pointer<drand48_data> __buffer,
);

typedef _c_lcong48_r = ffi.Int32 Function(
  ffi.Pointer<ffi.Uint16> __param,
  ffi.Pointer<drand48_data> __buffer,
);

typedef _dart_lcong48_r = int Function(
  ffi.Pointer<ffi.Uint16> __param,
  ffi.Pointer<drand48_data> __buffer,
);

typedef _c_malloc = ffi.Pointer<ffi.Void> Function(
  ffi.Int32 __size,
);

typedef _dart_malloc = ffi.Pointer<ffi.Void> Function(
  int __size,
);

typedef _c_calloc = ffi.Pointer<ffi.Void> Function(
  ffi.Int32 __nmemb,
  ffi.Int32 __size,
);

typedef _dart_calloc = ffi.Pointer<ffi.Void> Function(
  int __nmemb,
  int __size,
);

typedef _c_realloc = ffi.Pointer<ffi.Void> Function(
  ffi.Pointer<ffi.Void> __ptr,
  ffi.Int32 __size,
);

typedef _dart_realloc = ffi.Pointer<ffi.Void> Function(
  ffi.Pointer<ffi.Void> __ptr,
  int __size,
);

typedef _c_free = ffi.Void Function(
  ffi.Pointer<ffi.Void> __ptr,
);

typedef _dart_free = void Function(
  ffi.Pointer<ffi.Void> __ptr,
);

typedef _c_alloca = ffi.Pointer<ffi.Void> Function(
  ffi.Int32 __size,
);

typedef _dart_alloca = ffi.Pointer<ffi.Void> Function(
  int __size,
);

typedef _c_valloc = ffi.Pointer<ffi.Void> Function(
  ffi.Int32 __size,
);

typedef _dart_valloc = ffi.Pointer<ffi.Void> Function(
  int __size,
);

typedef _c_posix_memalign = ffi.Int32 Function(
  ffi.Pointer<ffi.Pointer<ffi.Void>> __memptr,
  ffi.Int32 __alignment,
  ffi.Int32 __size,
);

typedef _dart_posix_memalign = int Function(
  ffi.Pointer<ffi.Pointer<ffi.Void>> __memptr,
  int __alignment,
  int __size,
);

typedef _c_aligned_alloc = ffi.Pointer<ffi.Void> Function(
  ffi.Int32 __alignment,
  ffi.Int32 __size,
);

typedef _dart_aligned_alloc = ffi.Pointer<ffi.Void> Function(
  int __alignment,
  int __size,
);

typedef _c_abort = ffi.Void Function();

typedef _dart_abort = void Function();

typedef _c_exit = ffi.Void Function(
  ffi.Int32 __status,
);

typedef _dart_exit = void Function(
  int __status,
);

typedef _c_quick_exit = ffi.Void Function(
  ffi.Int32 __status,
);

typedef _dart_quick_exit = void Function(
  int __status,
);

typedef _c__Exit = ffi.Void Function(
  ffi.Int32 __status,
);

typedef _dart__Exit = void Function(
  int __status,
);

typedef _c_getenv = ffi.Pointer<ffi.Int8> Function(
  ffi.Pointer<ffi.Int8> __name,
);

typedef _dart_getenv = ffi.Pointer<ffi.Int8> Function(
  ffi.Pointer<ffi.Int8> __name,
);

typedef _c_putenv = ffi.Int32 Function(
  ffi.Pointer<ffi.Int8> __string,
);

typedef _dart_putenv = int Function(
  ffi.Pointer<ffi.Int8> __string,
);

typedef _c_setenv = ffi.Int32 Function(
  ffi.Pointer<ffi.Int8> __name,
  ffi.Pointer<ffi.Int8> __value,
  ffi.Int32 __replace,
);

typedef _dart_setenv = int Function(
  ffi.Pointer<ffi.Int8> __name,
  ffi.Pointer<ffi.Int8> __value,
  int __replace,
);

typedef _c_unsetenv = ffi.Int32 Function(
  ffi.Pointer<ffi.Int8> __name,
);

typedef _dart_unsetenv = int Function(
  ffi.Pointer<ffi.Int8> __name,
);

typedef _c_clearenv = ffi.Int32 Function();

typedef _dart_clearenv = int Function();

typedef _c_mktemp = ffi.Pointer<ffi.Int8> Function(
  ffi.Pointer<ffi.Int8> __template,
);

typedef _dart_mktemp = ffi.Pointer<ffi.Int8> Function(
  ffi.Pointer<ffi.Int8> __template,
);

typedef _c_mkstemp = ffi.Int32 Function(
  ffi.Pointer<ffi.Int8> __template,
);

typedef _dart_mkstemp = int Function(
  ffi.Pointer<ffi.Int8> __template,
);

typedef _c_mkstemps = ffi.Int32 Function(
  ffi.Pointer<ffi.Int8> __template,
  ffi.Int32 __suffixlen,
);

typedef _dart_mkstemps = int Function(
  ffi.Pointer<ffi.Int8> __template,
  int __suffixlen,
);

typedef _c_mkdtemp = ffi.Pointer<ffi.Int8> Function(
  ffi.Pointer<ffi.Int8> __template,
);

typedef _dart_mkdtemp = ffi.Pointer<ffi.Int8> Function(
  ffi.Pointer<ffi.Int8> __template,
);

typedef _c_system = ffi.Int32 Function(
  ffi.Pointer<ffi.Int8> __command,
);

typedef _dart_system = int Function(
  ffi.Pointer<ffi.Int8> __command,
);

typedef _c_realpath = ffi.Pointer<ffi.Int8> Function(
  ffi.Pointer<ffi.Int8> __name,
  ffi.Pointer<ffi.Int8> __resolved,
);

typedef _dart_realpath = ffi.Pointer<ffi.Int8> Function(
  ffi.Pointer<ffi.Int8> __name,
  ffi.Pointer<ffi.Int8> __resolved,
);

typedef __compar_fn_t_1 = ffi.Int32 Function(
  ffi.Pointer<ffi.Void>,
  ffi.Pointer<ffi.Void>,
);

typedef _c_bsearch = ffi.Pointer<ffi.Void> Function(
  ffi.Pointer<ffi.Void> __key,
  ffi.Pointer<ffi.Void> __base,
  ffi.Int32 __nmemb,
  ffi.Int32 __size,
  ffi.Pointer<ffi.NativeFunction<__compar_fn_t_1>> __compar,
);

typedef _dart_bsearch = ffi.Pointer<ffi.Void> Function(
  ffi.Pointer<ffi.Void> __key,
  ffi.Pointer<ffi.Void> __base,
  int __nmemb,
  int __size,
  ffi.Pointer<ffi.NativeFunction<__compar_fn_t_1>> __compar,
);

typedef __compar_fn_t_2 = ffi.Int32 Function(
  ffi.Pointer<ffi.Void>,
  ffi.Pointer<ffi.Void>,
);

typedef _c_qsort = ffi.Void Function(
  ffi.Pointer<ffi.Void> __base,
  ffi.Int32 __nmemb,
  ffi.Int32 __size,
  ffi.Pointer<ffi.NativeFunction<__compar_fn_t_2>> __compar,
);

typedef _dart_qsort = void Function(
  ffi.Pointer<ffi.Void> __base,
  int __nmemb,
  int __size,
  ffi.Pointer<ffi.NativeFunction<__compar_fn_t_2>> __compar,
);

typedef _c_abs = ffi.Int32 Function(
  ffi.Int32 __x,
);

typedef _dart_abs = int Function(
  int __x,
);

typedef _c_labs = ffi.Int64 Function(
  ffi.Int64 __x,
);

typedef _dart_labs = int Function(
  int __x,
);

typedef _c_llabs = ffi.Int64 Function(
  ffi.Int64 __x,
);

typedef _dart_llabs = int Function(
  int __x,
);

typedef _c_ecvt = ffi.Pointer<ffi.Int8> Function(
  ffi.Double __value,
  ffi.Int32 __ndigit,
  ffi.Pointer<ffi.Int32> __decpt,
  ffi.Pointer<ffi.Int32> __sign,
);

typedef _dart_ecvt = ffi.Pointer<ffi.Int8> Function(
  double __value,
  int __ndigit,
  ffi.Pointer<ffi.Int32> __decpt,
  ffi.Pointer<ffi.Int32> __sign,
);

typedef _c_fcvt = ffi.Pointer<ffi.Int8> Function(
  ffi.Double __value,
  ffi.Int32 __ndigit,
  ffi.Pointer<ffi.Int32> __decpt,
  ffi.Pointer<ffi.Int32> __sign,
);

typedef _dart_fcvt = ffi.Pointer<ffi.Int8> Function(
  double __value,
  int __ndigit,
  ffi.Pointer<ffi.Int32> __decpt,
  ffi.Pointer<ffi.Int32> __sign,
);

typedef _c_gcvt = ffi.Pointer<ffi.Int8> Function(
  ffi.Double __value,
  ffi.Int32 __ndigit,
  ffi.Pointer<ffi.Int8> __buf,
);

typedef _dart_gcvt = ffi.Pointer<ffi.Int8> Function(
  double __value,
  int __ndigit,
  ffi.Pointer<ffi.Int8> __buf,
);

typedef _c_ecvt_r = ffi.Int32 Function(
  ffi.Double __value,
  ffi.Int32 __ndigit,
  ffi.Pointer<ffi.Int32> __decpt,
  ffi.Pointer<ffi.Int32> __sign,
  ffi.Pointer<ffi.Int8> __buf,
  ffi.Int32 __len,
);

typedef _dart_ecvt_r = int Function(
  double __value,
  int __ndigit,
  ffi.Pointer<ffi.Int32> __decpt,
  ffi.Pointer<ffi.Int32> __sign,
  ffi.Pointer<ffi.Int8> __buf,
  int __len,
);

typedef _c_fcvt_r = ffi.Int32 Function(
  ffi.Double __value,
  ffi.Int32 __ndigit,
  ffi.Pointer<ffi.Int32> __decpt,
  ffi.Pointer<ffi.Int32> __sign,
  ffi.Pointer<ffi.Int8> __buf,
  ffi.Int32 __len,
);

typedef _dart_fcvt_r = int Function(
  double __value,
  int __ndigit,
  ffi.Pointer<ffi.Int32> __decpt,
  ffi.Pointer<ffi.Int32> __sign,
  ffi.Pointer<ffi.Int8> __buf,
  int __len,
);

typedef _c_mblen = ffi.Int32 Function(
  ffi.Pointer<ffi.Int8> __s,
  ffi.Int32 __n,
);

typedef _dart_mblen = int Function(
  ffi.Pointer<ffi.Int8> __s,
  int __n,
);

typedef _c_mbtowc = ffi.Int32 Function(
  ffi.Pointer<ffi.Int32> __pwc,
  ffi.Pointer<ffi.Int8> __s,
  ffi.Int32 __n,
);

typedef _dart_mbtowc = int Function(
  ffi.Pointer<ffi.Int32> __pwc,
  ffi.Pointer<ffi.Int8> __s,
  int __n,
);

typedef _c_wctomb = ffi.Int32 Function(
  ffi.Pointer<ffi.Int8> __s,
  ffi.Int32 __wchar,
);

typedef _dart_wctomb = int Function(
  ffi.Pointer<ffi.Int8> __s,
  int __wchar,
);

typedef _c_mbstowcs = ffi.Int32 Function(
  ffi.Pointer<ffi.Int32> __pwcs,
  ffi.Pointer<ffi.Int8> __s,
  ffi.Int32 __n,
);

typedef _dart_mbstowcs = int Function(
  ffi.Pointer<ffi.Int32> __pwcs,
  ffi.Pointer<ffi.Int8> __s,
  int __n,
);

typedef _c_wcstombs = ffi.Int32 Function(
  ffi.Pointer<ffi.Int8> __s,
  ffi.Pointer<ffi.Int32> __pwcs,
  ffi.Int32 __n,
);

typedef _dart_wcstombs = int Function(
  ffi.Pointer<ffi.Int8> __s,
  ffi.Pointer<ffi.Int32> __pwcs,
  int __n,
);

typedef _c_rpmatch = ffi.Int32 Function(
  ffi.Pointer<ffi.Int8> __response,
);

typedef _dart_rpmatch = int Function(
  ffi.Pointer<ffi.Int8> __response,
);

typedef _c_getsubopt = ffi.Int32 Function(
  ffi.Pointer<ffi.Pointer<ffi.Int8>> __optionp,
  ffi.Pointer<ffi.Pointer<ffi.Int8>> __tokens,
  ffi.Pointer<ffi.Pointer<ffi.Int8>> __valuep,
);

typedef _dart_getsubopt = int Function(
  ffi.Pointer<ffi.Pointer<ffi.Int8>> __optionp,
  ffi.Pointer<ffi.Pointer<ffi.Int8>> __tokens,
  ffi.Pointer<ffi.Pointer<ffi.Int8>> __valuep,
);

typedef _c_getloadavg = ffi.Int32 Function(
  ffi.Pointer<ffi.Double> __loadavg,
  ffi.Int32 __nelem,
);

typedef _dart_getloadavg = int Function(
  ffi.Pointer<ffi.Double> __loadavg,
  int __nelem,
);

typedef _c_memcpy = ffi.Pointer<ffi.Void> Function(
  ffi.Pointer<ffi.Void> __dest,
  ffi.Pointer<ffi.Void> __src,
  ffi.Int32 __n,
);

typedef _dart_memcpy = ffi.Pointer<ffi.Void> Function(
  ffi.Pointer<ffi.Void> __dest,
  ffi.Pointer<ffi.Void> __src,
  int __n,
);

typedef _c_memmove = ffi.Pointer<ffi.Void> Function(
  ffi.Pointer<ffi.Void> __dest,
  ffi.Pointer<ffi.Void> __src,
  ffi.Int32 __n,
);

typedef _dart_memmove = ffi.Pointer<ffi.Void> Function(
  ffi.Pointer<ffi.Void> __dest,
  ffi.Pointer<ffi.Void> __src,
  int __n,
);

typedef _c_memccpy = ffi.Pointer<ffi.Void> Function(
  ffi.Pointer<ffi.Void> __dest,
  ffi.Pointer<ffi.Void> __src,
  ffi.Int32 __c,
  ffi.Int32 __n,
);

typedef _dart_memccpy = ffi.Pointer<ffi.Void> Function(
  ffi.Pointer<ffi.Void> __dest,
  ffi.Pointer<ffi.Void> __src,
  int __c,
  int __n,
);

typedef _c_memset = ffi.Pointer<ffi.Void> Function(
  ffi.Pointer<ffi.Void> __s,
  ffi.Int32 __c,
  ffi.Int32 __n,
);

typedef _dart_memset = ffi.Pointer<ffi.Void> Function(
  ffi.Pointer<ffi.Void> __s,
  int __c,
  int __n,
);

typedef _c_memcmp = ffi.Int32 Function(
  ffi.Pointer<ffi.Void> __s1,
  ffi.Pointer<ffi.Void> __s2,
  ffi.Int32 __n,
);

typedef _dart_memcmp = int Function(
  ffi.Pointer<ffi.Void> __s1,
  ffi.Pointer<ffi.Void> __s2,
  int __n,
);

typedef _c_memchr = ffi.Pointer<ffi.Void> Function(
  ffi.Pointer<ffi.Void> __s,
  ffi.Int32 __c,
  ffi.Int32 __n,
);

typedef _dart_memchr = ffi.Pointer<ffi.Void> Function(
  ffi.Pointer<ffi.Void> __s,
  int __c,
  int __n,
);

typedef _c_strcpy = ffi.Pointer<ffi.Int8> Function(
  ffi.Pointer<ffi.Int8> __dest,
  ffi.Pointer<ffi.Int8> __src,
);

typedef _dart_strcpy = ffi.Pointer<ffi.Int8> Function(
  ffi.Pointer<ffi.Int8> __dest,
  ffi.Pointer<ffi.Int8> __src,
);

typedef _c_strncpy = ffi.Pointer<ffi.Int8> Function(
  ffi.Pointer<ffi.Int8> __dest,
  ffi.Pointer<ffi.Int8> __src,
  ffi.Int32 __n,
);

typedef _dart_strncpy = ffi.Pointer<ffi.Int8> Function(
  ffi.Pointer<ffi.Int8> __dest,
  ffi.Pointer<ffi.Int8> __src,
  int __n,
);

typedef _c_strcat = ffi.Pointer<ffi.Int8> Function(
  ffi.Pointer<ffi.Int8> __dest,
  ffi.Pointer<ffi.Int8> __src,
);

typedef _dart_strcat = ffi.Pointer<ffi.Int8> Function(
  ffi.Pointer<ffi.Int8> __dest,
  ffi.Pointer<ffi.Int8> __src,
);

typedef _c_strncat = ffi.Pointer<ffi.Int8> Function(
  ffi.Pointer<ffi.Int8> __dest,
  ffi.Pointer<ffi.Int8> __src,
  ffi.Int32 __n,
);

typedef _dart_strncat = ffi.Pointer<ffi.Int8> Function(
  ffi.Pointer<ffi.Int8> __dest,
  ffi.Pointer<ffi.Int8> __src,
  int __n,
);

typedef _c_strcmp = ffi.Int32 Function(
  ffi.Pointer<ffi.Int8> __s1,
  ffi.Pointer<ffi.Int8> __s2,
);

typedef _dart_strcmp = int Function(
  ffi.Pointer<ffi.Int8> __s1,
  ffi.Pointer<ffi.Int8> __s2,
);

typedef _c_strncmp = ffi.Int32 Function(
  ffi.Pointer<ffi.Int8> __s1,
  ffi.Pointer<ffi.Int8> __s2,
  ffi.Int32 __n,
);

typedef _dart_strncmp = int Function(
  ffi.Pointer<ffi.Int8> __s1,
  ffi.Pointer<ffi.Int8> __s2,
  int __n,
);

typedef _c_strcoll = ffi.Int32 Function(
  ffi.Pointer<ffi.Int8> __s1,
  ffi.Pointer<ffi.Int8> __s2,
);

typedef _dart_strcoll = int Function(
  ffi.Pointer<ffi.Int8> __s1,
  ffi.Pointer<ffi.Int8> __s2,
);

typedef _c_strxfrm = ffi.Int32 Function(
  ffi.Pointer<ffi.Int8> __dest,
  ffi.Pointer<ffi.Int8> __src,
  ffi.Int32 __n,
);

typedef _dart_strxfrm = int Function(
  ffi.Pointer<ffi.Int8> __dest,
  ffi.Pointer<ffi.Int8> __src,
  int __n,
);

typedef _c_strcoll_l = ffi.Int32 Function(
  ffi.Pointer<ffi.Int8> __s1,
  ffi.Pointer<ffi.Int8> __s2,
  ffi.Pointer<__locale_struct> __l,
);

typedef _dart_strcoll_l = int Function(
  ffi.Pointer<ffi.Int8> __s1,
  ffi.Pointer<ffi.Int8> __s2,
  ffi.Pointer<__locale_struct> __l,
);

typedef _c_strxfrm_l = ffi.Int32 Function(
  ffi.Pointer<ffi.Int8> __dest,
  ffi.Pointer<ffi.Int8> __src,
  ffi.Int32 __n,
  ffi.Pointer<__locale_struct> __l,
);

typedef _dart_strxfrm_l = int Function(
  ffi.Pointer<ffi.Int8> __dest,
  ffi.Pointer<ffi.Int8> __src,
  int __n,
  ffi.Pointer<__locale_struct> __l,
);

typedef _c_strdup = ffi.Pointer<ffi.Int8> Function(
  ffi.Pointer<ffi.Int8> __s,
);

typedef _dart_strdup = ffi.Pointer<ffi.Int8> Function(
  ffi.Pointer<ffi.Int8> __s,
);

typedef _c_strndup = ffi.Pointer<ffi.Int8> Function(
  ffi.Pointer<ffi.Int8> __string,
  ffi.Int32 __n,
);

typedef _dart_strndup = ffi.Pointer<ffi.Int8> Function(
  ffi.Pointer<ffi.Int8> __string,
  int __n,
);

typedef _c_strchr = ffi.Pointer<ffi.Int8> Function(
  ffi.Pointer<ffi.Int8> __s,
  ffi.Int32 __c,
);

typedef _dart_strchr = ffi.Pointer<ffi.Int8> Function(
  ffi.Pointer<ffi.Int8> __s,
  int __c,
);

typedef _c_strrchr = ffi.Pointer<ffi.Int8> Function(
  ffi.Pointer<ffi.Int8> __s,
  ffi.Int32 __c,
);

typedef _dart_strrchr = ffi.Pointer<ffi.Int8> Function(
  ffi.Pointer<ffi.Int8> __s,
  int __c,
);

typedef _c_strcspn = ffi.Int32 Function(
  ffi.Pointer<ffi.Int8> __s,
  ffi.Pointer<ffi.Int8> __reject,
);

typedef _dart_strcspn = int Function(
  ffi.Pointer<ffi.Int8> __s,
  ffi.Pointer<ffi.Int8> __reject,
);

typedef _c_strspn = ffi.Int32 Function(
  ffi.Pointer<ffi.Int8> __s,
  ffi.Pointer<ffi.Int8> __accept,
);

typedef _dart_strspn = int Function(
  ffi.Pointer<ffi.Int8> __s,
  ffi.Pointer<ffi.Int8> __accept,
);

typedef _c_strpbrk = ffi.Pointer<ffi.Int8> Function(
  ffi.Pointer<ffi.Int8> __s,
  ffi.Pointer<ffi.Int8> __accept,
);

typedef _dart_strpbrk = ffi.Pointer<ffi.Int8> Function(
  ffi.Pointer<ffi.Int8> __s,
  ffi.Pointer<ffi.Int8> __accept,
);

typedef _c_strstr = ffi.Pointer<ffi.Int8> Function(
  ffi.Pointer<ffi.Int8> __haystack,
  ffi.Pointer<ffi.Int8> __needle,
);

typedef _dart_strstr = ffi.Pointer<ffi.Int8> Function(
  ffi.Pointer<ffi.Int8> __haystack,
  ffi.Pointer<ffi.Int8> __needle,
);

typedef _c_strtok = ffi.Pointer<ffi.Int8> Function(
  ffi.Pointer<ffi.Int8> __s,
  ffi.Pointer<ffi.Int8> __delim,
);

typedef _dart_strtok = ffi.Pointer<ffi.Int8> Function(
  ffi.Pointer<ffi.Int8> __s,
  ffi.Pointer<ffi.Int8> __delim,
);

typedef _c___strtok_r = ffi.Pointer<ffi.Int8> Function(
  ffi.Pointer<ffi.Int8> __s,
  ffi.Pointer<ffi.Int8> __delim,
  ffi.Pointer<ffi.Pointer<ffi.Int8>> __save_ptr,
);

typedef _dart___strtok_r = ffi.Pointer<ffi.Int8> Function(
  ffi.Pointer<ffi.Int8> __s,
  ffi.Pointer<ffi.Int8> __delim,
  ffi.Pointer<ffi.Pointer<ffi.Int8>> __save_ptr,
);

typedef _c_strtok_r = ffi.Pointer<ffi.Int8> Function(
  ffi.Pointer<ffi.Int8> __s,
  ffi.Pointer<ffi.Int8> __delim,
  ffi.Pointer<ffi.Pointer<ffi.Int8>> __save_ptr,
);

typedef _dart_strtok_r = ffi.Pointer<ffi.Int8> Function(
  ffi.Pointer<ffi.Int8> __s,
  ffi.Pointer<ffi.Int8> __delim,
  ffi.Pointer<ffi.Pointer<ffi.Int8>> __save_ptr,
);

typedef _c_strlen = ffi.Int32 Function(
  ffi.Pointer<ffi.Int8> __s,
);

typedef _dart_strlen = int Function(
  ffi.Pointer<ffi.Int8> __s,
);

typedef _c_strnlen = ffi.Int32 Function(
  ffi.Pointer<ffi.Int8> __string,
  ffi.Int32 __maxlen,
);

typedef _dart_strnlen = int Function(
  ffi.Pointer<ffi.Int8> __string,
  int __maxlen,
);

typedef _c_strerror = ffi.Pointer<ffi.Int8> Function(
  ffi.Int32 __errnum,
);

typedef _dart_strerror = ffi.Pointer<ffi.Int8> Function(
  int __errnum,
);

typedef _c_strerror_r = ffi.Int32 Function(
  ffi.Int32 __errnum,
  ffi.Pointer<ffi.Int8> __buf,
  ffi.Int32 __buflen,
);

typedef _dart_strerror_r = int Function(
  int __errnum,
  ffi.Pointer<ffi.Int8> __buf,
  int __buflen,
);

typedef _c_strerror_l = ffi.Pointer<ffi.Int8> Function(
  ffi.Int32 __errnum,
  ffi.Pointer<__locale_struct> __l,
);

typedef _dart_strerror_l = ffi.Pointer<ffi.Int8> Function(
  int __errnum,
  ffi.Pointer<__locale_struct> __l,
);

typedef _c_bcmp = ffi.Int32 Function(
  ffi.Pointer<ffi.Void> __s1,
  ffi.Pointer<ffi.Void> __s2,
  ffi.Int32 __n,
);

typedef _dart_bcmp = int Function(
  ffi.Pointer<ffi.Void> __s1,
  ffi.Pointer<ffi.Void> __s2,
  int __n,
);

typedef _c_bcopy = ffi.Void Function(
  ffi.Pointer<ffi.Void> __src,
  ffi.Pointer<ffi.Void> __dest,
  ffi.Int32 __n,
);

typedef _dart_bcopy = void Function(
  ffi.Pointer<ffi.Void> __src,
  ffi.Pointer<ffi.Void> __dest,
  int __n,
);

typedef _c_bzero = ffi.Void Function(
  ffi.Pointer<ffi.Void> __s,
  ffi.Int32 __n,
);

typedef _dart_bzero = void Function(
  ffi.Pointer<ffi.Void> __s,
  int __n,
);

typedef _c_index = ffi.Pointer<ffi.Int8> Function(
  ffi.Pointer<ffi.Int8> __s,
  ffi.Int32 __c,
);

typedef _dart_index = ffi.Pointer<ffi.Int8> Function(
  ffi.Pointer<ffi.Int8> __s,
  int __c,
);

typedef _c_rindex = ffi.Pointer<ffi.Int8> Function(
  ffi.Pointer<ffi.Int8> __s,
  ffi.Int32 __c,
);

typedef _dart_rindex = ffi.Pointer<ffi.Int8> Function(
  ffi.Pointer<ffi.Int8> __s,
  int __c,
);

typedef _c_ffs = ffi.Int32 Function(
  ffi.Int32 __i,
);

typedef _dart_ffs = int Function(
  int __i,
);

typedef _c_ffsl = ffi.Int32 Function(
  ffi.Int64 __l,
);

typedef _dart_ffsl = int Function(
  int __l,
);

typedef _c_ffsll = ffi.Int32 Function(
  ffi.Int64 __ll,
);

typedef _dart_ffsll = int Function(
  int __ll,
);

typedef _c_strcasecmp = ffi.Int32 Function(
  ffi.Pointer<ffi.Int8> __s1,
  ffi.Pointer<ffi.Int8> __s2,
);

typedef _dart_strcasecmp = int Function(
  ffi.Pointer<ffi.Int8> __s1,
  ffi.Pointer<ffi.Int8> __s2,
);

typedef _c_strncasecmp = ffi.Int32 Function(
  ffi.Pointer<ffi.Int8> __s1,
  ffi.Pointer<ffi.Int8> __s2,
  ffi.Int32 __n,
);

typedef _dart_strncasecmp = int Function(
  ffi.Pointer<ffi.Int8> __s1,
  ffi.Pointer<ffi.Int8> __s2,
  int __n,
);

typedef _c_strcasecmp_l = ffi.Int32 Function(
  ffi.Pointer<ffi.Int8> __s1,
  ffi.Pointer<ffi.Int8> __s2,
  ffi.Pointer<__locale_struct> __loc,
);

typedef _dart_strcasecmp_l = int Function(
  ffi.Pointer<ffi.Int8> __s1,
  ffi.Pointer<ffi.Int8> __s2,
  ffi.Pointer<__locale_struct> __loc,
);

typedef _c_strncasecmp_l = ffi.Int32 Function(
  ffi.Pointer<ffi.Int8> __s1,
  ffi.Pointer<ffi.Int8> __s2,
  ffi.Int32 __n,
  ffi.Pointer<__locale_struct> __loc,
);

typedef _dart_strncasecmp_l = int Function(
  ffi.Pointer<ffi.Int8> __s1,
  ffi.Pointer<ffi.Int8> __s2,
  int __n,
  ffi.Pointer<__locale_struct> __loc,
);

typedef _c_explicit_bzero = ffi.Void Function(
  ffi.Pointer<ffi.Void> __s,
  ffi.Int32 __n,
);

typedef _dart_explicit_bzero = void Function(
  ffi.Pointer<ffi.Void> __s,
  int __n,
);

typedef _c_strsep = ffi.Pointer<ffi.Int8> Function(
  ffi.Pointer<ffi.Pointer<ffi.Int8>> __stringp,
  ffi.Pointer<ffi.Int8> __delim,
);

typedef _dart_strsep = ffi.Pointer<ffi.Int8> Function(
  ffi.Pointer<ffi.Pointer<ffi.Int8>> __stringp,
  ffi.Pointer<ffi.Int8> __delim,
);

typedef _c_strsignal = ffi.Pointer<ffi.Int8> Function(
  ffi.Int32 __sig,
);

typedef _dart_strsignal = ffi.Pointer<ffi.Int8> Function(
  int __sig,
);

typedef _c___stpcpy = ffi.Pointer<ffi.Int8> Function(
  ffi.Pointer<ffi.Int8> __dest,
  ffi.Pointer<ffi.Int8> __src,
);

typedef _dart___stpcpy = ffi.Pointer<ffi.Int8> Function(
  ffi.Pointer<ffi.Int8> __dest,
  ffi.Pointer<ffi.Int8> __src,
);

typedef _c_stpcpy = ffi.Pointer<ffi.Int8> Function(
  ffi.Pointer<ffi.Int8> __dest,
  ffi.Pointer<ffi.Int8> __src,
);

typedef _dart_stpcpy = ffi.Pointer<ffi.Int8> Function(
  ffi.Pointer<ffi.Int8> __dest,
  ffi.Pointer<ffi.Int8> __src,
);

typedef _c___stpncpy = ffi.Pointer<ffi.Int8> Function(
  ffi.Pointer<ffi.Int8> __dest,
  ffi.Pointer<ffi.Int8> __src,
  ffi.Int32 __n,
);

typedef _dart___stpncpy = ffi.Pointer<ffi.Int8> Function(
  ffi.Pointer<ffi.Int8> __dest,
  ffi.Pointer<ffi.Int8> __src,
  int __n,
);

typedef _c_stpncpy = ffi.Pointer<ffi.Int8> Function(
  ffi.Pointer<ffi.Int8> __dest,
  ffi.Pointer<ffi.Int8> __src,
  ffi.Int32 __n,
);

typedef _dart_stpncpy = ffi.Pointer<ffi.Int8> Function(
  ffi.Pointer<ffi.Int8> __dest,
  ffi.Pointer<ffi.Int8> __src,
  int __n,
);

typedef _c_ioctl = ffi.Int32 Function(
  ffi.Int32 __fd,
  ffi.Uint64 __request,
  ffi.Pointer<ffi.Void> __sz,
);

typedef _dart_ioctl = int Function(
  int __fd,
  int __request,
  ffi.Pointer<ffi.Void> __sz,
);

typedef _c_wait = ffi.Int32 Function(
  ffi.Pointer<ffi.Int32> __stat_loc,
);

typedef _dart_wait = int Function(
  ffi.Pointer<ffi.Int32> __stat_loc,
);

typedef _c_waitpid = ffi.Int32 Function(
  ffi.Int32 __pid,
  ffi.Pointer<ffi.Int32> __stat_loc,
  ffi.Int32 __options,
);

typedef _dart_waitpid = int Function(
  int __pid,
  ffi.Pointer<ffi.Int32> __stat_loc,
  int __options,
);

typedef _c_waitid = ffi.Int32 Function(
  ffi.Int32 __idtype,
  ffi.Uint32 __id,
  ffi.Pointer<siginfo_t> __infop,
  ffi.Int32 __options,
);

typedef _dart_waitid = int Function(
  int __idtype,
  int __id,
  ffi.Pointer<siginfo_t> __infop,
  int __options,
);

typedef _c_wait3 = ffi.Int32 Function(
  ffi.Pointer<ffi.Int32> __stat_loc,
  ffi.Int32 __options,
  ffi.Pointer<rusage> __usage,
);

typedef _dart_wait3 = int Function(
  ffi.Pointer<ffi.Int32> __stat_loc,
  int __options,
  ffi.Pointer<rusage> __usage,
);

typedef _c_wait4 = ffi.Int32 Function(
  ffi.Int32 __pid,
  ffi.Pointer<ffi.Int32> __stat_loc,
  ffi.Int32 __options,
  ffi.Pointer<rusage> __usage,
);

typedef _dart_wait4 = int Function(
  int __pid,
  ffi.Pointer<ffi.Int32> __stat_loc,
  int __options,
  ffi.Pointer<rusage> __usage,
);

typedef _c_cfgetospeed = ffi.Uint32 Function(
  ffi.Pointer<termios> __termios_p,
);

typedef _dart_cfgetospeed = int Function(
  ffi.Pointer<termios> __termios_p,
);

typedef _c_cfgetispeed = ffi.Uint32 Function(
  ffi.Pointer<termios> __termios_p,
);

typedef _dart_cfgetispeed = int Function(
  ffi.Pointer<termios> __termios_p,
);

typedef _c_cfsetospeed = ffi.Int32 Function(
  ffi.Pointer<termios> __termios_p,
  ffi.Uint32 __speed,
);

typedef _dart_cfsetospeed = int Function(
  ffi.Pointer<termios> __termios_p,
  int __speed,
);

typedef _c_cfsetispeed = ffi.Int32 Function(
  ffi.Pointer<termios> __termios_p,
  ffi.Uint32 __speed,
);

typedef _dart_cfsetispeed = int Function(
  ffi.Pointer<termios> __termios_p,
  int __speed,
);

typedef _c_cfsetspeed = ffi.Int32 Function(
  ffi.Pointer<termios> __termios_p,
  ffi.Uint32 __speed,
);

typedef _dart_cfsetspeed = int Function(
  ffi.Pointer<termios> __termios_p,
  int __speed,
);

typedef _c_tcgetattr = ffi.Int32 Function(
  ffi.Int32 __fd,
  ffi.Pointer<termios> __termios_p,
);

typedef _dart_tcgetattr = int Function(
  int __fd,
  ffi.Pointer<termios> __termios_p,
);

typedef _c_tcsetattr = ffi.Int32 Function(
  ffi.Int32 __fd,
  ffi.Int32 __optional_actions,
  ffi.Pointer<termios> __termios_p,
);

typedef _dart_tcsetattr = int Function(
  int __fd,
  int __optional_actions,
  ffi.Pointer<termios> __termios_p,
);

typedef _c_cfmakeraw = ffi.Void Function(
  ffi.Pointer<termios> __termios_p,
);

typedef _dart_cfmakeraw = void Function(
  ffi.Pointer<termios> __termios_p,
);

typedef _c_tcsendbreak = ffi.Int32 Function(
  ffi.Int32 __fd,
  ffi.Int32 __duration,
);

typedef _dart_tcsendbreak = int Function(
  int __fd,
  int __duration,
);

typedef _c_tcdrain = ffi.Int32 Function(
  ffi.Int32 __fd,
);

typedef _dart_tcdrain = int Function(
  int __fd,
);

typedef _c_tcflush = ffi.Int32 Function(
  ffi.Int32 __fd,
  ffi.Int32 __queue_selector,
);

typedef _dart_tcflush = int Function(
  int __fd,
  int __queue_selector,
);

typedef _c_tcflow = ffi.Int32 Function(
  ffi.Int32 __fd,
  ffi.Int32 __action,
);

typedef _dart_tcflow = int Function(
  int __fd,
  int __action,
);

typedef _c_tcgetsid = ffi.Int32 Function(
  ffi.Int32 __fd,
);

typedef _dart_tcgetsid = int Function(
  int __fd,
);

typedef _c_access = ffi.Int32 Function(
  ffi.Pointer<ffi.Int8> __name,
  ffi.Int32 __type,
);

typedef _dart_access = int Function(
  ffi.Pointer<ffi.Int8> __name,
  int __type,
);

typedef _c_faccessat = ffi.Int32 Function(
  ffi.Int32 __fd,
  ffi.Pointer<ffi.Int8> __file,
  ffi.Int32 __type,
  ffi.Int32 __flag,
);

typedef _dart_faccessat = int Function(
  int __fd,
  ffi.Pointer<ffi.Int8> __file,
  int __type,
  int __flag,
);

typedef _c_lseek = ffi.Int64 Function(
  ffi.Int32 __fd,
  ffi.Int64 __offset,
  ffi.Int32 __whence,
);

typedef _dart_lseek = int Function(
  int __fd,
  int __offset,
  int __whence,
);

typedef _c_close = ffi.Int32 Function(
  ffi.Int32 __fd,
);

typedef _dart_close = int Function(
  int __fd,
);

typedef _c_read = ffi.Int64 Function(
  ffi.Int32 __fd,
  ffi.Pointer<ffi.Void> __buf,
  ffi.Int32 __nbytes,
);

typedef _dart_read = int Function(
  int __fd,
  ffi.Pointer<ffi.Void> __buf,
  int __nbytes,
);

typedef _c_write = ffi.Int64 Function(
  ffi.Int32 __fd,
  ffi.Pointer<ffi.Void> __buf,
  ffi.Int32 __n,
);

typedef _dart_write = int Function(
  int __fd,
  ffi.Pointer<ffi.Void> __buf,
  int __n,
);

typedef _c_pread = ffi.Int64 Function(
  ffi.Int32 __fd,
  ffi.Pointer<ffi.Void> __buf,
  ffi.Int32 __nbytes,
  ffi.Int64 __offset,
);

typedef _dart_pread = int Function(
  int __fd,
  ffi.Pointer<ffi.Void> __buf,
  int __nbytes,
  int __offset,
);

typedef _c_pwrite = ffi.Int64 Function(
  ffi.Int32 __fd,
  ffi.Pointer<ffi.Void> __buf,
  ffi.Int32 __n,
  ffi.Int64 __offset,
);

typedef _dart_pwrite = int Function(
  int __fd,
  ffi.Pointer<ffi.Void> __buf,
  int __n,
  int __offset,
);

typedef _c_pipe = ffi.Int32 Function(
  ffi.Pointer<ffi.Int32> __pipedes,
);

typedef _dart_pipe = int Function(
  ffi.Pointer<ffi.Int32> __pipedes,
);

typedef _c_alarm = ffi.Uint32 Function(
  ffi.Uint32 __seconds,
);

typedef _dart_alarm = int Function(
  int __seconds,
);

typedef _c_sleep = ffi.Uint32 Function(
  ffi.Uint32 __seconds,
);

typedef _dart_sleep = int Function(
  int __seconds,
);

typedef _c_ualarm = ffi.Uint32 Function(
  ffi.Uint32 __value,
  ffi.Uint32 __interval,
);

typedef _dart_ualarm = int Function(
  int __value,
  int __interval,
);

typedef _c_usleep = ffi.Int32 Function(
  ffi.Uint32 __useconds,
);

typedef _dart_usleep = int Function(
  int __useconds,
);

typedef _c_pause = ffi.Int32 Function();

typedef _dart_pause = int Function();

typedef _c_chown = ffi.Int32 Function(
  ffi.Pointer<ffi.Int8> __file,
  ffi.Uint32 __owner,
  ffi.Uint32 __group,
);

typedef _dart_chown = int Function(
  ffi.Pointer<ffi.Int8> __file,
  int __owner,
  int __group,
);

typedef _c_fchown = ffi.Int32 Function(
  ffi.Int32 __fd,
  ffi.Uint32 __owner,
  ffi.Uint32 __group,
);

typedef _dart_fchown = int Function(
  int __fd,
  int __owner,
  int __group,
);

typedef _c_lchown = ffi.Int32 Function(
  ffi.Pointer<ffi.Int8> __file,
  ffi.Uint32 __owner,
  ffi.Uint32 __group,
);

typedef _dart_lchown = int Function(
  ffi.Pointer<ffi.Int8> __file,
  int __owner,
  int __group,
);

typedef _c_fchownat = ffi.Int32 Function(
  ffi.Int32 __fd,
  ffi.Pointer<ffi.Int8> __file,
  ffi.Uint32 __owner,
  ffi.Uint32 __group,
  ffi.Int32 __flag,
);

typedef _dart_fchownat = int Function(
  int __fd,
  ffi.Pointer<ffi.Int8> __file,
  int __owner,
  int __group,
  int __flag,
);

typedef _c_chdir = ffi.Int32 Function(
  ffi.Pointer<ffi.Int8> __path,
);

typedef _dart_chdir = int Function(
  ffi.Pointer<ffi.Int8> __path,
);

typedef _c_fchdir = ffi.Int32 Function(
  ffi.Int32 __fd,
);

typedef _dart_fchdir = int Function(
  int __fd,
);

typedef _c_getcwd = ffi.Pointer<ffi.Int8> Function(
  ffi.Pointer<ffi.Int8> __buf,
  ffi.Int32 __size,
);

typedef _dart_getcwd = ffi.Pointer<ffi.Int8> Function(
  ffi.Pointer<ffi.Int8> __buf,
  int __size,
);

typedef _c_getwd = ffi.Pointer<ffi.Int8> Function(
  ffi.Pointer<ffi.Int8> __buf,
);

typedef _dart_getwd = ffi.Pointer<ffi.Int8> Function(
  ffi.Pointer<ffi.Int8> __buf,
);

typedef _c_dup = ffi.Int32 Function(
  ffi.Int32 __fd,
);

typedef _dart_dup = int Function(
  int __fd,
);

typedef _c_dup2 = ffi.Int32 Function(
  ffi.Int32 __fd,
  ffi.Int32 __fd2,
);

typedef _dart_dup2 = int Function(
  int __fd,
  int __fd2,
);

typedef _c_execve = ffi.Int32 Function(
  ffi.Pointer<ffi.Int8> __path,
  ffi.Pointer<ffi.Pointer<ffi.Int8>> __argv,
  ffi.Pointer<ffi.Pointer<ffi.Int8>> __envp,
);

typedef _dart_execve = int Function(
  ffi.Pointer<ffi.Int8> __path,
  ffi.Pointer<ffi.Pointer<ffi.Int8>> __argv,
  ffi.Pointer<ffi.Pointer<ffi.Int8>> __envp,
);

typedef _c_fexecve = ffi.Int32 Function(
  ffi.Int32 __fd,
  ffi.Pointer<ffi.Pointer<ffi.Int8>> __argv,
  ffi.Pointer<ffi.Pointer<ffi.Int8>> __envp,
);

typedef _dart_fexecve = int Function(
  int __fd,
  ffi.Pointer<ffi.Pointer<ffi.Int8>> __argv,
  ffi.Pointer<ffi.Pointer<ffi.Int8>> __envp,
);

typedef _c_execv = ffi.Int32 Function(
  ffi.Pointer<ffi.Int8> __path,
  ffi.Pointer<ffi.Pointer<ffi.Int8>> __argv,
);

typedef _dart_execv = int Function(
  ffi.Pointer<ffi.Int8> __path,
  ffi.Pointer<ffi.Pointer<ffi.Int8>> __argv,
);

typedef _c_execle = ffi.Int32 Function(
  ffi.Pointer<ffi.Int8> __path,
  ffi.Pointer<ffi.Int8> __arg,
);

typedef _dart_execle = int Function(
  ffi.Pointer<ffi.Int8> __path,
  ffi.Pointer<ffi.Int8> __arg,
);

typedef _c_execl = ffi.Int32 Function(
  ffi.Pointer<ffi.Int8> __path,
  ffi.Pointer<ffi.Int8> __arg,
);

typedef _dart_execl = int Function(
  ffi.Pointer<ffi.Int8> __path,
  ffi.Pointer<ffi.Int8> __arg,
);

typedef _c_execvp = ffi.Int32 Function(
  ffi.Pointer<ffi.Int8> __file,
  ffi.Pointer<ffi.Pointer<ffi.Int8>> __argv,
);

typedef _dart_execvp = int Function(
  ffi.Pointer<ffi.Int8> __file,
  ffi.Pointer<ffi.Pointer<ffi.Int8>> __argv,
);

typedef _c_execlp = ffi.Int32 Function(
  ffi.Pointer<ffi.Int8> __file,
  ffi.Pointer<ffi.Int8> __arg,
);

typedef _dart_execlp = int Function(
  ffi.Pointer<ffi.Int8> __file,
  ffi.Pointer<ffi.Int8> __arg,
);

typedef _c_nice = ffi.Int32 Function(
  ffi.Int32 __inc,
);

typedef _dart_nice = int Function(
  int __inc,
);

typedef _c__exit = ffi.Void Function(
  ffi.Int32 __status,
);

typedef _dart__exit = void Function(
  int __status,
);

typedef _c_pathconf = ffi.Int64 Function(
  ffi.Pointer<ffi.Int8> __path,
  ffi.Int32 __name,
);

typedef _dart_pathconf = int Function(
  ffi.Pointer<ffi.Int8> __path,
  int __name,
);

typedef _c_fpathconf = ffi.Int64 Function(
  ffi.Int32 __fd,
  ffi.Int32 __name,
);

typedef _dart_fpathconf = int Function(
  int __fd,
  int __name,
);

typedef _c_sysconf = ffi.Int64 Function(
  ffi.Int32 __name,
);

typedef _dart_sysconf = int Function(
  int __name,
);

typedef _c_confstr = ffi.Int32 Function(
  ffi.Int32 __name,
  ffi.Pointer<ffi.Int8> __buf,
  ffi.Int32 __len,
);

typedef _dart_confstr = int Function(
  int __name,
  ffi.Pointer<ffi.Int8> __buf,
  int __len,
);

typedef _c_getpid = ffi.Int32 Function();

typedef _dart_getpid = int Function();

typedef _c_getppid = ffi.Int32 Function();

typedef _dart_getppid = int Function();

typedef _c_getpgrp = ffi.Int32 Function();

typedef _dart_getpgrp = int Function();

typedef _c___getpgid = ffi.Int32 Function(
  ffi.Int32 __pid,
);

typedef _dart___getpgid = int Function(
  int __pid,
);

typedef _c_getpgid = ffi.Int32 Function(
  ffi.Int32 __pid,
);

typedef _dart_getpgid = int Function(
  int __pid,
);

typedef _c_setpgid = ffi.Int32 Function(
  ffi.Int32 __pid,
  ffi.Int32 __pgid,
);

typedef _dart_setpgid = int Function(
  int __pid,
  int __pgid,
);

typedef _c_setpgrp = ffi.Int32 Function();

typedef _dart_setpgrp = int Function();

typedef _c_setsid = ffi.Int32 Function();

typedef _dart_setsid = int Function();

typedef _c_getsid = ffi.Int32 Function(
  ffi.Int32 __pid,
);

typedef _dart_getsid = int Function(
  int __pid,
);

typedef _c_getuid = ffi.Uint32 Function();

typedef _dart_getuid = int Function();

typedef _c_geteuid = ffi.Uint32 Function();

typedef _dart_geteuid = int Function();

typedef _c_getgid = ffi.Uint32 Function();

typedef _dart_getgid = int Function();

typedef _c_getegid = ffi.Uint32 Function();

typedef _dart_getegid = int Function();

typedef _c_getgroups = ffi.Int32 Function(
  ffi.Int32 __size,
  ffi.Pointer<ffi.Uint32> __list,
);

typedef _dart_getgroups = int Function(
  int __size,
  ffi.Pointer<ffi.Uint32> __list,
);

typedef _c_setuid = ffi.Int32 Function(
  ffi.Uint32 __uid,
);

typedef _dart_setuid = int Function(
  int __uid,
);

typedef _c_setreuid = ffi.Int32 Function(
  ffi.Uint32 __ruid,
  ffi.Uint32 __euid,
);

typedef _dart_setreuid = int Function(
  int __ruid,
  int __euid,
);

typedef _c_seteuid = ffi.Int32 Function(
  ffi.Uint32 __uid,
);

typedef _dart_seteuid = int Function(
  int __uid,
);

typedef _c_setgid = ffi.Int32 Function(
  ffi.Uint32 __gid,
);

typedef _dart_setgid = int Function(
  int __gid,
);

typedef _c_setregid = ffi.Int32 Function(
  ffi.Uint32 __rgid,
  ffi.Uint32 __egid,
);

typedef _dart_setregid = int Function(
  int __rgid,
  int __egid,
);

typedef _c_setegid = ffi.Int32 Function(
  ffi.Uint32 __gid,
);

typedef _dart_setegid = int Function(
  int __gid,
);

typedef _c_fork = ffi.Int32 Function();

typedef _dart_fork = int Function();

typedef _c_vfork = ffi.Int32 Function();

typedef _dart_vfork = int Function();

typedef _c_ttyname = ffi.Pointer<ffi.Int8> Function(
  ffi.Int32 __fd,
);

typedef _dart_ttyname = ffi.Pointer<ffi.Int8> Function(
  int __fd,
);

typedef _c_ttyname_r = ffi.Int32 Function(
  ffi.Int32 __fd,
  ffi.Pointer<ffi.Int8> __buf,
  ffi.Int32 __buflen,
);

typedef _dart_ttyname_r = int Function(
  int __fd,
  ffi.Pointer<ffi.Int8> __buf,
  int __buflen,
);

typedef _c_isatty = ffi.Int32 Function(
  ffi.Int32 __fd,
);

typedef _dart_isatty = int Function(
  int __fd,
);

typedef _c_ttyslot = ffi.Int32 Function();

typedef _dart_ttyslot = int Function();

typedef _c_link = ffi.Int32 Function(
  ffi.Pointer<ffi.Int8> __from,
  ffi.Pointer<ffi.Int8> __to,
);

typedef _dart_link = int Function(
  ffi.Pointer<ffi.Int8> __from,
  ffi.Pointer<ffi.Int8> __to,
);

typedef _c_linkat = ffi.Int32 Function(
  ffi.Int32 __fromfd,
  ffi.Pointer<ffi.Int8> __from,
  ffi.Int32 __tofd,
  ffi.Pointer<ffi.Int8> __to,
  ffi.Int32 __flags,
);

typedef _dart_linkat = int Function(
  int __fromfd,
  ffi.Pointer<ffi.Int8> __from,
  int __tofd,
  ffi.Pointer<ffi.Int8> __to,
  int __flags,
);

typedef _c_symlink = ffi.Int32 Function(
  ffi.Pointer<ffi.Int8> __from,
  ffi.Pointer<ffi.Int8> __to,
);

typedef _dart_symlink = int Function(
  ffi.Pointer<ffi.Int8> __from,
  ffi.Pointer<ffi.Int8> __to,
);

typedef _c_readlink = ffi.Int64 Function(
  ffi.Pointer<ffi.Int8> __path,
  ffi.Pointer<ffi.Int8> __buf,
  ffi.Int32 __len,
);

typedef _dart_readlink = int Function(
  ffi.Pointer<ffi.Int8> __path,
  ffi.Pointer<ffi.Int8> __buf,
  int __len,
);

typedef _c_symlinkat = ffi.Int32 Function(
  ffi.Pointer<ffi.Int8> __from,
  ffi.Int32 __tofd,
  ffi.Pointer<ffi.Int8> __to,
);

typedef _dart_symlinkat = int Function(
  ffi.Pointer<ffi.Int8> __from,
  int __tofd,
  ffi.Pointer<ffi.Int8> __to,
);

typedef _c_readlinkat = ffi.Int64 Function(
  ffi.Int32 __fd,
  ffi.Pointer<ffi.Int8> __path,
  ffi.Pointer<ffi.Int8> __buf,
  ffi.Int32 __len,
);

typedef _dart_readlinkat = int Function(
  int __fd,
  ffi.Pointer<ffi.Int8> __path,
  ffi.Pointer<ffi.Int8> __buf,
  int __len,
);

typedef _c_unlink = ffi.Int32 Function(
  ffi.Pointer<ffi.Int8> __name,
);

typedef _dart_unlink = int Function(
  ffi.Pointer<ffi.Int8> __name,
);

typedef _c_unlinkat = ffi.Int32 Function(
  ffi.Int32 __fd,
  ffi.Pointer<ffi.Int8> __name,
  ffi.Int32 __flag,
);

typedef _dart_unlinkat = int Function(
  int __fd,
  ffi.Pointer<ffi.Int8> __name,
  int __flag,
);

typedef _c_rmdir = ffi.Int32 Function(
  ffi.Pointer<ffi.Int8> __path,
);

typedef _dart_rmdir = int Function(
  ffi.Pointer<ffi.Int8> __path,
);

typedef _c_tcgetpgrp = ffi.Int32 Function(
  ffi.Int32 __fd,
);

typedef _dart_tcgetpgrp = int Function(
  int __fd,
);

typedef _c_tcsetpgrp = ffi.Int32 Function(
  ffi.Int32 __fd,
  ffi.Int32 __pgrp_id,
);

typedef _dart_tcsetpgrp = int Function(
  int __fd,
  int __pgrp_id,
);

typedef _c_getlogin = ffi.Pointer<ffi.Int8> Function();

typedef _dart_getlogin = ffi.Pointer<ffi.Int8> Function();

typedef _c_getlogin_r = ffi.Int32 Function(
  ffi.Pointer<ffi.Int8> __name,
  ffi.Int32 __name_len,
);

typedef _dart_getlogin_r = int Function(
  ffi.Pointer<ffi.Int8> __name,
  int __name_len,
);

typedef _c_setlogin = ffi.Int32 Function(
  ffi.Pointer<ffi.Int8> __name,
);

typedef _dart_setlogin = int Function(
  ffi.Pointer<ffi.Int8> __name,
);

typedef _c_getopt = ffi.Int32 Function(
  ffi.Int32 ___argc,
  ffi.Pointer<ffi.Pointer<ffi.Int8>> ___argv,
  ffi.Pointer<ffi.Int8> __shortopts,
);

typedef _dart_getopt = int Function(
  int ___argc,
  ffi.Pointer<ffi.Pointer<ffi.Int8>> ___argv,
  ffi.Pointer<ffi.Int8> __shortopts,
);

typedef _c_gethostname = ffi.Int32 Function(
  ffi.Pointer<ffi.Int8> __name,
  ffi.Int32 __len,
);

typedef _dart_gethostname = int Function(
  ffi.Pointer<ffi.Int8> __name,
  int __len,
);

typedef _c_sethostname = ffi.Int32 Function(
  ffi.Pointer<ffi.Int8> __name,
  ffi.Int32 __len,
);

typedef _dart_sethostname = int Function(
  ffi.Pointer<ffi.Int8> __name,
  int __len,
);

typedef _c_sethostid = ffi.Int32 Function(
  ffi.Int64 __id,
);

typedef _dart_sethostid = int Function(
  int __id,
);

typedef _c_getdomainname = ffi.Int32 Function(
  ffi.Pointer<ffi.Int8> __name,
  ffi.Int32 __len,
);

typedef _dart_getdomainname = int Function(
  ffi.Pointer<ffi.Int8> __name,
  int __len,
);

typedef _c_setdomainname = ffi.Int32 Function(
  ffi.Pointer<ffi.Int8> __name,
  ffi.Int32 __len,
);

typedef _dart_setdomainname = int Function(
  ffi.Pointer<ffi.Int8> __name,
  int __len,
);

typedef _c_vhangup = ffi.Int32 Function();

typedef _dart_vhangup = int Function();

typedef _c_revoke = ffi.Int32 Function(
  ffi.Pointer<ffi.Int8> __file,
);

typedef _dart_revoke = int Function(
  ffi.Pointer<ffi.Int8> __file,
);

typedef _c_profil = ffi.Int32 Function(
  ffi.Pointer<ffi.Uint16> __sample_buffer,
  ffi.Int32 __size,
  ffi.Int32 __offset,
  ffi.Uint32 __scale,
);

typedef _dart_profil = int Function(
  ffi.Pointer<ffi.Uint16> __sample_buffer,
  int __size,
  int __offset,
  int __scale,
);

typedef _c_acct = ffi.Int32 Function(
  ffi.Pointer<ffi.Int8> __name,
);

typedef _dart_acct = int Function(
  ffi.Pointer<ffi.Int8> __name,
);

typedef _c_getusershell = ffi.Pointer<ffi.Int8> Function();

typedef _dart_getusershell = ffi.Pointer<ffi.Int8> Function();

typedef _c_endusershell = ffi.Void Function();

typedef _dart_endusershell = void Function();

typedef _c_setusershell = ffi.Void Function();

typedef _dart_setusershell = void Function();

typedef _c_daemon = ffi.Int32 Function(
  ffi.Int32 __nochdir,
  ffi.Int32 __noclose,
);

typedef _dart_daemon = int Function(
  int __nochdir,
  int __noclose,
);

typedef _c_chroot = ffi.Int32 Function(
  ffi.Pointer<ffi.Int8> __path,
);

typedef _dart_chroot = int Function(
  ffi.Pointer<ffi.Int8> __path,
);

typedef _c_getpass = ffi.Pointer<ffi.Int8> Function(
  ffi.Pointer<ffi.Int8> __prompt,
);

typedef _dart_getpass = ffi.Pointer<ffi.Int8> Function(
  ffi.Pointer<ffi.Int8> __prompt,
);

typedef _c_fsync = ffi.Int32 Function(
  ffi.Int32 __fd,
);

typedef _dart_fsync = int Function(
  int __fd,
);

typedef _c_gethostid = ffi.Int64 Function();

typedef _dart_gethostid = int Function();

typedef _c_sync_1 = ffi.Void Function();

typedef _dart_sync_1 = void Function();

typedef _c_getpagesize = ffi.Int32 Function();

typedef _dart_getpagesize = int Function();

typedef _c_getdtablesize = ffi.Int32 Function();

typedef _dart_getdtablesize = int Function();

typedef _c_truncate = ffi.Int32 Function(
  ffi.Pointer<ffi.Int8> __file,
  ffi.Int64 __length,
);

typedef _dart_truncate = int Function(
  ffi.Pointer<ffi.Int8> __file,
  int __length,
);

typedef _c_ftruncate = ffi.Int32 Function(
  ffi.Int32 __fd,
  ffi.Int64 __length,
);

typedef _dart_ftruncate = int Function(
  int __fd,
  int __length,
);

typedef _c_brk = ffi.Int32 Function(
  ffi.Pointer<ffi.Void> __addr,
);

typedef _dart_brk = int Function(
  ffi.Pointer<ffi.Void> __addr,
);

typedef _c_sbrk = ffi.Pointer<ffi.Void> Function(
  ffi.IntPtr __delta,
);

typedef _dart_sbrk = ffi.Pointer<ffi.Void> Function(
  int __delta,
);

typedef _c_syscall = ffi.Int64 Function(
  ffi.Int64 __sysno,
);

typedef _dart_syscall = int Function(
  int __sysno,
);

typedef _c_fdatasync = ffi.Int32 Function(
  ffi.Int32 __fildes,
);

typedef _dart_fdatasync = int Function(
  int __fildes,
);

typedef _c_getentropy = ffi.Int32 Function(
  ffi.Pointer<ffi.Void> __buffer,
  ffi.Int32 __length,
);

typedef _dart_getentropy = int Function(
  ffi.Pointer<ffi.Void> __buffer,
  int __length,
);

typedef _c_ptsname = ffi.Pointer<ffi.Int8> Function(
  ffi.Int64 __sysno,
);

typedef _dart_ptsname = ffi.Pointer<ffi.Int8> Function(
  int __sysno,
);

typedef _c_grantpt = ffi.Int64 Function(
  ffi.Int64 __fd,
);

typedef _dart_grantpt = int Function(
  int __fd,
);

typedef _c_unlockpt = ffi.Int64 Function(
  ffi.Int64 __fd,
);

typedef _dart_unlockpt = int Function(
  int __fd,
);