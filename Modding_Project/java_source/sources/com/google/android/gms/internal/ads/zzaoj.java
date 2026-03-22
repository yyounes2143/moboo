package com.google.android.gms.internal.ads;

import com.tencent.thumbplayer.tcmedia.core.player.ITPNativePlayerMessageCallback;
import java.math.RoundingMode;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
final class zzaoj implements zzaok {
    private static final int[] zza = {-1, -1, -1, -1, 2, 4, 6, 8, -1, -1, -1, -1, 2, 4, 6, 8};
    private static final int[] zzb = {7, 8, 9, 10, 11, 12, 13, 14, 16, 17, 19, 21, 23, 25, 28, 31, 34, 37, 41, 45, 50, 55, 60, 66, 73, 80, 88, 97, 107, 118, 130, 143, 157, 173, 190, 209, 230, ITPNativePlayerMessageCallback.INFO_LONG1_DRM_FATAL_ERROR, 279, 307, 337, 371, 408, 449, 494, 544, 598, 658, 724, 796, 876, 963, 1060, 1166, 1282, 1411, 1552, 1707, 1878, 2066, 2272, 2499, 2749, 3024, 3327, 3660, 4026, 4428, 4871, 5358, 5894, 6484, 7132, 7845, 8630, 9493, 10442, 11487, 12635, 13899, 15289, 16818, 18500, 20350, 22385, 24623, 27086, 29794, 32767};
    private final zzadq zzc;
    private final zzaet zzd;
    private final zzaon zze;
    private final int zzf;
    private final byte[] zzg;
    private final zzek zzh;
    private final int zzi;
    private final zzz zzj;
    private int zzk;
    private long zzl;
    private int zzm;
    private long zzn;

    public zzaoj(zzadq zzadqVar, zzaet zzaetVar, zzaon zzaonVar) throws zzaz {
        this.zzc = zzadqVar;
        this.zzd = zzaetVar;
        this.zze = zzaonVar;
        int max = Math.max(1, zzaonVar.zzc / 10);
        this.zzi = max;
        zzek zzekVar = new zzek(zzaonVar.zzf);
        zzekVar.zzk();
        int zzk = zzekVar.zzk();
        this.zzf = zzk;
        int i = zzaonVar.zzb;
        int i2 = zzaonVar.zzd;
        int i3 = (((i2 - (i * 4)) * 8) / (zzaonVar.zze * i)) + 1;
        if (zzk == i3) {
            String str = zzeu.zza;
            int i4 = ((max + zzk) - 1) / zzk;
            this.zzg = new byte[i2 * i4];
            this.zzh = new zzek(i4 * (zzk + zzk) * i);
            int i5 = ((zzaonVar.zzc * zzaonVar.zzd) * 8) / zzk;
            zzx zzxVar = new zzx();
            zzxVar.zzad("audio/raw");
            zzxVar.zzA(i5);
            zzxVar.zzY(i5);
            zzxVar.zzT((max + max) * i);
            zzxVar.zzB(zzaonVar.zzb);
            zzxVar.zzae(zzaonVar.zzc);
            zzxVar.zzX(2);
            this.zzj = zzxVar.zzaj();
            return;
        }
        throw zzaz.zza("Expected frames per block: " + i3 + "; got: " + zzk, null);
    }

    private final int zzd(int i) {
        int i2 = this.zze.zzb;
        return i / (i2 + i2);
    }

    private final int zze(int i) {
        return (i + i) * this.zze.zzb;
    }

    private final void zzf(int i) {
        RoundingMode roundingMode = RoundingMode.DOWN;
        long j = this.zzl;
        long j2 = this.zzn;
        int zze = zze(i);
        this.zzd.zzt(j + zzeu.zzu(j2, 1000000L, this.zze.zzc, roundingMode), 1, zze, this.zzm - zze, null);
        this.zzn += i;
        this.zzm -= zze;
    }

    @Override // com.google.android.gms.internal.ads.zzaok
    public final void zza(int i, long j) {
        zzaoq zzaoqVar = new zzaoq(this.zze, this.zzf, i, j);
        this.zzc.zzP(zzaoqVar);
        zzaet zzaetVar = this.zzd;
        zzaetVar.zzm(this.zzj);
        zzaetVar.zzl(zzaoqVar.zza());
    }

    @Override // com.google.android.gms.internal.ads.zzaok
    public final void zzb(long j) {
        this.zzk = 0;
        this.zzl = j;
        this.zzm = 0;
        this.zzn = 0L;
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x004b  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0027  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:10:0x003d -> B:4:0x0022). Please submit an issue!!! */
    @Override // com.google.android.gms.internal.ads.zzaok
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean zzc(com.google.android.gms.internal.ads.zzado r26, long r27) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 344
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzaoj.zzc(com.google.android.gms.internal.ads.zzado, long):boolean");
    }
}
