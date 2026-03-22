package com.mbridge.msdk.videocommon.download;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import com.sensorsdata.analytics.android.sdk.aop.push.PushAutoTrackHelper;
/* compiled from: Proguard */
/* loaded from: classes6.dex */
public class NetStateOnReceive extends BroadcastReceiver {
    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        PushAutoTrackHelper.onBroadcastReceiver(this, context, intent);
        try {
            if ("android.net.conn.CONNECTIVITY_CHANGE".equals(intent.getAction())) {
                NetworkInfo activeNetworkInfo = ((ConnectivityManager) context.getSystemService("connectivity")).getActiveNetworkInfo();
                if (activeNetworkInfo != null && activeNetworkInfo.isAvailable()) {
                    if (activeNetworkInfo.getType() == 1) {
                        b.getInstance().a(true);
                        return;
                    } else if (activeNetworkInfo.getType() == 0) {
                        b.getInstance().a();
                        return;
                    } else {
                        return;
                    }
                }
                b.getInstance().b(false);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
