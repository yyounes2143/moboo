package com.iab.omid.library.unity3d.utils;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import androidx.annotation.NonNull;
import com.iab.omid.library.unity3d.adsession.DeviceCategory;
import com.iab.omid.library.unity3d.adsession.OutputDeviceStatus;
import com.sensorsdata.analytics.android.sdk.aop.push.PushAutoTrackHelper;
/* loaded from: classes5.dex */
public class e {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static OutputDeviceStatus f8488Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = OutputDeviceStatus.UNKNOWN;

    /* loaded from: classes5.dex */
    public class a extends BroadcastReceiver {
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            OutputDeviceStatus outputDeviceStatus;
            PushAutoTrackHelper.onBroadcastReceiver(this, context, intent);
            if (intent.getAction() == "android.media.action.HDMI_AUDIO_PLUG") {
                int intExtra = intent.getIntExtra("android.media.extra.AUDIO_PLUG_STATE", -1);
                if (intExtra == 0) {
                    outputDeviceStatus = OutputDeviceStatus.NOT_DETECTED;
                } else if (intExtra == 1) {
                    outputDeviceStatus = OutputDeviceStatus.UNKNOWN;
                } else {
                    return;
                }
                OutputDeviceStatus unused = e.f8488Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = outputDeviceStatus;
            }
        }
    }

    public static void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NonNull Context context) {
        context.registerReceiver(new a(), new IntentFilter("android.media.action.HDMI_AUDIO_PLUG"));
    }

    public static OutputDeviceStatus Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        if (com.iab.omid.library.unity3d.utils.a.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() != DeviceCategory.CTV) {
            return OutputDeviceStatus.UNKNOWN;
        }
        return f8488Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }
}
