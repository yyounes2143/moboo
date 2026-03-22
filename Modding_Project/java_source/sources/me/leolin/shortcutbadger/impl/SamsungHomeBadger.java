package me.leolin.shortcutbadger.impl;

import android.content.ComponentName;
import android.content.ContentResolver;
import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import com.tencent.thumbplayer.tcmedia.core.downloadproxy.api.TPDownloadProxyEnum;
import java.util.Arrays;
import java.util.List;
import me.leolin.shortcutbadger.Badger;
import me.leolin.shortcutbadger.ShortcutBadgeException;
import me.leolin.shortcutbadger.util.CloseHelper;
/* compiled from: Proguard */
/* loaded from: classes7.dex */
public class SamsungHomeBadger implements Badger {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final String[] f12122Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = {"_id", "class"};

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public DefaultBadger f12123Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new DefaultBadger();

    public final ContentValues Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(ComponentName componentName, int i, boolean z) {
        ContentValues contentValues = new ContentValues();
        if (z) {
            contentValues.put(TPDownloadProxyEnum.DLPARAM_PACKAGE, componentName.getPackageName());
            contentValues.put("class", componentName.getClassName());
        }
        contentValues.put("badgecount", Integer.valueOf(i));
        return contentValues;
    }

    @Override // me.leolin.shortcutbadger.Badger
    public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Context context, ComponentName componentName, int i) throws ShortcutBadgeException {
        DefaultBadger defaultBadger = this.f12123Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        if (defaultBadger != null && defaultBadger.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(context)) {
            this.f12123Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(context, componentName, i);
            return;
        }
        Uri parse = Uri.parse("content://com.sec.badge/apps?notify=true");
        ContentResolver contentResolver = context.getContentResolver();
        Cursor cursor = null;
        try {
            cursor = contentResolver.query(parse, f12122Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, "package=?", new String[]{componentName.getPackageName()}, null);
            if (cursor != null) {
                String className = componentName.getClassName();
                boolean z = false;
                while (cursor.moveToNext()) {
                    contentResolver.update(parse, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(componentName, i, false), "_id=?", new String[]{String.valueOf(cursor.getInt(0))});
                    if (className.equals(cursor.getString(cursor.getColumnIndex("class")))) {
                        z = true;
                    }
                }
                if (!z) {
                    contentResolver.insert(parse, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(componentName, i, true));
                }
            }
            CloseHelper.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(cursor);
        } catch (Throwable th) {
            CloseHelper.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(cursor);
            throw th;
        }
    }

    @Override // me.leolin.shortcutbadger.Badger
    public List<String> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return Arrays.asList("com.sec.android.app.launcher", "com.sec.android.app.twlauncher");
    }
}
