package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;
import androidx.media3.common.MimeTypes;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzanc implements zzamr {
    @Nullable
    private final String zza;
    private final int zzb;
    private final String zzc = MimeTypes.VIDEO_MP2T;
    private final zzek zzd;
    private final zzej zze;
    private zzaet zzf;
    private String zzg;
    private zzz zzh;
    private int zzi;
    private int zzj;
    private int zzk;
    private int zzl;
    private long zzm;
    private boolean zzn;
    private int zzo;
    private int zzp;
    private int zzq;
    private boolean zzr;
    private long zzs;
    private int zzt;
    private long zzu;
    private int zzv;
    @Nullable
    private String zzw;

    public zzanc(@Nullable String str, int i, String str2) {
        this.zza = str;
        this.zzb = i;
        zzek zzekVar = new zzek(1024);
        this.zzd = zzekVar;
        byte[] zzN = zzekVar.zzN();
        this.zze = new zzej(zzN, zzN.length);
        this.zzm = -9223372036854775807L;
    }

    private final int zzf(zzej zzejVar) throws zzaz {
        int zza = zzejVar.zza();
        zzaci zzb = zzack.zzb(zzejVar, true);
        this.zzw = zzb.zzc;
        this.zzt = zzb.zza;
        this.zzv = zzb.zzb;
        return zza - zzejVar.zza();
    }

    private static long zzg(zzej zzejVar) {
        return zzejVar.zzd((zzejVar.zzd(2) + 1) * 8);
    }

    /* JADX WARN: Code restructure failed: missing block: B:67:0x015a, code lost:
        if (r14.zzn == false) goto L105;
     */
    @Override // com.google.android.gms.internal.ads.zzamr
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void zza(com.google.android.gms.internal.ads.zzek r15) throws com.google.android.gms.internal.ads.zzaz {
        /*
            Method dump skipped, instructions count: 546
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzanc.zza(com.google.android.gms.internal.ads.zzek):void");
    }

    @Override // com.google.android.gms.internal.ads.zzamr
    public final void zzb(zzadq zzadqVar, zzaof zzaofVar) {
        zzaofVar.zzc();
        this.zzf = zzadqVar.zzw(zzaofVar.zza(), 1);
        this.zzg = zzaofVar.zzb();
    }

    @Override // com.google.android.gms.internal.ads.zzamr
    public final void zzd(long j, int i) {
        this.zzm = j;
    }

    @Override // com.google.android.gms.internal.ads.zzamr
    public final void zze() {
        this.zzi = 0;
        this.zzm = -9223372036854775807L;
        this.zzn = false;
    }

    @Override // com.google.android.gms.internal.ads.zzamr
    public final void zzc(boolean z) {
    }
}
