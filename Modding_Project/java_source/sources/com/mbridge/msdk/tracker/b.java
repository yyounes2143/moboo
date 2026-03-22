package com.mbridge.msdk.tracker;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
class b extends SQLiteOpenHelper {

    /* renamed from: a  reason: collision with root package name */
    private final String f9656a;

    public b(Context context, String str, String str2) {
        super(context, str, (SQLiteDatabase.CursorFactory) null, 2);
        this.f9656a = str2;
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onCreate(SQLiteDatabase sQLiteDatabase) {
        if (!y.b(sQLiteDatabase)) {
            try {
                sQLiteDatabase.execSQL(String.format(i.i, this.f9656a));
            } catch (Exception unused) {
                boolean z = a.f9655a;
            }
        }
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onDowngrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
        if (!y.b(sQLiteDatabase)) {
            try {
                sQLiteDatabase.execSQL(String.format(i.j, this.f9656a));
                sQLiteDatabase.execSQL(String.format(i.i, this.f9656a));
            } catch (Exception unused) {
                boolean z = a.f9655a;
            }
        }
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onUpgrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
        if (!y.b(sQLiteDatabase)) {
            try {
                sQLiteDatabase.execSQL(String.format(i.j, this.f9656a));
                sQLiteDatabase.execSQL(String.format(i.i, this.f9656a));
            } catch (Exception unused) {
                boolean z = a.f9655a;
            }
        }
    }
}
