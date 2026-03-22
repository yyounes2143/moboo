package com.google.android.gms.internal.ads;

import com.vungle.ads.internal.Constants;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzdoq implements zzhfv {
    private final zzhge zza;

    public zzdoq(zzhge zzhgeVar) {
        this.zza = zzhgeVar;
    }

    @Override // com.google.android.gms.internal.ads.zzhgk, com.google.android.gms.internal.ads.zzhgj
    public final /* bridge */ /* synthetic */ Object zzb() {
        if (((zzcvk) this.zza).zza().zzo.zza == 3) {
            return "rewarded_interstitial";
        }
        return Constants.PLACEMENT_TYPE_REWARDED;
    }
}
