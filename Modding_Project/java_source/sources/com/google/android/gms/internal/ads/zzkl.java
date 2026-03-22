package com.google.android.gms.internal.ads;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzkl {
    public zzln zza;
    public int zzb;
    public boolean zzc;
    public int zzd;
    private boolean zze;

    public zzkl(zzln zzlnVar) {
        this.zza = zzlnVar;
    }

    public final void zza(int i) {
        boolean z = true;
        if (1 != ((this.zze ? 1 : 0) | i)) {
            z = false;
        }
        this.zze = z;
        this.zzb += i;
    }

    public final void zzb(zzln zzlnVar) {
        boolean z;
        boolean z2 = this.zze;
        if (this.zza != zzlnVar) {
            z = true;
        } else {
            z = false;
        }
        this.zze = z2 | z;
        this.zza = zzlnVar;
    }

    public final void zzc(int i) {
        boolean z = true;
        if (this.zzc && this.zzd != 5) {
            if (i != 5) {
                z = false;
            }
            zzdc.zzd(z);
            return;
        }
        this.zze = true;
        this.zzc = true;
        this.zzd = i;
    }
}
