package com.google.android.gms.internal.ads;

import androidx.media3.common.MimeTypes;
import java.io.IOException;
import java.math.RoundingMode;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
final class zzaol implements zzaok {
    private final zzadq zza;
    private final zzaet zzb;
    private final zzaon zzc;
    private final zzz zzd;
    private final int zze;
    private long zzf;
    private int zzg;
    private long zzh;

    public zzaol(zzadq zzadqVar, zzaet zzaetVar, zzaon zzaonVar, String str, int i) throws zzaz {
        this.zza = zzadqVar;
        this.zzb = zzaetVar;
        this.zzc = zzaonVar;
        int i2 = zzaonVar.zzb * zzaonVar.zze;
        int i3 = zzaonVar.zzd;
        int i4 = i2 / 8;
        if (i3 == i4) {
            int i5 = zzaonVar.zzc * i4;
            int i6 = i5 * 8;
            int max = Math.max(i4, i5 / 10);
            this.zze = max;
            zzx zzxVar = new zzx();
            zzxVar.zzE(MimeTypes.AUDIO_WAV);
            zzxVar.zzad(str);
            zzxVar.zzA(i6);
            zzxVar.zzY(i6);
            zzxVar.zzT(max);
            zzxVar.zzB(zzaonVar.zzb);
            zzxVar.zzae(zzaonVar.zzc);
            zzxVar.zzX(i);
            this.zzd = zzxVar.zzaj();
            return;
        }
        throw zzaz.zza("Expected block size: " + i4 + "; got: " + i3, null);
    }

    @Override // com.google.android.gms.internal.ads.zzaok
    public final void zza(int i, long j) {
        zzaoq zzaoqVar = new zzaoq(this.zzc, 1, i, j);
        this.zza.zzP(zzaoqVar);
        zzaet zzaetVar = this.zzb;
        zzaetVar.zzm(this.zzd);
        zzaetVar.zzl(zzaoqVar.zza());
    }

    @Override // com.google.android.gms.internal.ads.zzaok
    public final void zzb(long j) {
        this.zzf = j;
        this.zzg = 0;
        this.zzh = 0L;
    }

    @Override // com.google.android.gms.internal.ads.zzaok
    public final boolean zzc(zzado zzadoVar, long j) throws IOException {
        int i;
        int i2;
        int i3;
        long j2 = j;
        while (true) {
            i = (j2 > 0L ? 1 : (j2 == 0L ? 0 : -1));
            if (i <= 0 || (i2 = this.zzg) >= (i3 = this.zze)) {
                break;
            }
            int zzf = this.zzb.zzf(zzadoVar, (int) Math.min(i3 - i2, j2), true);
            if (zzf == -1) {
                j2 = 0;
            } else {
                this.zzg += zzf;
                j2 -= zzf;
            }
        }
        zzaon zzaonVar = this.zzc;
        int i4 = this.zzg;
        int i5 = zzaonVar.zzd;
        int i6 = i4 / i5;
        if (i6 > 0) {
            int i7 = i6 * i5;
            int i8 = this.zzg - i7;
            this.zzb.zzt(this.zzf + zzeu.zzu(this.zzh, 1000000L, zzaonVar.zzc, RoundingMode.DOWN), 1, i7, i8, null);
            this.zzh += i6;
            this.zzg = i8;
        }
        if (i <= 0) {
            return true;
        }
        return false;
    }
}
