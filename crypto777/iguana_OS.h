#ifndef IGUANA_OS_H
#define IGUANA_OS_H
#include <stdint.h>

/**
 * @brief Test suite for:
 * int64_t OS_filesize(char *fname);
 * void OS_ensure_directory(char *dirname);
 * long OS_ensurefilesize(char *fname,long filesize,int32_t truncateflag);
 * int32_t OS_truncate(char *fname,long filesize);
 * int32_t OS_renamefile(char *fname,char *newfname);
 * int32_t OS_removefile(char *fname,int32_t scrubflag);
 * void *OS_mapfile(char *fname,long *filesizep,int32_t enablewrite);
 * int32_t OS_releasemap(void *ptr,uint64_t filesize);
 * double OS_milliseconds();
 * void OS_randombytes(uint8_t *x,long xlen);
 * @return number of tests that failed as a negative number
 */
int32_t iguana_OStests();

#endif