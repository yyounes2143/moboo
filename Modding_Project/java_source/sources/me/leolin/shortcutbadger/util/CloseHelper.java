package me.leolin.shortcutbadger.util;

import android.database.Cursor;
/* compiled from: Proguard */
/* loaded from: classes7.dex */
public class CloseHelper {
    public static void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Cursor cursor) {
        if (cursor != null && !cursor.isClosed()) {
            cursor.close();
        }
    }
}
