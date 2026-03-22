package com.google.android.gms.internal.ads;

import java.util.Collections;
import java.util.Set;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzchp implements zzhfv {
    private final zzhge zza;

    public zzchp(zzhge zzhgeVar, zzhge zzhgeVar2) {
        this.zza = zzhgeVar;
    }

    @Override // com.google.android.gms.internal.ads.zzhgk, com.google.android.gms.internal.ads.zzhgj
    public final /* bridge */ /* synthetic */ Object zzb() {
        Set set;
        zzduj zzdujVar = (zzduj) this.zza.zzb();
        zzgdj zzc = zzffn.zzc();
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzbP)).booleanValue()) {
            set = Collections.singleton(new zzddq(zzdujVar, zzc));
        } else {
            set = Collections.EMPTY_SET;
        }
        zzhgd.zzb(set);
        return set;
    }
}
