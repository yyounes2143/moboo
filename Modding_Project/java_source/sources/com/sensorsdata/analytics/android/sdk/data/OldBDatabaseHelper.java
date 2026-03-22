package com.sensorsdata.analytics.android.sdk.data;

import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import com.sensorsdata.analytics.android.sdk.SALog;
import com.sensorsdata.analytics.android.sdk.data.SAProviderHelper;
import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
/* compiled from: Proguard */
/* loaded from: classes6.dex */
public class OldBDatabaseHelper extends SQLiteOpenHelper {
    public OldBDatabaseHelper(Context context, String str) {
        super(context, str, (SQLiteDatabase.CursorFactory) null, 4);
    }

    public void getAllEvents(SQLiteDatabase sQLiteDatabase, SAProviderHelper.QueryEventsListener queryEventsListener) {
        Cursor cursor = null;
        try {
            try {
                cursor = getReadableDatabase().rawQuery(String.format("SELECT * FROM %s ORDER BY %s", DbParams.TABLE_EVENTS, DbParams.KEY_CREATED_AT), null);
                sQLiteDatabase.beginTransaction();
                while (cursor.moveToNext()) {
                    queryEventsListener.insert(cursor.getString(cursor.getColumnIndex("data")), cursor.getString(cursor.getColumnIndex(DbParams.KEY_CREATED_AT)));
                }
                sQLiteDatabase.setTransactionSuccessful();
                sQLiteDatabase.endTransaction();
                close();
                cursor.close();
            } catch (Exception e) {
                SALog.printStackTrace(e);
                sQLiteDatabase.endTransaction();
                close();
                if (cursor != null) {
                    cursor.close();
                }
            }
        } catch (Throwable th) {
            sQLiteDatabase.endTransaction();
            close();
            if (cursor != null) {
                cursor.close();
            }
            throw th;
        }
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onCreate(SQLiteDatabase sQLiteDatabase) {
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onUpgrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
    }
}
