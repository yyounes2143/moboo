package com.google.android.gms.internal.ads;

import android.net.Uri;
import android.os.Handler;
import androidx.annotation.Nullable;
import androidx.media3.common.MimeTypes;
import androidx.media3.extractor.metadata.icy.IcyHeaders;
import java.io.IOException;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import org.checkerframework.checker.nullness.qual.EnsuresNonNull;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzwf implements zzuz, zzadq, zzzm, zzzq, zzwq {
    private static final Map zzb;
    private static final zzz zzc;
    private zzaem zzA;
    private long zzB;
    private boolean zzC;
    private boolean zzE;
    private boolean zzF;
    private boolean zzG;
    private int zzH;
    private boolean zzI;
    private long zzJ;
    private boolean zzL;
    private int zzM;
    private boolean zzN;
    private boolean zzO;
    private final zzzg zzP;
    private final Uri zzd;
    private final zzgg zze;
    private final zzsb zzf;
    private final zzvl zzg;
    private final zzrw zzh;
    private final zzwb zzi;
    private final long zzj;
    private final long zzk;
    private final zzvu zzm;
    @Nullable
    private zzuy zzr;
    @Nullable
    private zzagn zzs;
    private boolean zzv;
    private boolean zzw;
    private boolean zzx;
    private boolean zzy;
    private zzwe zzz;
    private final zzzu zzl = new zzzu("ProgressiveMediaPeriod");
    private final zzdj zzn = new zzdj(zzdg.zza);
    private final Runnable zzo = new Runnable() { // from class: com.google.android.gms.internal.ads.zzvw
        @Override // java.lang.Runnable
        public final void run() {
            zzwf.this.zzV();
        }
    };
    private final Runnable zzp = new Runnable() { // from class: com.google.android.gms.internal.ads.zzvx
        @Override // java.lang.Runnable
        public final void run() {
            zzwf.zzA(zzwf.this);
        }
    };
    private final Handler zzq = zzeu.zzy(null);
    private zzwd[] zzu = new zzwd[0];
    private zzws[] zzt = new zzws[0];
    private long zzK = -9223372036854775807L;
    private int zzD = 1;

    static {
        HashMap hashMap = new HashMap();
        hashMap.put(IcyHeaders.REQUEST_HEADER_ENABLE_METADATA_NAME, "1");
        zzb = Collections.unmodifiableMap(hashMap);
        zzx zzxVar = new zzx();
        zzxVar.zzO("icy");
        zzxVar.zzad(MimeTypes.APPLICATION_ICY);
        zzc = zzxVar.zzaj();
    }

    public zzwf(Uri uri, zzgg zzggVar, zzvu zzvuVar, zzsb zzsbVar, zzrw zzrwVar, zzzk zzzkVar, zzvl zzvlVar, zzwb zzwbVar, zzzg zzzgVar, @Nullable String str, int i, int i2, @Nullable zzz zzzVar, long j, @Nullable zzaac zzaacVar) {
        this.zzd = uri;
        this.zze = zzggVar;
        this.zzf = zzsbVar;
        this.zzh = zzrwVar;
        this.zzg = zzvlVar;
        this.zzi = zzwbVar;
        this.zzP = zzzgVar;
        this.zzj = i;
        this.zzm = zzvuVar;
        this.zzk = j;
    }

    public static /* synthetic */ void zzA(zzwf zzwfVar) {
        if (!zzwfVar.zzO) {
            zzuy zzuyVar = zzwfVar.zzr;
            zzuyVar.getClass();
            zzuyVar.zzi(zzwfVar);
        }
    }

    public static /* synthetic */ void zzC(zzwf zzwfVar, zzaem zzaemVar) {
        zzaem zzaelVar;
        if (zzwfVar.zzs == null) {
            zzaelVar = zzaemVar;
        } else {
            zzaelVar = new zzael(-9223372036854775807L, 0L);
        }
        zzwfVar.zzA = zzaelVar;
        zzwfVar.zzB = zzaemVar.zza();
        boolean z = false;
        int i = 1;
        if (!zzwfVar.zzI && zzaemVar.zza() == -9223372036854775807L) {
            z = true;
        }
        zzwfVar.zzC = z;
        if (true == z) {
            i = 7;
        }
        zzwfVar.zzD = i;
        if (zzwfVar.zzw) {
            zzwfVar.zzi.zza(zzwfVar.zzB, zzaemVar, z);
        } else {
            zzwfVar.zzV();
        }
    }

    private final int zzR() {
        int i = 0;
        for (zzws zzwsVar : this.zzt) {
            i += zzwsVar.zzd();
        }
        return i;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final long zzS(boolean z) {
        int i = 0;
        long j = Long.MIN_VALUE;
        while (true) {
            zzws[] zzwsVarArr = this.zzt;
            if (i < zzwsVarArr.length) {
                if (!z) {
                    zzwe zzweVar = this.zzz;
                    zzweVar.getClass();
                    if (!zzweVar.zzc[i]) {
                        i++;
                    }
                }
                j = Math.max(j, zzwsVarArr[i].zzh());
                i++;
            } else {
                return j;
            }
        }
    }

    private final zzaet zzT(zzwd zzwdVar) {
        int length = this.zzt.length;
        for (int i = 0; i < length; i++) {
            if (zzwdVar.equals(this.zzu[i])) {
                return this.zzt[i];
            }
        }
        if (this.zzv) {
            int i2 = zzwdVar.zza;
            zzdx.zzf("ProgressiveMediaPeriod", "Extractor added new track (id=" + i2 + ") after finishing tracks.");
            return new zzadj();
        }
        zzws zzwsVar = new zzws(this.zzP, this.zzf, this.zzh);
        zzwsVar.zzv(this);
        int i3 = length + 1;
        zzwd[] zzwdVarArr = (zzwd[]) Arrays.copyOf(this.zzu, i3);
        zzwdVarArr[length] = zzwdVar;
        String str = zzeu.zza;
        this.zzu = zzwdVarArr;
        zzws[] zzwsVarArr = (zzws[]) Arrays.copyOf(this.zzt, i3);
        zzwsVarArr[length] = zzwsVar;
        this.zzt = zzwsVarArr;
        return zzwsVar;
    }

    @EnsuresNonNull
    private final void zzU() {
        zzdc.zzf(this.zzw);
        this.zzz.getClass();
        this.zzA.getClass();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zzV() {
        boolean z;
        boolean z2;
        zzav zzc2;
        int i;
        if (!this.zzO && !this.zzw && this.zzv && this.zzA != null) {
            for (zzws zzwsVar : this.zzt) {
                if (zzwsVar.zzi() == null) {
                    return;
                }
            }
            this.zzn.zzd();
            int length = this.zzt.length;
            zzbm[] zzbmVarArr = new zzbm[length];
            boolean[] zArr = new boolean[length];
            for (int i2 = 0; i2 < length; i2++) {
                zzz zzi = this.zzt[i2].zzi();
                zzi.getClass();
                String str = zzi.zzo;
                boolean zzh = zzay.zzh(str);
                if (zzh || zzay.zzj(str)) {
                    z = true;
                } else {
                    z = false;
                }
                zArr[i2] = z;
                this.zzx = z | this.zzx;
                boolean zzi2 = zzay.zzi(str);
                if (this.zzk != -9223372036854775807L && length == 1 && zzi2) {
                    z2 = true;
                } else {
                    z2 = false;
                }
                this.zzy = z2;
                zzagn zzagnVar = this.zzs;
                if (zzagnVar != null) {
                    if (zzh || this.zzu[i2].zzb) {
                        zzav zzavVar = zzi.zzl;
                        if (zzavVar == null) {
                            zzc2 = new zzav(-9223372036854775807L, zzagnVar);
                        } else {
                            zzc2 = zzavVar.zzc(zzagnVar);
                        }
                        zzx zzb2 = zzi.zzb();
                        zzb2.zzW(zzc2);
                        zzi = zzb2.zzaj();
                    }
                    if (zzh && zzi.zzh == -1 && zzi.zzi == -1 && (i = zzagnVar.zza) != -1) {
                        zzx zzb3 = zzi.zzb();
                        zzb3.zzA(i);
                        zzi = zzb3.zzaj();
                    }
                }
                zzz zzc3 = zzi.zzc(this.zzf.zza(zzi));
                zzbmVarArr[i2] = new zzbm(Integer.toString(i2), zzc3);
                this.zzG = zzc3.zzu | this.zzG;
            }
            this.zzz = new zzwe(new zzxe(zzbmVarArr), zArr);
            if (this.zzy && this.zzB == -9223372036854775807L) {
                this.zzB = this.zzk;
                this.zzA = new zzvz(this, this.zzA);
            }
            this.zzi.zza(this.zzB, this.zzA, this.zzC);
            this.zzw = true;
            zzuy zzuyVar = this.zzr;
            zzuyVar.getClass();
            zzuyVar.zzk(this);
        }
    }

    private final void zzW(int i) {
        zzU();
        zzwe zzweVar = this.zzz;
        boolean[] zArr = zzweVar.zzd;
        if (!zArr[i]) {
            zzz zzb2 = zzweVar.zza.zzb(i).zzb(0);
            this.zzg.zzd(new zzux(1, zzay.zzb(zzb2.zzo), zzb2, 0, null, zzeu.zzv(this.zzJ), -9223372036854775807L));
            zArr[i] = true;
        }
    }

    private final void zzX(int i) {
        zzU();
        if (this.zzL) {
            if ((!this.zzx || this.zzz.zzb[i]) && !this.zzt[i].zzy(false)) {
                this.zzK = 0L;
                this.zzL = false;
                this.zzF = true;
                this.zzJ = 0L;
                this.zzM = 0;
                for (zzws zzwsVar : this.zzt) {
                    zzwsVar.zzq(false);
                }
                zzuy zzuyVar = this.zzr;
                zzuyVar.getClass();
                zzuyVar.zzi(this);
            }
        }
    }

    private final void zzY() {
        zzwa zzwaVar = new zzwa(this, this.zzd, this.zze, this.zzm, this, this.zzn);
        if (this.zzw) {
            zzdc.zzf(zzZ());
            long j = this.zzB;
            if (j != -9223372036854775807L && this.zzK > j) {
                this.zzN = true;
                this.zzK = -9223372036854775807L;
                return;
            }
            zzaem zzaemVar = this.zzA;
            zzaemVar.getClass();
            zzwa.zzf(zzwaVar, zzaemVar.zzg(this.zzK).zza.zzc, this.zzK);
            for (zzws zzwsVar : this.zzt) {
                zzwsVar.zzu(this.zzK);
            }
            this.zzK = -9223372036854775807L;
        }
        this.zzM = zzR();
        this.zzl.zza(zzwaVar, this, zzzk.zza(this.zzD));
    }

    private final boolean zzZ() {
        if (this.zzK != -9223372036854775807L) {
            return true;
        }
        return false;
    }

    private final boolean zzaa() {
        if (!this.zzF && !zzZ()) {
            return false;
        }
        return true;
    }

    @Override // com.google.android.gms.internal.ads.zzadq
    public final void zzG() {
        this.zzv = true;
        this.zzq.post(this.zzo);
    }

    public final void zzH() throws IOException {
        this.zzl.zzi(zzzk.zza(this.zzD));
    }

    public final void zzI(int i) throws IOException {
        this.zzt[i].zzn();
        zzH();
    }

    @Override // com.google.android.gms.internal.ads.zzzm
    public final /* bridge */ /* synthetic */ void zzJ(zzzp zzzpVar, long j, long j2, boolean z) {
        zzwa zzwaVar = (zzwa) zzzpVar;
        zzhf zze = zzwa.zze(zzwaVar);
        zzus zzusVar = new zzus(zzwa.zzb(zzwaVar), zzwa.zzd(zzwaVar), zze.zzh(), zze.zzi(), j, j2, zze.zzg());
        zzwa.zzb(zzwaVar);
        this.zzg.zze(zzusVar, new zzux(1, -1, null, 0, null, zzeu.zzv(zzwa.zzc(zzwaVar)), zzeu.zzv(this.zzB)));
        if (!z) {
            for (zzws zzwsVar : this.zzt) {
                zzwsVar.zzq(false);
            }
            if (this.zzH > 0) {
                zzuy zzuyVar = this.zzr;
                zzuyVar.getClass();
                zzuyVar.zzi(this);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzzm
    public final /* bridge */ /* synthetic */ void zzK(zzzp zzzpVar, long j, long j2) {
        long j3;
        zzwa zzwaVar = (zzwa) zzzpVar;
        if (this.zzB == -9223372036854775807L && this.zzA != null) {
            long zzS = zzS(true);
            if (zzS == Long.MIN_VALUE) {
                j3 = 0;
            } else {
                j3 = zzS + 10000;
            }
            this.zzB = j3;
            this.zzi.zza(j3, this.zzA, this.zzC);
        }
        zzhf zze = zzwa.zze(zzwaVar);
        zzus zzusVar = new zzus(zzwa.zzb(zzwaVar), zzwa.zzd(zzwaVar), zze.zzh(), zze.zzi(), j, j2, zze.zzg());
        zzwa.zzb(zzwaVar);
        this.zzg.zzf(zzusVar, new zzux(1, -1, null, 0, null, zzeu.zzv(zzwa.zzc(zzwaVar)), zzeu.zzv(this.zzB)));
        this.zzN = true;
        zzuy zzuyVar = this.zzr;
        zzuyVar.getClass();
        zzuyVar.zzi(this);
    }

    @Override // com.google.android.gms.internal.ads.zzzm
    public final /* bridge */ /* synthetic */ void zzL(zzzp zzzpVar, long j, long j2, int i) {
        zzus zzusVar;
        zzwa zzwaVar = (zzwa) zzzpVar;
        zzhf zze = zzwa.zze(zzwaVar);
        if (i == 0) {
            zzusVar = new zzus(zzwa.zzb(zzwaVar), zzwa.zzd(zzwaVar), j);
        } else {
            zzusVar = new zzus(zzwa.zzb(zzwaVar), zzwa.zzd(zzwaVar), zze.zzh(), zze.zzi(), j, j2, zze.zzg());
        }
        this.zzg.zzh(zzusVar, new zzux(1, -1, null, 0, null, zzeu.zzv(zzwa.zzc(zzwaVar)), zzeu.zzv(this.zzB)), i);
    }

    @Override // com.google.android.gms.internal.ads.zzzq
    public final void zzM() {
        for (zzws zzwsVar : this.zzt) {
            zzwsVar.zzp();
        }
        this.zzm.zze();
    }

    @Override // com.google.android.gms.internal.ads.zzwq
    public final void zzN(zzz zzzVar) {
        this.zzq.post(this.zzo);
    }

    public final void zzO() {
        if (this.zzw) {
            for (zzws zzwsVar : this.zzt) {
                zzwsVar.zzo();
            }
        }
        this.zzl.zzj(this);
        this.zzq.removeCallbacksAndMessages(null);
        this.zzr = null;
        this.zzO = true;
    }

    @Override // com.google.android.gms.internal.ads.zzadq
    public final void zzP(final zzaem zzaemVar) {
        this.zzq.post(new Runnable() { // from class: com.google.android.gms.internal.ads.zzvy
            @Override // java.lang.Runnable
            public final void run() {
                zzwf.zzC(zzwf.this, zzaemVar);
            }
        });
    }

    public final boolean zzQ(int i) {
        if (!zzaa() && this.zzt[i].zzy(this.zzN)) {
            return true;
        }
        return false;
    }

    /* JADX WARN: Removed duplicated region for block: B:37:0x0084 A[RETURN] */
    @Override // com.google.android.gms.internal.ads.zzuz
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final long zza(long r23, com.google.android.gms.internal.ads.zzmd r25) {
        /*
            r22 = this;
            r0 = r22
            r1 = r23
            r3 = r25
            r0.zzU()
            com.google.android.gms.internal.ads.zzaem r4 = r0.zzA
            boolean r4 = r4.zzh()
            r5 = 0
            if (r4 != 0) goto L14
            return r5
        L14:
            com.google.android.gms.internal.ads.zzaem r4 = r0.zzA
            com.google.android.gms.internal.ads.zzaek r4 = r4.zzg(r1)
            com.google.android.gms.internal.ads.zzaen r7 = r4.zza
            com.google.android.gms.internal.ads.zzaen r4 = r4.zzb
            long r8 = r3.zzc
            int r10 = (r8 > r5 ? 1 : (r8 == r5 ? 0 : -1))
            if (r10 != 0) goto L2c
            long r8 = r3.zzd
            int r8 = (r8 > r5 ? 1 : (r8 == r5 ? 0 : -1))
            if (r8 != 0) goto L2b
            return r1
        L2b:
            r8 = r5
        L2c:
            long r10 = r7.zzb
            java.lang.String r7 = com.google.android.gms.internal.ads.zzeu.zza
            long r12 = r1 - r8
            long r8 = r8 ^ r1
            long r14 = r1 ^ r12
            r16 = r5
            long r5 = r3.zzd
            long r18 = r1 + r5
            long r20 = r1 ^ r18
            long r5 = r5 ^ r18
            long r8 = r8 & r14
            int r3 = (r8 > r16 ? 1 : (r8 == r16 ? 0 : -1))
            if (r3 >= 0) goto L46
            r12 = -9223372036854775808
        L46:
            long r5 = r20 & r5
            int r3 = (r5 > r16 ? 1 : (r5 == r16 ? 0 : -1))
            if (r3 >= 0) goto L51
            r18 = 9223372036854775807(0x7fffffffffffffff, double:NaN)
        L51:
            int r3 = (r12 > r10 ? 1 : (r12 == r10 ? 0 : -1))
            r5 = 1
            r6 = 0
            if (r3 > 0) goto L5d
            int r3 = (r10 > r18 ? 1 : (r10 == r18 ? 0 : -1))
            if (r3 > 0) goto L5d
            r3 = r5
            goto L5e
        L5d:
            r3 = r6
        L5e:
            long r7 = r4.zzb
            int r4 = (r12 > r7 ? 1 : (r12 == r7 ? 0 : -1))
            if (r4 > 0) goto L69
            int r4 = (r7 > r18 ? 1 : (r7 == r18 ? 0 : -1))
            if (r4 > 0) goto L69
            goto L6a
        L69:
            r5 = r6
        L6a:
            if (r3 == 0) goto L7f
            if (r5 == 0) goto L7f
            long r3 = r10 - r1
            long r1 = r7 - r1
            long r3 = java.lang.Math.abs(r3)
            long r1 = java.lang.Math.abs(r1)
            int r1 = (r3 > r1 ? 1 : (r3 == r1 ? 0 : -1))
            if (r1 > 0) goto L84
            goto L81
        L7f:
            if (r3 == 0) goto L82
        L81:
            return r10
        L82:
            if (r5 == 0) goto L85
        L84:
            return r7
        L85:
            return r12
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzwf.zza(long, com.google.android.gms.internal.ads.zzmd):long");
    }

    @Override // com.google.android.gms.internal.ads.zzuz, com.google.android.gms.internal.ads.zzwv
    public final long zzb() {
        long j;
        zzU();
        if (this.zzN || this.zzH == 0) {
            return Long.MIN_VALUE;
        }
        if (zzZ()) {
            return this.zzK;
        }
        if (this.zzx) {
            int length = this.zzt.length;
            j = Long.MAX_VALUE;
            for (int i = 0; i < length; i++) {
                zzwe zzweVar = this.zzz;
                if (zzweVar.zzb[i] && zzweVar.zzc[i] && !this.zzt[i].zzx()) {
                    j = Math.min(j, this.zzt[i].zzh());
                }
            }
        } else {
            j = Long.MAX_VALUE;
        }
        if (j == Long.MAX_VALUE) {
            j = zzS(false);
        }
        if (j == Long.MIN_VALUE) {
            return this.zzJ;
        }
        return j;
    }

    @Override // com.google.android.gms.internal.ads.zzuz, com.google.android.gms.internal.ads.zzwv
    public final long zzc() {
        return zzb();
    }

    @Override // com.google.android.gms.internal.ads.zzuz
    public final long zzd() {
        if (this.zzG) {
            this.zzG = false;
        } else if (this.zzF) {
            if (this.zzN || zzR() > this.zzM) {
                this.zzF = false;
            } else {
                return -9223372036854775807L;
            }
        } else {
            return -9223372036854775807L;
        }
        return this.zzJ;
    }

    @Override // com.google.android.gms.internal.ads.zzuz
    public final long zze(long j) {
        boolean zzA;
        zzU();
        boolean[] zArr = this.zzz.zzb;
        if (true != this.zzA.zzh()) {
            j = 0;
        }
        this.zzF = false;
        long j2 = this.zzJ;
        this.zzJ = j;
        if (zzZ()) {
            this.zzK = j;
            return j;
        }
        if (this.zzD != 7 && (this.zzN || this.zzl.zzl())) {
            int length = this.zzt.length;
            for (int i = 0; i < length; i++) {
                zzws zzwsVar = this.zzt[i];
                if (zzwsVar.zzb() != 0 || j2 != j) {
                    if (this.zzy) {
                        zzA = zzwsVar.zzz(zzwsVar.zza());
                    } else {
                        zzA = zzwsVar.zzA(j, false);
                    }
                    if (zzA) {
                        continue;
                    } else if (!zArr[i] && this.zzx) {
                    }
                }
            }
            return j;
        }
        this.zzL = false;
        this.zzK = j;
        this.zzN = false;
        this.zzG = false;
        zzzu zzzuVar = this.zzl;
        if (zzzuVar.zzl()) {
            for (zzws zzwsVar2 : this.zzt) {
                zzwsVar2.zzk();
            }
            zzzuVar.zzg();
            return j;
        }
        zzzuVar.zzh();
        for (zzws zzwsVar3 : this.zzt) {
            zzwsVar3.zzq(false);
        }
        return j;
    }

    @Override // com.google.android.gms.internal.ads.zzuz
    public final long zzf(zzyq[] zzyqVarArr, boolean[] zArr, zzwt[] zzwtVarArr, boolean[] zArr2, long j) {
        boolean z;
        zzyq zzyqVar;
        boolean z2;
        boolean z3;
        int i;
        zzU();
        zzwe zzweVar = this.zzz;
        zzxe zzxeVar = zzweVar.zza;
        boolean[] zArr3 = zzweVar.zzc;
        int i2 = this.zzH;
        int i3 = 0;
        for (int i4 = 0; i4 < zzyqVarArr.length; i4++) {
            zzwt zzwtVar = zzwtVarArr[i4];
            if (zzwtVar != null && (zzyqVarArr[i4] == null || !zArr[i4])) {
                i = ((zzwc) zzwtVar).zzb;
                zzdc.zzf(zArr3[i]);
                this.zzH--;
                zArr3[i] = false;
                zzwtVarArr[i4] = null;
            }
        }
        if (!this.zzE ? !(j == 0 || this.zzy) : i2 == 0) {
            z = true;
        } else {
            z = false;
        }
        for (int i5 = 0; i5 < zzyqVarArr.length; i5++) {
            if (zzwtVarArr[i5] == null && (zzyqVar = zzyqVarArr[i5]) != null) {
                if (zzyqVar.zzh() == 1) {
                    z2 = true;
                } else {
                    z2 = false;
                }
                zzdc.zzf(z2);
                if (zzyqVar.zze(0) == 0) {
                    z3 = true;
                } else {
                    z3 = false;
                }
                zzdc.zzf(z3);
                int zza = zzxeVar.zza(zzyqVar.zzc());
                zzdc.zzf(!zArr3[zza]);
                this.zzH++;
                zArr3[zza] = true;
                this.zzG = zzyqVar.zzb().zzu | this.zzG;
                zzwtVarArr[i5] = new zzwc(this, zza);
                zArr2[i5] = true;
                if (!z) {
                    zzws zzwsVar = this.zzt[zza];
                    if (zzwsVar.zzb() != 0 && !zzwsVar.zzA(j, true)) {
                        z = true;
                    } else {
                        z = false;
                    }
                }
            }
        }
        if (this.zzH == 0) {
            this.zzL = false;
            this.zzF = false;
            this.zzG = false;
            zzzu zzzuVar = this.zzl;
            if (zzzuVar.zzl()) {
                zzws[] zzwsVarArr = this.zzt;
                int length = zzwsVarArr.length;
                while (i3 < length) {
                    zzwsVarArr[i3].zzk();
                    i3++;
                }
                zzzuVar.zzg();
            } else {
                this.zzN = false;
                for (zzws zzwsVar2 : this.zzt) {
                    zzwsVar2.zzq(false);
                }
            }
        } else if (z) {
            j = zze(j);
            while (i3 < zzwtVarArr.length) {
                if (zzwtVarArr[i3] != null) {
                    zArr2[i3] = true;
                }
                i3++;
            }
        }
        this.zzE = true;
        return j;
    }

    @Override // com.google.android.gms.internal.ads.zzuz
    public final zzxe zzg() {
        zzU();
        return this.zzz.zza;
    }

    @Override // com.google.android.gms.internal.ads.zzuz
    public final void zzh(long j, boolean z) {
        if (!this.zzy) {
            zzU();
            if (!zzZ()) {
                boolean[] zArr = this.zzz.zzc;
                int length = this.zzt.length;
                for (int i = 0; i < length; i++) {
                    this.zzt[i].zzj(j, false, zArr[i]);
                }
            }
        }
    }

    public final int zzi(int i, zzkq zzkqVar, zzhp zzhpVar, int i2) {
        if (zzaa()) {
            return -3;
        }
        zzW(i);
        int zze = this.zzt[i].zze(zzkqVar, zzhpVar, i2, this.zzN);
        if (zze == -3) {
            zzX(i);
        }
        return zze;
    }

    @Override // com.google.android.gms.internal.ads.zzuz
    public final void zzj() throws IOException {
        zzH();
        if (this.zzN && !this.zzw) {
            throw zzaz.zza("Loading finished before preparation is complete.", null);
        }
    }

    public final int zzk(int i, long j) {
        if (zzaa()) {
            return 0;
        }
        zzW(i);
        zzws zzwsVar = this.zzt[i];
        int zzc2 = zzwsVar.zzc(j, this.zzN);
        zzwsVar.zzw(zzc2);
        if (zzc2 == 0) {
            zzX(i);
            return 0;
        }
        return zzc2;
    }

    @Override // com.google.android.gms.internal.ads.zzuz
    public final void zzl(zzuy zzuyVar, long j) {
        this.zzr = zzuyVar;
        this.zzn.zzf();
        zzY();
    }

    @Override // com.google.android.gms.internal.ads.zzuz, com.google.android.gms.internal.ads.zzwv
    public final boolean zzo(zzkv zzkvVar) {
        if (!this.zzN) {
            zzzu zzzuVar = this.zzl;
            if (!zzzuVar.zzk() && !this.zzL) {
                if (!this.zzw || this.zzH != 0) {
                    boolean zzf = this.zzn.zzf();
                    if (!zzzuVar.zzl()) {
                        zzY();
                        return true;
                    }
                    return zzf;
                }
                return false;
            }
            return false;
        }
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzuz, com.google.android.gms.internal.ads.zzwv
    public final boolean zzp() {
        if (this.zzl.zzl() && this.zzn.zze()) {
            return true;
        }
        return false;
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x006a  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x006d  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x00de  */
    @Override // com.google.android.gms.internal.ads.zzzm
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final /* bridge */ /* synthetic */ com.google.android.gms.internal.ads.zzzn zzu(com.google.android.gms.internal.ads.zzzp r23, long r24, long r26, java.io.IOException r28, int r29) {
        /*
            Method dump skipped, instructions count: 226
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzwf.zzu(com.google.android.gms.internal.ads.zzzp, long, long, java.io.IOException, int):com.google.android.gms.internal.ads.zzzn");
    }

    public final zzaet zzv() {
        return zzT(new zzwd(0, true));
    }

    @Override // com.google.android.gms.internal.ads.zzadq
    public final zzaet zzw(int i, int i2) {
        return zzT(new zzwd(i, false));
    }

    @Override // com.google.android.gms.internal.ads.zzuz, com.google.android.gms.internal.ads.zzwv
    public final void zzm(long j) {
    }
}
