package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;
import java.io.IOException;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzaeu {
    private final byte[] zza = new byte[10];
    private boolean zzb;
    private int zzc;
    private long zzd;
    private int zze;
    private int zzf;
    private int zzg;

    public final void zza(zzaet zzaetVar, @Nullable zzaes zzaesVar) {
        if (this.zzc > 0) {
            zzaetVar.zzt(this.zzd, this.zze, this.zzf, this.zzg, zzaesVar);
            this.zzc = 0;
        }
    }

    public final void zzb() {
        this.zzb = false;
        this.zzc = 0;
    }

    public final void zzc(zzaet zzaetVar, long j, int i, int i2, int i3, @Nullable zzaes zzaesVar) {
        boolean z;
        if (this.zzg <= i2 + i3) {
            z = true;
        } else {
            z = false;
        }
        zzdc.zzg(z, "TrueHD chunk samples must be contiguous in the sample queue.");
        if (this.zzb) {
            int i4 = this.zzc;
            int i5 = i4 + 1;
            this.zzc = i5;
            if (i4 == 0) {
                this.zzd = j;
                this.zze = i;
                this.zzf = 0;
            }
            this.zzf += i2;
            this.zzg = i3;
            if (i5 >= 16) {
                zza(zzaetVar, zzaesVar);
            }
        }
    }

    public final void zzd(zzado zzadoVar) throws IOException {
        if (!this.zzb) {
            byte[] bArr = this.zza;
            zzadoVar.zzh(bArr, 0, 10);
            zzadoVar.zzj();
            int i = zzacn.zza;
            if (bArr[4] == -8 && bArr[5] == 114 && bArr[6] == 111 && (bArr[7] & 254) == 186) {
                this.zzb = true;
            }
        }
    }
}
