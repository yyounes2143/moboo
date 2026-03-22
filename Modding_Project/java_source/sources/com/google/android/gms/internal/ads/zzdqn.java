package com.google.android.gms.internal.ads;

import java.util.Collections;
import java.util.Set;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzdqn implements zzhfv {
    private final zzhge zza;

    public zzdqn(zzhge zzhgeVar, zzhge zzhgeVar2) {
        this.zza = zzhgeVar2;
    }

    @Override // com.google.android.gms.internal.ads.zzhgk, com.google.android.gms.internal.ads.zzhgj
    public final /* bridge */ /* synthetic */ Object zzb() {
        Set set;
        zzgdj zzc = zzffn.zzc();
        zzdrf zzb = ((zzdrg) this.zza).zzb();
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzfq)).booleanValue()) {
            set = Collections.singleton(new zzddq(zzb, zzc));
        } else {
            set = Collections.EMPTY_SET;
        }
        zzhgd.zzb(set);
        return set;
    }
}
