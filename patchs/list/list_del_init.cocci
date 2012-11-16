/// use list_del_init instead of list_del/INIT_LIST_HEAD
///
/// Using list_del_init() instead of list_del() + INIT_LIST_HEAD().
///
@@
expression E1;
@@
-list_del(E1);
-INIT_LIST_HEAD(E1);
+list_del_init(E1);
