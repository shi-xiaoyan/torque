#include "license_pbs.h" /* See here for the software license */
#include <stdlib.h>
#include <stdio.h> /* fprintf */

#include "server.h" /* server */
#include "attribute.h" /* attribute, attribute_def */

char *path_priv = NULL;
char *msg_svdbopen = "Unable to open server data base";
char *path_svrdb = NULL;
struct server server;
attribute_def svr_attr_def[10];




ssize_t read_nonblocking_socket(int fd, void *buf, ssize_t count)
  {
  fprintf(stderr, "The call to read_nonblocking_socket to be mocked!!\n");
  exit(1);
  }

int get_parent_and_child(char *start, char **parent, char **child, char **end)
  {
  fprintf(stderr, "The call to get_parent_and_child to be mocked!!\n");
  exit(1);
  }

int write_buffer(char *buf, int len, int fds)
  {
  fprintf(stderr, "The call to write_buffer to be mocked!!\n");
  exit(1);
  }

void clear_attr(attribute *pattr, attribute_def *pdef)
  {
  fprintf(stderr, "The call to clear_attr to be mocked!!\n");
  exit(1);
  }

ssize_t write_nonblocking_socket(int fd, const void *buf, ssize_t count)
  {
  fprintf(stderr, "The call to write_nonblocking_socket to be mocked!!\n");
  exit(1);
  }

int find_attr(struct attribute_def *attr_def, char *name, int limit)
  {
  fprintf(stderr, "The call to find_attr to be mocked!!\n");
  exit(1);
  }

int decode_resc(struct attribute *patr, char *name, char *rescn, char *val, int perm)
  {
  fprintf(stderr, "The call to decode_resc to be mocked!!\n");
  exit(1);
  }

int unescape_xml(char *in, char *out, int size)
  {
  fprintf(stderr, "The call to unescape_xml to be mocked!!\n");
  exit(1);
  }

int recov_attr(int fd, void *parent, struct attribute_def *padef, struct attribute *pattr, int limit, int unknown, int do_actions)
  {
  fprintf(stderr, "The call to recov_attr to be mocked!!\n");
  exit(1);
  }

void *get_next(list_link pl, char *file, int line)
  {
  fprintf(stderr, "The call to get_next to be mocked!!\n");
  exit(1);
  }

int decode_arst(struct attribute *patr, char *name, char *rescn, char *val, int perm)
  {
  fprintf(stderr, "The call to decode_arst to be mocked!!\n");
  exit(1);
  }

int save_attr_xml(struct attribute_def *padef, struct attribute *pattr, int numattr, int fds)
  {
  fprintf(stderr, "The call to save_attr_xml to be mocked!!\n");
  exit(1);
  }

void log_event(int eventtype, int objclass, char *objname, char *text)
  {
  fprintf(stderr, "The call to log_event to be mocked!!\n");
  exit(1);
  }

int escape_xml(char *in, char *out, int size)
  {
  fprintf(stderr, "The call to escape_xml to be mocked!!\n");
  exit(1);
  }

void log_err(int errnum, char *routine, char *text)
  {
  fprintf(stderr, "The call to log_err to be mocked!!\n");
  exit(1);
  }