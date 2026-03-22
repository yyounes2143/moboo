package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.nonagon.util.logging.csi.CsiParamDefaults_Factory;
import com.google.android.gms.ads.nonagon.util.logging.csi.CsiUrlBuilder_Factory;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzdsn implements zzhfv {
    private final zzhge zza;
    private final zzhge zzb;
    private final zzhge zzc;
    private final zzhge zzd;

    public zzdsn(zzhge zzhgeVar, zzhge zzhgeVar2, zzhge zzhgeVar3, zzhge zzhgeVar4, zzhge zzhgeVar5) {
        this.zza = zzhgeVar2;
        this.zzb = zzhgeVar3;
        this.zzc = zzhgeVar4;
        this.zzd = zzhgeVar5;
    }

    @Override // com.google.android.gms.internal.ads.zzhgk, com.google.android.gms.internal.ads.zzhgj
    public final /* bridge */ /* synthetic */ Object zzb() {
        return new zzdsi(zzffn.zzc(), (com.google.android.gms.ads.internal.util.client.zzu) this.zza.zzb(), ((CsiParamDefaults_Factory) this.zzb).zzb(), ((CsiUrlBuilder_Factory) this.zzc).zzb(), ((zzchi) this.zzd).zza());
    }
}
