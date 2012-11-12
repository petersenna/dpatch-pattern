/// fix return value check in {{function}}
///
/// In case of error, the function of_phy_connect() returns NULL
/// pointer not ERR_PTR(). The IS_ERR() test in the return value
/// check should be replaced with NULL test.
///
/// dpatch engine is used to auto generate this patch.
/// (https://github.com/weiyj/dpatch)
///
@@
expression ret;
@@
ret = of_phy_connect(...);
<...
(
- !IS_ERR(ret)
+ ret
|
- IS_ERR(ret)
+ !ret
|
- PTR_ERR(ret)
+ -ENODEV
)
...>
