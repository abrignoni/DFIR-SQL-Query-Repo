select pkg_name, datetime(pkg_last_use, "unixepoch", "localtime") as pkg_last_use, pkg_use_count
FROM io_pkg_tbl