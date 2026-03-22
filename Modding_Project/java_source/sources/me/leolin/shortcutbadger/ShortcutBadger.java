package me.leolin.shortcutbadger;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ResolveInfo;
import android.os.Build;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import me.leolin.shortcutbadger.impl.AdwHomeBadger;
import me.leolin.shortcutbadger.impl.ApexHomeBadger;
import me.leolin.shortcutbadger.impl.AsusHomeBadger;
import me.leolin.shortcutbadger.impl.DefaultBadger;
import me.leolin.shortcutbadger.impl.EverythingMeHomeBadger;
import me.leolin.shortcutbadger.impl.HuaweiHomeBadger;
import me.leolin.shortcutbadger.impl.NewHtcHomeBadger;
import me.leolin.shortcutbadger.impl.NovaHomeBadger;
import me.leolin.shortcutbadger.impl.OPPOHomeBader;
import me.leolin.shortcutbadger.impl.SamsungHomeBadger;
import me.leolin.shortcutbadger.impl.SonyHomeBadger;
import me.leolin.shortcutbadger.impl.VivoHomeBadger;
import me.leolin.shortcutbadger.impl.ZTEHomeBadger;
import me.leolin.shortcutbadger.impl.ZukHomeBadger;
/* compiled from: Proguard */
/* loaded from: classes7.dex */
public final class ShortcutBadger {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static ComponentName f12116Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static Badger f12117Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final Object f12118Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static volatile Boolean f12119Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final List<Class<? extends Badger>> f12120Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    static {
        LinkedList linkedList = new LinkedList();
        f12120Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = linkedList;
        f12118Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new Object();
        linkedList.add(AdwHomeBadger.class);
        linkedList.add(ApexHomeBadger.class);
        linkedList.add(DefaultBadger.class);
        linkedList.add(NewHtcHomeBadger.class);
        linkedList.add(NovaHomeBadger.class);
        linkedList.add(SonyHomeBadger.class);
        linkedList.add(AsusHomeBadger.class);
        linkedList.add(HuaweiHomeBadger.class);
        linkedList.add(OPPOHomeBader.class);
        linkedList.add(SamsungHomeBadger.class);
        linkedList.add(ZukHomeBadger.class);
        linkedList.add(VivoHomeBadger.class);
        linkedList.add(ZTEHomeBadger.class);
        linkedList.add(EverythingMeHomeBadger.class);
    }

    public static boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Context context) {
        return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(context, 0);
    }

    public static boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Context context) {
        if (f12119Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww == null) {
            synchronized (f12118Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww) {
                if (f12119Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww == null) {
                    for (int i = 0; i < 3; i++) {
                        try {
                            String.format("%d/%d.", Integer.valueOf(i + 1), 3);
                        } catch (Exception e) {
                            e.getMessage();
                        }
                        if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(context)) {
                            f12117Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(context, f12116Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww, 0);
                            f12119Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = Boolean.TRUE;
                            break;
                        }
                        continue;
                    }
                    if (f12119Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww == null) {
                        f12119Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = Boolean.FALSE;
                    }
                }
            }
        }
        return f12119Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.booleanValue();
    }

    public static boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Context context) {
        Badger badger;
        Intent launchIntentForPackage = context.getPackageManager().getLaunchIntentForPackage(context.getPackageName());
        if (launchIntentForPackage == null) {
            context.getPackageName();
            return false;
        }
        f12116Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww = launchIntentForPackage.getComponent();
        Intent intent = new Intent("android.intent.action.MAIN");
        intent.addCategory("android.intent.category.HOME");
        for (ResolveInfo resolveInfo : context.getPackageManager().queryIntentActivities(intent, 65536)) {
            String str = resolveInfo.activityInfo.packageName;
            Iterator<Class<? extends Badger>> it = f12120Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                try {
                    badger = it.next().newInstance();
                } catch (Exception unused) {
                    badger = null;
                }
                if (badger != null && badger.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().contains(str)) {
                    f12117Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = badger;
                    break;
                }
            }
            if (f12117Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww != null) {
                break;
            }
        }
        if (f12117Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww == null) {
            String str2 = Build.MANUFACTURER;
            if (str2.equalsIgnoreCase("ZUK")) {
                f12117Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new ZukHomeBadger();
                return true;
            } else if (str2.equalsIgnoreCase("OPPO")) {
                f12117Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new OPPOHomeBader();
                return true;
            } else if (str2.equalsIgnoreCase("VIVO")) {
                f12117Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new VivoHomeBadger();
                return true;
            } else if (str2.equalsIgnoreCase("ZTE")) {
                f12117Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new ZTEHomeBadger();
                return true;
            } else {
                f12117Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new DefaultBadger();
                return true;
            }
        }
        return true;
    }

    public static void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Context context, int i) throws ShortcutBadgeException {
        if (f12117Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww == null && !Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(context)) {
            throw new ShortcutBadgeException("No default launcher available");
        }
        try {
            f12117Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(context, f12116Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww, i);
        } catch (Exception e) {
            throw new ShortcutBadgeException("Unable to execute badge", e);
        }
    }

    public static boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Context context, int i) {
        try {
            Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(context, i);
            return true;
        } catch (ShortcutBadgeException unused) {
            return false;
        }
    }
}
