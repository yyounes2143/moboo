package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
final class zzii implements zzkw {
    private final zzmg zza;
    private final zzih zzb;
    @Nullable
    private zzlv zzc;
    @Nullable
    private zzkw zzd;
    private boolean zze = true;
    private boolean zzf;

    public zzii(zzih zzihVar, zzdg zzdgVar) {
        this.zzb = zzihVar;
        this.zza = new zzmg(zzdgVar);
    }

    @Override // com.google.android.gms.internal.ads.zzkw
    public final long zza() {
        if (this.zze) {
            return this.zza.zza();
        }
        zzkw zzkwVar = this.zzd;
        zzkwVar.getClass();
        return zzkwVar.zza();
    }

    public final long zzb(boolean z) {
        zzlv zzlvVar = this.zzc;
        if (zzlvVar != null && !zzlvVar.zzW() && ((!z || this.zzc.zzcU() == 2) && (this.zzc.zzX() || (!z && !this.zzc.zzQ())))) {
            zzkw zzkwVar = this.zzd;
            zzkwVar.getClass();
            long zza = zzkwVar.zza();
            if (this.zze) {
                zzmg zzmgVar = this.zza;
                if (zza < zzmgVar.zza()) {
                    zzmgVar.zze();
                } else {
                    this.zze = false;
                    if (this.zzf) {
                        zzmgVar.zzd();
                    }
                }
            }
            zzmg zzmgVar2 = this.zza;
            zzmgVar2.zzb(zza);
            zzbb zzc = zzkwVar.zzc();
            if (!zzc.equals(zzmgVar2.zzc())) {
                zzmgVar2.zzg(zzc);
                this.zzb.zzc(zzc);
            }
        } else {
            this.zze = true;
            if (this.zzf) {
                this.zza.zzd();
            }
        }
        return zza();
    }

    @Override // com.google.android.gms.internal.ads.zzkw
    public final zzbb zzc() {
        zzkw zzkwVar = this.zzd;
        if (zzkwVar != null) {
            return zzkwVar.zzc();
        }
        return this.zza.zzc();
    }

    public final void zzd(zzlv zzlvVar) {
        if (zzlvVar == this.zzc) {
            this.zzd = null;
            this.zzc = null;
            this.zze = true;
        }
    }

    public final void zze(zzlv zzlvVar) throws zzik {
        zzkw zzkwVar;
        zzkw zzl = zzlvVar.zzl();
        if (zzl != null && zzl != (zzkwVar = this.zzd)) {
            if (zzkwVar == null) {
                this.zzd = zzl;
                this.zzc = zzlvVar;
                zzl.zzg(this.zza.zzc());
                return;
            }
            throw zzik.zzd(new IllegalStateException("Multiple renderer media clocks enabled."), 1000);
        }
    }

    public final void zzf(long j) {
        this.zza.zzb(j);
    }

    @Override // com.google.android.gms.internal.ads.zzkw
    public final void zzg(zzbb zzbbVar) {
        zzkw zzkwVar = this.zzd;
        if (zzkwVar != null) {
            zzkwVar.zzg(zzbbVar);
            zzbbVar = this.zzd.zzc();
        }
        this.zza.zzg(zzbbVar);
    }

    public final void zzh() {
        this.zzf = true;
        this.zza.zzd();
    }

    public final void zzi() {
        this.zzf = false;
        this.zza.zze();
    }

    @Override // com.google.android.gms.internal.ads.zzkw
    public final boolean zzj() {
        if (this.zze) {
            return false;
        }
        zzkw zzkwVar = this.zzd;
        zzkwVar.getClass();
        return zzkwVar.zzj();
    }
}
