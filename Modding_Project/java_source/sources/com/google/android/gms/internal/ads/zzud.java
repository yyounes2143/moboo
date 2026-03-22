package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;
import java.io.IOException;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzud implements zzvu {
    private final zzads zza;
    @Nullable
    private zzadn zzb;
    @Nullable
    private zzado zzc;

    public zzud(zzads zzadsVar) {
        this.zza = zzadsVar;
    }

    @Override // com.google.android.gms.internal.ads.zzvu
    public final int zza(zzaej zzaejVar) throws IOException {
        zzadn zzadnVar = this.zzb;
        zzadnVar.getClass();
        zzado zzadoVar = this.zzc;
        zzadoVar.getClass();
        return zzadnVar.zzb(zzadoVar, zzaejVar);
    }

    @Override // com.google.android.gms.internal.ads.zzvu
    public final long zzb() {
        zzado zzadoVar = this.zzc;
        if (zzadoVar != null) {
            return zzadoVar.zzf();
        }
        return -1L;
    }

    @Override // com.google.android.gms.internal.ads.zzvu
    public final void zzc() {
        zzadn zzadnVar = this.zzb;
        if (zzadnVar != null && (zzadnVar instanceof zzahw)) {
            ((zzahw) zzadnVar).zza();
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:21:0x004b, code lost:
        if (r1.zzf() != r11) goto L29;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x004f, code lost:
        r0 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x0075, code lost:
        if (r1.zzf() != r11) goto L29;
     */
    @Override // com.google.android.gms.internal.ads.zzvu
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void zzd(com.google.android.gms.internal.ads.zzl r8, android.net.Uri r9, java.util.Map r10, long r11, long r13, com.google.android.gms.internal.ads.zzadq r15) throws java.io.IOException {
        /*
            r7 = this;
            com.google.android.gms.internal.ads.zzadd r1 = new com.google.android.gms.internal.ads.zzadd
            r2 = r8
            r3 = r11
            r5 = r13
            r1.<init>(r2, r3, r5)
            r7.zzc = r1
            com.google.android.gms.internal.ads.zzadn r8 = r7.zzb
            if (r8 == 0) goto Lf
            return
        Lf:
            com.google.android.gms.internal.ads.zzads r8 = r7.zza
            com.google.android.gms.internal.ads.zzadn[] r8 = r8.zza(r9, r10)
            int r10 = r8.length
            com.google.android.gms.internal.ads.zzfxz r11 = com.google.android.gms.internal.ads.zzfyc.zzi(r10)
            r12 = 0
            r13 = 1
            if (r10 != r13) goto L23
            r8 = r8[r12]
            r7.zzb = r8
            goto L7f
        L23:
            r14 = r12
        L24:
            if (r14 >= r10) goto L7b
            r0 = r8[r14]
            boolean r2 = r0.zzi(r1)     // Catch: java.lang.Throwable -> L37 java.io.EOFException -> L6b
            if (r2 == 0) goto L3a
            r7.zzb = r0     // Catch: java.lang.Throwable -> L37 java.io.EOFException -> L6b
            com.google.android.gms.internal.ads.zzdc.zzf(r13)
            r1.zzj()
            goto L7b
        L37:
            r0 = move-exception
            r8 = r0
            goto L57
        L3a:
            java.util.List r0 = r0.zzd()     // Catch: java.lang.Throwable -> L37 java.io.EOFException -> L6b
            r11.zzh(r0)     // Catch: java.lang.Throwable -> L37 java.io.EOFException -> L6b
            com.google.android.gms.internal.ads.zzadn r0 = r7.zzb
            if (r0 != 0) goto L4d
            long r5 = r1.zzf()
            int r0 = (r5 > r3 ? 1 : (r5 == r3 ? 0 : -1))
            if (r0 != 0) goto L4f
        L4d:
            r0 = r13
            goto L50
        L4f:
            r0 = r12
        L50:
            com.google.android.gms.internal.ads.zzdc.zzf(r0)
            r1.zzj()
            goto L78
        L57:
            com.google.android.gms.internal.ads.zzadn r9 = r7.zzb
            if (r9 != 0) goto L63
            long r9 = r1.zzf()
            int r9 = (r9 > r3 ? 1 : (r9 == r3 ? 0 : -1))
            if (r9 != 0) goto L64
        L63:
            r12 = r13
        L64:
            com.google.android.gms.internal.ads.zzdc.zzf(r12)
            r1.zzj()
            throw r8
        L6b:
            com.google.android.gms.internal.ads.zzadn r0 = r7.zzb
            if (r0 != 0) goto L4d
            long r5 = r1.zzf()
            int r0 = (r5 > r3 ? 1 : (r5 == r3 ? 0 : -1))
            if (r0 != 0) goto L4f
            goto L4d
        L78:
            int r14 = r14 + 1
            goto L24
        L7b:
            com.google.android.gms.internal.ads.zzadn r10 = r7.zzb
            if (r10 == 0) goto L85
        L7f:
            com.google.android.gms.internal.ads.zzadn r8 = r7.zzb
            r8.zze(r15)
            return
        L85:
            com.google.android.gms.internal.ads.zzxf r10 = new com.google.android.gms.internal.ads.zzxf
            com.google.android.gms.internal.ads.zzfyc r8 = com.google.android.gms.internal.ads.zzfyc.zzm(r8)
            com.google.android.gms.internal.ads.zzuc r12 = new com.google.android.gms.internal.ads.zzuc
            r12.<init>()
            java.util.List r8 = com.google.android.gms.internal.ads.zzfys.zzb(r8, r12)
            java.util.Iterator r8 = r8.iterator()
            java.lang.StringBuilder r12 = new java.lang.StringBuilder
            r12.<init>()
            java.lang.String r13 = ", "
            com.google.android.gms.internal.ads.zzfuu.zzc(r12, r8, r13)
            java.lang.String r8 = r12.toString()
            java.lang.StringBuilder r12 = new java.lang.StringBuilder
            r12.<init>()
            java.lang.String r13 = "None of the available extractors ("
            r12.append(r13)
            r12.append(r8)
            java.lang.String r8 = ") could read the stream."
            r12.append(r8)
            java.lang.String r8 = r12.toString()
            com.google.android.gms.internal.ads.zzfyc r11 = r11.zzi()
            r10.<init>(r8, r9, r11)
            throw r10
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzud.zzd(com.google.android.gms.internal.ads.zzl, android.net.Uri, java.util.Map, long, long, com.google.android.gms.internal.ads.zzadq):void");
    }

    @Override // com.google.android.gms.internal.ads.zzvu
    public final void zze() {
        if (this.zzb != null) {
            this.zzb = null;
        }
        this.zzc = null;
    }

    @Override // com.google.android.gms.internal.ads.zzvu
    public final void zzf(long j, long j2) {
        zzadn zzadnVar = this.zzb;
        zzadnVar.getClass();
        zzadnVar.zzf(j, j2);
    }
}
