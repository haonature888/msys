/* buffer.c */
int open_buffer __ARGS((int read_stdin));
int buf_valid __ARGS((BUF *buf));
void close_buffer __ARGS((WIN *win, BUF *buf, int free_buf, int del_buf));
void buf_clear __ARGS((BUF *buf));
void buf_freeall __ARGS((BUF *buf, int del_buf));
char_u *do_bufdel __ARGS((int command, char_u *arg, int addr_count, int start_bnr, int end_bnr, int forceit));
int do_buffer __ARGS((int action, int start, int dir, int count, int forceit));
void enter_buffer __ARGS((BUF *buf));
BUF *buflist_new __ARGS((char_u *ffname, char_u *sfname, linenr_t lnum, int use_curbuf));
void free_buf_options __ARGS((BUF *buf, int free_p_ff));
int buflist_getfile __ARGS((int n, linenr_t lnum, int options, int forceit));
void buflist_getfpos __ARGS((void));
BUF *buflist_findname __ARGS((char_u *ffname));
int buflist_findpat __ARGS((char_u *pattern, char_u *pattern_end));
int ExpandBufnames __ARGS((char_u *pat, int *num_file, char_u ***file, int options));
BUF *buflist_findnr __ARGS((int nr));
char_u *buflist_nr2name __ARGS((int n, int fullname, int helptail));
FPOS *buflist_findfpos __ARGS((BUF *buf));
linenr_t buflist_findlnum __ARGS((BUF *buf));
void buflist_list __ARGS((void));
int buflist_name_nr __ARGS((int fnum, char_u **fname, linenr_t *lnum));
int setfname __ARGS((char_u *ffname, char_u *sfname, int message));
void setaltfname __ARGS((char_u *ffname, char_u *sfname, linenr_t lnum));
char_u *getaltfname __ARGS((int errmsg));
int buflist_add __ARGS((char_u *fname));
void buflist_altfpos __ARGS((void));
int otherfile __ARGS((char_u *ffname));
void fileinfo __ARGS((int fullname, int shorthelp, int dont_truncate));
void cursor_pos_info __ARGS((void));
void col_print __ARGS((char_u *buf, int col, int vcol));
void maketitle __ARGS((void));
void resettitle __ARGS((void));
int append_arg_number __ARGS((WIN *wp, char_u *buf, int add_file, int maxlen));
char_u *fix_fname __ARGS((char_u *fname));
void fname_expand __ARGS((char_u **ffname, char_u **sfname));
void do_arg_all __ARGS((int count, int forceit));
void do_buffer_all __ARGS((int count, int all));
void do_modelines __ARGS((void));
int read_viminfo_bufferlist __ARGS((char_u *line, FILE *fp, int writing));
void write_viminfo_bufferlist __ARGS((FILE *fp));