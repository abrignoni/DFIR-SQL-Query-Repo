Samsung Smart Manager - Keeps a list of apps that have crashed during use. These are kept in the following location, database, and -> table:

data/com.samsung.android.sm/databases/sm.db -> crash_info, excluded_app

The app also keeps a list of app usage times to include package name, class name, start time and end time. These are kept in the following location, database, and -> table:

data/com.samsung.android.sm/databases/lowpowercontext-system-db -> usage_log
