package com.sensorsdata.analytics.android.sdk.data;

import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import com.sensorsdata.analytics.android.sdk.SALog;
import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
/* compiled from: Proguard */
/* loaded from: classes6.dex */
class SensorsDataDBHelper extends SQLiteOpenHelper {
    private static final String TAG = "SA.SQLiteOpenHelper";
    private static final String CREATE_EVENTS_TABLE = String.format("CREATE TABLE IF NOT EXISTS %s (_id INTEGER PRIMARY KEY AUTOINCREMENT, %s TEXT NOT NULL, %s INTEGER NOT NULL, %s INTEGER NOT NULL DEFAULT 0);", DbParams.TABLE_EVENTS, "data", DbParams.KEY_CREATED_AT, DbParams.KEY_IS_INSTANT_EVENT);
    private static final String EVENTS_TIME_INDEX = String.format("CREATE INDEX IF NOT EXISTS time_idx ON %s (%s);", DbParams.TABLE_EVENTS, DbParams.KEY_CREATED_AT);
    private static final String CHANNEL_EVENT_PERSISTENT_TABLE = String.format("CREATE TABLE IF NOT EXISTS %s (%s TEXT PRIMARY KEY, %s INTEGER)", DbParams.TABLE_CHANNEL_PERSISTENT, DbParams.KEY_CHANNEL_EVENT_NAME, "result");

    public SensorsDataDBHelper(Context context) {
        super(context, DbParams.DATABASE_NAME, (SQLiteDatabase.CursorFactory) null, 6);
    }

    private boolean checkColumnExist(SQLiteDatabase sQLiteDatabase, String str, String str2) {
        boolean z = false;
        Cursor cursor = null;
        try {
            try {
                try {
                    cursor = sQLiteDatabase.rawQuery("SELECT * FROM " + str + " LIMIT 0", null);
                    if (cursor != null) {
                        if (cursor.getColumnIndex(str2) != -1) {
                            z = true;
                        }
                    }
                } catch (Exception e) {
                    SALog.printStackTrace(e);
                    if (cursor != null) {
                        if (!cursor.isClosed()) {
                            cursor.close();
                        }
                    }
                }
                if (cursor != null) {
                    if (!cursor.isClosed()) {
                        cursor.close();
                    }
                }
            } catch (Throwable th) {
                if (cursor != null) {
                    try {
                        if (!cursor.isClosed()) {
                            cursor.close();
                        }
                    } catch (Exception e2) {
                        SALog.printStackTrace(e2);
                    }
                }
                throw th;
            }
        } catch (Exception e3) {
            SALog.printStackTrace(e3);
        }
        return z;
    }

    private void createTable(SQLiteDatabase sQLiteDatabase) {
        sQLiteDatabase.execSQL(CREATE_EVENTS_TABLE);
        sQLiteDatabase.execSQL(EVENTS_TIME_INDEX);
        sQLiteDatabase.execSQL(CHANNEL_EVENT_PERSISTENT_TABLE);
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onCreate(SQLiteDatabase sQLiteDatabase) {
        SALog.i(TAG, "Creating a new Sensors Analytics DB");
        createTable(sQLiteDatabase);
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onUpgrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
        SALog.i(TAG, "Upgrading app, replacing Sensors Analytics DB, oldVersion:" + i + ", newVersion:" + i2);
        if (i < 4) {
            try {
                sQLiteDatabase.execSQL(String.format("DROP TABLE IF EXISTS %s", DbParams.TABLE_EVENTS));
            } catch (Exception e) {
                SALog.printStackTrace(e);
                return;
            }
        }
        createTable(sQLiteDatabase);
        if (i >= 4 && i <= 5 && !checkColumnExist(sQLiteDatabase, DbParams.TABLE_EVENTS, DbParams.KEY_IS_INSTANT_EVENT)) {
            sQLiteDatabase.execSQL("ALTER TABLE events ADD COLUMN  is_instant_event INTEGER NOT NULL DEFAULT 0");
        }
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onDowngrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
    }
}
