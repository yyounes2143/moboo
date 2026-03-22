package com.google.android.gms.internal.ads;

import androidx.media3.common.MimeTypes;
import java.util.ArrayList;
import java.util.Arrays;
import org.checkerframework.checker.nullness.qual.RequiresNonNull;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzamy implements zzamr {
    private final zzanv zza;
    private long zzf;
    private String zzh;
    private zzaet zzi;
    private zzamx zzj;
    private boolean zzk;
    private boolean zzm;
    private final String zzb = MimeTypes.VIDEO_MP2T;
    private final boolean[] zzg = new boolean[3];
    private final zzanj zzc = new zzanj(7, 128);
    private final zzanj zzd = new zzanj(8, 128);
    private final zzanj zze = new zzanj(6, 128);
    private long zzl = -9223372036854775807L;
    private final zzek zzn = new zzek();

    public zzamy(zzanv zzanvVar, boolean z, boolean z2, String str) {
        this.zza = zzanvVar;
    }

    @RequiresNonNull
    private final void zzf(long j, int i, int i2, long j2) {
        if (!this.zzk) {
            zzanj zzanjVar = this.zzc;
            zzanjVar.zzd(i2);
            zzanj zzanjVar2 = this.zzd;
            zzanjVar2.zzd(i2);
            if (!this.zzk) {
                if (zzanjVar.zze() && zzanjVar2.zze()) {
                    ArrayList arrayList = new ArrayList();
                    arrayList.add(Arrays.copyOf(zzanjVar.zza, zzanjVar.zzb));
                    arrayList.add(Arrays.copyOf(zzanjVar2.zza, zzanjVar2.zzb));
                    zzfr zzg = zzfs.zzg(zzanjVar.zza, 4, zzanjVar.zzb);
                    zzfq zzf = zzfs.zzf(zzanjVar2.zza, 4, zzanjVar2.zzb);
                    String zzc = zzdh.zzc(zzg.zza, zzg.zzb, zzg.zzc);
                    zzaet zzaetVar = this.zzi;
                    zzx zzxVar = new zzx();
                    zzxVar.zzO(this.zzh);
                    zzxVar.zzE(this.zzb);
                    zzxVar.zzad("video/avc");
                    zzxVar.zzC(zzc);
                    zzxVar.zzai(zzg.zze);
                    zzxVar.zzM(zzg.zzf);
                    zzi zziVar = new zzi();
                    zziVar.zzc(zzg.zzj);
                    zziVar.zzb(zzg.zzk);
                    zziVar.zzd(zzg.zzl);
                    zziVar.zzf(zzg.zzh + 8);
                    zziVar.zza(zzg.zzi + 8);
                    zzxVar.zzD(zziVar.zzg());
                    zzxVar.zzZ(zzg.zzg);
                    zzxVar.zzP(arrayList);
                    int i3 = zzg.zzm;
                    zzxVar.zzU(i3);
                    zzaetVar.zzm(zzxVar.zzaj());
                    this.zzk = true;
                    this.zza.zzf(i3);
                    this.zzj.zzb(zzg);
                    this.zzj.zza(zzf);
                    zzanjVar.zzb();
                    zzanjVar2.zzb();
                }
            } else if (zzanjVar.zze()) {
                zzfr zzg2 = zzfs.zzg(zzanjVar.zza, 4, zzanjVar.zzb);
                this.zza.zzf(zzg2.zzm);
                this.zzj.zzb(zzg2);
                zzanjVar.zzb();
            } else if (zzanjVar2.zze()) {
                this.zzj.zza(zzfs.zzf(zzanjVar2.zza, 4, zzanjVar2.zzb));
                zzanjVar2.zzb();
            }
        }
        zzanj zzanjVar3 = this.zze;
        if (zzanjVar3.zzd(i2)) {
            int zzc2 = zzfs.zzc(zzanjVar3.zza, zzanjVar3.zzb);
            zzek zzekVar = this.zzn;
            zzekVar.zzJ(zzanjVar3.zza, zzc2);
            zzekVar.zzL(4);
            this.zza.zzc(j2, zzekVar);
        }
        if (this.zzj.zze(j, i, this.zzk)) {
            this.zzm = false;
        }
    }

    @RequiresNonNull
    private final void zzg(byte[] bArr, int i, int i2) {
        if (!this.zzk) {
            this.zzc.zza(bArr, i, i2);
            this.zzd.zza(bArr, i, i2);
        }
        this.zze.zza(bArr, i, i2);
    }

    @RequiresNonNull
    private final void zzh(long j, int i, long j2) {
        if (!this.zzk) {
            this.zzc.zzc(i);
            this.zzd.zzc(i);
        }
        this.zze.zzc(i);
        this.zzj.zzd(j, i, j2, this.zzm);
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x0049  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0054  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0057  */
    @Override // com.google.android.gms.internal.ads.zzamr
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void zza(com.google.android.gms.internal.ads.zzek r16) {
        /*
            r15 = this;
            r7 = 3
            com.google.android.gms.internal.ads.zzaet r1 = r15.zzi
            com.google.android.gms.internal.ads.zzdc.zzb(r1)
            java.lang.String r1 = com.google.android.gms.internal.ads.zzeu.zza
            int r1 = r16.zzc()
            int r8 = r16.zzd()
            byte[] r9 = r16.zzN()
            long r2 = r15.zzf
            int r4 = r16.zza()
            long r4 = (long) r4
            long r2 = r2 + r4
            r15.zzf = r2
            com.google.android.gms.internal.ads.zzaet r2 = r15.zzi
            int r3 = r16.zza()
            r4 = r16
            r2.zzr(r4, r3)
        L29:
            boolean[] r2 = r15.zzg
            int r2 = com.google.android.gms.internal.ads.zzfs.zza(r9, r1, r8, r2)
            if (r2 == r8) goto L6a
            int r3 = r2 + 3
            r3 = r9[r3]
            r10 = r3 & 31
            if (r2 <= 0) goto L43
            int r3 = r2 + (-1)
            r4 = r9[r3]
            if (r4 != 0) goto L43
            r2 = 4
            r12 = r2
            r11 = r3
            goto L45
        L43:
            r11 = r2
            r12 = r7
        L45:
            int r2 = r11 - r1
            if (r2 <= 0) goto L4c
            r15.zzg(r9, r1, r11)
        L4c:
            int r3 = r8 - r11
            long r4 = r15.zzf
            long r13 = (long) r3
            long r4 = r4 - r13
            if (r2 >= 0) goto L57
            int r1 = -r2
        L55:
            r13 = r4
            goto L59
        L57:
            r1 = 0
            goto L55
        L59:
            long r5 = r15.zzl
            r0 = r15
            r4 = r1
            r1 = r13
            r0.zzf(r1, r3, r4, r5)
            long r4 = r15.zzl
            r3 = r10
            r0.zzh(r1, r3, r4)
            int r1 = r11 + r12
            goto L29
        L6a:
            r15.zzg(r9, r1, r8)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzamy.zza(com.google.android.gms.internal.ads.zzek):void");
    }

    @Override // com.google.android.gms.internal.ads.zzamr
    public final void zzb(zzadq zzadqVar, zzaof zzaofVar) {
        zzaofVar.zzc();
        this.zzh = zzaofVar.zzb();
        zzaet zzw = zzadqVar.zzw(zzaofVar.zza(), 2);
        this.zzi = zzw;
        this.zzj = new zzamx(zzw, false, false);
        this.zza.zzd(zzadqVar, zzaofVar);
    }

    @Override // com.google.android.gms.internal.ads.zzamr
    public final void zzc(boolean z) {
        zzdc.zzb(this.zzi);
        String str = zzeu.zza;
        if (z) {
            this.zza.zze();
            zzf(this.zzf, 0, 0, this.zzl);
            zzh(this.zzf, 9, this.zzl);
            zzf(this.zzf, 0, 0, this.zzl);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzamr
    public final void zzd(long j, int i) {
        boolean z;
        this.zzl = j;
        int i2 = i & 2;
        boolean z2 = this.zzm;
        if (i2 != 0) {
            z = true;
        } else {
            z = false;
        }
        this.zzm = z | z2;
    }

    @Override // com.google.android.gms.internal.ads.zzamr
    public final void zze() {
        this.zzf = 0L;
        this.zzm = false;
        this.zzl = -9223372036854775807L;
        zzfs.zzi(this.zzg);
        this.zzc.zzb();
        this.zzd.zzb();
        this.zze.zzb();
        this.zza.zzb();
        zzamx zzamxVar = this.zzj;
        if (zzamxVar != null) {
            zzamxVar.zzc();
        }
    }
}
