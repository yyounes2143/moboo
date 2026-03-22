package com.google.android.gms.internal.ads;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
final class zzamv {
    private final zzaet zza;
    private boolean zzb;
    private boolean zzc;
    private boolean zzd;
    private int zze;
    private int zzf;
    private long zzg;
    private long zzh;

    public zzamv(zzaet zzaetVar) {
        this.zza = zzaetVar;
    }

    public final void zza(byte[] bArr, int i, int i2) {
        boolean z;
        if (this.zzc) {
            int i3 = this.zzf;
            int i4 = (i + 1) - i3;
            if (i4 < i2) {
                if (((bArr[i4] & 192) >> 6) == 0) {
                    z = true;
                } else {
                    z = false;
                }
                this.zzd = z;
                this.zzc = false;
                return;
            }
            this.zzf = i3 + (i2 - i);
        }
    }

    public final void zzb(long j, int i, boolean z) {
        boolean z2;
        if (this.zzh != -9223372036854775807L) {
            z2 = true;
        } else {
            z2 = false;
        }
        zzdc.zzf(z2);
        if (this.zze == 182 && z && this.zzb) {
            this.zza.zzt(this.zzh, this.zzd ? 1 : 0, (int) (j - this.zzg), i, null);
        }
        if (this.zze != 179) {
            this.zzg = j;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x0017  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void zzc(int r5, long r6) {
        /*
            r4 = this;
            r4.zze = r5
            r0 = 0
            r4.zzd = r0
            r1 = 1
            r2 = 182(0xb6, float:2.55E-43)
            if (r5 == r2) goto Lf
            r3 = 179(0xb3, float:2.51E-43)
            if (r5 != r3) goto L11
            r5 = r3
        Lf:
            r3 = r1
            goto L12
        L11:
            r3 = r0
        L12:
            r4.zzb = r3
            if (r5 != r2) goto L17
            goto L18
        L17:
            r1 = r0
        L18:
            r4.zzc = r1
            r4.zzf = r0
            r4.zzh = r6
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzamv.zzc(int, long):void");
    }

    public final void zzd() {
        this.zzb = false;
        this.zzc = false;
        this.zzd = false;
        this.zze = -1;
    }
}
