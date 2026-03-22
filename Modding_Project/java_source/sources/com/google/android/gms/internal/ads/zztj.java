package com.google.android.gms.internal.ads;

import android.annotation.TargetApi;
import android.media.MediaCodec;
import android.media.MediaCrypto;
import android.media.MediaFormat;
import android.os.Bundle;
import androidx.annotation.CallSuper;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.media3.common.PlaybackException;
import com.google.common.base.Ascii;
import j$.util.Objects;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.ArrayDeque;
import java.util.List;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public abstract class zztj extends zzhz {
    private static final byte[] zzb = {0, 0, 1, 103, 66, -64, Ascii.VT, -38, 37, -112, 0, 0, 1, 104, -50, Ascii.SI, 19, 32, 0, 0, 1, 101, -120, -124, Ascii.CR, -50, 113, Ascii.CAN, -96, 0, 47, -65, Ascii.FS, 49, -61, 39, 93, 120};
    @Nullable
    private zztc zzA;
    private int zzB;
    private boolean zzC;
    private boolean zzD;
    private boolean zzE;
    private boolean zzF;
    private boolean zzG;
    private long zzH;
    private long zzI;
    private int zzJ;
    private int zzK;
    @Nullable
    private ByteBuffer zzL;
    private boolean zzM;
    private boolean zzN;
    private boolean zzO;
    private boolean zzP;
    private boolean zzQ;
    private boolean zzR;
    private int zzS;
    private int zzT;
    private int zzU;
    private boolean zzV;
    private boolean zzW;
    private boolean zzX;
    private long zzY;
    private long zzZ;
    protected zzia zza;
    private boolean zzaa;
    private boolean zzab;
    private boolean zzac;
    private zzth zzad;
    private long zzae;
    private boolean zzaf;
    private boolean zzag;
    @Nullable
    private zzsc zzah;
    @Nullable
    private zzsc zzai;
    private final zzsx zzc;
    private final zztl zzd;
    private final float zze;
    private final zzhp zzf;
    private final zzhp zzg;
    private final zzhp zzh;
    private final zzsq zzi;
    private final MediaCodec.BufferInfo zzj;
    private final ArrayDeque zzk;
    private final zzrp zzl;
    @Nullable
    private zzz zzm;
    private zzz zzn;
    private zzlu zzo;
    @Nullable
    private MediaCrypto zzp;
    private long zzq;
    private float zzr;
    private float zzs;
    @Nullable
    private zzsz zzt;
    @Nullable
    private zzz zzu;
    @Nullable
    private MediaFormat zzv;
    private boolean zzw;
    private float zzx;
    @Nullable
    private ArrayDeque zzy;
    @Nullable
    private zztf zzz;

    public zztj(int i, zzsx zzsxVar, zztl zztlVar, boolean z, float f) {
        super(i);
        this.zzc = zzsxVar;
        zztlVar.getClass();
        this.zzd = zztlVar;
        this.zze = f;
        this.zzf = new zzhp(0, 0);
        this.zzg = new zzhp(0, 0);
        this.zzh = new zzhp(2, 0);
        zzsq zzsqVar = new zzsq();
        this.zzi = zzsqVar;
        this.zzj = new MediaCodec.BufferInfo();
        this.zzr = 1.0f;
        this.zzs = 1.0f;
        this.zzq = -9223372036854775807L;
        this.zzk = new ArrayDeque();
        this.zzad = zzth.zza;
        zzsqVar.zzj(0);
        zzsqVar.zzc.order(ByteOrder.nativeOrder());
        this.zzl = new zzrp();
        this.zzx = -1.0f;
        this.zzB = 0;
        this.zzS = 0;
        this.zzJ = -1;
        this.zzK = -1;
        this.zzI = -9223372036854775807L;
        this.zzY = -9223372036854775807L;
        this.zzZ = -9223372036854775807L;
        this.zzae = -9223372036854775807L;
        this.zzH = -9223372036854775807L;
        this.zzT = 0;
        this.zzU = 0;
        this.zza = new zzia();
    }

    public static boolean zzaQ(zzz zzzVar) {
        if (zzzVar.zzL != 0) {
            return false;
        }
        return true;
    }

    private final void zzaR() {
        this.zzK = -1;
        this.zzL = null;
    }

    private final void zzaS(zzth zzthVar) {
        this.zzad = zzthVar;
        if (zzthVar.zzd != -9223372036854775807L) {
            this.zzaf = true;
        }
    }

    @RequiresApi(23)
    private final void zzaT() throws zzik {
        zzsc zzscVar = this.zzai;
        zzscVar.getClass();
        this.zzah = zzscVar;
        this.zzT = 0;
        this.zzU = 0;
    }

    @TargetApi(23)
    private final boolean zzaU() throws zzik {
        if (this.zzV) {
            this.zzT = 1;
            if (this.zzD) {
                this.zzU = 3;
                return false;
            }
            this.zzU = 2;
        } else {
            zzaT();
        }
        return true;
    }

    private final boolean zzaV() {
        if (this.zzK >= 0) {
            return true;
        }
        return false;
    }

    private final boolean zzaW(long j, long j2) {
        if (j2 >= j) {
            return false;
        }
        zzz zzzVar = this.zzn;
        if (zzzVar != null && Objects.equals(zzzVar.zzo, "audio/opus") && zzaei.zzf(j, j2)) {
            return false;
        }
        return true;
    }

    private final boolean zzaX(int i) throws zzik {
        zzkq zzk = zzk();
        zzhp zzhpVar = this.zzf;
        zzhpVar.zzb();
        int zzcV = zzcV(zzk, zzhpVar, i | 4);
        if (zzcV == -5) {
            zzac(zzk);
            return true;
        } else if (zzcV == -4 && zzhpVar.zzf()) {
            this.zzaa = true;
            zzai();
            return false;
        } else {
            return false;
        }
    }

    private final boolean zzaY(long j) {
        if (this.zzq != -9223372036854775807L && zzi().zzb() - j >= this.zzq) {
            return false;
        }
        return true;
    }

    private final boolean zzaZ(@Nullable zzz zzzVar) throws zzik {
        if (this.zzt != null && this.zzU != 3 && zzcU() != 0) {
            float f = this.zzs;
            zzzVar.getClass();
            float zzZ = zzZ(f, zzzVar, zzT());
            float f2 = this.zzx;
            if (f2 != zzZ) {
                if (zzZ == -1.0f) {
                    zzae();
                    return false;
                } else if (f2 != -1.0f || zzZ > this.zze) {
                    Bundle bundle = new Bundle();
                    bundle.putFloat("operating-rate", zzZ);
                    zzsz zzszVar = this.zzt;
                    zzszVar.getClass();
                    zzszVar.zzq(bundle);
                    this.zzx = zzZ;
                }
            }
        }
        return true;
    }

    private final void zzad() {
        this.zzQ = false;
        this.zzi.zzb();
        this.zzh.zzb();
        this.zzP = false;
        this.zzO = false;
        this.zzl.zzb();
    }

    private final void zzae() throws zzik {
        if (this.zzV) {
            this.zzT = 1;
            this.zzU = 3;
            return;
        }
        zzaG();
        zzaD();
    }

    private final void zzah() {
        try {
            zzsz zzszVar = this.zzt;
            zzdc.zzb(zzszVar);
            zzszVar.zzj();
        } finally {
            zzaH();
        }
    }

    @TargetApi(23)
    private final void zzai() throws zzik {
        int i = this.zzU;
        if (i != 1) {
            if (i != 2) {
                if (i != 3) {
                    this.zzab = true;
                    zzaq();
                    return;
                }
                zzaG();
                zzaD();
                return;
            }
            zzah();
            zzaT();
            return;
        }
        zzah();
    }

    private final void zzao() {
        this.zzJ = -1;
        this.zzg.zzc = null;
    }

    @Override // com.google.android.gms.internal.ads.zzhz
    public void zzC() {
        try {
            zzad();
            zzaG();
        } finally {
            this.zzai = null;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:15:0x003a, code lost:
        if (r4 >= r0) goto L17;
     */
    @Override // com.google.android.gms.internal.ads.zzhz
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void zzF(com.google.android.gms.internal.ads.zzz[] r12, long r13, long r15, com.google.android.gms.internal.ads.zzvb r17) throws com.google.android.gms.internal.ads.zzik {
        /*
            r11 = this;
            com.google.android.gms.internal.ads.zzth r12 = r11.zzad
            long r0 = r12.zzd
            r2 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            int r12 = (r0 > r2 ? 1 : (r0 == r2 ? 0 : -1))
            if (r12 != 0) goto L24
            com.google.android.gms.internal.ads.zzth r4 = new com.google.android.gms.internal.ads.zzth
            r5 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            r7 = r13
            r9 = r15
            r4.<init>(r5, r7, r9)
            r11.zzaS(r4)
            boolean r12 = r11.zzag
            if (r12 == 0) goto L56
            r11.zzap()
            return
        L24:
            java.util.ArrayDeque r12 = r11.zzk
            boolean r0 = r12.isEmpty()
            if (r0 == 0) goto L57
            long r0 = r11.zzY
            int r4 = (r0 > r2 ? 1 : (r0 == r2 ? 0 : -1))
            if (r4 == 0) goto L3c
            long r4 = r11.zzae
            int r6 = (r4 > r2 ? 1 : (r4 == r2 ? 0 : -1))
            if (r6 == 0) goto L57
            int r0 = (r4 > r0 ? 1 : (r4 == r0 ? 0 : -1))
            if (r0 < 0) goto L57
        L3c:
            com.google.android.gms.internal.ads.zzth r4 = new com.google.android.gms.internal.ads.zzth
            r5 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            r7 = r13
            r9 = r15
            r4.<init>(r5, r7, r9)
            r11.zzaS(r4)
            com.google.android.gms.internal.ads.zzth r12 = r11.zzad
            long r12 = r12.zzd
            int r12 = (r12 > r2 ? 1 : (r12 == r2 ? 0 : -1))
            if (r12 == 0) goto L56
            r11.zzap()
        L56:
            return
        L57:
            com.google.android.gms.internal.ads.zzth r0 = new com.google.android.gms.internal.ads.zzth
            long r1 = r11.zzY
            r3 = r13
            r5 = r15
            r0.<init>(r1, r3, r5)
            r12.add(r0)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zztj.zzF(com.google.android.gms.internal.ads.zzz[], long, long, com.google.android.gms.internal.ads.zzvb):void");
    }

    @Override // com.google.android.gms.internal.ads.zzhz, com.google.android.gms.internal.ads.zzlv
    public void zzM(float f, float f2) throws zzik {
        this.zzr = f;
        this.zzs = f2;
        zzaZ(this.zzu);
    }

    /* JADX WARN: Code restructure failed: missing block: B:191:0x02db, code lost:
        if (r22.zzn != null) goto L249;
     */
    /* JADX WARN: Code restructure failed: missing block: B:214:0x033f, code lost:
        r13 = r10;
     */
    /* JADX WARN: Code restructure failed: missing block: B:236:0x0383, code lost:
        if (r22.zzG != false) goto L198;
     */
    /* JADX WARN: Code restructure failed: missing block: B:237:0x0385, code lost:
        r22.zzW = true;
        r2.zzk(r22.zzJ, 0, 0, 0, 4);
        zzao();
     */
    /* JADX WARN: Code restructure failed: missing block: B:240:0x0398, code lost:
        r22.zzT = 2;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:219:0x034b A[LOOP:0: B:125:0x01ec->B:219:0x034b, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:349:0x053e  */
    /* JADX WARN: Removed duplicated region for block: B:355:0x0558  */
    /* JADX WARN: Removed duplicated region for block: B:360:0x0566  */
    /* JADX WARN: Removed duplicated region for block: B:363:0x0575  */
    /* JADX WARN: Removed duplicated region for block: B:364:0x0578  */
    /* JADX WARN: Removed duplicated region for block: B:385:0x034a A[SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r10v2 */
    /* JADX WARN: Type inference failed for: r10v21 */
    /* JADX WARN: Type inference failed for: r10v3 */
    /* JADX WARN: Type inference failed for: r10v6 */
    /* JADX WARN: Type inference failed for: r10v8 */
    /* JADX WARN: Type inference failed for: r22v0, types: [com.google.android.gms.internal.ads.zztj, com.google.android.gms.internal.ads.zzhz] */
    /* JADX WARN: Type inference failed for: r2v15 */
    /* JADX WARN: Type inference failed for: r2v8 */
    /* JADX WARN: Type inference failed for: r2v9, types: [java.lang.Throwable, android.media.MediaFormat] */
    /* JADX WARN: Type inference failed for: r5v0 */
    /* JADX WARN: Type inference failed for: r5v1 */
    /* JADX WARN: Type inference failed for: r5v2 */
    /* JADX WARN: Type inference failed for: r5v3 */
    /* JADX WARN: Type inference failed for: r5v4 */
    @Override // com.google.android.gms.internal.ads.zzlv
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void zzV(long r23, long r25) throws com.google.android.gms.internal.ads.zzik {
        /*
            Method dump skipped, instructions count: 1425
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zztj.zzV(long, long):void");
    }

    @Override // com.google.android.gms.internal.ads.zzlv
    public boolean zzW() {
        return this.zzab;
    }

    @Override // com.google.android.gms.internal.ads.zzlv
    public boolean zzX() {
        if (this.zzm == null) {
            return false;
        }
        if (zzS() || zzaV()) {
            return true;
        }
        if (this.zzI == -9223372036854775807L || zzi().zzb() >= this.zzI) {
            return false;
        }
        return true;
    }

    @Override // com.google.android.gms.internal.ads.zzly
    public final int zzY(zzz zzzVar) throws zzik {
        try {
            return zzaa(this.zzd, zzzVar);
        } catch (zztq e) {
            throw zzcX(e, zzzVar, false, PlaybackException.ERROR_CODE_DECODER_QUERY_FAILED);
        }
    }

    public float zzZ(float f, zzz zzzVar, zzz[] zzzVarArr) {
        throw null;
    }

    public zztb zzaA(Throwable th, @Nullable zztc zztcVar) {
        return new zztb(th, zztcVar);
    }

    @Nullable
    public final zztc zzaB() {
        return this.zzA;
    }

    public final void zzaC() {
        this.zzag = true;
    }

    /* JADX WARN: Code restructure failed: missing block: B:138:0x0282, code lost:
        if (java.lang.Double.isNaN(1.0d) == false) goto L228;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:269:0x0471  */
    /* JADX WARN: Removed duplicated region for block: B:285:0x04b7 A[Catch: Exception -> 0x0426, TryCatch #15 {Exception -> 0x0426, blocks: (B:260:0x0446, B:264:0x0450, B:270:0x047b, B:272:0x0487, B:274:0x048f, B:276:0x0499, B:278:0x04a1, B:280:0x04a9, B:300:0x04ee, B:302:0x04f4, B:306:0x0500, B:308:0x0506, B:312:0x0512, B:314:0x0518, B:339:0x0570, B:341:0x0576, B:319:0x0525, B:321:0x052d, B:323:0x0535, B:325:0x053d, B:327:0x0545, B:329:0x054d, B:331:0x0555, B:333:0x055f, B:335:0x0569, B:285:0x04b7, B:287:0x04bf, B:291:0x04cb, B:293:0x04d5, B:295:0x04dd, B:297:0x04e5, B:254:0x042b, B:255:0x0432), top: B:419:0x0446 }] */
    /* JADX WARN: Removed duplicated region for block: B:302:0x04f4 A[Catch: Exception -> 0x0426, TryCatch #15 {Exception -> 0x0426, blocks: (B:260:0x0446, B:264:0x0450, B:270:0x047b, B:272:0x0487, B:274:0x048f, B:276:0x0499, B:278:0x04a1, B:280:0x04a9, B:300:0x04ee, B:302:0x04f4, B:306:0x0500, B:308:0x0506, B:312:0x0512, B:314:0x0518, B:339:0x0570, B:341:0x0576, B:319:0x0525, B:321:0x052d, B:323:0x0535, B:325:0x053d, B:327:0x0545, B:329:0x054d, B:331:0x0555, B:333:0x055f, B:335:0x0569, B:285:0x04b7, B:287:0x04bf, B:291:0x04cb, B:293:0x04d5, B:295:0x04dd, B:297:0x04e5, B:254:0x042b, B:255:0x0432), top: B:419:0x0446 }] */
    /* JADX WARN: Removed duplicated region for block: B:308:0x0506 A[Catch: Exception -> 0x0426, TryCatch #15 {Exception -> 0x0426, blocks: (B:260:0x0446, B:264:0x0450, B:270:0x047b, B:272:0x0487, B:274:0x048f, B:276:0x0499, B:278:0x04a1, B:280:0x04a9, B:300:0x04ee, B:302:0x04f4, B:306:0x0500, B:308:0x0506, B:312:0x0512, B:314:0x0518, B:339:0x0570, B:341:0x0576, B:319:0x0525, B:321:0x052d, B:323:0x0535, B:325:0x053d, B:327:0x0545, B:329:0x054d, B:331:0x0555, B:333:0x055f, B:335:0x0569, B:285:0x04b7, B:287:0x04bf, B:291:0x04cb, B:293:0x04d5, B:295:0x04dd, B:297:0x04e5, B:254:0x042b, B:255:0x0432), top: B:419:0x0446 }] */
    /* JADX WARN: Removed duplicated region for block: B:314:0x0518 A[Catch: Exception -> 0x0426, TryCatch #15 {Exception -> 0x0426, blocks: (B:260:0x0446, B:264:0x0450, B:270:0x047b, B:272:0x0487, B:274:0x048f, B:276:0x0499, B:278:0x04a1, B:280:0x04a9, B:300:0x04ee, B:302:0x04f4, B:306:0x0500, B:308:0x0506, B:312:0x0512, B:314:0x0518, B:339:0x0570, B:341:0x0576, B:319:0x0525, B:321:0x052d, B:323:0x0535, B:325:0x053d, B:327:0x0545, B:329:0x054d, B:331:0x0555, B:333:0x055f, B:335:0x0569, B:285:0x04b7, B:287:0x04bf, B:291:0x04cb, B:293:0x04d5, B:295:0x04dd, B:297:0x04e5, B:254:0x042b, B:255:0x0432), top: B:419:0x0446 }] */
    /* JADX WARN: Removed duplicated region for block: B:319:0x0525 A[Catch: Exception -> 0x0426, TryCatch #15 {Exception -> 0x0426, blocks: (B:260:0x0446, B:264:0x0450, B:270:0x047b, B:272:0x0487, B:274:0x048f, B:276:0x0499, B:278:0x04a1, B:280:0x04a9, B:300:0x04ee, B:302:0x04f4, B:306:0x0500, B:308:0x0506, B:312:0x0512, B:314:0x0518, B:339:0x0570, B:341:0x0576, B:319:0x0525, B:321:0x052d, B:323:0x0535, B:325:0x053d, B:327:0x0545, B:329:0x054d, B:331:0x0555, B:333:0x055f, B:335:0x0569, B:285:0x04b7, B:287:0x04bf, B:291:0x04cb, B:293:0x04d5, B:295:0x04dd, B:297:0x04e5, B:254:0x042b, B:255:0x0432), top: B:419:0x0446 }] */
    /* JADX WARN: Removed duplicated region for block: B:341:0x0576 A[Catch: Exception -> 0x0426, TRY_LEAVE, TryCatch #15 {Exception -> 0x0426, blocks: (B:260:0x0446, B:264:0x0450, B:270:0x047b, B:272:0x0487, B:274:0x048f, B:276:0x0499, B:278:0x04a1, B:280:0x04a9, B:300:0x04ee, B:302:0x04f4, B:306:0x0500, B:308:0x0506, B:312:0x0512, B:314:0x0518, B:339:0x0570, B:341:0x0576, B:319:0x0525, B:321:0x052d, B:323:0x0535, B:325:0x053d, B:327:0x0545, B:329:0x054d, B:331:0x0555, B:333:0x055f, B:335:0x0569, B:285:0x04b7, B:287:0x04bf, B:291:0x04cb, B:293:0x04d5, B:295:0x04dd, B:297:0x04e5, B:254:0x042b, B:255:0x0432), top: B:419:0x0446 }] */
    /* JADX WARN: Removed duplicated region for block: B:373:0x0612 A[Catch: zztf -> 0x0615, TryCatch #4 {zztf -> 0x0615, blocks: (B:371:0x05f6, B:373:0x0612, B:377:0x061d, B:380:0x062f, B:381:0x0631, B:376:0x0617, B:383:0x0634, B:384:0x0635, B:386:0x063c, B:387:0x063d, B:388:0x0649, B:390:0x064c), top: B:400:0x005a }] */
    /* JADX WARN: Removed duplicated region for block: B:376:0x0617 A[Catch: zztf -> 0x0615, TryCatch #4 {zztf -> 0x0615, blocks: (B:371:0x05f6, B:373:0x0612, B:377:0x061d, B:380:0x062f, B:381:0x0631, B:376:0x0617, B:383:0x0634, B:384:0x0635, B:386:0x063c, B:387:0x063d, B:388:0x0649, B:390:0x064c), top: B:400:0x005a }] */
    /* JADX WARN: Removed duplicated region for block: B:379:0x0623  */
    /* JADX WARN: Removed duplicated region for block: B:396:0x0150 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:434:0x05b8 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:435:0x062f A[SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r2v1 */
    /* JADX WARN: Type inference failed for: r2v33 */
    /* JADX WARN: Type inference failed for: r2v4, types: [android.media.MediaCrypto, com.google.android.gms.internal.ads.zzti] */
    /* JADX WARN: Type inference failed for: r2v9 */
    /* JADX WARN: Type inference failed for: r9v0 */
    /* JADX WARN: Type inference failed for: r9v1 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void zzaD() throws com.google.android.gms.internal.ads.zzik {
        /*
            Method dump skipped, instructions count: 1622
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zztj.zzaD():void");
    }

    @CallSuper
    public void zzaE(long j) {
        this.zzae = j;
        while (true) {
            ArrayDeque arrayDeque = this.zzk;
            if (!arrayDeque.isEmpty() && j >= ((zzth) arrayDeque.peek()).zzb) {
                zzth zzthVar = (zzth) arrayDeque.poll();
                zzthVar.getClass();
                zzaS(zzthVar);
                zzap();
            } else {
                return;
            }
        }
    }

    public final void zzaG() {
        try {
            zzsz zzszVar = this.zzt;
            if (zzszVar != null) {
                zzszVar.zzm();
                this.zza.zzb++;
                zztc zztcVar = this.zzA;
                if (zztcVar != null) {
                    zzam(zztcVar.zza);
                } else {
                    throw null;
                }
            }
            this.zzt = null;
            this.zzp = null;
            this.zzah = null;
            zzaI();
        } catch (Throwable th) {
            this.zzt = null;
            this.zzp = null;
            this.zzah = null;
            zzaI();
            throw th;
        }
    }

    @CallSuper
    public void zzaH() {
        zzao();
        zzaR();
        this.zzI = -9223372036854775807L;
        this.zzW = false;
        this.zzH = -9223372036854775807L;
        this.zzV = false;
        this.zzE = false;
        this.zzF = false;
        this.zzM = false;
        this.zzN = false;
        this.zzY = -9223372036854775807L;
        this.zzZ = -9223372036854775807L;
        this.zzae = -9223372036854775807L;
        this.zzT = 0;
        this.zzU = 0;
        this.zzS = this.zzR ? 1 : 0;
    }

    @CallSuper
    public final void zzaI() {
        zzaH();
        this.zzy = null;
        this.zzA = null;
        this.zzu = null;
        this.zzv = null;
        this.zzw = false;
        this.zzX = false;
        this.zzx = -1.0f;
        this.zzB = 0;
        this.zzC = false;
        this.zzD = false;
        this.zzG = false;
        this.zzR = false;
        this.zzS = 0;
    }

    public final boolean zzaJ() throws zzik {
        boolean zzaK = zzaK();
        if (zzaK) {
            zzaD();
        }
        return zzaK;
    }

    public boolean zzaK() {
        if (this.zzt == null) {
            return false;
        }
        int i = this.zzU;
        if (i != 3 && ((!this.zzC || this.zzX) && (!this.zzD || !this.zzW))) {
            if (i == 2) {
                try {
                    zzaT();
                } catch (zzik e) {
                    zzdx.zzg("MediaCodecRenderer", "Failed to update the DRM session, releasing the codec instead.", e);
                    zzaG();
                    return true;
                }
            }
            zzah();
            return false;
        }
        zzaG();
        return true;
    }

    public final boolean zzaL() {
        return this.zzO;
    }

    public final boolean zzaM(zzz zzzVar) {
        if (this.zzai == null && zzas(zzzVar)) {
            return true;
        }
        return false;
    }

    public boolean zzaN(zzz zzzVar) throws zzik {
        return true;
    }

    public boolean zzaO(zzhp zzhpVar) {
        return false;
    }

    public boolean zzaP(zztc zztcVar) {
        return true;
    }

    public abstract int zzaa(zztl zztlVar, zzz zzzVar) throws zztq;

    public zzib zzab(zztc zztcVar, zzz zzzVar, zzz zzzVar2) {
        throw null;
    }

    /* JADX WARN: Code restructure failed: missing block: B:33:0x0077, code lost:
        if (zzaU() == false) goto L29;
     */
    /* JADX WARN: Code restructure failed: missing block: B:51:0x00a5, code lost:
        if (zzaU() == false) goto L29;
     */
    /* JADX WARN: Code restructure failed: missing block: B:59:0x00b7, code lost:
        if (zzaU() == false) goto L29;
     */
    @androidx.annotation.Nullable
    @androidx.annotation.CallSuper
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public com.google.android.gms.internal.ads.zzib zzac(com.google.android.gms.internal.ads.zzkq r13) throws com.google.android.gms.internal.ads.zzik {
        /*
            Method dump skipped, instructions count: 254
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zztj.zzac(com.google.android.gms.internal.ads.zzkq):com.google.android.gms.internal.ads.zzib");
    }

    public abstract zzsw zzaf(zztc zztcVar, zzz zzzVar, @Nullable MediaCrypto mediaCrypto, float f);

    public abstract List zzag(zztl zztlVar, zzz zzzVar, boolean z) throws zztq;

    public void zzaj(zzhp zzhpVar) throws zzik {
        throw null;
    }

    public void zzak(Exception exc) {
        throw null;
    }

    public void zzal(String str, zzsw zzswVar, long j, long j2) {
        throw null;
    }

    public void zzam(String str) {
        throw null;
    }

    public void zzan(zzz zzzVar, @Nullable MediaFormat mediaFormat) throws zzik {
        throw null;
    }

    public void zzaq() throws zzik {
        throw null;
    }

    public abstract boolean zzar(long j, long j2, @Nullable zzsz zzszVar, @Nullable ByteBuffer byteBuffer, int i, int i2, int i3, long j3, boolean z, boolean z2, zzz zzzVar) throws zzik;

    public boolean zzas(zzz zzzVar) {
        return false;
    }

    public final float zzat() {
        return this.zzr;
    }

    public final long zzau() {
        return this.zzad.zzd;
    }

    public final long zzav() {
        return this.zzad.zzc;
    }

    @Nullable
    public final MediaFormat zzaw() {
        return this.zzv;
    }

    @Nullable
    public final zzlu zzay() {
        return this.zzo;
    }

    @Nullable
    public final zzsz zzaz() {
        return this.zzt;
    }

    @Override // com.google.android.gms.internal.ads.zzhz, com.google.android.gms.internal.ads.zzly
    public final int zze() {
        return 8;
    }

    @Override // com.google.android.gms.internal.ads.zzhz, com.google.android.gms.internal.ads.zzlq
    public void zzu(int i, @Nullable Object obj) throws zzik {
        if (i == 11) {
            zzlu zzluVar = (zzlu) obj;
            zzluVar.getClass();
            this.zzo = zzluVar;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzhz
    public void zzx() {
        this.zzm = null;
        zzaS(zzth.zza);
        this.zzk.clear();
        zzaK();
    }

    @Override // com.google.android.gms.internal.ads.zzhz
    public void zzy(boolean z, boolean z2) throws zzik {
        this.zza = new zzia();
    }

    @Override // com.google.android.gms.internal.ads.zzhz
    public void zzz(long j, boolean z) throws zzik {
        this.zzaa = false;
        this.zzab = false;
        if (this.zzO) {
            this.zzi.zzb();
            this.zzh.zzb();
            this.zzP = false;
            this.zzl.zzb();
        } else {
            zzaJ();
        }
        zzeq zzeqVar = this.zzad.zze;
        if (zzeqVar.zza() > 0) {
            this.zzac = true;
        }
        zzeqVar.zze();
        this.zzk.clear();
    }

    public void zzap() {
    }

    public void zzaF(zzhp zzhpVar) throws zzik {
    }
}
