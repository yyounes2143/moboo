package com.appsflyer;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.appsflyer.internal.AFa1ySDK;
import com.sensorsdata.analytics.android.sdk.aop.push.PushAutoTrackHelper;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public class SingleInstallBroadcastReceiver extends BroadcastReceiver {
    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        String str;
        PushAutoTrackHelper.onBroadcastReceiver(this, context, intent);
        if (intent != null) {
            try {
                str = intent.getStringExtra("referrer");
            } catch (Throwable th) {
                AFLogger.afErrorLog("error in BroadcastReceiver ", th);
                str = null;
            }
            if (str != null && AFa1ySDK.d_(context).getString("referrer", null) != null) {
                AFa1ySDK.getRevenue().AFAdRevenueData(context, str);
                return;
            }
            String string = AppsFlyerProperties.getInstance().getString("referrer_timestamp");
            long currentTimeMillis = System.currentTimeMillis();
            if (string != null && currentTimeMillis - Long.parseLong(string) < 2000) {
                return;
            }
            AFLogger.afInfoLog("SingleInstallBroadcastReceiver called");
            AFa1ySDK.getRevenue().b_(context, intent);
            AppsFlyerProperties.getInstance().set("referrer_timestamp", String.valueOf(System.currentTimeMillis()));
        }
    }
}
