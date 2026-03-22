package me.leolin.shortcutbadger.impl;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.os.Build;
import java.util.Arrays;
import java.util.List;
import me.leolin.shortcutbadger.Badger;
import me.leolin.shortcutbadger.ShortcutBadgeException;
import me.leolin.shortcutbadger.util.BroadcastHelper;
/* compiled from: Proguard */
/* loaded from: classes7.dex */
public class DefaultBadger implements Badger {
    public boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Context context) {
        if (BroadcastHelper.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(context, new Intent("android.intent.action.BADGE_COUNT_UPDATE")).size() <= 0) {
            if (Build.VERSION.SDK_INT < 26 || BroadcastHelper.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(context, new Intent("me.leolin.shortcutbadger.BADGE_COUNT_UPDATE")).size() <= 0) {
                return false;
            }
            return true;
        }
        return true;
    }

    @Override // me.leolin.shortcutbadger.Badger
    public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Context context, ComponentName componentName, int i) throws ShortcutBadgeException {
        Intent intent = new Intent("android.intent.action.BADGE_COUNT_UPDATE");
        intent.putExtra("badge_count", i);
        intent.putExtra("badge_count_package_name", componentName.getPackageName());
        intent.putExtra("badge_count_class_name", componentName.getClassName());
        BroadcastHelper.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(context, intent);
    }

    @Override // me.leolin.shortcutbadger.Badger
    public List<String> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return Arrays.asList("fr.neamar.kiss", "com.quaap.launchtime", "com.quaap.launchtime_official");
    }
}
