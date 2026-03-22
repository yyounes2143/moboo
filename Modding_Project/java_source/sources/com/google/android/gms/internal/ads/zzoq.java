package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
final class zzoq {
    final /* synthetic */ zzor zza;
    private final String zzb;
    private int zzc;
    private long zzd;
    private zzvb zze;
    private boolean zzf;
    private boolean zzg;

    public zzoq(zzor zzorVar, String str, @Nullable int i, zzvb zzvbVar) {
        long j;
        this.zza = zzorVar;
        this.zzb = str;
        this.zzc = i;
        if (zzvbVar == null) {
            j = -1;
        } else {
            j = zzvbVar.zzd;
        }
        this.zzd = j;
        if (zzvbVar != null && zzvbVar.zzb()) {
            this.zze = zzvbVar;
        }
    }

    public final void zzg(int i, @Nullable zzvb zzvbVar) {
        if (this.zzd == -1 && i == this.zzc && zzvbVar != null) {
            zzor zzorVar = this.zza;
            long j = zzvbVar.zzd;
            if (j >= zzor.zza(zzorVar)) {
                this.zzd = j;
            }
        }
    }

    public final boolean zzj(int i, @Nullable zzvb zzvbVar) {
        if (zzvbVar == null) {
            if (i != this.zzc) {
                return false;
            }
            return true;
        }
        zzvb zzvbVar2 = this.zze;
        if (zzvbVar2 == null) {
            if (zzvbVar.zzb() || zzvbVar.zzd != this.zzd) {
                return false;
            }
            return true;
        } else if (zzvbVar.zzd != zzvbVar2.zzd || zzvbVar.zzb != zzvbVar2.zzb || zzvbVar.zzc != zzvbVar2.zzc) {
            return false;
        } else {
            return true;
        }
    }

    public final boolean zzk(zzmk zzmkVar) {
        zzvb zzvbVar = zzmkVar.zzd;
        if (zzvbVar == null) {
            if (this.zzc != zzmkVar.zzc) {
                return true;
            }
            return false;
        }
        long j = this.zzd;
        if (j == -1) {
            return false;
        }
        long j2 = zzvbVar.zzd;
        if (j2 > j) {
            return true;
        }
        if (this.zze == null) {
            return false;
        }
        zzbl zzblVar = zzmkVar.zzb;
        int zza = zzblVar.zza(zzvbVar.zza);
        int zza2 = zzblVar.zza(this.zze.zza);
        zzvb zzvbVar2 = this.zze;
        if (j2 < zzvbVar2.zzd || zza < zza2) {
            return false;
        }
        if (zza > zza2) {
            return true;
        }
        if (zzvbVar.zzb()) {
            int i = zzvbVar.zzb;
            int i2 = zzvbVar.zzc;
            int i3 = zzvbVar2.zzb;
            if (i > i3) {
                return true;
            }
            if (i == i3 && i2 > zzvbVar2.zzc) {
                return true;
            }
            return false;
        }
        int i4 = zzvbVar.zze;
        if (i4 == -1 || i4 > zzvbVar2.zzb) {
            return true;
        }
        return false;
    }

    /* JADX WARN: Code restructure failed: missing block: B:5:0x000e, code lost:
        if (r0 < r9.zzc()) goto L6;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean zzl(com.google.android.gms.internal.ads.zzbl r8, com.google.android.gms.internal.ads.zzbl r9) {
        /*
            r7 = this;
            int r0 = r7.zzc
            int r1 = r8.zzc()
            r2 = 0
            r3 = -1
            if (r0 < r1) goto L13
            int r8 = r9.zzc()
            if (r0 >= r8) goto L11
            goto L44
        L11:
            r0 = r3
            goto L44
        L13:
            com.google.android.gms.internal.ads.zzor r1 = r7.zza
            com.google.android.gms.internal.ads.zzbk r4 = com.google.android.gms.internal.ads.zzor.zzc(r1)
            r5 = 0
            r8.zze(r0, r4, r5)
            com.google.android.gms.internal.ads.zzbk r0 = com.google.android.gms.internal.ads.zzor.zzc(r1)
            int r0 = r0.zzn
        L24:
            com.google.android.gms.internal.ads.zzbk r4 = com.google.android.gms.internal.ads.zzor.zzc(r1)
            int r4 = r4.zzo
            if (r0 > r4) goto L11
            java.lang.Object r4 = r8.zzf(r0)
            int r4 = r9.zza(r4)
            if (r4 == r3) goto L41
            com.google.android.gms.internal.ads.zzbj r8 = com.google.android.gms.internal.ads.zzor.zzb(r1)
            com.google.android.gms.internal.ads.zzbj r8 = r9.zzd(r4, r8, r2)
            int r0 = r8.zzc
            goto L44
        L41:
            int r0 = r0 + 1
            goto L24
        L44:
            r7.zzc = r0
            if (r0 != r3) goto L49
            return r2
        L49:
            com.google.android.gms.internal.ads.zzvb r8 = r7.zze
            r0 = 1
            if (r8 != 0) goto L4f
            return r0
        L4f:
            java.lang.Object r8 = r8.zza
            int r8 = r9.zza(r8)
            if (r8 == r3) goto L58
            return r0
        L58:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzoq.zzl(com.google.android.gms.internal.ads.zzbl, com.google.android.gms.internal.ads.zzbl):boolean");
    }
}
