package com.google.android.gms.internal.ads;

import android.annotation.TargetApi;
import android.content.Context;
import android.graphics.Point;
import android.media.MediaCodecInfo;
import android.media.MediaCrypto;
import android.media.MediaFormat;
import android.os.Build;
import android.os.Bundle;
import android.os.Trace;
import android.util.Pair;
import android.view.Surface;
import androidx.annotation.CallSuper;
import androidx.annotation.Nullable;
import androidx.media3.exoplayer.audio.SilenceSkippingAudioProcessor;
import com.google.android.gms.common.Scopes;
import com.tencent.rtmp.downloader.TXVodDownloadDataSource;
import com.unity3d.ads.core.domain.HandleInvocationsFromAdViewer;
import io.flutter.plugin.platform.PlatformPlugin;
import java.nio.ByteBuffer;
import java.util.List;
import java.util.PriorityQueue;
import org.checkerframework.checker.nullness.qual.RequiresNonNull;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzaau extends zztj implements zzabk {
    private static final int[] zzb = {1920, 1600, 1440, PlatformPlugin.DEFAULT_SYSTEM_UI, 960, 854, 640, TXVodDownloadDataSource.QUALITY_540P, TXVodDownloadDataSource.QUALITY_480P};
    private static boolean zzc;
    private static boolean zzd;
    private int zzA;
    private int zzB;
    private int zzC;
    private long zzD;
    private int zzE;
    private long zzF;
    private zzcd zzG;
    @Nullable
    private zzcd zzH;
    private int zzI;
    private int zzJ;
    @Nullable
    private zzabi zzK;
    private long zzL;
    private long zzM;
    private boolean zzN;
    private boolean zzO;
    private int zzP;
    private final Context zze;
    private final boolean zzf;
    private final zzacb zzg;
    private final boolean zzh;
    private final zzabl zzi;
    private final zzabj zzj;
    private final long zzk;
    private final PriorityQueue zzl;
    private zzaat zzm;
    private boolean zzn;
    private boolean zzo;
    private zzach zzp;
    private boolean zzq;
    private int zzr;
    private List zzs;
    @Nullable
    private Surface zzt;
    @Nullable
    private zzaax zzu;
    private zzel zzv;
    private boolean zzw;
    private int zzx;
    private int zzy;
    private long zzz;

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public zzaau(com.google.android.gms.internal.ads.zzaas r8) {
        /*
            r7 = this;
            com.google.android.gms.internal.ads.zzsx r2 = com.google.android.gms.internal.ads.zzaas.zzc(r8)
            com.google.android.gms.internal.ads.zztl r3 = com.google.android.gms.internal.ads.zzaas.zzd(r8)
            r4 = 0
            r5 = 1106247680(0x41f00000, float:30.0)
            r1 = 2
            r0 = r7
            r0.<init>(r1, r2, r3, r4, r5)
            android.content.Context r1 = com.google.android.gms.internal.ads.zzaas.zza(r8)
            android.content.Context r1 = r1.getApplicationContext()
            r0.zze = r1
            r2 = 0
            r0.zzp = r2
            com.google.android.gms.internal.ads.zzacb r3 = new com.google.android.gms.internal.ads.zzacb
            android.os.Handler r4 = com.google.android.gms.internal.ads.zzaas.zzb(r8)
            com.google.android.gms.internal.ads.zzacc r8 = com.google.android.gms.internal.ads.zzaas.zzi(r8)
            r3.<init>(r4, r8)
            r0.zzg = r3
            com.google.android.gms.internal.ads.zzach r8 = r0.zzp
            r3 = 1
            r4 = 0
            if (r8 != 0) goto L34
            r8 = r3
            goto L35
        L34:
            r8 = r4
        L35:
            r0.zzf = r8
            com.google.android.gms.internal.ads.zzabl r8 = new com.google.android.gms.internal.ads.zzabl
            r5 = 0
            r8.<init>(r1, r7, r5)
            r0.zzi = r8
            com.google.android.gms.internal.ads.zzabj r8 = new com.google.android.gms.internal.ads.zzabj
            r8.<init>()
            r0.zzj = r8
            java.lang.String r8 = "NVIDIA"
            java.lang.String r1 = android.os.Build.MANUFACTURER
            boolean r8 = r8.equals(r1)
            r0.zzh = r8
            com.google.android.gms.internal.ads.zzel r8 = com.google.android.gms.internal.ads.zzel.zza
            r0.zzv = r8
            r0.zzx = r3
            r0.zzy = r4
            com.google.android.gms.internal.ads.zzcd r8 = com.google.android.gms.internal.ads.zzcd.zza
            r0.zzG = r8
            r0.zzJ = r4
            r0.zzH = r2
            r8 = -1000(0xfffffffffffffc18, float:NaN)
            r0.zzI = r8
            r1 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            r0.zzL = r1
            r0.zzM = r1
            java.util.PriorityQueue r8 = new java.util.PriorityQueue
            r8.<init>()
            r0.zzl = r8
            r0.zzk = r1
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzaau.<init>(com.google.android.gms.internal.ads.zzaas):void");
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:325:0x04c2, code lost:
        if (r0.equals("deb") != false) goto L61;
     */
    /* JADX WARN: Code restructure failed: missing block: B:514:0x079d, code lost:
        if (r13.equals("JSN-L21") == false) goto L19;
     */
    /* JADX WARN: Removed duplicated region for block: B:41:0x0080 A[FALL_THROUGH] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final boolean zzaW(java.lang.String r17) {
        /*
            Method dump skipped, instructions count: 2924
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzaau.zzaW(java.lang.String):boolean");
    }

    public static final boolean zzaX(zztc zztcVar) {
        if (Build.VERSION.SDK_INT >= 35 && zztcVar.zzh) {
            return true;
        }
        return false;
    }

    @Nullable
    private final Surface zzaY(zztc zztcVar) {
        zzach zzachVar = this.zzp;
        if (zzachVar != null) {
            return zzachVar.zzb();
        }
        Surface surface = this.zzt;
        if (surface != null) {
            return surface;
        }
        if (zzaX(zztcVar)) {
            return null;
        }
        zzdc.zzf(zzaV(zztcVar));
        zzaax zzaaxVar = this.zzu;
        if (zzaaxVar != null) {
            if (zzaaxVar.zza != zztcVar.zzf) {
                zzbd();
            }
        }
        if (this.zzu == null) {
            this.zzu = zzaax.zza(this.zze, zztcVar.zzf);
        }
        return this.zzu;
    }

    private static List zzaZ(Context context, zztl zztlVar, zzz zzzVar, boolean z, boolean z2) throws zztq {
        String str = zzzVar.zzo;
        if (str == null) {
            return zzfyc.zzn();
        }
        if (Build.VERSION.SDK_INT >= 26 && "video/dolby-vision".equals(str) && !zzaar.zza(context)) {
            List zzc2 = zztw.zzc(zztlVar, zzzVar, z, z2);
            if (!zzc2.isEmpty()) {
                return zzc2;
            }
        }
        return zztw.zze(zztlVar, zzzVar, z, z2);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x007e, code lost:
        if (r3.equals("video/av01") != false) goto L22;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static int zzad(com.google.android.gms.internal.ads.zztc r11, com.google.android.gms.internal.ads.zzz r12) {
        /*
            Method dump skipped, instructions count: 266
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzaau.zzad(com.google.android.gms.internal.ads.zztc, com.google.android.gms.internal.ads.zzz):int");
    }

    public static int zzae(zztc zztcVar, zzz zzzVar) {
        int i = zzzVar.zzp;
        if (i != -1) {
            List list = zzzVar.zzr;
            int size = list.size();
            int i2 = 0;
            for (int i3 = 0; i3 < size; i3++) {
                i2 += ((byte[]) list.get(i3)).length;
            }
            return i + i2;
        }
        return zzad(zztcVar, zzzVar);
    }

    private final void zzba() {
        zzcd zzcdVar = this.zzH;
        if (zzcdVar != null) {
            this.zzg.zzt(zzcdVar);
        }
    }

    private final void zzbb(long j, long j2, zzz zzzVar) {
        zzabi zzabiVar = this.zzK;
        if (zzabiVar != null) {
            zzabiVar.zzcT(j, j2, zzzVar, zzaw());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    @RequiresNonNull
    public final void zzbc() {
        this.zzg.zzq(this.zzt);
        this.zzw = true;
    }

    private final void zzbd() {
        zzaax zzaaxVar = this.zzu;
        if (zzaaxVar != null) {
            zzaaxVar.release();
            this.zzu = null;
        }
    }

    private final void zzbe(@Nullable Object obj) throws zzik {
        Surface surface;
        if (obj instanceof Surface) {
            surface = (Surface) obj;
        } else {
            surface = null;
        }
        if (this.zzt != surface) {
            this.zzt = surface;
            if (this.zzp == null) {
                this.zzi.zzk(surface);
            }
            this.zzw = false;
            int zzcU = zzcU();
            zzsz zzaz = zzaz();
            if (zzaz != null && this.zzp == null) {
                zztc zzaB = zzaB();
                zzaB.getClass();
                if (zzbf(zzaB) && !this.zzn) {
                    Surface zzaY = zzaY(zzaB);
                    if (zzaY != null) {
                        zzaz.zzp(zzaY);
                    } else if (Build.VERSION.SDK_INT >= 35) {
                        zzaz.zzi();
                    } else {
                        throw new IllegalStateException();
                    }
                } else {
                    zzaG();
                    zzaD();
                }
            }
            if (surface != null) {
                zzba();
            } else {
                this.zzH = null;
                zzach zzachVar = this.zzp;
                if (zzachVar != null) {
                    zzachVar.zzi();
                }
            }
            if (zzcU == 2) {
                zzach zzachVar2 = this.zzp;
                if (zzachVar2 != null) {
                    zzachVar2.zzk(true);
                } else {
                    this.zzi.zzc(true);
                }
            }
        } else if (surface != null) {
            zzba();
            Surface surface2 = this.zzt;
            if (surface2 != null && this.zzw) {
                this.zzg.zzq(surface2);
            }
        }
    }

    private final boolean zzbf(zztc zztcVar) {
        if (this.zzp == null) {
            Surface surface = this.zzt;
            if ((surface == null || !surface.isValid()) && !zzaX(zztcVar) && !zzaV(zztcVar)) {
                return false;
            }
            return true;
        }
        return true;
    }

    @Override // com.google.android.gms.internal.ads.zzhz
    public final void zzA() {
        zzach zzachVar = this.zzp;
        if (zzachVar != null && this.zzf) {
            zzachVar.zzn();
        }
    }

    @Override // com.google.android.gms.internal.ads.zztj, com.google.android.gms.internal.ads.zzhz
    public final void zzC() {
        try {
            super.zzC();
        } finally {
            this.zzq = false;
            this.zzL = -9223372036854775807L;
            zzbd();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzhz
    public final void zzD() {
        this.zzA = 0;
        this.zzz = zzi().zzb();
        this.zzD = 0L;
        this.zzE = 0;
        zzach zzachVar = this.zzp;
        if (zzachVar != null) {
            zzachVar.zzx();
        } else {
            this.zzi.zzd();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzhz
    public final void zzE() {
        if (this.zzA > 0) {
            long zzb2 = zzi().zzb();
            this.zzg.zzn(this.zzA, zzb2 - this.zzz);
            this.zzA = 0;
            this.zzz = zzb2;
        }
        int i = this.zzE;
        if (i != 0) {
            this.zzg.zzr(this.zzD, i);
            this.zzD = 0L;
            this.zzE = 0;
        }
        zzach zzachVar = this.zzp;
        if (zzachVar != null) {
            zzachVar.zzy();
        } else {
            this.zzi.zze();
        }
    }

    @Override // com.google.android.gms.internal.ads.zztj, com.google.android.gms.internal.ads.zzhz
    public final void zzF(zzz[] zzzVarArr, long j, long j2, zzvb zzvbVar) throws zzik {
        super.zzF(zzzVarArr, j, j2, zzvbVar);
        zzbl zzh = zzh();
        if (zzh.zzo()) {
            this.zzM = -9223372036854775807L;
        } else {
            this.zzM = zzh.zzn(zzvbVar.zza, new zzbj()).zzd;
        }
    }

    @Override // com.google.android.gms.internal.ads.zztj, com.google.android.gms.internal.ads.zzhz, com.google.android.gms.internal.ads.zzlv
    public final void zzM(float f, float f2) throws zzik {
        super.zzM(f, f2);
        zzach zzachVar = this.zzp;
        if (zzachVar != null) {
            zzachVar.zzt(f);
        } else {
            this.zzi.zzl(f);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzlv, com.google.android.gms.internal.ads.zzly
    public final String zzU() {
        return "MediaCodecVideoRenderer";
    }

    @Override // com.google.android.gms.internal.ads.zztj, com.google.android.gms.internal.ads.zzlv
    @CallSuper
    public final void zzV(long j, long j2) throws zzik {
        zzach zzachVar = this.zzp;
        if (zzachVar != null) {
            try {
                zzachVar.zzo(j, j2);
            } catch (zzacg e) {
                throw zzcX(e, e.zza, false, 7001);
            }
        }
        super.zzV(j, j2);
    }

    @Override // com.google.android.gms.internal.ads.zztj, com.google.android.gms.internal.ads.zzlv
    public final boolean zzW() {
        if (!super.zzW()) {
            return false;
        }
        zzach zzachVar = this.zzp;
        if (zzachVar != null && !zzachVar.zzB()) {
            return false;
        }
        return true;
    }

    @Override // com.google.android.gms.internal.ads.zztj, com.google.android.gms.internal.ads.zzlv
    public final boolean zzX() {
        boolean zzX = super.zzX();
        zzach zzachVar = this.zzp;
        if (zzachVar != null) {
            return zzachVar.zzD(zzX);
        }
        if (zzX && zzaz() == null) {
            return true;
        }
        return this.zzi.zzm(zzX);
    }

    @Override // com.google.android.gms.internal.ads.zztj
    public final float zzZ(float f, zzz zzzVar, zzz[] zzzVarArr) {
        float f2 = -1.0f;
        for (zzz zzzVar2 : zzzVarArr) {
            float f3 = zzzVar2.zzx;
            if (f3 != -1.0f) {
                f2 = Math.max(f2, f3);
            }
        }
        if (f2 == -1.0f) {
            return -1.0f;
        }
        return f2 * f;
    }

    @Override // com.google.android.gms.internal.ads.zztj
    public final zztb zzaA(Throwable th, @Nullable zztc zztcVar) {
        return new zzaao(th, zztcVar, this.zzt);
    }

    @Override // com.google.android.gms.internal.ads.zztj
    @CallSuper
    public final void zzaE(long j) {
        super.zzaE(j);
        this.zzC--;
    }

    @Override // com.google.android.gms.internal.ads.zztj
    @CallSuper
    public final void zzaF(zzhp zzhpVar) throws zzik {
        this.zzP = 0;
        this.zzC++;
    }

    @Override // com.google.android.gms.internal.ads.zztj
    @CallSuper
    public final void zzaH() {
        super.zzaH();
        this.zzl.clear();
        this.zzO = false;
        this.zzC = 0;
        this.zzP = 0;
    }

    @Override // com.google.android.gms.internal.ads.zztj
    public final boolean zzaK() {
        zztc zzaB = zzaB();
        if (this.zzp != null && zzaB != null) {
            String str = zzaB.zza;
            if (str.equals("c2.mtk.avc.decoder") || str.equals("c2.mtk.hevc.decoder")) {
                zzaG();
                return true;
            }
        }
        return super.zzaK();
    }

    @Override // com.google.android.gms.internal.ads.zztj
    @CallSuper
    public final boolean zzaN(zzz zzzVar) throws zzik {
        zzach zzachVar = this.zzp;
        if (zzachVar != null && !zzachVar.zzC()) {
            try {
                zzachVar.zzA(zzzVar);
                return true;
            } catch (zzacg e) {
                throw zzcX(e, zzzVar, false, 7000);
            }
        }
        return true;
    }

    @Override // com.google.android.gms.internal.ads.zztj
    public final boolean zzaO(zzhp zzhpVar) {
        boolean z;
        if (!zzQ() && !zzhpVar.zzh() && this.zzM != -9223372036854775807L) {
            if (this.zzM - (zzhpVar.zze - zzau()) > SilenceSkippingAudioProcessor.DEFAULT_MINIMUM_SILENCE_DURATION_US && !zzhpVar.zzl()) {
                if (zzhpVar.zze < zzf()) {
                    z = true;
                } else {
                    z = false;
                }
                if ((z || this.zzO) && !zzhpVar.zze() && zzhpVar.zzi()) {
                    zzhpVar.zzb();
                    if (z) {
                        ((zztj) this).zza.zzd++;
                    } else if (this.zzO) {
                        this.zzl.add(Long.valueOf(zzhpVar.zze));
                        this.zzP++;
                    }
                    return true;
                }
            }
        }
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zztj
    public final boolean zzaP(zztc zztcVar) {
        return zzbf(zztcVar);
    }

    public final void zzaR(zzsz zzszVar, int i, long j) {
        Trace.beginSection("skipVideoBuffer");
        zzszVar.zzo(i, false);
        Trace.endSection();
        ((zztj) this).zza.zzf++;
    }

    public final void zzaS(int i, int i2) {
        zzia zziaVar = ((zztj) this).zza;
        zziaVar.zzh += i;
        int i3 = i + i2;
        zziaVar.zzg += i3;
        this.zzA += i3;
        int i4 = this.zzB + i3;
        this.zzB = i4;
        zziaVar.zzi = Math.max(i4, zziaVar.zzi);
    }

    public final void zzaT(long j) {
        zzia zziaVar = ((zztj) this).zza;
        zziaVar.zzk += j;
        zziaVar.zzl++;
        this.zzD += j;
        this.zzE++;
    }

    @Override // com.google.android.gms.internal.ads.zzabk
    public final boolean zzaU(long j, long j2, long j3, boolean z, boolean z2) throws zzik {
        int zzd2;
        boolean z3;
        long j4 = this.zzk;
        if (j4 != -9223372036854775807L) {
            if (j2 > zzf() + 200000 && j < j4) {
                z3 = true;
            } else {
                z3 = false;
            }
            this.zzO = z3;
        }
        if (j >= -500000 || z || (zzd2 = zzd(j2)) == 0) {
            return false;
        }
        if (z2) {
            zzia zziaVar = ((zztj) this).zza;
            int i = zziaVar.zzd + zzd2;
            zziaVar.zzd = i;
            zziaVar.zzf += this.zzC;
            zziaVar.zzd = i + this.zzl.size();
        } else {
            ((zztj) this).zza.zzj++;
            zzaS(zzd2 + this.zzl.size(), this.zzC);
        }
        zzaJ();
        zzach zzachVar = this.zzp;
        if (zzachVar != null) {
            zzachVar.zzj(false);
        }
        return true;
    }

    public final boolean zzaV(zztc zztcVar) {
        if (zzaW(zztcVar.zza)) {
            return false;
        }
        if (zztcVar.zzf && !zzaax.zzb(this.zze)) {
            return false;
        }
        return true;
    }

    @Override // com.google.android.gms.internal.ads.zztj
    public final int zzaa(zztl zztlVar, zzz zzzVar) throws zztq {
        boolean z;
        boolean z2;
        int i;
        int i2;
        int i3;
        String str = zzzVar.zzo;
        int i4 = 128;
        if (!zzay.zzj(str)) {
            return 128;
        }
        Context context = this.zze;
        int i5 = 0;
        if (zzzVar.zzs != null) {
            z = true;
        } else {
            z = false;
        }
        List zzaZ = zzaZ(context, zztlVar, zzzVar, z, false);
        if (z && zzaZ.isEmpty()) {
            zzaZ = zzaZ(context, zztlVar, zzzVar, false, false);
        }
        if (zzaZ.isEmpty()) {
            return 129;
        }
        if (!zztj.zzaQ(zzzVar)) {
            return 130;
        }
        zztc zztcVar = (zztc) zzaZ.get(0);
        boolean zze = zztcVar.zze(zzzVar);
        if (!zze) {
            for (int i6 = 1; i6 < zzaZ.size(); i6++) {
                zztc zztcVar2 = (zztc) zzaZ.get(i6);
                if (zztcVar2.zze(zzzVar)) {
                    zze = true;
                    z2 = false;
                    zztcVar = zztcVar2;
                    break;
                }
            }
        }
        z2 = true;
        if (true != zze) {
            i = 3;
        } else {
            i = 4;
        }
        if (true != zztcVar.zzf(zzzVar)) {
            i2 = 8;
        } else {
            i2 = 16;
        }
        if (true != zztcVar.zzg) {
            i3 = 0;
        } else {
            i3 = 64;
        }
        if (true != z2) {
            i4 = 0;
        }
        if (Build.VERSION.SDK_INT >= 26 && "video/dolby-vision".equals(str) && !zzaar.zza(context)) {
            i4 = 256;
        }
        if (zze) {
            List zzaZ2 = zzaZ(context, zztlVar, zzzVar, z, true);
            if (!zzaZ2.isEmpty()) {
                zztc zztcVar3 = (zztc) zztw.zzf(zzaZ2, zzzVar).get(0);
                if (zztcVar3.zze(zzzVar) && zztcVar3.zzf(zzzVar)) {
                    i5 = 32;
                }
            }
        }
        return i | i2 | i5 | i3 | i4;
    }

    @Override // com.google.android.gms.internal.ads.zztj
    public final zzib zzab(zztc zztcVar, zzz zzzVar, zzz zzzVar2) {
        int i;
        int i2;
        zzib zzb2 = zztcVar.zzb(zzzVar, zzzVar2);
        int i3 = zzb2.zze;
        zzaat zzaatVar = this.zzm;
        zzaatVar.getClass();
        if (zzzVar2.zzv > zzaatVar.zza || zzzVar2.zzw > zzaatVar.zzb) {
            i3 |= 256;
        }
        if (zzae(zztcVar, zzzVar2) > zzaatVar.zzc) {
            i3 |= 64;
        }
        String str = zztcVar.zza;
        if (i3 != 0) {
            i2 = 0;
            i = i3;
        } else {
            i = 0;
            i2 = zzb2.zzd;
        }
        return new zzib(str, zzzVar, zzzVar2, i2, i);
    }

    @Override // com.google.android.gms.internal.ads.zztj
    @Nullable
    public final zzib zzac(zzkq zzkqVar) throws zzik {
        zzib zzac = super.zzac(zzkqVar);
        zzz zzzVar = zzkqVar.zza;
        zzzVar.getClass();
        this.zzg.zzp(zzzVar, zzac);
        return zzac;
    }

    @Override // com.google.android.gms.internal.ads.zztj
    public final zzsw zzaf(zztc zztcVar, zzz zzzVar, @Nullable MediaCrypto mediaCrypto, float f) {
        zzaat zzaatVar;
        boolean z;
        int i;
        int i2;
        Point point;
        int i3;
        int i4;
        int i5;
        boolean z2;
        zzz[] zzzVarArr;
        char c;
        boolean z3;
        int zzad;
        zzz[] zzT = zzT();
        int length = zzT.length;
        int zzae = zzae(zztcVar, zzzVar);
        int i6 = zzzVar.zzw;
        int i7 = zzzVar.zzv;
        boolean z4 = true;
        if (length == 1) {
            if (zzae != -1 && (zzad = zzad(zztcVar, zzzVar)) != -1) {
                zzae = Math.min((int) (zzae * 1.5f), zzad);
            }
            zzaatVar = new zzaat(i7, i6, zzae);
        } else {
            int i8 = i6;
            int i9 = i7;
            int i10 = 0;
            boolean z5 = false;
            while (i10 < length) {
                zzz zzzVar2 = zzT[i10];
                boolean z6 = z4;
                zzk zzkVar = zzzVar.zzC;
                if (zzkVar != null && zzzVar2.zzC == null) {
                    zzx zzb2 = zzzVar2.zzb();
                    zzb2.zzD(zzkVar);
                    zzzVar2 = zzb2.zzaj();
                }
                if (zztcVar.zzb(zzzVar, zzzVar2).zzd != 0) {
                    int i11 = zzzVar2.zzv;
                    c = 65535;
                    if (i11 != -1) {
                        zzzVarArr = zzT;
                        if (zzzVar2.zzw != -1) {
                            z3 = false;
                            z5 |= z3;
                            i9 = Math.max(i9, i11);
                            i8 = Math.max(i8, zzzVar2.zzw);
                            zzae = Math.max(zzae, zzae(zztcVar, zzzVar2));
                        }
                    } else {
                        zzzVarArr = zzT;
                    }
                    z3 = z6;
                    z5 |= z3;
                    i9 = Math.max(i9, i11);
                    i8 = Math.max(i8, zzzVar2.zzw);
                    zzae = Math.max(zzae, zzae(zztcVar, zzzVar2));
                } else {
                    zzzVarArr = zzT;
                    c = 65535;
                }
                i10++;
                z4 = z6;
                zzT = zzzVarArr;
            }
            boolean z7 = z4;
            if (z5) {
                zzdx.zzf("MediaCodecVideoRenderer", "Resolutions unknown. Codec max resolution: " + i9 + "x" + i8);
                if (i6 > i7) {
                    z = z7;
                } else {
                    z = false;
                }
                if (z) {
                    i = i6;
                } else {
                    i = i7;
                }
                if (z7 != z) {
                    i2 = i6;
                } else {
                    i2 = i7;
                }
                int[] iArr = zzb;
                int i12 = 0;
                while (i12 < 9) {
                    float f2 = i2;
                    float f3 = i;
                    int i13 = iArr[i12];
                    int i14 = i12;
                    float f4 = i13;
                    if (i13 <= i || (i3 = (int) (f4 * (f2 / f3))) <= i2) {
                        break;
                    }
                    int i15 = i2;
                    if (true != z) {
                        i4 = i;
                        i5 = i13;
                    } else {
                        i4 = i;
                        i5 = i3;
                    }
                    if (true != z) {
                        i13 = i3;
                    }
                    point = zztcVar.zza(i5, i13);
                    float f5 = zzzVar.zzx;
                    if (point != null) {
                        z2 = z;
                        if (zztcVar.zzg(point.x, point.y, f5)) {
                            break;
                        }
                    } else {
                        z2 = z;
                    }
                    i12 = i14 + 1;
                    i2 = i15;
                    i = i4;
                    z = z2;
                }
                point = null;
                if (point != null) {
                    i9 = Math.max(i9, point.x);
                    i8 = Math.max(i8, point.y);
                    zzx zzb3 = zzzVar.zzb();
                    zzb3.zzai(i9);
                    zzb3.zzM(i8);
                    zzae = Math.max(zzae, zzad(zztcVar, zzb3.zzaj()));
                    zzdx.zzf("MediaCodecVideoRenderer", "Codec max resolution adjusted to: " + i9 + "x" + i8);
                }
            }
            zzaatVar = new zzaat(i9, i8, zzae);
        }
        String str = zztcVar.zzc;
        this.zzm = zzaatVar;
        boolean z8 = this.zzh;
        MediaFormat mediaFormat = new MediaFormat();
        mediaFormat.setString("mime", str);
        mediaFormat.setInteger("width", i7);
        mediaFormat.setInteger("height", i6);
        zzea.zzb(mediaFormat, zzzVar.zzr);
        float f6 = zzzVar.zzx;
        if (f6 != -1.0f) {
            mediaFormat.setFloat("frame-rate", f6);
        }
        zzea.zza(mediaFormat, "rotation-degrees", zzzVar.zzy);
        zzk zzkVar2 = zzzVar.zzC;
        if (zzkVar2 != null) {
            zzea.zza(mediaFormat, "color-transfer", zzkVar2.zzd);
            zzea.zza(mediaFormat, "color-standard", zzkVar2.zzb);
            zzea.zza(mediaFormat, "color-range", zzkVar2.zzc);
            byte[] bArr = zzkVar2.zze;
            if (bArr != null) {
                mediaFormat.setByteBuffer("hdr-static-info", ByteBuffer.wrap(bArr));
            }
        }
        if ("video/dolby-vision".equals(zzzVar.zzo)) {
            int i16 = zztw.zza;
            Pair zza = zzdh.zza(zzzVar);
            if (zza != null) {
                zzea.zza(mediaFormat, Scopes.PROFILE, ((Integer) zza.first).intValue());
            }
        }
        mediaFormat.setInteger("max-width", zzaatVar.zza);
        mediaFormat.setInteger("max-height", zzaatVar.zzb);
        zzea.zza(mediaFormat, "max-input-size", zzaatVar.zzc);
        mediaFormat.setInteger(HandleInvocationsFromAdViewer.KEY_DOWNLOAD_PRIORITY, 0);
        if (f != -1.0f) {
            mediaFormat.setFloat("operating-rate", f);
        }
        if (z8) {
            mediaFormat.setInteger("no-post-process", 1);
            mediaFormat.setInteger("auto-frc", 0);
        }
        if (Build.VERSION.SDK_INT >= 35) {
            mediaFormat.setInteger("importance", Math.max(0, -this.zzI));
        }
        Surface zzaY = zzaY(zztcVar);
        if (this.zzp != null && !zzeu.zzL(this.zze)) {
            mediaFormat.setInteger("allow-frame-drop", 0);
        }
        return zzsw.zzb(zztcVar, mediaFormat, zzzVar, zzaY, null);
    }

    @Override // com.google.android.gms.internal.ads.zztj
    public final List zzag(zztl zztlVar, zzz zzzVar, boolean z) throws zztq {
        return zztw.zzf(zzaZ(this.zze, zztlVar, zzzVar, false, false), zzzVar);
    }

    @Override // com.google.android.gms.internal.ads.zztj
    @TargetApi(29)
    public final void zzaj(zzhp zzhpVar) throws zzik {
        if (this.zzo) {
            ByteBuffer byteBuffer = zzhpVar.zzf;
            byteBuffer.getClass();
            if (byteBuffer.remaining() >= 7) {
                byte b = byteBuffer.get();
                short s = byteBuffer.getShort();
                short s2 = byteBuffer.getShort();
                byte b2 = byteBuffer.get();
                byte b3 = byteBuffer.get();
                byteBuffer.position(0);
                if (b == -75 && s == 60 && s2 == 1 && b2 == 4) {
                    if (b3 == 0 || b3 == 1) {
                        byte[] bArr = new byte[byteBuffer.remaining()];
                        byteBuffer.get(bArr);
                        byteBuffer.position(0);
                        zzsz zzaz = zzaz();
                        zzaz.getClass();
                        Bundle bundle = new Bundle();
                        bundle.putByteArray("hdr10-plus-info", bArr);
                        zzaz.zzq(bundle);
                    }
                }
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zztj
    public final void zzak(Exception exc) {
        zzdx.zzd("MediaCodecVideoRenderer", "Video codec error", exc);
        this.zzg.zzs(exc);
    }

    @Override // com.google.android.gms.internal.ads.zztj
    public final void zzal(String str, zzsw zzswVar, long j, long j2) {
        this.zzg.zzk(str, j, j2);
        this.zzn = zzaW(str);
        zztc zzaB = zzaB();
        zzaB.getClass();
        boolean z = false;
        if (Build.VERSION.SDK_INT >= 29 && "video/x-vnd.on2.vp9".equals(zzaB.zzb)) {
            MediaCodecInfo.CodecProfileLevel[] zzh = zzaB.zzh();
            int length = zzh.length;
            int i = 0;
            while (true) {
                if (i >= length) {
                    break;
                } else if (zzh[i].profile == 16384) {
                    z = true;
                    break;
                } else {
                    i++;
                }
            }
        }
        this.zzo = z;
    }

    @Override // com.google.android.gms.internal.ads.zztj
    public final void zzam(String str) {
        this.zzg.zzl(str);
    }

    @Override // com.google.android.gms.internal.ads.zztj
    public final void zzan(zzz zzzVar, @Nullable MediaFormat mediaFormat) {
        boolean z;
        int integer;
        int integer2;
        zzsz zzaz = zzaz();
        if (zzaz != null) {
            zzaz.zzr(this.zzx);
        }
        mediaFormat.getClass();
        if (mediaFormat.containsKey("crop-right") && mediaFormat.containsKey("crop-left") && mediaFormat.containsKey("crop-bottom") && mediaFormat.containsKey("crop-top")) {
            z = true;
        } else {
            z = false;
        }
        if (z) {
            integer = (mediaFormat.getInteger("crop-right") - mediaFormat.getInteger("crop-left")) + 1;
        } else {
            integer = mediaFormat.getInteger("width");
        }
        if (z) {
            integer2 = (mediaFormat.getInteger("crop-bottom") - mediaFormat.getInteger("crop-top")) + 1;
        } else {
            integer2 = mediaFormat.getInteger("height");
        }
        float f = zzzVar.zzz;
        int i = zzzVar.zzy;
        if (i == 90 || i == 270) {
            f = 1.0f / f;
            int i2 = integer2;
            integer2 = integer;
            integer = i2;
        }
        this.zzG = new zzcd(integer, integer2, f);
        zzach zzachVar = this.zzp;
        if (zzachVar != null && this.zzN) {
            zzx zzb2 = zzzVar.zzb();
            zzb2.zzai(integer);
            zzb2.zzM(integer2);
            zzb2.zzZ(f);
            zzz zzaj = zzb2.zzaj();
            int i3 = this.zzr;
            List list = this.zzs;
            if (list == null) {
                list = zzfyc.zzn();
            }
            zzachVar.zzl(1, zzaj, zzav(), i3, list);
            this.zzr = 2;
        } else {
            this.zzi.zzj(zzzVar.zzx);
        }
        this.zzN = false;
    }

    public final void zzao(zzsz zzszVar, int i, long j, long j2) {
        Trace.beginSection("releaseOutputBuffer");
        zzszVar.zzn(i, j2);
        Trace.endSection();
        ((zztj) this).zza.zze++;
        this.zzB = 0;
        if (this.zzp == null) {
            zzcd zzcdVar = this.zzG;
            if (!zzcdVar.equals(zzcd.zza) && !zzcdVar.equals(this.zzH)) {
                this.zzH = zzcdVar;
                this.zzg.zzt(zzcdVar);
            }
            if (this.zzi.zzn() && this.zzt != null) {
                zzbc();
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zztj
    public final void zzap() {
        zzach zzachVar = this.zzp;
        if (zzachVar != null) {
            zzachVar.zzw();
            long j = this.zzL;
            if (j == -9223372036854775807L) {
                j = zzav();
                this.zzL = j;
            }
            this.zzp.zzp(-j);
        } else {
            this.zzi.zzf(2);
        }
        this.zzN = true;
    }

    @Override // com.google.android.gms.internal.ads.zztj
    public final void zzaq() {
        zzach zzachVar = this.zzp;
        if (zzachVar != null) {
            zzachVar.zzw();
        }
    }

    @Override // com.google.android.gms.internal.ads.zztj
    public final boolean zzar(long j, long j2, @Nullable zzsz zzszVar, @Nullable ByteBuffer byteBuffer, int i, int i2, int i3, long j3, boolean z, boolean z2, zzz zzzVar) throws zzik {
        long j4;
        zzszVar.getClass();
        long zzau = j3 - zzau();
        int i4 = 0;
        while (true) {
            PriorityQueue priorityQueue = this.zzl;
            Long l = (Long) priorityQueue.peek();
            if (l == null || l.longValue() >= j3) {
                break;
            }
            priorityQueue.poll();
            i4++;
        }
        zzaS(i4, 0);
        zzach zzachVar = this.zzp;
        if (zzachVar != null) {
            if (z && !z2) {
                zzaR(zzszVar, i, zzau);
                return true;
            }
            return zzachVar.zzz(j3 + (-this.zzL), new zzaaq(this, zzszVar, i, zzau));
        }
        zzabl zzablVar = this.zzi;
        long zzav = zzav();
        zzabj zzabjVar = this.zzj;
        int zza = zzablVar.zza(j3, j, j2, zzav, z, z2, zzabjVar);
        if (zza != 0) {
            if (zza != 1) {
                if (zza != 2) {
                    if (zza != 3) {
                        return false;
                    }
                    zzaR(zzszVar, i, zzau);
                    zzaT(zzabjVar.zzc());
                    return true;
                }
                Trace.beginSection("dropVideoBuffer");
                zzszVar.zzo(i, false);
                Trace.endSection();
                zzaS(0, 1);
                zzaT(zzabjVar.zzc());
                return true;
            }
            long zzd2 = zzabjVar.zzd();
            long zzc2 = zzabjVar.zzc();
            if (zzd2 == this.zzF) {
                zzaR(zzszVar, i, zzau);
                j4 = zzd2;
            } else {
                zzbb(zzau, zzd2, zzzVar);
                zzao(zzszVar, i, zzau, zzd2);
                j4 = zzd2;
            }
            zzaT(zzc2);
            this.zzF = j4;
            return true;
        }
        long zzc3 = zzi().zzc();
        zzbb(zzau, zzc3, zzzVar);
        zzao(zzszVar, i, zzau, zzc3);
        zzaT(zzabjVar.zzc());
        return true;
    }

    @Override // com.google.android.gms.internal.ads.zzhz, com.google.android.gms.internal.ads.zzlv
    public final void zzt() {
        zzach zzachVar = this.zzp;
        if (zzachVar != null) {
            int i = this.zzr;
            if (i != 0 && i != 1) {
                zzachVar.zzh();
                return;
            } else {
                this.zzr = 0;
                return;
            }
        }
        this.zzi.zzb();
    }

    @Override // com.google.android.gms.internal.ads.zztj, com.google.android.gms.internal.ads.zzhz, com.google.android.gms.internal.ads.zzlq
    public final void zzu(int i, @Nullable Object obj) throws zzik {
        if (i != 1) {
            if (i != 7) {
                if (i != 10) {
                    if (i != 4) {
                        if (i != 5) {
                            if (i != 13) {
                                if (i != 14) {
                                    if (i != 16) {
                                        if (i != 17) {
                                            super.zzu(i, obj);
                                            return;
                                        }
                                        Surface surface = this.zzt;
                                        zzbe(null);
                                        obj.getClass();
                                        ((zzaau) obj).zzu(1, surface);
                                        return;
                                    }
                                    obj.getClass();
                                    this.zzI = ((Integer) obj).intValue();
                                    zzsz zzaz = zzaz();
                                    if (zzaz != null && Build.VERSION.SDK_INT >= 35) {
                                        Bundle bundle = new Bundle();
                                        bundle.putInt("importance", Math.max(0, -this.zzI));
                                        zzaz.zzq(bundle);
                                        return;
                                    }
                                    return;
                                }
                                obj.getClass();
                                zzel zzelVar = (zzel) obj;
                                if (zzelVar.zzb() != 0 && zzelVar.zza() != 0) {
                                    this.zzv = zzelVar;
                                    zzach zzachVar = this.zzp;
                                    if (zzachVar != null) {
                                        Surface surface2 = this.zzt;
                                        zzdc.zzb(surface2);
                                        zzachVar.zzs(surface2, zzelVar);
                                        return;
                                    }
                                    return;
                                }
                                return;
                            }
                            obj.getClass();
                            List list = (List) obj;
                            if (list.equals(zzbz.zza)) {
                                zzach zzachVar2 = this.zzp;
                                if (zzachVar2 != null && zzachVar2.zzC()) {
                                    zzachVar2.zzm();
                                    return;
                                }
                                return;
                            }
                            this.zzs = list;
                            zzach zzachVar3 = this.zzp;
                            if (zzachVar3 != null) {
                                zzachVar3.zzu(list);
                                return;
                            }
                            return;
                        }
                        obj.getClass();
                        int intValue = ((Integer) obj).intValue();
                        this.zzy = intValue;
                        zzach zzachVar4 = this.zzp;
                        if (zzachVar4 != null) {
                            zzachVar4.zzq(intValue);
                            return;
                        } else {
                            this.zzi.zzh(intValue);
                            return;
                        }
                    }
                    obj.getClass();
                    int intValue2 = ((Integer) obj).intValue();
                    this.zzx = intValue2;
                    zzsz zzaz2 = zzaz();
                    if (zzaz2 != null) {
                        zzaz2.zzr(intValue2);
                        return;
                    }
                    return;
                }
                obj.getClass();
                int intValue3 = ((Integer) obj).intValue();
                if (this.zzJ != intValue3) {
                    this.zzJ = intValue3;
                    return;
                }
                return;
            }
            obj.getClass();
            zzabi zzabiVar = (zzabi) obj;
            this.zzK = zzabiVar;
            zzach zzachVar5 = this.zzp;
            if (zzachVar5 != null) {
                zzachVar5.zzv(zzabiVar);
                return;
            }
            return;
        }
        zzbe(obj);
    }

    @Override // com.google.android.gms.internal.ads.zztj, com.google.android.gms.internal.ads.zzhz
    public final void zzx() {
        this.zzH = null;
        this.zzM = -9223372036854775807L;
        this.zzw = false;
        try {
            super.zzx();
        } finally {
            zzacb zzacbVar = this.zzg;
            zzacbVar.zzm(((zztj) this).zza);
            zzacbVar.zzt(zzcd.zza);
        }
    }

    @Override // com.google.android.gms.internal.ads.zztj, com.google.android.gms.internal.ads.zzhz
    public final void zzy(boolean z, boolean z2) throws zzik {
        super.zzy(z, z2);
        zzn();
        this.zzg.zzo(((zztj) this).zza);
        if (!this.zzq) {
            if (this.zzs != null && this.zzp == null) {
                zzaba zzabaVar = new zzaba(this.zze, this.zzi);
                zzabaVar.zzf(true);
                zzabaVar.zze(zzi());
                zzabh zzg = zzabaVar.zzg();
                zzg.zzu(1);
                this.zzp = zzg.zze(0);
            }
            this.zzq = true;
        }
        int i = !z2 ? 1 : 0;
        zzach zzachVar = this.zzp;
        if (zzachVar != null) {
            zzachVar.zzr(new zzaap(this), zzgdq.zzc());
            zzabi zzabiVar = this.zzK;
            if (zzabiVar != null) {
                this.zzp.zzv(zzabiVar);
            }
            if (this.zzt != null && !this.zzv.equals(zzel.zza)) {
                this.zzp.zzs(this.zzt, this.zzv);
            }
            this.zzp.zzq(this.zzy);
            this.zzp.zzt(zzat());
            List list = this.zzs;
            if (list != null) {
                this.zzp.zzu(list);
            }
            this.zzr = i;
            zzaC();
            return;
        }
        zzabl zzablVar = this.zzi;
        zzablVar.zzi(zzi());
        zzablVar.zzf(i);
    }

    @Override // com.google.android.gms.internal.ads.zztj, com.google.android.gms.internal.ads.zzhz
    public final void zzz(long j, boolean z) throws zzik {
        zzach zzachVar = this.zzp;
        if (zzachVar != null && !z) {
            zzachVar.zzj(true);
        }
        super.zzz(j, z);
        if (this.zzp == null) {
            this.zzi.zzg();
        }
        if (z) {
            zzach zzachVar2 = this.zzp;
            if (zzachVar2 != null) {
                zzachVar2.zzk(false);
            } else {
                this.zzi.zzc(false);
            }
        }
        this.zzB = 0;
    }
}
