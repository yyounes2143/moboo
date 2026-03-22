package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzchw implements zzhfv {
    private final zzche zza;

    public zzchw(zzche zzcheVar) {
        this.zza = zzcheVar;
    }

    public static VersionInfoParcel zzc(zzche zzcheVar) {
        VersionInfoParcel zze = zzcheVar.zze();
        zzhgd.zzb(zze);
        return zze;
    }

    public final VersionInfoParcel zza() {
        return zzc(this.zza);
    }

    @Override // com.google.android.gms.internal.ads.zzhgk, com.google.android.gms.internal.ads.zzhgj
    public final /* synthetic */ Object zzb() {
        return zzc(this.zza);
    }
}
