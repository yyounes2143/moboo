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
public class ZukHomeBadger implements Badger {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Uri f12128Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = Uri.parse("content://com.android.badge/badge");

    @Override // me.leolin.shortcutbadger.Badger
    @TargetApi(11)
    public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Context context, ComponentName componentName, int i) throws ShortcutBadgeException {
        Bundle bundle = new Bundle();
        bundle.putInt("app_badge_count", i);
        context.getContentResolver().call(this.f12128Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, "setAppBadgeCount", (String) null, bundle);
    }

    @Override // me.leolin.shortcutbadger.Badger
    public List<String> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return Collections.singletonList("com.zui.launcher");
    }
}
