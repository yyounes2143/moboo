package com.fluttercandies.photo_manager.util;

import android.database.Cursor;
import java.util.Iterator;
import kotlin.Metadata;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.ArrayIteratorKt;
import kotlin.text.StringsKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010\u0003\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0007\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0019\u0010\u0006\u001a\u00020\u00052\b\u0010\u0004\u001a\u0004\u0018\u00010\u0001H\u0007¢\u0006\u0004\b\u0006\u0010\u0007J\u0019\u0010\b\u001a\u00020\u00052\b\u0010\u0004\u001a\u0004\u0018\u00010\u0001H\u0007¢\u0006\u0004\b\b\u0010\u0007J#\u0010\u000b\u001a\u00020\u00052\b\u0010\u0004\u001a\u0004\u0018\u00010\u00012\b\u0010\n\u001a\u0004\u0018\u00010\tH\u0007¢\u0006\u0004\b\u000b\u0010\fJ\u0019\u0010\r\u001a\u00020\u00052\b\u0010\u0004\u001a\u0004\u0018\u00010\u0001H\u0007¢\u0006\u0004\b\r\u0010\u0007J%\u0010\u0012\u001a\u00020\u00052\b\u0010\u000f\u001a\u0004\u0018\u00010\u000e2\n\b\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u0010H\u0007¢\u0006\u0004\b\u0012\u0010\u0013R\"\u0010\u001a\u001a\u00020\u00148\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\b\u0010\u0015\u001a\u0004\b\u0016\u0010\u0017\"\u0004\b\u0018\u0010\u0019¨\u0006\u001b"}, d2 = {"Lcom/fluttercandies/photo_manager/util/LogUtils;", "", "<init>", "()V", "object", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Ljava/lang/Object;)V", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "", "error", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Ljava/lang/Object;Ljava/lang/Throwable;)V", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Landroid/database/Cursor;", "cursor", "", "idKey", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Landroid/database/Cursor;Ljava/lang/String;)V", "", "Z", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "()Z", "Wwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Z)V", "isLog", "photo_manager_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
/* loaded from: classes4.dex */
public final class LogUtils {
    @NotNull
    public static final LogUtils INSTANCE = new LogUtils();

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static boolean f7489Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    @JvmStatic
    public static final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(@Nullable Cursor cursor, @Nullable String str) {
        String str2;
        if (cursor == null) {
            Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww("The cursor is null");
            return;
        }
        Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww("The cursor row: " + cursor.getCount());
        cursor.moveToPosition(-1);
        while (cursor.moveToNext()) {
            StringBuilder sb = new StringBuilder();
            int columnIndex = cursor.getColumnIndex(str);
            if (columnIndex != -1) {
                String string = cursor.getString(columnIndex);
                sb.append("\nid: ");
                sb.append(string);
                sb.append("\n");
            }
            Iterator it = ArrayIteratorKt.iterator(cursor.getColumnNames());
            while (it.hasNext()) {
                String str3 = (String) it.next();
                int columnIndex2 = cursor.getColumnIndex(str3);
                try {
                    str2 = cursor.getString(columnIndex2);
                } catch (Exception e) {
                    e.printStackTrace();
                    str2 = "blob(" + cursor.getBlob(columnIndex2).length + ")";
                }
                if (!StringsKt.equals(str3, str, true)) {
                    sb.append("|--");
                    sb.append(str3);
                    sb.append(" : ");
                    sb.append(str2);
                    sb.append("\n");
                }
            }
            Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(sb);
        }
        cursor.moveToPosition(-1);
    }

    @JvmStatic
    public static final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@Nullable Object obj) {
        if (f7489Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww && obj != null) {
            obj.toString();
        }
    }

    @JvmStatic
    public static final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@Nullable Object obj, @Nullable Throwable th) {
        if (!f7489Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww) {
            return;
        }
        if (obj instanceof Exception) {
            ((Exception) obj).getLocalizedMessage();
        } else if (obj != null) {
            obj.toString();
        }
    }

    @JvmStatic
    public static final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@Nullable Object obj) {
        if (!f7489Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww) {
            return;
        }
        if (obj instanceof Exception) {
            ((Exception) obj).getLocalizedMessage();
        } else if (obj != null) {
            obj.toString();
        }
    }

    @JvmStatic
    public static final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@Nullable Object obj) {
        if (f7489Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww && obj != null) {
            obj.toString();
        }
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwww(boolean z) {
        f7489Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = z;
    }

    public final boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return f7489Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }
}
