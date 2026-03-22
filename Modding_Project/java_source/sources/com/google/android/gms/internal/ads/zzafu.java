package com.google.android.gms.internal.ads;

import java.io.IOException;
import java.util.List;
import org.checkerframework.checker.nullness.qual.RequiresNonNull;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzafu implements zzadn {
    private zzadq zzf;
    private boolean zzh;
    private long zzi;
    private int zzj;
    private int zzk;
    private int zzl;
    private long zzm;
    private boolean zzn;
    private zzaft zzo;
    private zzafy zzp;
    private final zzek zza = new zzek(4);
    private final zzek zzb = new zzek(9);
    private final zzek zzc = new zzek(11);
    private final zzek zzd = new zzek();
    private final zzafv zze = new zzafv();
    private int zzg = 1;

    private final zzek zza(zzado zzadoVar) throws IOException {
        zzek zzekVar = this.zzd;
        if (this.zzl > zzekVar.zzb()) {
            int zzb = zzekVar.zzb();
            zzekVar.zzJ(new byte[Math.max(zzb + zzb, this.zzl)], 0);
        } else {
            zzekVar.zzL(0);
        }
        zzekVar.zzK(this.zzl);
        zzadoVar.zzi(zzekVar.zzN(), 0, this.zzl);
        return zzekVar;
    }

    @RequiresNonNull
    private final void zzg() {
        if (!this.zzn) {
            this.zzf.zzP(new zzael(-9223372036854775807L, 0L));
            this.zzn = true;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:40:0x00af  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x00b3  */
    /* JADX WARN: Removed duplicated region for block: B:70:0x00bd A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:80:0x0009 A[SYNTHETIC] */
    @Override // com.google.android.gms.internal.ads.zzadn
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int zzb(com.google.android.gms.internal.ads.zzado r17, com.google.android.gms.internal.ads.zzaej r18) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 347
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzafu.zzb(com.google.android.gms.internal.ads.zzado, com.google.android.gms.internal.ads.zzaej):int");
    }

    @Override // com.google.android.gms.internal.ads.zzadn
    public final /* synthetic */ List zzd() {
        return zzfyc.zzn();
    }

    @Override // com.google.android.gms.internal.ads.zzadn
    public final void zze(zzadq zzadqVar) {
        this.zzf = zzadqVar;
    }

    @Override // com.google.android.gms.internal.ads.zzadn
    public final void zzf(long j, long j2) {
        if (j == 0) {
            this.zzg = 1;
            this.zzh = false;
        } else {
            this.zzg = 3;
        }
        this.zzj = 0;
    }

    @Override // com.google.android.gms.internal.ads.zzadn
    public final boolean zzi(zzado zzadoVar) throws IOException {
        zzek zzekVar = this.zza;
        zzadd zzaddVar = (zzadd) zzadoVar;
        zzaddVar.zzm(zzekVar.zzN(), 0, 3, false);
        zzekVar.zzL(0);
        if (zzekVar.zzo() != 4607062) {
            return false;
        }
        zzaddVar.zzm(zzekVar.zzN(), 0, 2, false);
        zzekVar.zzL(0);
        if ((zzekVar.zzq() & 250) != 0) {
            return false;
        }
        zzaddVar.zzm(zzekVar.zzN(), 0, 4, false);
        zzekVar.zzL(0);
        int zzg = zzekVar.zzg();
        zzadoVar.zzj();
        zzadd zzaddVar2 = (zzadd) zzadoVar;
        zzaddVar2.zzl(zzg, false);
        zzaddVar2.zzm(zzekVar.zzN(), 0, 4, false);
        zzekVar.zzL(0);
        if (zzekVar.zzg() != 0) {
            return false;
        }
        return true;
    }

    @Override // com.google.android.gms.internal.ads.zzadn
    public final /* synthetic */ zzadn zzc() {
        return this;
    }
}
