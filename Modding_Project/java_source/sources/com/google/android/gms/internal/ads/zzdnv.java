package com.google.android.gms.internal.ads;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzdnv extends zzdnf implements zzddy {
    private zzddy zza;

    @Override // com.google.android.gms.internal.ads.zzddy
    public final synchronized void zzdf() {
        zzddy zzddyVar = this.zza;
        if (zzddyVar != null) {
            zzddyVar.zzdf();
        }
    }

    public final synchronized void zzi(com.google.android.gms.ads.internal.client.zza zzaVar, zzbim zzbimVar, com.google.android.gms.ads.internal.overlay.zzr zzrVar, zzbio zzbioVar, com.google.android.gms.ads.internal.overlay.zzad zzadVar, zzddy zzddyVar) {
        try {
            try {
                super.zzh(zzaVar, zzbimVar, zzrVar, zzbioVar, zzadVar);
                this.zza = zzddyVar;
            } catch (Throwable th) {
                th = th;
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
            throw th;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzddy
    public final synchronized void zzu() {
        zzddy zzddyVar = this.zza;
        if (zzddyVar != null) {
            zzddyVar.zzu();
        }
    }
}
