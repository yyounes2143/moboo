package me.leolin.shortcutbadger.impl;

import android.annotation.TargetApi;
import android.content.ComponentName;
import android.content.Context;
import android.net.Uri;
import android.os.Bundle;
import java.util.Collections;
import java.util.List;
import me.leolin.shortcutbadger.Badger;
import me.leolin.shortcutbadger.ShortcutBadgeException;
/* compiled from: Proguard */
/* loaded from: classes7.dex */
public class OPPOHomeBader implements Badger {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public int f12121Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = -1;

    @TargetApi(11)
    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Context context, int i) throws ShortcutBadgeException {
        Bundle bundle = new Bundle();
        bundle.putInt("app_badge_count", i);
        context.getContentResolver().call(Uri.parse("content://com.android.badge/badge"), "setAppBadgeCount", (String) null, bundle);
    }

    @Override // me.leolin.shortcutbadger.Badger
    public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Context context, ComponentName componentName, int i) throws ShortcutBadgeException {
        if (this.f12121Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww == i) {
            return;
        }
        this.f12121Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = i;
        Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(context, i);
    }

    @Override // me.leolin.shortcutbadger.Badger
    public List<String> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return Collections.singletonList("com.oppo.launcher");
    }
}
