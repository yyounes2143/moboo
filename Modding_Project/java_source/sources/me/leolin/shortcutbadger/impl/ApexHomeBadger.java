package me.leolin.shortcutbadger.impl;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import com.tencent.thumbplayer.tcmedia.core.downloadproxy.api.TPDownloadProxyEnum;
import java.util.Arrays;
import java.util.List;
import me.leolin.shortcutbadger.Badger;
import me.leolin.shortcutbadger.ShortcutBadgeException;
import me.leolin.shortcutbadger.util.BroadcastHelper;
/* compiled from: Proguard */
/* loaded from: classes7.dex */
public class ApexHomeBadger implements Badger {
    @Override // me.leolin.shortcutbadger.Badger
    public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Context context, ComponentName componentName, int i) throws ShortcutBadgeException {
        Intent intent = new Intent("com.anddoes.launcher.COUNTER_CHANGED");
        intent.putExtra(TPDownloadProxyEnum.DLPARAM_PACKAGE, componentName.getPackageName());
        intent.putExtra("count", i);
        intent.putExtra("class", componentName.getClassName());
        BroadcastHelper.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(context, intent);
    }

    @Override // me.leolin.shortcutbadger.Badger
    public List<String> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return Arrays.asList("com.anddoes.launcher");
    }
}
