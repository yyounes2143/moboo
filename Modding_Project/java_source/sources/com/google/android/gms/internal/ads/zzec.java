package com.google.android.gms.internal.ads;

import android.telephony.TelephonyCallback;
import android.telephony.TelephonyDisplayInfo;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzec extends TelephonyCallback implements TelephonyCallback.DisplayInfoListener {
    private final zzei zza;

    public zzec(zzei zzeiVar) {
        this.zza = zzeiVar;
    }

    public final void onDisplayInfoChanged(TelephonyDisplayInfo telephonyDisplayInfo) {
        int overrideNetworkType;
        boolean z;
        overrideNetworkType = telephonyDisplayInfo.getOverrideNetworkType();
        int i = 5;
        if (overrideNetworkType == 3 || overrideNetworkType == 4 || overrideNetworkType == 5) {
            z = true;
        } else {
            z = false;
        }
        zzei zzeiVar = this.zza;
        if (true == z) {
            i = 10;
        }
        zzeiVar.zzh(i);
    }
}
