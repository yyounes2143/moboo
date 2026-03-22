package com.google.android.gms.internal.ads;

import java.lang.ref.WeakReference;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzchj implements zzhfv {
    private final zzche zza;

    public zzchj(zzche zzcheVar) {
        this.zza = zzcheVar;
    }

    public static WeakReference zzc(zzche zzcheVar) {
        WeakReference zzg = zzcheVar.zzg();
        zzhgd.zzb(zzg);
        return zzg;
    }

    public final WeakReference zza() {
        return zzc(this.zza);
    }

    @Override // com.google.android.gms.internal.ads.zzhgk, com.google.android.gms.internal.ads.zzhgj
    public final /* synthetic */ Object zzb() {
        return zzc(this.zza);
    }
}
