package com.changdu.component.deeplink.google;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.changdu.component.deeplink.base.CDInstallReferrerReceiverManager;
import com.changdu.component.deeplink.base.DeepLinkManager;
import com.sensorsdata.analytics.android.sdk.aop.push.PushAutoTrackHelper;
import kotlin.Metadata;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/changdu/component/deeplink/google/CDInstallReferrerReceiver;", "Landroid/content/BroadcastReceiver;", "<init>", "()V", "deeplink-google_release"}, k = 1, mv = {1, 9, 0})
/* loaded from: classes3.dex */
public final class CDInstallReferrerReceiver extends BroadcastReceiver {
    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        PushAutoTrackHelper.onBroadcastReceiver(this, context, intent);
        if (DeepLinkManager.INSTANCE.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()) {
            CDInstallReferrerHandler.handleBroadcast(intent);
        }
        CDInstallReferrerReceiverManager.INSTANCE.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(context, intent);
    }
}
