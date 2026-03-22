package com.google.android.gms.ads.internal.util;

import android.content.Context;
import android.provider.Settings;
import com.google.android.gms.internal.ads.zzber;
import com.google.android.gms.internal.ads.zzcad;
import com.google.common.util.concurrent.ListenableFuture;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzd {
    public static void zza(Context context) {
        int i = com.google.android.gms.ads.internal.util.client.zzl.zza;
        if (((Boolean) zzber.zza.zze()).booleanValue()) {
            try {
                if (Settings.Global.getInt(context.getContentResolver(), "development_settings_enabled", 0) != 0 && !com.google.android.gms.ads.internal.util.client.zzl.zzl()) {
                    ListenableFuture zzb = new zzc(context).zzb();
                    int i2 = zze.zza;
                    com.google.android.gms.ads.internal.util.client.zzo.zzi("Updating ad debug logging enablement.");
                    zzcad.zza(zzb, "AdDebugLogUpdater.updateEnablement");
                }
            } catch (Exception e) {
                com.google.android.gms.ads.internal.util.client.zzo.zzk("Fail to determine debug setting.", e);
            }
        }
    }
}
