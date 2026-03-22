package com.google.android.gms.internal.ads;

import com.google.firebase.analytics.FirebaseAnalytics;
import com.mbridge.msdk.foundation.entity.CampaignEx;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzcnx {
    private final zzdsd zza;
    private final zzfcg zzb;

    public zzcnx(zzdsd zzdsdVar, zzfcg zzfcgVar) {
        this.zza = zzdsdVar;
        this.zzb = zzfcgVar;
    }

    public final void zza(long j, int i) {
        String str;
        zzdsc zza = this.zza.zza();
        zza.zzd(this.zzb.zzb.zzb);
        zza.zzb("action", "ad_closed");
        zza.zzb("show_time", String.valueOf(j));
        zza.zzb(FirebaseAnalytics.Param.AD_FORMAT, "app_open_ad");
        int i2 = i - 1;
        if (i2 != 0) {
            if (i2 != 1) {
                if (i2 != 2) {
                    if (i2 != 3) {
                        if (i2 != 4) {
                            str = "u";
                        } else {
                            str = CampaignEx.KEY_ACTIVITY_PATH_AND_NAME;
                        }
                    } else {
                        str = "cb";
                    }
                } else {
                    str = "cc";
                }
            } else {
                str = "bb";
            }
        } else {
            str = "h";
        }
        zza.zzb("acr", str);
        zza.zzj();
    }
}
