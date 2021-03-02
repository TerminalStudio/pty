#include <dirent.h>
#include <fcntl.h>
#include <signal.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/ioctl.h>
#include <sys/wait.h>
#include <termios.h>
#include <unistd.h>

#define DUMP(name) printf("final %s = %d;\n", "" #name "", name);
#define DUMPL(name) printf("final %s = %ld;\n", "" #name "", name);
#define BR() printf("\n");

int main() {
    DUMP(IUTF8)

    BR()

    DUMP(IXON)
    DUMP(IXOFF)

    BR()

    DUMP(TCSANOW)

    BR()

    DUMP(WNOHANG)

    BR()

    DUMP(SIGINT)
    DUMP(SIGILL)
    DUMP(SIGABRT)
    DUMP(SIGFPE)
    DUMP(SIGSEGV)
    DUMP(SIGTERM)
    DUMP(SIGHUP)
    DUMP(SIGQUIT)
    DUMP(SIGTRAP)
    DUMP(SIGKILL)
    DUMP(SIGBUS)
    DUMP(SIGSYS)
    DUMP(SIGPIPE)
    DUMP(SIGALRM)
    DUMP(SIGURG)
    DUMP(SIGSTOP)
    DUMP(SIGTSTP)
    DUMP(SIGCONT)
    DUMP(SIGCHLD)
    DUMP(SIGTTIN)
    DUMP(SIGTTOU)
    // DUMP(SIGPOLL)
    DUMP(SIGXCPU)
    DUMP(SIGXFSZ)
    DUMP(SIGVTALRM)
    DUMP(SIGPROF)
    DUMP(SIGUSR1)
    DUMP(SIGUSR2)
    DUMP(SIGWINCH)
    DUMP(SIGIO)
    DUMP(SIGIOT)
    // DUMP(SIGCLD)

    BR()

    DUMP(F_DUPFD)
    DUMP(F_GETFD)
    DUMP(F_SETFD)
    DUMP(F_GETFL)
    DUMP(F_SETFL)

    BR()

    DUMP(O_ACCMODE)
    DUMP(O_RDONLY)
    DUMP(O_WRONLY)
    DUMP(O_RDWR)
    DUMP(O_CREAT)
    DUMP(O_EXCL)
    DUMP(O_NOCTTY)
    DUMP(O_TRUNC)
    DUMP(O_APPEND)
    DUMP(O_NONBLOCK)
    DUMP(O_NDELAY)
    DUMP(O_SYNC)
    DUMP(O_FSYNC)
    DUMP(O_ASYNC)
    DUMP(O_DIRECTORY)
    DUMP(O_NOFOLLOW)
    DUMP(O_CLOEXEC)
    DUMP(O_DSYNC)
    // DUMP(O_RSYNC)

    BR()

    DUMPL(TIOCSWINSZ)
    
    return 0;
}
