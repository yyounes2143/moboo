package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzcie implements zzhfv {
    private final zzhge zza;
    private final zzhge zzb;

    public zzcie(zzhge zzhgeVar, zzhge zzhgeVar2) {
        this.zza = zzhgeVar;
        this.zzb = zzhgeVar2;
    }

    @Override // com.google.android.gms.internal.ads.zzhgk, com.google.android.gms.internal.ads.zzhgj
    /* renamed from: zza */
    public final zzbvf zzb() {
        Context zza = ((zzchi) this.zza).zza();
        zzfhq zzfhqVar = (zzfhq) this.zzb.zzb();
        zzbon zzb = com.google.android.gms.ads.internal.zzv.zzg().zzb(zza, VersionInfoParcel.forPackage(), zzfhqVar);
        zzboh zzbohVar = zzbok.zza;
        zzb.zza("google.afma.request.getAdDictionary", zzbohVar, zzbohVar);
        return new zzbvh(zza, com.google.android.gms.ads.internal.zzv.zzg().zzb(zza, VersionInfoParcel.forPackage(), zzfhqVar).zza("google.afma.sdkConstants.getSdkConstants", zzbohVar, zzbohVar), VersionInfoParcel.forPackage());
    }
}
