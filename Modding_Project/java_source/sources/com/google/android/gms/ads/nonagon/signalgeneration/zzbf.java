package com.google.android.gms.ads.nonagon.signalgeneration;

import com.google.android.gms.internal.ads.zzddq;
import com.google.android.gms.internal.ads.zzdek;
import com.google.android.gms.internal.ads.zzffn;
import com.google.android.gms.internal.ads.zzgdj;
import com.google.android.gms.internal.ads.zzhfv;
import com.google.android.gms.internal.ads.zzhge;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzbf implements zzhfv {
    private final zzhge zza;
    private final zzhge zzb;
    private final zzhge zzc;

    public zzbf(zzhge zzhgeVar, zzhge zzhgeVar2, zzhge zzhgeVar3, zzhge zzhgeVar4) {
        this.zza = zzhgeVar;
        this.zzb = zzhgeVar2;
        this.zzc = zzhgeVar4;
    }

    @Override // com.google.android.gms.internal.ads.zzhgk, com.google.android.gms.internal.ads.zzhgj
    public final /* bridge */ /* synthetic */ Object zzb() {
        zzdek zzdekVar = (zzw) this.zza.zzb();
        zzdek zzdekVar2 = (zzbm) this.zzb.zzb();
        zzgdj zzc = zzffn.zzc();
        if (((Integer) this.zzc.zzb()).intValue() == 2) {
            zzdekVar = zzdekVar2;
        }
        return new zzddq(zzdekVar, zzc);
    }
}
