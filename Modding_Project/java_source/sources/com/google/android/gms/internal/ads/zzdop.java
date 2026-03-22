package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzbca;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzdop implements zzhfv {
    private final zzhge zza;

    public zzdop(zzhge zzhgeVar) {
        this.zza = zzhgeVar;
    }

    @Override // com.google.android.gms.internal.ads.zzhgk, com.google.android.gms.internal.ads.zzhgj
    public final /* bridge */ /* synthetic */ Object zzb() {
        zzbca.zza.EnumC0040zza enumC0040zza;
        if (((zzcvk) this.zza).zza().zzo.zza == 3) {
            enumC0040zza = zzbca.zza.EnumC0040zza.REWARDED_INTERSTITIAL;
        } else {
            enumC0040zza = zzbca.zza.EnumC0040zza.REWARD_BASED_VIDEO_AD;
        }
        zzhgd.zzb(enumC0040zza);
        return enumC0040zza;
    }
}
