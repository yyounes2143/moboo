package com.google.android.gms.internal.ads;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
final class zzya implements Comparable {
    private final boolean zza;
    private final boolean zzb;

    public zzya(zzz zzzVar, int i) {
        this.zza = 1 == (zzzVar.zze & 1);
        this.zzb = zzlw.zza(i, false);
    }

    @Override // java.lang.Comparable
    /* renamed from: zza */
    public final int compareTo(zzya zzyaVar) {
        return zzfxr.zzj().zzd(this.zzb, zzyaVar.zzb).zzd(this.zza, zzyaVar.zza).zza();
    }
}
