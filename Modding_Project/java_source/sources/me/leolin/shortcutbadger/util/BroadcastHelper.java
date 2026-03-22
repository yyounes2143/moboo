package me.leolin.shortcutbadger.util;

import android.content.Context;
import android.content.Intent;
import android.content.pm.ResolveInfo;
import android.os.Build;
import java.util.Collections;
import java.util.List;
import me.leolin.shortcutbadger.ShortcutBadgeException;
/* compiled from: Proguard */
/* loaded from: classes7.dex */
public class BroadcastHelper {
    public static void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Context context, Intent intent) throws ShortcutBadgeException {
        List<ResolveInfo> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(context, intent);
        if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.size() != 0) {
            for (ResolveInfo resolveInfo : Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2) {
                Intent intent2 = new Intent(intent);
                if (resolveInfo != null) {
                    intent2.setPackage(resolveInfo.resolvePackageName);
                    context.sendBroadcast(intent2);
                }
            }
            return;
        }
        throw new ShortcutBadgeException("unable to resolve intent: " + intent.toString());
    }

    public static void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Context context, Intent intent) throws ShortcutBadgeException {
        if (Build.VERSION.SDK_INT >= 26) {
            Intent intent2 = new Intent(intent);
            intent2.setAction("me.leolin.shortcutbadger.BADGE_COUNT_UPDATE");
            try {
                Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(context, intent2);
                return;
            } catch (ShortcutBadgeException unused) {
            }
        }
        Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(context, intent);
    }

    public static List<ResolveInfo> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Context context, Intent intent) {
        List<ResolveInfo> queryBroadcastReceivers = context.getPackageManager().queryBroadcastReceivers(intent, 0);
        if (queryBroadcastReceivers != null) {
            return queryBroadcastReceivers;
        }
        return Collections.EMPTY_LIST;
    }
}
