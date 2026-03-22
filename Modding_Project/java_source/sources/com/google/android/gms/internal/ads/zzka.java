package com.google.android.gms.internal.ads;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzka implements zzlb {
    private final Object zza;
    private zzbl zzb;

    public zzka(Object obj, zzuw zzuwVar) {
        this.zza = obj;
        this.zzb = zzuwVar.zzC();
    }

    @Override // com.google.android.gms.internal.ads.zzlb
    public final zzbl zza() {
        return this.zzb;
    }

    @Override // com.google.android.gms.internal.ads.zzlb
    public final Object zzb() {
        return this.zza;
    }

    public final void zzc(zzbl zzblVar) {
        this.zzb = zzblVar;
    }
}
