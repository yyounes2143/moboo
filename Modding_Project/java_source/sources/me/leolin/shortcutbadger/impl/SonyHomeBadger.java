package me.leolin.shortcutbadger.impl;

import android.content.AsyncQueryHandler;
import android.content.ComponentName;
import android.content.ContentValues;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Looper;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import java.util.Arrays;
import java.util.List;
import me.leolin.shortcutbadger.Badger;
import me.leolin.shortcutbadger.ShortcutBadgeException;
/* compiled from: Proguard */
/* loaded from: classes7.dex */
public class SonyHomeBadger implements Badger {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public AsyncQueryHandler f12124Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Uri f12125Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = Uri.parse("content://com.sonymobile.home.resourceprovider/badge");

    public static boolean Wwwwwwwwwwwwwwwwwwwwwwwwwww(Context context) {
        if (context.getPackageManager().resolveContentProvider("com.sonymobile.home.resourceprovider", 0) == null) {
            return false;
        }
        return true;
    }

    private static void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Context context, ComponentName componentName, int i) {
        boolean z;
        Intent intent = new Intent("com.sonyericsson.home.action.UPDATE_BADGE");
        intent.putExtra("com.sonyericsson.home.intent.extra.badge.PACKAGE_NAME", componentName.getPackageName());
        intent.putExtra("com.sonyericsson.home.intent.extra.badge.ACTIVITY_NAME", componentName.getClassName());
        intent.putExtra("com.sonyericsson.home.intent.extra.badge.MESSAGE", String.valueOf(i));
        if (i > 0) {
            z = true;
        } else {
            z = false;
        }
        intent.putExtra("com.sonyericsson.home.intent.extra.badge.SHOW_MESSAGE", z);
        context.sendBroadcast(intent);
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwww(Context context, ContentValues contentValues) {
        context.getApplicationContext().getContentResolver().insert(this.f12125Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, contentValues);
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(ContentValues contentValues) {
        this.f12124Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.startInsert(0, null, this.f12125Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, contentValues);
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Context context, ComponentName componentName, int i) {
        if (i < 0) {
            return;
        }
        ContentValues Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(i, componentName);
        if (Looper.myLooper() == Looper.getMainLooper()) {
            if (this.f12124Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww == null) {
                this.f12124Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new AsyncQueryHandler(context.getApplicationContext().getContentResolver()) { // from class: me.leolin.shortcutbadger.impl.SonyHomeBadger.1
                };
            }
            Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2);
            return;
        }
        Wwwwwwwwwwwwwwwwwwwwwwwwwwww(context, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2);
    }

    public final ContentValues Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(int i, ComponentName componentName) {
        ContentValues contentValues = new ContentValues();
        contentValues.put("badge_count", Integer.valueOf(i));
        contentValues.put(CampaignEx.JSON_KEY_PACKAGE_NAME, componentName.getPackageName());
        contentValues.put("activity_name", componentName.getClassName());
        return contentValues;
    }

    @Override // me.leolin.shortcutbadger.Badger
    public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Context context, ComponentName componentName, int i) throws ShortcutBadgeException {
        if (Wwwwwwwwwwwwwwwwwwwwwwwwwww(context)) {
            Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(context, componentName, i);
        } else {
            Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(context, componentName, i);
        }
    }

    @Override // me.leolin.shortcutbadger.Badger
    public List<String> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return Arrays.asList("com.sonyericsson.home", "com.sonymobile.home");
    }
}
