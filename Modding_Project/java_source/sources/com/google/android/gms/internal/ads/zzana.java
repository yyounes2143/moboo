package com.google.android.gms.internal.ads;

import androidx.media3.common.MimeTypes;
import java.util.Collections;
import org.checkerframework.checker.nullness.qual.RequiresNonNull;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzana implements zzamr {
    private final zzanv zza;
    private String zzb;
    private zzaet zzc;
    private zzamz zzd;
    private boolean zze;
    private long zzl;
    private final boolean[] zzf = new boolean[3];
    private final zzanj zzg = new zzanj(32, 128);
    private final zzanj zzh = new zzanj(33, 128);
    private final zzanj zzi = new zzanj(34, 128);
    private final zzanj zzj = new zzanj(39, 128);
    private final zzanj zzk = new zzanj(40, 128);
    private long zzm = -9223372036854775807L;
    private final zzek zzn = new zzek();

    public zzana(zzanv zzanvVar, String str) {
        this.zza = zzanvVar;
    }

    @RequiresNonNull
    private final void zzf(long j, int i, int i2, long j2) {
        this.zzd.zza(j, i, this.zze);
        if (!this.zze) {
            zzanj zzanjVar = this.zzg;
            zzanjVar.zzd(i2);
            zzanj zzanjVar2 = this.zzh;
            zzanjVar2.zzd(i2);
            zzanj zzanjVar3 = this.zzi;
            zzanjVar3.zzd(i2);
            if (zzanjVar.zze() && zzanjVar2.zze() && zzanjVar3.zze()) {
                String str = this.zzb;
                int i3 = zzanjVar.zzb;
                byte[] bArr = new byte[zzanjVar2.zzb + i3 + zzanjVar3.zzb];
                boolean z = false;
                System.arraycopy(zzanjVar.zza, 0, bArr, 0, i3);
                System.arraycopy(zzanjVar2.zza, 0, bArr, zzanjVar.zzb, zzanjVar2.zzb);
                System.arraycopy(zzanjVar3.zza, 0, bArr, zzanjVar.zzb + zzanjVar2.zzb, zzanjVar3.zzb);
                String str2 = null;
                zzfm zzd = zzfs.zzd(zzanjVar2.zza, 3, zzanjVar2.zzb, null);
                zzfh zzfhVar = zzd.zzb;
                if (zzfhVar != null) {
                    int i4 = zzfhVar.zzf;
                    int[] iArr = zzfhVar.zze;
                    int i5 = zzfhVar.zzd;
                    str2 = zzdh.zzd(zzfhVar.zza, zzfhVar.zzb, zzfhVar.zzc, i5, iArr, i4);
                }
                zzx zzxVar = new zzx();
                zzxVar.zzO(str);
                zzxVar.zzE(MimeTypes.VIDEO_MP2T);
                zzxVar.zzad("video/hevc");
                zzxVar.zzC(str2);
                zzxVar.zzai(zzd.zze);
                zzxVar.zzM(zzd.zzf);
                zzi zziVar = new zzi();
                zziVar.zzc(zzd.zzi);
                zziVar.zzb(zzd.zzj);
                zziVar.zzd(zzd.zzk);
                zziVar.zzf(zzd.zzc + 8);
                zziVar.zza(zzd.zzd + 8);
                zzxVar.zzD(zziVar.zzg());
                zzxVar.zzZ(zzd.zzg);
                zzxVar.zzU(zzd.zzh);
                zzxVar.zzV(zzd.zza + 1);
                zzxVar.zzP(Collections.singletonList(bArr));
                zzz zzaj = zzxVar.zzaj();
                this.zzc.zzm(zzaj);
                int i6 = zzaj.zzq;
                if (i6 != -1) {
                    z = true;
                }
                zzfvc.zzl(z);
                this.zza.zzf(i6);
                this.zze = true;
            }
        }
        zzanj zzanjVar4 = this.zzj;
        if (zzanjVar4.zzd(i2)) {
            int zzc = zzfs.zzc(zzanjVar4.zza, zzanjVar4.zzb);
            zzek zzekVar = this.zzn;
            zzekVar.zzJ(zzanjVar4.zza, zzc);
            zzekVar.zzM(5);
            this.zza.zzc(j2, zzekVar);
        }
        zzanj zzanjVar5 = this.zzk;
        if (zzanjVar5.zzd(i2)) {
            int zzc2 = zzfs.zzc(zzanjVar5.zza, zzanjVar5.zzb);
            zzek zzekVar2 = this.zzn;
            zzekVar2.zzJ(zzanjVar5.zza, zzc2);
            zzekVar2.zzM(5);
            this.zza.zzc(j2, zzekVar2);
        }
    }

    @RequiresNonNull
    private final void zzg(byte[] bArr, int i, int i2) {
        this.zzd.zzb(bArr, i, i2);
        if (!this.zze) {
            this.zzg.zza(bArr, i, i2);
            this.zzh.zza(bArr, i, i2);
            this.zzi.zza(bArr, i, i2);
        }
        this.zzj.zza(bArr, i, i2);
        this.zzk.zza(bArr, i, i2);
    }

    @RequiresNonNull
    private final void zzh(long j, int i, int i2, long j2) {
        this.zzd.zzd(j, i, i2, j2, this.zze);
        if (!this.zze) {
            this.zzg.zzc(i2);
            this.zzh.zzc(i2);
            this.zzi.zzc(i2);
        }
        this.zzj.zzc(i2);
        this.zzk.zzc(i2);
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x0053  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x005f  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0061  */
    @Override // com.google.android.gms.internal.ads.zzamr
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void zza(com.google.android.gms.internal.ads.zzek r18) {
        /*
            r17 = this;
            r0 = r17
            r7 = 3
            com.google.android.gms.internal.ads.zzaet r1 = r0.zzc
            com.google.android.gms.internal.ads.zzdc.zzb(r1)
            java.lang.String r1 = com.google.android.gms.internal.ads.zzeu.zza
        La:
            int r1 = r18.zza()
            if (r1 <= 0) goto L78
            int r1 = r18.zzc()
            int r8 = r18.zzd()
            byte[] r9 = r18.zzN()
            long r2 = r0.zzl
            int r4 = r18.zza()
            long r4 = (long) r4
            long r2 = r2 + r4
            r0.zzl = r2
            com.google.android.gms.internal.ads.zzaet r2 = r0.zzc
            int r3 = r18.zza()
            r10 = r18
            r2.zzr(r10, r3)
        L31:
            if (r1 >= r8) goto La
            boolean[] r2 = r0.zzf
            int r2 = com.google.android.gms.internal.ads.zzfs.zza(r9, r1, r8, r2)
            if (r2 == r8) goto L75
            int r3 = r2 + 3
            r3 = r9[r3]
            r3 = r3 & 126(0x7e, float:1.77E-43)
            if (r2 <= 0) goto L4d
            int r4 = r2 + (-1)
            r5 = r9[r4]
            if (r5 != 0) goto L4d
            r2 = 4
            r12 = r2
            r11 = r4
            goto L4f
        L4d:
            r11 = r2
            r12 = r7
        L4f:
            int r2 = r11 - r1
            if (r2 <= 0) goto L56
            r0.zzg(r9, r1, r11)
        L56:
            r1 = r3
            int r3 = r8 - r11
            long r4 = r0.zzl
            long r13 = (long) r3
            long r4 = r4 - r13
            if (r2 >= 0) goto L61
            int r2 = -r2
            goto L62
        L61:
            r2 = 0
        L62:
            int r13 = r1 >> 1
            r15 = r4
            r4 = r2
            r1 = r15
            long r5 = r0.zzm
            r0.zzf(r1, r3, r4, r5)
            long r5 = r0.zzm
            r4 = r13
            r0.zzh(r1, r3, r4, r5)
            int r1 = r11 + r12
            goto L31
        L75:
            r0.zzg(r9, r1, r8)
        L78:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzana.zza(com.google.android.gms.internal.ads.zzek):void");
    }

    @Override // com.google.android.gms.internal.ads.zzamr
    public final void zzb(zzadq zzadqVar, zzaof zzaofVar) {
        zzaofVar.zzc();
        this.zzb = zzaofVar.zzb();
        zzaet zzw = zzadqVar.zzw(zzaofVar.zza(), 2);
        this.zzc = zzw;
        this.zzd = new zzamz(zzw);
        this.zza.zzd(zzadqVar, zzaofVar);
    }

    @Override // com.google.android.gms.internal.ads.zzamr
    public final void zzc(boolean z) {
        zzdc.zzb(this.zzc);
        String str = zzeu.zza;
        if (z) {
            this.zza.zze();
            zzf(this.zzl, 0, 0, this.zzm);
            zzh(this.zzl, 0, 48, this.zzm);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzamr
    public final void zzd(long j, int i) {
        this.zzm = j;
    }

    @Override // com.google.android.gms.internal.ads.zzamr
    public final void zze() {
        this.zzl = 0L;
        this.zzm = -9223372036854775807L;
        zzfs.zzi(this.zzf);
        this.zzg.zzb();
        this.zzh.zzb();
        this.zzi.zzb();
        this.zzj.zzb();
        this.zzk.zzb();
        this.zza.zzb();
        zzamz zzamzVar = this.zzd;
        if (zzamzVar != null) {
            zzamzVar.zzc();
        }
    }
}
