package com.tekartik.sqflite;

import android.database.Cursor;
import androidx.annotation.RequiresApi;
import com.tekartik.sqflite.dev.Debug;
import j$.util.Objects;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;
/* compiled from: Proguard */
/* loaded from: classes6.dex */
public class Utils {
    public static Locale Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(String str) {
        return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(str);
    }

    @RequiresApi(api = 21)
    public static Locale Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(String str) {
        return Locale.forLanguageTag(str);
    }

    public static Object Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Cursor cursor, int i) {
        int type = cursor.getType(i);
        if (type != 1) {
            if (type != 2) {
                if (type != 3) {
                    if (type != 4) {
                        return null;
                    }
                    return cursor.getBlob(i);
                }
                return cursor.getString(i);
            }
            return Double.valueOf(cursor.getDouble(i));
        }
        return Long.valueOf(cursor.getLong(i));
    }

    public static List<Object> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Cursor cursor, int i) {
        String str;
        ArrayList arrayList = new ArrayList(i);
        for (int i2 = 0; i2 < i; i2++) {
            Object Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(cursor, i2);
            if (Debug.f10158Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww) {
                if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 != null) {
                    if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.getClass().isArray()) {
                        str = "array(" + Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.getClass().getComponentType().getName() + ")";
                    } else {
                        str = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.getClass().getName();
                    }
                } else {
                    str = null;
                }
                cursor.getType(i2);
                Objects.toString(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2);
                if (str != null) {
                    StringBuilder sb = new StringBuilder();
                    sb.append(" (");
                    sb.append(str);
                    sb.append(")");
                }
            }
            arrayList.add(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2);
        }
        return arrayList;
    }
}
