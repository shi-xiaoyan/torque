PROG_ROOT = ../..

AM_CFLAGS = -g -DTEST_FUNCTION -I${PROG_ROOT}/ -I${PROG_ROOT}/${PBS_MACH} --coverage

lib_LTLIBRARIES = libreq_getcred.la

AM_LDFLAGS = @CHECK_LIBS@ ${lib_LTLIBRARIES}

check_PROGRAMS = test_req_getcred

libreq_getcred_la_SOURCES = scaffolding.c ${PROG_ROOT}/req_getcred.c
libreq_getcred_la_LDFLAGS = @CHECK_LIBS@ -shared -L../../../lib/test/.libs -lscaffolding_lib -lgcov

test_req_getcred_SOURCES = test_req_getcred.c

check_SCRIPTS = coverage_run.sh

TESTS = ${check_PROGRAMS} coverage_run.sh

coverage_run.sh:
	echo 'cp -p .libs/req_getcred.gc* . >/dev/null 2>&1' > $@
	echo 'RESULTS=($$(gcov req_getcred.gcda))' >> $@
	echo 'PARSED_RESULT="TOTALCOV -- $${RESULTS[1]}: Lines($${RESULTS[5]})- $${RESULTS[3]}"' >> $@
	echo 'echo -e "\033[40m\033[1;33m$$PARSED_RESULT\033[0m"' >> $@
	chmod +x $@

CLEANFILES = coverage_run.sh *.gcno *.gcda *.gcov core *.lo
