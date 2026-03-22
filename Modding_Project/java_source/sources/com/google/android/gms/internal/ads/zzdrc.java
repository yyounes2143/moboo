package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.internal.ads.zzbca;
import java.util.Collections;
import java.util.Map;
import java.util.Set;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzdrc implements zzhfv {
    private final zzhge zza;
    private final zzhge zzb;
    private final zzhge zzc;

    public zzdrc(zzhge zzhgeVar, zzhge zzhgeVar2, zzhge zzhgeVar3, zzhge zzhgeVar4) {
        this.zza = zzhgeVar;
        this.zzb = zzhgeVar2;
        this.zzc = zzhgeVar4;
    }

    @Override // com.google.android.gms.internal.ads.zzhgk, com.google.android.gms.internal.ads.zzhgj
    public final /* bridge */ /* synthetic */ Object zzb() {
        Set set;
        final String zza = ((zzewh) this.zza).zza();
        Context zza2 = ((zzchi) this.zzb).zza();
        zzgdj zzc = zzffn.zzc();
        Map zzb = ((zzhfz) this.zzc).zzb();
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzfq)).booleanValue()) {
            zzbbt zzbbtVar = new zzbbt(new zzbbz(zza2));
            zzbbtVar.zzb(new zzbbs() { // from class: com.google.android.gms.internal.ads.zzdrd
                @Override // com.google.android.gms.internal.ads.zzbbs
                public final void zza(zzbca.zzt.zza zzaVar) {
                    zzaVar.zzO(zza);
                }
            });
            set = Collections.singleton(new zzddq(new zzdrf(zzbbtVar, zzb), zzc));
        } else {
            set = Collections.EMPTY_SET;
        }
        zzhgd.zzb(set);
        return set;
    }
}
