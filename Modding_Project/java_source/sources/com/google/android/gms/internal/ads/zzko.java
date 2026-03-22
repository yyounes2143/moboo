package com.google.android.gms.internal.ads;

import android.content.Context;
import android.media.MediaFormat;
import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;
import android.util.Pair;
import androidx.annotation.Nullable;
import androidx.media3.exoplayer.MediaPeriodQueue;
import j$.util.Objects;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzko implements Handler.Callback, zzuy, zzyw, zzll, zzih, zzlp, zzhx, zzabi {
    private static final long zza = zzeu.zzv(10000);
    private boolean zzA;
    private boolean zzB;
    @Nullable
    private zzkm zzC;
    private zzln zzD;
    private zzkl zzE;
    private boolean zzF;
    private boolean zzH;
    private boolean zzI;
    private boolean zzK;
    private boolean zzN;
    private int zzO;
    @Nullable
    private zzkm zzP;
    private long zzQ;
    private long zzR;
    private int zzS;
    private boolean zzT;
    @Nullable
    private zzik zzU;
    private zziu zzW;
    private boolean zzY;
    private final zzjg zzaa;
    private final zzid zzab;
    private final zzma[] zzb;
    private final zzly[] zzc;
    private final boolean[] zzd;
    private final zzyx zze;
    private final zzyy zzf;
    private final zzks zzg;
    private final zzzf zzh;
    private final zzdq zzi;
    private final zzlo zzj;
    private final Looper zzk;
    private final zzbk zzl;
    private final zzbj zzm;
    private final long zzn;
    private final zzii zzo;
    private final ArrayList zzp;
    private final zzdg zzq;
    private final zzla zzr;
    private final zzlm zzs;
    private final long zzt;
    private final zzpc zzu;
    private final zzmj zzv;
    private final zzdq zzw;
    private final boolean zzx;
    private final zzhy zzy;
    private zzmd zzz;
    private long zzX = -9223372036854775807L;
    private int zzL = 0;
    private boolean zzM = false;
    private boolean zzG = false;
    private float zzZ = 1.0f;
    private long zzV = -9223372036854775807L;
    private long zzJ = -9223372036854775807L;

    public zzko(Context context, zzlv[] zzlvVarArr, zzlv[] zzlvVarArr2, zzyx zzyxVar, zzyy zzyyVar, zzks zzksVar, zzzf zzzfVar, int i, boolean z, zzmj zzmjVar, zzmd zzmdVar, zzid zzidVar, long j, boolean z2, boolean z3, Looper looper, zzdg zzdgVar, zzjg zzjgVar, zzpc zzpcVar, @Nullable zzlo zzloVar, zziu zziuVar, final zzabi zzabiVar) {
        this.zzaa = zzjgVar;
        this.zze = zzyxVar;
        this.zzf = zzyyVar;
        this.zzg = zzksVar;
        this.zzh = zzzfVar;
        int i2 = 0;
        this.zzz = zzmdVar;
        this.zzab = zzidVar;
        this.zzt = j;
        this.zzq = zzdgVar;
        this.zzu = zzpcVar;
        this.zzW = zziuVar;
        this.zzv = zzmjVar;
        this.zzn = zzksVar.zzb(zzpcVar);
        zzksVar.zzg(zzpcVar);
        zzbl zzblVar = zzbl.zza;
        zzln zzh = zzln.zzh(zzyyVar);
        this.zzD = zzh;
        this.zzE = new zzkl(zzh);
        int length = zzlvVarArr.length;
        this.zzc = new zzly[2];
        this.zzd = new boolean[2];
        zzlx zze = zzyxVar.zze();
        this.zzb = new zzma[2];
        boolean z4 = false;
        for (int i3 = 2; i2 < i3; i3 = 2) {
            zzlvVarArr[i2].zzv(i2, zzpcVar, zzdgVar);
            this.zzc[i2] = zzlvVarArr[i2].zzm();
            this.zzc[i2].zzL(zze);
            zzlv zzlvVar = zzlvVarArr2[i2];
            if (zzlvVar != null) {
                zzlvVar.zzv(i2, zzpcVar, zzdgVar);
                z4 = true;
            }
            this.zzb[i2] = new zzma(zzlvVarArr[i2], zzlvVarArr2[i2], i2);
            i2++;
        }
        this.zzx = z4;
        this.zzo = new zzii(this, zzdgVar);
        this.zzp = new ArrayList();
        this.zzl = new zzbk();
        this.zzm = new zzbj();
        zzyxVar.zzr(this, zzzfVar);
        this.zzT = true;
        zzdq zzd = zzdgVar.zzd(looper, null);
        this.zzw = zzd;
        this.zzr = new zzla(zzmjVar, zzd, new zzkf(this), zziuVar);
        this.zzs = new zzlm(this, zzmjVar, zzd, zzpcVar);
        zzlo zzloVar2 = new zzlo(null);
        this.zzj = zzloVar2;
        Looper zza2 = zzloVar2.zza();
        this.zzk = zza2;
        zzdq zzd2 = zzdgVar.zzd(zza2, this);
        this.zzi = zzd2;
        this.zzy = new zzhy(context, zza2, this);
        zzd2.zzc(35, new zzabi() { // from class: com.google.android.gms.internal.ads.zzkg
            @Override // com.google.android.gms.internal.ads.zzabi
            public final void zzcT(long j2, long j3, zzz zzzVar, MediaFormat mediaFormat) {
                zzko.this.zzcT(j2, j3, zzzVar, mediaFormat);
            }
        }).zza();
    }

    private final long zzA(zzvb zzvbVar, long j, boolean z) throws zzik {
        boolean z2;
        zzla zzlaVar = this.zzr;
        if (zzlaVar.zzj() != zzlaVar.zzn()) {
            z2 = true;
        } else {
            z2 = false;
        }
        return zzB(zzvbVar, j, z2, z);
    }

    private final long zzB(zzvb zzvbVar, long j, boolean z, boolean z2) throws zzik {
        zzaj();
        zzar(false, true);
        if (z2 || this.zzD.zze == 3) {
            zzaf(2);
        }
        zzla zzlaVar = this.zzr;
        zzkx zzj = zzlaVar.zzj();
        zzkx zzkxVar = zzj;
        while (zzkxVar != null && !zzvbVar.equals(zzkxVar.zzg.zza)) {
            zzkxVar = zzkxVar.zzg();
        }
        if (z || zzj != zzkxVar || (zzkxVar != null && zzkxVar.zze() + j < 0)) {
            zzG();
            if (zzkxVar != null) {
                while (zzlaVar.zzj() != zzkxVar) {
                    zzlaVar.zze();
                }
                zzlaVar.zza(zzkxVar);
                zzkxVar.zzq(MediaPeriodQueue.INITIAL_RENDERER_POSITION_OFFSET_US);
                zzI();
                zzkxVar.zzh = true;
            }
        }
        zzF();
        if (zzkxVar != null) {
            zzlaVar.zza(zzkxVar);
            if (!zzkxVar.zze) {
                zzkxVar.zzg = zzkxVar.zzg.zzb(j);
            } else if (zzkxVar.zzf) {
                zzuz zzuzVar = zzkxVar.zza;
                j = zzuzVar.zze(j);
                zzuzVar.zzh(j - this.zzn, false);
            }
            zzY(j);
            zzP();
        } else {
            zzlaVar.zzs();
            zzY(j);
        }
        zzL(false);
        this.zzi.zzj(2);
        return j;
    }

    private final Pair zzC(zzbl zzblVar) {
        long j = 0;
        if (zzblVar.zzo()) {
            return Pair.create(zzln.zzi(), 0L);
        }
        int zzg = zzblVar.zzg(this.zzM);
        zzbk zzbkVar = this.zzl;
        zzbj zzbjVar = this.zzm;
        Pair zzl = zzblVar.zzl(zzbkVar, zzbjVar, zzg, -9223372036854775807L);
        zzvb zzq = this.zzr.zzq(zzblVar, zzl.first, 0L);
        long longValue = ((Long) zzl.second).longValue();
        if (zzq.zzb()) {
            zzblVar.zzn(zzq.zza, zzbjVar);
            if (zzq.zzc == zzbjVar.zze(zzq.zzb)) {
                zzbjVar.zzh();
            }
        } else {
            j = longValue;
        }
        return Pair.create(zzq, Long.valueOf(j));
    }

    @Nullable
    private static Pair zzD(zzbl zzblVar, zzkm zzkmVar, boolean z, int i, boolean z2, zzbk zzbkVar, zzbj zzbjVar) {
        Pair zzl;
        zzbl zzblVar2;
        zzbl zzblVar3 = zzkmVar.zza;
        if (zzblVar.zzo()) {
            return null;
        }
        if (true == zzblVar3.zzo()) {
            zzblVar3 = zzblVar;
        }
        try {
            zzl = zzblVar3.zzl(zzbkVar, zzbjVar, zzkmVar.zzb, zzkmVar.zzc);
            zzblVar2 = zzblVar3;
        } catch (IndexOutOfBoundsException unused) {
        }
        if (zzblVar.equals(zzblVar2)) {
            return zzl;
        }
        if (zzblVar.zza(zzl.first) != -1) {
            if (zzblVar2.zzn(zzl.first, zzbjVar).zzf && zzblVar2.zze(zzbjVar.zzc, zzbkVar, 0L).zzn == zzblVar2.zza(zzl.first)) {
                return zzblVar.zzl(zzbkVar, zzbjVar, zzblVar.zzn(zzl.first, zzbjVar).zzc, zzkmVar.zzc);
            }
            return zzl;
        }
        int zzd = zzd(zzbkVar, zzbjVar, i, z2, zzl.first, zzblVar2, zzblVar);
        if (zzd != -1) {
            return zzblVar.zzl(zzbkVar, zzbjVar, zzd, -9223372036854775807L);
        }
        return null;
    }

    /* JADX WARN: Removed duplicated region for block: B:43:0x00b3  */
    /* JADX WARN: Removed duplicated region for block: B:64:0x00cd A[EDGE_INSN: B:64:0x00cd->B:50:0x00cd ?: BREAK  , SYNTHETIC] */
    @androidx.annotation.CheckResult
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final com.google.android.gms.internal.ads.zzln zzE(com.google.android.gms.internal.ads.zzvb r17, long r18, long r20, long r22, boolean r24, int r25) {
        /*
            Method dump skipped, instructions count: 258
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzko.zzE(com.google.android.gms.internal.ads.zzvb, long, long, long, boolean, int):com.google.android.gms.internal.ads.zzln");
    }

    private final void zzF() {
        if (this.zzx && zzas()) {
            zzma[] zzmaVarArr = this.zzb;
            for (int i = 0; i < 2; i++) {
                zzma zzmaVar = zzmaVarArr[i];
                int zza2 = zzmaVar.zza();
                zzmaVar.zzf(this.zzo);
                this.zzO -= zza2 - zzmaVar.zza();
            }
            this.zzX = -9223372036854775807L;
        }
    }

    private final void zzG() throws zzik {
        int i = 0;
        while (true) {
            zzma[] zzmaVarArr = this.zzb;
            if (i < 2) {
                int zza2 = zzmaVarArr[i].zza();
                zzmaVarArr[i].zze(this.zzo);
                zzT(i, false);
                this.zzO -= zza2;
                i++;
            } else {
                this.zzX = -9223372036854775807L;
                return;
            }
        }
    }

    private final void zzH(zzkx zzkxVar, int i, boolean z, long j) throws zzik {
        boolean z2;
        boolean z3;
        boolean z4;
        zzma zzmaVar = this.zzb[i];
        if (!zzmaVar.zzJ()) {
            if (zzkxVar == this.zzr.zzj()) {
                z2 = true;
            } else {
                z2 = false;
            }
            zzyy zzi = zzkxVar.zzi();
            zzlz zzlzVar = zzi.zzb[i];
            zzyq zzyqVar = zzi.zzc[i];
            if (zzav() && this.zzD.zze == 3) {
                z3 = true;
            } else {
                z3 = false;
            }
            if (!z && z3) {
                z4 = true;
            } else {
                z4 = false;
            }
            this.zzO++;
            zzmaVar.zzg(zzlzVar, zzyqVar, zzkxVar.zzc[i], this.zzQ, z4, z2, j, zzkxVar.zze(), zzkxVar.zzg.zza, this.zzo);
            zzmaVar.zzi(11, new zzkh(this), zzkxVar);
            if (z3 && z2) {
                zzmaVar.zzy();
            }
        }
    }

    private final void zzI() throws zzik {
        zzJ(new boolean[2], this.zzr.zzn().zzf());
    }

    private final void zzJ(boolean[] zArr, long j) throws zzik {
        zzma[] zzmaVarArr;
        long j2;
        zzkx zzn = this.zzr.zzn();
        zzyy zzi = zzn.zzi();
        int i = 0;
        while (true) {
            zzmaVarArr = this.zzb;
            if (i >= 2) {
                break;
            }
            if (!zzi.zzb(i)) {
                zzmaVarArr[i].zzp();
            }
            i++;
        }
        int i2 = 0;
        while (i2 < 2) {
            if (zzi.zzb(i2) && !zzmaVarArr[i2].zzI(zzn)) {
                j2 = j;
                zzH(zzn, i2, zArr[i2], j2);
            } else {
                j2 = j;
            }
            i2++;
            j = j2;
        }
    }

    private final void zzK(IOException iOException, int i) {
        zzla zzlaVar = this.zzr;
        zzik zzc = zzik.zzc(iOException, i);
        zzkx zzj = zzlaVar.zzj();
        if (zzj != null) {
            zzc = zzc.zza(zzj.zzg.zza);
        }
        zzdx.zzd("ExoPlayerImplInternal", "Playback error", zzc);
        zzai(false, false);
        this.zzD = this.zzD.zze(zzc);
    }

    private final void zzL(boolean z) {
        zzvb zzvbVar;
        long zzc;
        zzkx zzi = this.zzr.zzi();
        if (zzi == null) {
            zzvbVar = this.zzD.zzb;
        } else {
            zzvbVar = zzi.zzg.zza;
        }
        boolean equals = this.zzD.zzk.equals(zzvbVar);
        if (!equals) {
            this.zzD = this.zzD.zzb(zzvbVar);
        }
        zzln zzlnVar = this.zzD;
        if (zzi == null) {
            zzc = zzlnVar.zzs;
        } else {
            zzc = zzi.zzc();
        }
        zzlnVar.zzq = zzc;
        this.zzD.zzr = zzy();
        if ((!equals || z) && zzi != null && zzi.zze) {
            zzal(zzi.zzg.zza, zzi.zzh(), zzi.zzi());
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:138:0x0270  */
    /* JADX WARN: Removed duplicated region for block: B:142:0x027c A[Catch: all -> 0x0275, TryCatch #2 {all -> 0x0275, blocks: (B:139:0x0271, B:142:0x027c, B:144:0x027f, B:152:0x0291, B:154:0x0299, B:156:0x02a1, B:158:0x02ab, B:159:0x02b6, B:160:0x02bb), top: B:223:0x0224 }] */
    /* JADX WARN: Removed duplicated region for block: B:191:0x0341  */
    /* JADX WARN: Removed duplicated region for block: B:192:0x0344  */
    /* JADX WARN: Removed duplicated region for block: B:195:0x034e  */
    /* JADX WARN: Removed duplicated region for block: B:201:0x0363 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:210:0x0387  */
    /* JADX WARN: Removed duplicated region for block: B:212:0x038e  */
    /* JADX WARN: Removed duplicated region for block: B:216:0x03af  */
    /* JADX WARN: Type inference failed for: r10v0 */
    /* JADX WARN: Type inference failed for: r10v6 */
    /* JADX WARN: Type inference failed for: r10v7 */
    /* JADX WARN: Type inference failed for: r10v9 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final void zzM(com.google.android.gms.internal.ads.zzbl r30, boolean r31) throws com.google.android.gms.internal.ads.zzik {
        /*
            Method dump skipped, instructions count: 955
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzko.zzM(com.google.android.gms.internal.ads.zzbl, boolean):void");
    }

    private final void zzN(zzbb zzbbVar, boolean z) throws zzik {
        zzO(zzbbVar, zzbbVar.zzb, true, z);
    }

    private final void zzO(zzbb zzbbVar, float f, boolean z, boolean z2) throws zzik {
        int i;
        if (z) {
            if (z2) {
                this.zzE.zza(1);
            }
            zzln zzlnVar = this.zzD;
            this.zzD = new zzln(zzlnVar.zza, zzlnVar.zzb, zzlnVar.zzc, zzlnVar.zzd, zzlnVar.zze, zzlnVar.zzf, zzlnVar.zzg, zzlnVar.zzh, zzlnVar.zzi, zzlnVar.zzj, zzlnVar.zzk, zzlnVar.zzl, zzlnVar.zzm, zzlnVar.zzn, zzbbVar, zzlnVar.zzq, zzlnVar.zzr, zzlnVar.zzs, zzlnVar.zzt, false);
        }
        float f2 = zzbbVar.zzb;
        zzkx zzj = this.zzr.zzj();
        while (true) {
            i = 0;
            if (zzj == null) {
                break;
            }
            zzyq[] zzyqVarArr = zzj.zzi().zzc;
            int length = zzyqVarArr.length;
            while (i < length) {
                zzyq zzyqVar = zzyqVarArr[i];
                i++;
            }
            zzj = zzj.zzg();
        }
        zzma[] zzmaVarArr = this.zzb;
        while (i < 2) {
            zzmaVarArr[i].zzt(f, f2);
            i++;
        }
    }

    private final void zzP() {
        long zze;
        long j;
        long j2;
        zzla zzlaVar = this.zzr;
        boolean z = false;
        if (zzax(zzlaVar.zzi())) {
            zzkx zzi = zzlaVar.zzi();
            long zzz = zzz(zzi.zzd());
            if (zzi == zzlaVar.zzj()) {
                zze = this.zzQ;
                j = zzi.zze();
            } else {
                zze = this.zzQ - zzi.zze();
                j = zzi.zzg.zzb;
            }
            long j3 = zze - j;
            if (zzaw(this.zzD.zza, zzi.zzg.zza)) {
                j2 = this.zzab.zzb();
            } else {
                j2 = -9223372036854775807L;
            }
            zzkr zzkrVar = new zzkr(this.zzu, this.zzD.zza, zzi.zzg.zza, j3, zzz, this.zzo.zzc().zzb, this.zzD.zzl, this.zzI, j2, this.zzJ);
            zzks zzksVar = this.zzg;
            boolean zzh = zzksVar.zzh(zzkrVar);
            zzkx zzj = zzlaVar.zzj();
            if (!zzh && zzj.zze && zzz < 500000 && this.zzn > 0) {
                zzj.zza.zzh(this.zzD.zzs, false);
                z = zzksVar.zzh(zzkrVar);
            } else {
                z = zzh;
            }
        }
        this.zzK = z;
        if (z) {
            zzkx zzi2 = zzlaVar.zzi();
            zzi2.getClass();
            zzkt zzktVar = new zzkt();
            zzktVar.zze(this.zzQ - zzi2.zze());
            zzktVar.zzf(this.zzo.zzc().zzb);
            zzktVar.zzd(this.zzJ);
            zzi2.zzk(new zzkv(zzktVar, null));
        }
        zzak();
    }

    private final void zzQ() {
        long j;
        zzla zzlaVar = this.zzr;
        zzlaVar.zzt();
        zzkx zzl = zzlaVar.zzl();
        if (zzl != null) {
            if (!zzl.zzd || zzl.zze) {
                zzuz zzuzVar = zzl.zza;
                if (!zzuzVar.zzp()) {
                    zzks zzksVar = this.zzg;
                    zzbl zzblVar = this.zzD.zza;
                    zzvb zzvbVar = zzl.zzg.zza;
                    if (zzl.zze) {
                        j = zzuzVar.zzb();
                    } else {
                        j = 0;
                    }
                    if (zzksVar.zzi(zzblVar, zzvbVar, j)) {
                        if (!zzl.zzd) {
                            zzl.zzm(this, zzl.zzg.zzb);
                            return;
                        }
                        zzkt zzktVar = new zzkt();
                        zzktVar.zze(this.zzQ - zzl.zze());
                        zzktVar.zzf(this.zzo.zzc().zzb);
                        zzktVar.zzd(this.zzJ);
                        zzl.zzk(new zzkv(zzktVar, null));
                    }
                }
            }
        }
    }

    private final void zzR() {
        boolean z;
        this.zzE.zzb(this.zzD);
        z = this.zzE.zze;
        if (z) {
            zzjg zzjgVar = this.zzaa;
            zzjgVar.zza.zzaa(this.zzE);
            this.zzE = new zzkl(this.zzD);
        }
    }

    private final void zzS(int i) throws IOException, zzik {
        zzma zzmaVar = this.zzb[i];
        try {
            zzkx zzj = this.zzr.zzj();
            if (zzj != null) {
                zzmaVar.zzm(zzj);
                return;
            }
            throw null;
        } catch (IOException e) {
            e = e;
            zzmaVar.zzb();
            throw e;
        } catch (RuntimeException e2) {
            e = e2;
            zzmaVar.zzb();
            throw e;
        }
    }

    private final void zzT(final int i, final boolean z) {
        boolean[] zArr = this.zzd;
        if (zArr[i] != z) {
            zArr[i] = z;
            this.zzw.zzi(new Runnable() { // from class: com.google.android.gms.internal.ads.zzkd
                @Override // java.lang.Runnable
                public final void run() {
                    r0.zzv.zzJ(r1, zzko.this.zzb[i].zzb(), z);
                }
            });
        }
    }

    private final void zzU() throws zzik {
        zzyy zzyyVar;
        zzko zzkoVar;
        int i;
        int i2;
        boolean z;
        boolean z2;
        zzii zziiVar = this.zzo;
        float f = zziiVar.zzc().zzb;
        zzla zzlaVar = this.zzr;
        zzkx zzj = zzlaVar.zzj();
        zzkx zzn = zzlaVar.zzn();
        zzyy zzyyVar2 = null;
        boolean z3 = true;
        while (zzj != null && zzj.zze) {
            zzln zzlnVar = this.zzD;
            zzyy zzj2 = zzj.zzj(f, zzlnVar.zza, zzlnVar.zzl);
            if (zzj == zzlaVar.zzj()) {
                zzyyVar = zzj2;
            } else {
                zzyyVar = zzyyVar2;
            }
            zzyy zzi = zzj.zzi();
            boolean z4 = false;
            if (zzi != null) {
                zzyq[] zzyqVarArr = zzj2.zzc;
                if (zzi.zzc.length == zzyqVarArr.length) {
                    for (int i3 = 0; i3 < zzyqVarArr.length; i3++) {
                        if (zzj2.zza(zzi, i3)) {
                        }
                    }
                    if (zzj != zzn) {
                        z4 = true;
                    }
                    z3 &= z4;
                    zzj = zzj.zzg();
                    zzyyVar2 = zzyyVar;
                }
            }
            if (z3) {
                zzkx zzj3 = zzlaVar.zzj();
                int zza2 = zzlaVar.zza(zzj3) & 1;
                zzma[] zzmaVarArr = this.zzb;
                boolean[] zArr = new boolean[2];
                zzyyVar.getClass();
                if (1 != zza2) {
                    z = false;
                } else {
                    z = true;
                }
                long zzb = zzj3.zzb(zzyyVar, this.zzD.zzs, z, zArr);
                zzln zzlnVar2 = this.zzD;
                if (zzlnVar2.zze != 4 && zzb != zzlnVar2.zzs) {
                    z2 = false;
                    z4 = true;
                } else {
                    z2 = false;
                }
                zzln zzlnVar3 = this.zzD;
                boolean z5 = z2;
                i = 4;
                i2 = 2;
                zzkoVar = this;
                zzkoVar.zzD = zzE(zzlnVar3.zzb, zzb, zzlnVar3.zzc, zzlnVar3.zzd, z4, 5);
                if (z4) {
                    zzkoVar.zzY(zzb);
                }
                zzkoVar.zzF();
                boolean[] zArr2 = new boolean[2];
                int i4 = z5;
                while (i4 < 2) {
                    int zza3 = zzmaVarArr[i4].zza();
                    zArr2[i4] = zzmaVarArr[i4].zzJ();
                    zzii zziiVar2 = zziiVar;
                    zzmaVarArr[i4].zzj(zzj3.zzc[i4], zziiVar2, zzkoVar.zzQ, zArr[i4]);
                    if (zza3 - zzmaVarArr[i4].zza() > 0) {
                        zzkoVar.zzT(i4, z5);
                    }
                    zzkoVar.zzO -= zza3 - zzmaVarArr[i4].zza();
                    i4++;
                    zziiVar = zziiVar2;
                }
                zzkoVar.zzJ(zArr2, zzkoVar.zzQ);
                zzj3.zzh = true;
            } else {
                zzkoVar = this;
                i = 4;
                i2 = 2;
                zzlaVar.zza(zzj);
                if (zzj.zze) {
                    long max = Math.max(zzj.zzg.zzb, zzkoVar.zzQ - zzj.zze());
                    if (zzkoVar.zzx && zzkoVar.zzas() && zzlaVar.zzm() == zzj) {
                        zzkoVar.zzF();
                    }
                    zzj.zza(zzj2, max, false);
                }
            }
            zzkoVar.zzL(true);
            if (zzkoVar.zzD.zze != i) {
                zzkoVar.zzP();
                zzkoVar.zzap();
                zzkoVar.zzi.zzj(i2);
                return;
            }
            return;
        }
    }

    private final void zzV() throws zzik {
        zzU();
        zzab(true);
    }

    /* JADX WARN: Code restructure failed: missing block: B:27:0x008f, code lost:
        if (r2.equals(r34.zzD.zzb) == false) goto L25;
     */
    /* JADX WARN: Removed duplicated region for block: B:43:0x00e4  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x00e9  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x00ee  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x00f3  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x00f8  */
    /* JADX WARN: Removed duplicated region for block: B:53:0x00fd  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x0104  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x012e  */
    /* JADX WARN: Removed duplicated region for block: B:67:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final void zzW(boolean r35, boolean r36, boolean r37, boolean r38) {
        /*
            Method dump skipped, instructions count: 311
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzko.zzW(boolean, boolean, boolean, boolean):void");
    }

    private final void zzX() {
        zzkx zzj = this.zzr.zzj();
        boolean z = false;
        if (zzj != null && zzj.zzg.zzi && this.zzG) {
            z = true;
        }
        this.zzH = z;
    }

    private final void zzY(long j) throws zzik {
        zzla zzlaVar;
        long zze;
        zzyq[] zzyqVarArr;
        zzkx zzj = this.zzr.zzj();
        if (zzj == null) {
            zze = MediaPeriodQueue.INITIAL_RENDERER_POSITION_OFFSET_US;
        } else {
            zze = zzj.zze();
        }
        long j2 = j + zze;
        this.zzQ = j2;
        this.zzo.zzf(j2);
        zzma[] zzmaVarArr = this.zzb;
        for (int i = 0; i < 2; i++) {
            zzmaVarArr[i].zzq(zzj, this.zzQ);
        }
        for (zzkx zzj2 = zzlaVar.zzj(); zzj2 != null; zzj2 = zzj2.zzg()) {
            for (zzyq zzyqVar : zzj2.zzi().zzc) {
            }
        }
    }

    private final void zzZ(zzbl zzblVar, zzbl zzblVar2) {
        if (zzblVar.zzo() && zzblVar2.zzo()) {
            return;
        }
        ArrayList arrayList = this.zzp;
        int size = arrayList.size() - 1;
        if (size < 0) {
            Collections.sort(arrayList);
            return;
        }
        Object obj = ((zzkk) arrayList.get(size)).zzb;
        String str = zzeu.zza;
        throw null;
    }

    private final void zzaa(long j) {
        long j2;
        if (this.zzD.zze == 3 && !zzav()) {
            j2 = 1000;
        } else {
            j2 = zza;
        }
        this.zzi.zzk(2, j + j2);
    }

    private final void zzab(boolean z) throws zzik {
        zzvb zzvbVar = this.zzr.zzj().zzg.zza;
        long zzB = zzB(zzvbVar, this.zzD.zzs, true, false);
        if (zzB != this.zzD.zzs) {
            zzln zzlnVar = this.zzD;
            this.zzD = zzE(zzvbVar, zzB, zzlnVar.zzc, zzlnVar.zzd, z, 5);
        }
    }

    private final void zzac(zzkm zzkmVar, boolean z) throws zzik {
        long longValue;
        zzvb zzq;
        boolean z2;
        long j;
        zzvb zzvbVar;
        boolean z3;
        long j2;
        long j3;
        zzln zzlnVar;
        int i;
        long j4;
        boolean z4;
        boolean z5;
        long zzA;
        boolean z6;
        zzln zzlnVar2;
        zzbl zzblVar;
        zzvb zzvbVar2;
        long j5;
        this.zzE.zza(z ? 1 : 0);
        if (this.zzB) {
            this.zzC = zzkmVar;
            return;
        }
        zzbl zzblVar2 = this.zzD.zza;
        int i2 = this.zzL;
        boolean z7 = this.zzM;
        zzbk zzbkVar = this.zzl;
        zzbj zzbjVar = this.zzm;
        Pair zzD = zzD(zzblVar2, zzkmVar, true, i2, z7, zzbkVar, zzbjVar);
        long j6 = -9223372036854775807L;
        boolean z8 = false;
        if (zzD == null) {
            Pair zzC = zzC(this.zzD.zza);
            zzq = (zzvb) zzC.first;
            longValue = ((Long) zzC.second).longValue();
            z2 = !this.zzD.zza.zzo();
        } else {
            Object obj = zzD.first;
            longValue = ((Long) zzD.second).longValue();
            int i3 = (zzkmVar.zzc > (-9223372036854775807L) ? 1 : (zzkmVar.zzc == (-9223372036854775807L) ? 0 : -1));
            if (i3 != 0) {
                j6 = longValue;
            }
            zzq = this.zzr.zzq(this.zzD.zza, obj, longValue);
            if (zzq.zzb()) {
                this.zzD.zza.zzn(zzq.zza, zzbjVar);
                if (zzbjVar.zze(zzq.zzb) == zzq.zzc) {
                    zzbjVar.zzh();
                }
                longValue = 0;
            } else if (i3 != 0) {
                z2 = false;
            }
            z2 = true;
        }
        try {
            if (this.zzD.zza.zzo()) {
                this.zzP = zzkmVar;
            } else if (zzD == null) {
                if (this.zzD.zze != 1) {
                    zzaf(4);
                }
                zzW(false, true, false, true);
            } else {
                try {
                    try {
                        if (zzq.equals(this.zzD.zzb)) {
                            try {
                                zzkx zzj = this.zzr.zzj();
                                if (zzj != null && zzj.zze && longValue != 0) {
                                    j3 = zzj.zza.zza(longValue, this.zzz);
                                } else {
                                    j3 = longValue;
                                }
                                zzvbVar = zzq;
                                try {
                                    if (zzeu.zzv(j3) == zzeu.zzv(this.zzD.zzs) && ((i = (zzlnVar = this.zzD).zze) == 2 || i == 3)) {
                                        longValue = zzlnVar.zzs;
                                        j4 = j6;
                                        z4 = z2;
                                        j5 = longValue;
                                        this.zzD = zzE(zzvbVar, j5, j4, j5, z4, 2);
                                    }
                                } catch (Throwable th) {
                                    th = th;
                                    j = j6;
                                    z3 = z2;
                                    j2 = longValue;
                                    this.zzD = zzE(zzvbVar, j2, j, j2, z3, 2);
                                    throw th;
                                }
                            } catch (Throwable th2) {
                                th = th2;
                                zzvbVar = zzq;
                            }
                        } else {
                            zzvbVar = zzq;
                            j3 = longValue;
                        }
                        zzaq(zzblVar, zzvbVar2, zzblVar, zzlnVar2.zzb, j6, true);
                        j4 = j6;
                        j5 = zzA;
                        z4 = z6;
                        this.zzD = zzE(zzvbVar, j5, j4, j5, z4, 2);
                    } catch (Throwable th3) {
                        th = th3;
                        zzvbVar = zzvbVar2;
                        j = j6;
                        j2 = zzA;
                        z3 = z6;
                        this.zzD = zzE(zzvbVar, j2, j, j2, z3, 2);
                        throw th;
                    }
                    zzlnVar2 = this.zzD;
                    zzblVar = zzlnVar2.zza;
                    zzvbVar2 = zzvbVar;
                } catch (Throwable th4) {
                    th = th4;
                }
                this.zzB = this.zzA;
                if (this.zzD.zze == 4) {
                    z5 = true;
                } else {
                    z5 = false;
                }
                zzA = zzA(zzvbVar, j3, z5);
                if (longValue != zzA) {
                    z8 = true;
                }
                z6 = z2 | z8;
            }
            j4 = j6;
            z4 = z2;
            zzvbVar = zzq;
            j5 = longValue;
            this.zzD = zzE(zzvbVar, j5, j4, j5, z4, 2);
        } catch (Throwable th5) {
            th = th5;
            j = j6;
            zzvbVar = zzq;
        }
    }

    private final void zzad(zzbb zzbbVar) {
        this.zzi.zzg(16);
        this.zzo.zzg(zzbbVar);
    }

    private final void zzae(boolean z, int i, boolean z2, int i2) throws zzik {
        this.zzE.zza(z2 ? 1 : 0);
        zzan(z, i, i2);
    }

    private final void zzaf(int i) {
        zzln zzlnVar = this.zzD;
        if (zzlnVar.zze != i) {
            if (i != 2) {
                this.zzV = -9223372036854775807L;
            }
            this.zzD = zzlnVar.zzf(i);
        }
    }

    private final void zzag(float f) throws zzik {
        this.zzZ = f;
        float zza2 = f * this.zzy.zza();
        int i = 0;
        while (true) {
            zzma[] zzmaVarArr = this.zzb;
            if (i < 2) {
                zzmaVarArr[i].zzx(zza2);
                i++;
            } else {
                return;
            }
        }
    }

    private final void zzah() throws zzik {
        zzkx zzj = this.zzr.zzj();
        if (zzj != null) {
            zzyy zzi = zzj.zzi();
            int i = 0;
            while (true) {
                zzma[] zzmaVarArr = this.zzb;
                if (i < 2) {
                    if (zzi.zzb(i)) {
                        zzmaVarArr[i].zzy();
                    }
                    i++;
                } else {
                    return;
                }
            }
        }
    }

    private final void zzai(boolean z, boolean z2) {
        boolean z3;
        if (z || !this.zzN) {
            z3 = true;
        } else {
            z3 = false;
        }
        zzW(z3, false, true, false);
        this.zzE.zza(z2 ? 1 : 0);
        this.zzg.zze(this.zzu);
        this.zzy.zzb(this.zzD.zzl, 1);
        zzaf(1);
    }

    private final void zzaj() throws zzik {
        this.zzo.zzi();
        int i = 0;
        while (true) {
            zzma[] zzmaVarArr = this.zzb;
            if (i < 2) {
                zzmaVarArr[i].zzA();
                i++;
            } else {
                return;
            }
        }
    }

    private final void zzak() {
        zzkx zzi = this.zzr.zzi();
        boolean z = true;
        if (!this.zzK && (zzi == null || !zzi.zza.zzp())) {
            z = false;
        }
        zzln zzlnVar = this.zzD;
        if (z != zzlnVar.zzg) {
            this.zzD = zzlnVar.zza(z);
        }
    }

    private final void zzal(zzvb zzvbVar, zzxe zzxeVar, zzyy zzyyVar) {
        long zze;
        long j;
        long j2;
        zzla zzlaVar = this.zzr;
        zzkx zzi = zzlaVar.zzi();
        zzi.getClass();
        if (zzi == zzlaVar.zzj()) {
            zze = this.zzQ;
            j = zzi.zze();
        } else {
            zze = this.zzQ - zzi.zze();
            j = zzi.zzg.zzb;
        }
        long j3 = zze - j;
        long zzz = zzz(zzi.zzc());
        if (zzaw(this.zzD.zza, zzi.zzg.zza)) {
            j2 = this.zzab.zzb();
        } else {
            j2 = -9223372036854775807L;
        }
        this.zzg.zzf(new zzkr(this.zzu, this.zzD.zza, zzvbVar, j3, zzz, this.zzo.zzc().zzb, this.zzD.zzl, this.zzI, j2, this.zzJ), zzxeVar, zzyyVar.zzc);
    }

    private final void zzam() throws zzik {
        zzln zzlnVar = this.zzD;
        zzan(zzlnVar.zzl, zzlnVar.zzn, zzlnVar.zzm);
    }

    private final void zzan(boolean z, int i, int i2) throws zzik {
        zzao(z, this.zzy.zzb(z, this.zzD.zze), i, i2);
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x000e  */
    /* JADX WARN: Removed duplicated region for block: B:11:0x0010  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0015  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0017  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0039  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x0053  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x005f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final void zzao(boolean r5, int r6, int r7, int r8) throws com.google.android.gms.internal.ads.zzik {
        /*
            r4 = this;
            r0 = -1
            r1 = 1
            r2 = 0
            if (r5 == 0) goto La
            if (r6 == r0) goto L9
            r5 = r1
            goto Lb
        L9:
            r6 = r0
        La:
            r5 = r2
        Lb:
            r3 = 2
            if (r6 != r0) goto L10
            r8 = r3
            goto L13
        L10:
            if (r8 != r3) goto L13
            r8 = r1
        L13:
            if (r6 != 0) goto L17
            r7 = r1
            goto L1a
        L17:
            if (r7 != r1) goto L1a
            r7 = r2
        L1a:
            com.google.android.gms.internal.ads.zzln r6 = r4.zzD
            boolean r0 = r6.zzl
            if (r0 != r5) goto L28
            int r0 = r6.zzn
            if (r0 != r7) goto L28
            int r0 = r6.zzm
            if (r0 == r8) goto L7b
        L28:
            com.google.android.gms.internal.ads.zzln r5 = r6.zzd(r5, r8, r7)
            r4.zzD = r5
            r4.zzar(r2, r2)
            com.google.android.gms.internal.ads.zzla r5 = r4.zzr
            com.google.android.gms.internal.ads.zzkx r6 = r5.zzj()
        L37:
            if (r6 == 0) goto L4d
            com.google.android.gms.internal.ads.zzyy r7 = r6.zzi()
            com.google.android.gms.internal.ads.zzyq[] r7 = r7.zzc
            int r8 = r7.length
            r0 = r2
        L41:
            if (r0 >= r8) goto L48
            r1 = r7[r0]
            int r0 = r0 + 1
            goto L41
        L48:
            com.google.android.gms.internal.ads.zzkx r6 = r6.zzg()
            goto L37
        L4d:
            boolean r6 = r4.zzav()
            if (r6 != 0) goto L5f
            r4.zzaj()
            r4.zzap()
            long r6 = r4.zzQ
            r5.zzu(r6)
            return
        L5f:
            com.google.android.gms.internal.ads.zzln r5 = r4.zzD
            int r5 = r5.zze
            r6 = 3
            if (r5 != r6) goto L74
            com.google.android.gms.internal.ads.zzii r5 = r4.zzo
            r5.zzh()
            r4.zzah()
            com.google.android.gms.internal.ads.zzdq r5 = r4.zzi
            r5.zzj(r3)
            return
        L74:
            if (r5 != r3) goto L7b
            com.google.android.gms.internal.ads.zzdq r5 = r4.zzi
            r5.zzj(r3)
        L7b:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzko.zzao(boolean, int, int, int):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:39:0x00b9 A[LOOP:0: B:32:0x00a9->B:39:0x00b9, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:44:0x00ce  */
    /* JADX WARN: Removed duplicated region for block: B:63:0x00c5 A[SYNTHETIC] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:41:0x00c6 -> B:32:0x00a9). Please submit an issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final void zzap() throws com.google.android.gms.internal.ads.zzik {
        /*
            Method dump skipped, instructions count: 371
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzko.zzap():void");
    }

    private final void zzaq(zzbl zzblVar, zzvb zzvbVar, zzbl zzblVar2, zzvb zzvbVar2, long j, boolean z) throws zzik {
        Object obj;
        zzbb zzbbVar;
        if (!zzaw(zzblVar, zzvbVar)) {
            if (zzvbVar.zzb()) {
                zzbbVar = zzbb.zza;
            } else {
                zzbbVar = this.zzD.zzo;
            }
            if (!this.zzo.zzc().equals(zzbbVar)) {
                zzad(zzbbVar);
                zzO(this.zzD.zzo, zzbbVar.zzb, false, false);
                return;
            }
            return;
        }
        Object obj2 = zzvbVar.zza;
        zzbj zzbjVar = this.zzm;
        int i = zzblVar.zzn(obj2, zzbjVar).zzc;
        zzbk zzbkVar = this.zzl;
        zzblVar.zze(i, zzbkVar, 0L);
        zzid zzidVar = this.zzab;
        zzaj zzajVar = zzbkVar.zzj;
        String str = zzeu.zza;
        zzidVar.zzd(zzajVar);
        if (j != -9223372036854775807L) {
            zzidVar.zze(zzw(zzblVar, obj2, j));
            return;
        }
        Object obj3 = zzbkVar.zzb;
        if (!zzblVar2.zzo()) {
            obj = zzblVar2.zze(zzblVar2.zzn(zzvbVar2.zza, zzbjVar).zzc, zzbkVar, 0L).zzb;
        } else {
            obj = null;
        }
        if (Objects.equals(obj, obj3) && !z) {
            return;
        }
        zzidVar.zze(-9223372036854775807L);
    }

    private final void zzar(boolean z, boolean z2) {
        this.zzI = z;
        long j = -9223372036854775807L;
        if (z && !z2) {
            j = SystemClock.elapsedRealtime();
        }
        this.zzJ = j;
    }

    private final boolean zzas() {
        if (!this.zzx) {
            return false;
        }
        zzma[] zzmaVarArr = this.zzb;
        for (int i = 0; i < 2; i++) {
            if (zzmaVarArr[i].zzG()) {
                return true;
            }
        }
        return false;
    }

    private final boolean zzat() {
        zzkx zzj = this.zzr.zzj();
        long j = zzj.zzg.zze;
        if (!zzj.zze) {
            return false;
        }
        if (j != -9223372036854775807L && this.zzD.zzs >= j && zzav()) {
            return false;
        }
        return true;
    }

    private static boolean zzau(zzln zzlnVar, zzbj zzbjVar) {
        zzvb zzvbVar = zzlnVar.zzb;
        zzbl zzblVar = zzlnVar.zza;
        if (!zzblVar.zzo() && !zzblVar.zzn(zzvbVar.zza, zzbjVar).zzf) {
            return false;
        }
        return true;
    }

    private final boolean zzav() {
        zzln zzlnVar = this.zzD;
        if (zzlnVar.zzl && zzlnVar.zzn == 0) {
            return true;
        }
        return false;
    }

    private final boolean zzaw(zzbl zzblVar, zzvb zzvbVar) {
        if (!zzvbVar.zzb() && !zzblVar.zzo()) {
            int i = zzblVar.zzn(zzvbVar.zza, this.zzm).zzc;
            zzbk zzbkVar = this.zzl;
            zzblVar.zze(i, zzbkVar, 0L);
            if (zzbkVar.zzb() && zzbkVar.zzi && zzbkVar.zzf != -9223372036854775807L) {
                return true;
            }
        }
        return false;
    }

    private static final boolean zzax(@Nullable zzkx zzkxVar) {
        if (zzkxVar != null) {
            try {
                if (!zzkxVar.zze) {
                    zzkxVar.zza.zzj();
                } else {
                    zzwt[] zzwtVarArr = zzkxVar.zzc;
                    for (int i = 0; i < 2; i++) {
                        zzwt zzwtVar = zzwtVarArr[i];
                        if (zzwtVar != null) {
                            zzwtVar.zzd();
                        }
                    }
                }
                if (zzkxVar.zzd() != Long.MIN_VALUE) {
                    return true;
                }
            } catch (IOException unused) {
            }
        }
        return false;
    }

    private static final void zzay(zzlr zzlrVar) throws zzik {
        zzlrVar.zzi();
        try {
            zzlrVar.zzc().zzu(zzlrVar.zza(), zzlrVar.zzg());
        } finally {
            zzlrVar.zzh(true);
        }
    }

    public static int zzd(zzbk zzbkVar, zzbj zzbjVar, int i, boolean z, Object obj, zzbl zzblVar, zzbl zzblVar2) {
        zzbk zzbkVar2 = zzbkVar;
        zzbl zzblVar3 = zzblVar;
        Object obj2 = zzblVar3.zze(zzblVar3.zzn(obj, zzbjVar).zzc, zzbkVar, 0L).zzb;
        for (int i2 = 0; i2 < zzblVar2.zzc(); i2++) {
            if (zzblVar2.zze(i2, zzbkVar, 0L).zzb.equals(obj2)) {
                return i2;
            }
        }
        int zza2 = zzblVar3.zza(obj);
        int zzb = zzblVar3.zzb();
        int i3 = -1;
        int i4 = 0;
        while (true) {
            if (i4 >= zzb || i3 != -1) {
                break;
            }
            zzbl zzblVar4 = zzblVar3;
            int zzi = zzblVar4.zzi(zza2, zzbjVar, zzbkVar2, i, z);
            if (zzi == -1) {
                i3 = -1;
                break;
            }
            i3 = zzblVar2.zza(zzblVar4.zzf(zzi));
            i4++;
            zzblVar3 = zzblVar4;
            zza2 = zzi;
            zzbkVar2 = zzbkVar;
        }
        if (i3 == -1) {
            return -1;
        }
        return zzblVar2.zzd(i3, zzbjVar, false).zzc;
    }

    public static /* synthetic */ zzkx zzf(zzko zzkoVar, zzky zzkyVar, long j) {
        zzzg zzk = zzkoVar.zzg.zzk();
        long j2 = zzkoVar.zzW.zzb;
        zzyy zzyyVar = zzkoVar.zzf;
        zzlm zzlmVar = zzkoVar.zzs;
        return new zzkx(zzkoVar.zzc, j, zzkoVar.zze, zzk, zzlmVar, zzkyVar, zzyyVar, -9223372036854775807L);
    }

    public static /* synthetic */ void zzg(zzko zzkoVar, zzlr zzlrVar) {
        try {
            zzay(zzlrVar);
        } catch (zzik e) {
            zzdx.zzd("ExoPlayerImplInternal", "Unexpected error delivering message on external thread.", e);
            throw new RuntimeException(e);
        }
    }

    private final long zzw(zzbl zzblVar, Object obj, long j) {
        long elapsedRealtime;
        int i = zzblVar.zzn(obj, this.zzm).zzc;
        zzbk zzbkVar = this.zzl;
        zzblVar.zze(i, zzbkVar, 0L);
        if (zzbkVar.zzf == -9223372036854775807L || !zzbkVar.zzb() || !zzbkVar.zzi) {
            return -9223372036854775807L;
        }
        long j2 = zzbkVar.zzg;
        String str = zzeu.zza;
        if (j2 == -9223372036854775807L) {
            elapsedRealtime = System.currentTimeMillis();
        } else {
            elapsedRealtime = j2 + SystemClock.elapsedRealtime();
        }
        return zzeu.zzs(elapsedRealtime - zzbkVar.zzf) - j;
    }

    private final long zzx(zzkx zzkxVar) {
        if (zzkxVar == null) {
            return 0L;
        }
        long zze = zzkxVar.zze();
        if (zzkxVar.zze) {
            int i = 0;
            while (true) {
                zzma[] zzmaVarArr = this.zzb;
                if (i >= 2) {
                    break;
                }
                if (zzmaVarArr[i].zzI(zzkxVar)) {
                    long zzd = zzmaVarArr[i].zzd(zzkxVar);
                    if (zzd == Long.MIN_VALUE) {
                        return Long.MIN_VALUE;
                    }
                    zze = Math.max(zzd, zze);
                }
                i++;
            }
        }
        return zze;
    }

    private final long zzy() {
        return zzz(this.zzD.zzq);
    }

    private final long zzz(long j) {
        zzkx zzi = this.zzr.zzi();
        if (zzi == null) {
            return 0L;
        }
        return Math.max(0L, j - (this.zzQ - zzi.zze()));
    }

    /* JADX WARN: Can't wrap try/catch for region: R(7:142|(3:143|144|145)|(3:360|361|(20:363|(1:639)(5:367|(2:369|370)(2:635|(1:637))|371|(1:373)|374)|375|(1:377)(1:634)|378|(1:633)(2:394|(2:396|(2:397|(3:399|(2:408|409)(2:405|406)|407)(16:410|411|(2:413|(1:415))|416|(15:506|(3:532|533|(11:535|(2:537|(2:538|(2:540|(1:542)(1:543))(3:544|545|(8:554|555|556|(8:562|(3:566|(3:568|(2:570|(2:574|575))(1:579)|577)|580)|581|(1:583)|584|585|(1:587)|588)|591|(1:593)|594|588))))(1:596)|419|(2:426|(2:427|(1:429)(2:430|(4:432|(3:434|(2:438|439)|440)|443|444))))|445|(4:(1:459)|460|(10:462|(2:464|(2:466|(8:470|471|(3:475|(1:477)|478)|479|(1:481)|482|(2:483|(3:485|(2:487|488)(1:490)|489))|492)))(1:494)|493|471|(4:473|475|(0)|478)|479|(0)|482|(3:483|(1:1)(0)|489)|492)(3:495|496|497)|446)|499|500|148|149|(3:151|(2:154|(2:156|157)(18:158|159|(2:161|(2:162|(3:164|(3:166|167|168)(8:170|171|172|173|(1:187)(1:177)|178|(1:186)(1:181)|(2:183|184)(1:185))|169)(2:188|189)))(1:303)|190|(4:198|(1:200)|201|(10:203|204|(2:206|(2:207|(3:209|(2:211|212)(1:214)|213)(3:215|216|(7:224|(1:226)(2:244|(1:246)(2:247|248))|227|(1:243)(1:231)|232|(1:242)|235))))|249|227|(1:229)|243|232|(1:234)(1:242)|235))|250|(2:252|(1:254)(1:(13:261|(7:263|(1:265)(1:281)|266|(1:280)(1:270)|271|(1:279)(1:275)|(1:278))|256|(1:258)|204|(0)|249|227|(0)|243|232|(0)(0)|235)(1:260)))|282|(2:284|(2:286|(4:288|289|(4:291|(4:293|(1:295)|296|297)|298|299)|300))(0))|204|(0)|249|227|(0)|243|232|(0)(0)|235))|153)))|508|509|(3:513|(3:515|(4:522|(1:529)(1:526)|527|528)|519)|531)|419|(4:421|423|426|(3:427|(0)(0)|429))|445|(9:448|450|452|454|456|(0)|460|(0)(0)|446)|505|499|500|148|149|(0))|418|419|(0)|445|(1:446)|505|499|500|148|149|(0))))(1:631))|632|416|(0)|418|419|(0)|445|(1:446)|505|499|500|148|149|(0)))|147|148|149|(0)) */
    /* JADX WARN: Code restructure failed: missing block: B:475:0x08e4, code lost:
        r0 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:521:0x09cf, code lost:
        if (r5 != false) goto L256;
     */
    /* JADX WARN: Code restructure failed: missing block: B:532:0x09fe, code lost:
        if (r6 == false) goto L289;
     */
    /* JADX WARN: Code restructure failed: missing block: B:634:0x0b92, code lost:
        if (r2 != null) goto L327;
     */
    /* JADX WARN: Code restructure failed: missing block: B:637:0x0b9a, code lost:
        r2 = r2.zzg();
     */
    /* JADX WARN: Code restructure failed: missing block: B:640:0x0ba9, code lost:
        zzP();
        r42.zzi.zzj(2);
     */
    /* JADX WARN: Code restructure failed: missing block: B:643:0x0bb7, code lost:
        r2.addSuppressed(r0);
        r0 = r42.zzU;
     */
    /* JADX WARN: Code restructure failed: missing block: B:646:0x0bc1, code lost:
        r2 = r42.zzr;
     */
    /* JADX WARN: Code restructure failed: missing block: B:647:0x0bcb, code lost:
        if (r2.zzj() != r2.zzn()) goto L342;
     */
    /* JADX WARN: Code restructure failed: missing block: B:649:0x0bd5, code lost:
        if (r2.zzj() != r2.zzn()) goto L344;
     */
    /* JADX WARN: Code restructure failed: missing block: B:650:0x0bd7, code lost:
        r2.zze();
     */
    /* JADX WARN: Code restructure failed: missing block: B:651:0x0bdb, code lost:
        r2 = r2.zzj();
        r2.getClass();
        zzR();
        r2 = r2.zzg;
        r3 = r2.zza;
        r3 = r2.zzb;
        r42.zzD = zzE(r3, r3, r2.zzc, r3, true, 0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:660:0x0c0b, code lost:
        com.google.android.gms.internal.ads.zzdx.zzg(r12, "Recoverable renderer error", r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:661:0x0c12, code lost:
        if (r42.zzU == null) goto L357;
     */
    /* JADX WARN: Code restructure failed: missing block: B:662:0x0c14, code lost:
        r42.zzU = r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:663:0x0c16, code lost:
        r2 = r42.zzi;
        r2.zzl(r2.zzc(25, r0));
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Not initialized variable reg: 17, insn: 0x08c2: MOVE  (r11 I:??[OBJECT, ARRAY]) = (r17 I:??[OBJECT, ARRAY]), block:B:466:0x08c2 */
    /* JADX WARN: Not initialized variable reg: 21, insn: 0x08c4: MOVE  (r12 I:??[OBJECT, ARRAY]) = (r21 I:??[OBJECT, ARRAY]), block:B:466:0x08c2 */
    /* JADX WARN: Removed duplicated region for block: B:273:0x0599 A[Catch: IOException -> 0x002b, zzub -> 0x002e, zzgh -> 0x0031, zzaz -> 0x0034, zzru -> 0x0037, RuntimeException -> 0x04a1, zzik -> 0x04a4, TRY_LEAVE, TryCatch #4 {zzik -> 0x04a4, blocks: (B:213:0x049b, B:221:0x04ba, B:223:0x04c0, B:224:0x04c5, B:228:0x04d0, B:230:0x04d4, B:232:0x04e5, B:234:0x04e9, B:236:0x04ed, B:238:0x04f1, B:240:0x04f7, B:242:0x04fd, B:244:0x0503, B:246:0x0509, B:248:0x0511, B:250:0x051b, B:251:0x0521, B:253:0x0525, B:255:0x052b, B:257:0x0533, B:259:0x053b, B:261:0x0558, B:262:0x055d, B:264:0x056a, B:266:0x0578, B:270:0x058d, B:363:0x0707, B:365:0x070d, B:367:0x0713, B:370:0x0718, B:371:0x0723, B:373:0x0727, B:377:0x074c, B:379:0x0752, B:381:0x075a, B:382:0x0762, B:383:0x0765, B:385:0x076e, B:433:0x084c, B:442:0x0867, B:452:0x089f, B:388:0x077a, B:390:0x077e, B:392:0x0784, B:394:0x078a, B:396:0x0794, B:399:0x079a, B:400:0x079d, B:402:0x07a6, B:404:0x07b8, B:406:0x07c1, B:408:0x07c9, B:413:0x07d5, B:415:0x080a, B:417:0x0810, B:419:0x0815, B:420:0x081d, B:422:0x0823, B:423:0x0826, B:424:0x082f, B:426:0x0833, B:428:0x0839, B:429:0x083e, B:432:0x084b, B:273:0x0599, B:283:0x05b6, B:288:0x05c7, B:292:0x05d9, B:297:0x061d, B:299:0x0624, B:301:0x0628, B:305:0x0638, B:307:0x063c, B:311:0x0643, B:313:0x0649, B:315:0x0666, B:318:0x066f, B:320:0x0674, B:322:0x067b, B:323:0x0683, B:325:0x0689, B:303:0x062e, B:328:0x069a, B:344:0x06ce, B:346:0x06d4, B:348:0x06d8, B:350:0x06dd, B:362:0x0704, B:353:0x06e6, B:355:0x06ec, B:359:0x06fa, B:361:0x0701, B:231:0x04e2, B:218:0x04a9, B:220:0x04af), top: B:669:0x0462 }] */
    /* JADX WARN: Removed duplicated region for block: B:365:0x070d A[Catch: IOException -> 0x002b, zzub -> 0x002e, zzgh -> 0x0031, zzaz -> 0x0034, zzru -> 0x0037, RuntimeException -> 0x04a1, zzik -> 0x04a4, TryCatch #4 {zzik -> 0x04a4, blocks: (B:213:0x049b, B:221:0x04ba, B:223:0x04c0, B:224:0x04c5, B:228:0x04d0, B:230:0x04d4, B:232:0x04e5, B:234:0x04e9, B:236:0x04ed, B:238:0x04f1, B:240:0x04f7, B:242:0x04fd, B:244:0x0503, B:246:0x0509, B:248:0x0511, B:250:0x051b, B:251:0x0521, B:253:0x0525, B:255:0x052b, B:257:0x0533, B:259:0x053b, B:261:0x0558, B:262:0x055d, B:264:0x056a, B:266:0x0578, B:270:0x058d, B:363:0x0707, B:365:0x070d, B:367:0x0713, B:370:0x0718, B:371:0x0723, B:373:0x0727, B:377:0x074c, B:379:0x0752, B:381:0x075a, B:382:0x0762, B:383:0x0765, B:385:0x076e, B:433:0x084c, B:442:0x0867, B:452:0x089f, B:388:0x077a, B:390:0x077e, B:392:0x0784, B:394:0x078a, B:396:0x0794, B:399:0x079a, B:400:0x079d, B:402:0x07a6, B:404:0x07b8, B:406:0x07c1, B:408:0x07c9, B:413:0x07d5, B:415:0x080a, B:417:0x0810, B:419:0x0815, B:420:0x081d, B:422:0x0823, B:423:0x0826, B:424:0x082f, B:426:0x0833, B:428:0x0839, B:429:0x083e, B:432:0x084b, B:273:0x0599, B:283:0x05b6, B:288:0x05c7, B:292:0x05d9, B:297:0x061d, B:299:0x0624, B:301:0x0628, B:305:0x0638, B:307:0x063c, B:311:0x0643, B:313:0x0649, B:315:0x0666, B:318:0x066f, B:320:0x0674, B:322:0x067b, B:323:0x0683, B:325:0x0689, B:303:0x062e, B:328:0x069a, B:344:0x06ce, B:346:0x06d4, B:348:0x06d8, B:350:0x06dd, B:362:0x0704, B:353:0x06e6, B:355:0x06ec, B:359:0x06fa, B:361:0x0701, B:231:0x04e2, B:218:0x04a9, B:220:0x04af), top: B:669:0x0462 }] */
    /* JADX WARN: Removed duplicated region for block: B:373:0x0727 A[Catch: IOException -> 0x002b, zzub -> 0x002e, zzgh -> 0x0031, zzaz -> 0x0034, zzru -> 0x0037, RuntimeException -> 0x04a1, zzik -> 0x04a4, LOOP:11: B:371:0x0723->B:373:0x0727, LOOP_END, TryCatch #4 {zzik -> 0x04a4, blocks: (B:213:0x049b, B:221:0x04ba, B:223:0x04c0, B:224:0x04c5, B:228:0x04d0, B:230:0x04d4, B:232:0x04e5, B:234:0x04e9, B:236:0x04ed, B:238:0x04f1, B:240:0x04f7, B:242:0x04fd, B:244:0x0503, B:246:0x0509, B:248:0x0511, B:250:0x051b, B:251:0x0521, B:253:0x0525, B:255:0x052b, B:257:0x0533, B:259:0x053b, B:261:0x0558, B:262:0x055d, B:264:0x056a, B:266:0x0578, B:270:0x058d, B:363:0x0707, B:365:0x070d, B:367:0x0713, B:370:0x0718, B:371:0x0723, B:373:0x0727, B:377:0x074c, B:379:0x0752, B:381:0x075a, B:382:0x0762, B:383:0x0765, B:385:0x076e, B:433:0x084c, B:442:0x0867, B:452:0x089f, B:388:0x077a, B:390:0x077e, B:392:0x0784, B:394:0x078a, B:396:0x0794, B:399:0x079a, B:400:0x079d, B:402:0x07a6, B:404:0x07b8, B:406:0x07c1, B:408:0x07c9, B:413:0x07d5, B:415:0x080a, B:417:0x0810, B:419:0x0815, B:420:0x081d, B:422:0x0823, B:423:0x0826, B:424:0x082f, B:426:0x0833, B:428:0x0839, B:429:0x083e, B:432:0x084b, B:273:0x0599, B:283:0x05b6, B:288:0x05c7, B:292:0x05d9, B:297:0x061d, B:299:0x0624, B:301:0x0628, B:305:0x0638, B:307:0x063c, B:311:0x0643, B:313:0x0649, B:315:0x0666, B:318:0x066f, B:320:0x0674, B:322:0x067b, B:323:0x0683, B:325:0x0689, B:303:0x062e, B:328:0x069a, B:344:0x06ce, B:346:0x06d4, B:348:0x06d8, B:350:0x06dd, B:362:0x0704, B:353:0x06e6, B:355:0x06ec, B:359:0x06fa, B:361:0x0701, B:231:0x04e2, B:218:0x04a9, B:220:0x04af), top: B:669:0x0462 }] */
    /* JADX WARN: Removed duplicated region for block: B:388:0x077a A[Catch: IOException -> 0x002b, zzub -> 0x002e, zzgh -> 0x0031, zzaz -> 0x0034, zzru -> 0x0037, RuntimeException -> 0x04a1, zzik -> 0x04a4, TryCatch #4 {zzik -> 0x04a4, blocks: (B:213:0x049b, B:221:0x04ba, B:223:0x04c0, B:224:0x04c5, B:228:0x04d0, B:230:0x04d4, B:232:0x04e5, B:234:0x04e9, B:236:0x04ed, B:238:0x04f1, B:240:0x04f7, B:242:0x04fd, B:244:0x0503, B:246:0x0509, B:248:0x0511, B:250:0x051b, B:251:0x0521, B:253:0x0525, B:255:0x052b, B:257:0x0533, B:259:0x053b, B:261:0x0558, B:262:0x055d, B:264:0x056a, B:266:0x0578, B:270:0x058d, B:363:0x0707, B:365:0x070d, B:367:0x0713, B:370:0x0718, B:371:0x0723, B:373:0x0727, B:377:0x074c, B:379:0x0752, B:381:0x075a, B:382:0x0762, B:383:0x0765, B:385:0x076e, B:433:0x084c, B:442:0x0867, B:452:0x089f, B:388:0x077a, B:390:0x077e, B:392:0x0784, B:394:0x078a, B:396:0x0794, B:399:0x079a, B:400:0x079d, B:402:0x07a6, B:404:0x07b8, B:406:0x07c1, B:408:0x07c9, B:413:0x07d5, B:415:0x080a, B:417:0x0810, B:419:0x0815, B:420:0x081d, B:422:0x0823, B:423:0x0826, B:424:0x082f, B:426:0x0833, B:428:0x0839, B:429:0x083e, B:432:0x084b, B:273:0x0599, B:283:0x05b6, B:288:0x05c7, B:292:0x05d9, B:297:0x061d, B:299:0x0624, B:301:0x0628, B:305:0x0638, B:307:0x063c, B:311:0x0643, B:313:0x0649, B:315:0x0666, B:318:0x066f, B:320:0x0674, B:322:0x067b, B:323:0x0683, B:325:0x0689, B:303:0x062e, B:328:0x069a, B:344:0x06ce, B:346:0x06d4, B:348:0x06d8, B:350:0x06dd, B:362:0x0704, B:353:0x06e6, B:355:0x06ec, B:359:0x06fa, B:361:0x0701, B:231:0x04e2, B:218:0x04a9, B:220:0x04af), top: B:669:0x0462 }] */
    /* JADX WARN: Removed duplicated region for block: B:399:0x079a A[Catch: IOException -> 0x002b, zzub -> 0x002e, zzgh -> 0x0031, zzaz -> 0x0034, zzru -> 0x0037, RuntimeException -> 0x04a1, zzik -> 0x04a4, TryCatch #4 {zzik -> 0x04a4, blocks: (B:213:0x049b, B:221:0x04ba, B:223:0x04c0, B:224:0x04c5, B:228:0x04d0, B:230:0x04d4, B:232:0x04e5, B:234:0x04e9, B:236:0x04ed, B:238:0x04f1, B:240:0x04f7, B:242:0x04fd, B:244:0x0503, B:246:0x0509, B:248:0x0511, B:250:0x051b, B:251:0x0521, B:253:0x0525, B:255:0x052b, B:257:0x0533, B:259:0x053b, B:261:0x0558, B:262:0x055d, B:264:0x056a, B:266:0x0578, B:270:0x058d, B:363:0x0707, B:365:0x070d, B:367:0x0713, B:370:0x0718, B:371:0x0723, B:373:0x0727, B:377:0x074c, B:379:0x0752, B:381:0x075a, B:382:0x0762, B:383:0x0765, B:385:0x076e, B:433:0x084c, B:442:0x0867, B:452:0x089f, B:388:0x077a, B:390:0x077e, B:392:0x0784, B:394:0x078a, B:396:0x0794, B:399:0x079a, B:400:0x079d, B:402:0x07a6, B:404:0x07b8, B:406:0x07c1, B:408:0x07c9, B:413:0x07d5, B:415:0x080a, B:417:0x0810, B:419:0x0815, B:420:0x081d, B:422:0x0823, B:423:0x0826, B:424:0x082f, B:426:0x0833, B:428:0x0839, B:429:0x083e, B:432:0x084b, B:273:0x0599, B:283:0x05b6, B:288:0x05c7, B:292:0x05d9, B:297:0x061d, B:299:0x0624, B:301:0x0628, B:305:0x0638, B:307:0x063c, B:311:0x0643, B:313:0x0649, B:315:0x0666, B:318:0x066f, B:320:0x0674, B:322:0x067b, B:323:0x0683, B:325:0x0689, B:303:0x062e, B:328:0x069a, B:344:0x06ce, B:346:0x06d4, B:348:0x06d8, B:350:0x06dd, B:362:0x0704, B:353:0x06e6, B:355:0x06ec, B:359:0x06fa, B:361:0x0701, B:231:0x04e2, B:218:0x04a9, B:220:0x04af), top: B:669:0x0462 }] */
    /* JADX WARN: Removed duplicated region for block: B:402:0x07a6 A[Catch: IOException -> 0x002b, zzub -> 0x002e, zzgh -> 0x0031, zzaz -> 0x0034, zzru -> 0x0037, RuntimeException -> 0x04a1, zzik -> 0x04a4, TryCatch #4 {zzik -> 0x04a4, blocks: (B:213:0x049b, B:221:0x04ba, B:223:0x04c0, B:224:0x04c5, B:228:0x04d0, B:230:0x04d4, B:232:0x04e5, B:234:0x04e9, B:236:0x04ed, B:238:0x04f1, B:240:0x04f7, B:242:0x04fd, B:244:0x0503, B:246:0x0509, B:248:0x0511, B:250:0x051b, B:251:0x0521, B:253:0x0525, B:255:0x052b, B:257:0x0533, B:259:0x053b, B:261:0x0558, B:262:0x055d, B:264:0x056a, B:266:0x0578, B:270:0x058d, B:363:0x0707, B:365:0x070d, B:367:0x0713, B:370:0x0718, B:371:0x0723, B:373:0x0727, B:377:0x074c, B:379:0x0752, B:381:0x075a, B:382:0x0762, B:383:0x0765, B:385:0x076e, B:433:0x084c, B:442:0x0867, B:452:0x089f, B:388:0x077a, B:390:0x077e, B:392:0x0784, B:394:0x078a, B:396:0x0794, B:399:0x079a, B:400:0x079d, B:402:0x07a6, B:404:0x07b8, B:406:0x07c1, B:408:0x07c9, B:413:0x07d5, B:415:0x080a, B:417:0x0810, B:419:0x0815, B:420:0x081d, B:422:0x0823, B:423:0x0826, B:424:0x082f, B:426:0x0833, B:428:0x0839, B:429:0x083e, B:432:0x084b, B:273:0x0599, B:283:0x05b6, B:288:0x05c7, B:292:0x05d9, B:297:0x061d, B:299:0x0624, B:301:0x0628, B:305:0x0638, B:307:0x063c, B:311:0x0643, B:313:0x0649, B:315:0x0666, B:318:0x066f, B:320:0x0674, B:322:0x067b, B:323:0x0683, B:325:0x0689, B:303:0x062e, B:328:0x069a, B:344:0x06ce, B:346:0x06d4, B:348:0x06d8, B:350:0x06dd, B:362:0x0704, B:353:0x06e6, B:355:0x06ec, B:359:0x06fa, B:361:0x0701, B:231:0x04e2, B:218:0x04a9, B:220:0x04af), top: B:669:0x0462 }] */
    /* JADX WARN: Removed duplicated region for block: B:419:0x0815 A[Catch: IOException -> 0x002b, zzub -> 0x002e, zzgh -> 0x0031, zzaz -> 0x0034, zzru -> 0x0037, RuntimeException -> 0x04a1, zzik -> 0x04a4, LOOP:14: B:418:0x0813->B:419:0x0815, LOOP_END, TryCatch #4 {zzik -> 0x04a4, blocks: (B:213:0x049b, B:221:0x04ba, B:223:0x04c0, B:224:0x04c5, B:228:0x04d0, B:230:0x04d4, B:232:0x04e5, B:234:0x04e9, B:236:0x04ed, B:238:0x04f1, B:240:0x04f7, B:242:0x04fd, B:244:0x0503, B:246:0x0509, B:248:0x0511, B:250:0x051b, B:251:0x0521, B:253:0x0525, B:255:0x052b, B:257:0x0533, B:259:0x053b, B:261:0x0558, B:262:0x055d, B:264:0x056a, B:266:0x0578, B:270:0x058d, B:363:0x0707, B:365:0x070d, B:367:0x0713, B:370:0x0718, B:371:0x0723, B:373:0x0727, B:377:0x074c, B:379:0x0752, B:381:0x075a, B:382:0x0762, B:383:0x0765, B:385:0x076e, B:433:0x084c, B:442:0x0867, B:452:0x089f, B:388:0x077a, B:390:0x077e, B:392:0x0784, B:394:0x078a, B:396:0x0794, B:399:0x079a, B:400:0x079d, B:402:0x07a6, B:404:0x07b8, B:406:0x07c1, B:408:0x07c9, B:413:0x07d5, B:415:0x080a, B:417:0x0810, B:419:0x0815, B:420:0x081d, B:422:0x0823, B:423:0x0826, B:424:0x082f, B:426:0x0833, B:428:0x0839, B:429:0x083e, B:432:0x084b, B:273:0x0599, B:283:0x05b6, B:288:0x05c7, B:292:0x05d9, B:297:0x061d, B:299:0x0624, B:301:0x0628, B:305:0x0638, B:307:0x063c, B:311:0x0643, B:313:0x0649, B:315:0x0666, B:318:0x066f, B:320:0x0674, B:322:0x067b, B:323:0x0683, B:325:0x0689, B:303:0x062e, B:328:0x069a, B:344:0x06ce, B:346:0x06d4, B:348:0x06d8, B:350:0x06dd, B:362:0x0704, B:353:0x06e6, B:355:0x06ec, B:359:0x06fa, B:361:0x0701, B:231:0x04e2, B:218:0x04a9, B:220:0x04af), top: B:669:0x0462 }] */
    /* JADX WARN: Removed duplicated region for block: B:422:0x0823 A[Catch: IOException -> 0x002b, zzub -> 0x002e, zzgh -> 0x0031, zzaz -> 0x0034, zzru -> 0x0037, RuntimeException -> 0x04a1, zzik -> 0x04a4, TryCatch #4 {zzik -> 0x04a4, blocks: (B:213:0x049b, B:221:0x04ba, B:223:0x04c0, B:224:0x04c5, B:228:0x04d0, B:230:0x04d4, B:232:0x04e5, B:234:0x04e9, B:236:0x04ed, B:238:0x04f1, B:240:0x04f7, B:242:0x04fd, B:244:0x0503, B:246:0x0509, B:248:0x0511, B:250:0x051b, B:251:0x0521, B:253:0x0525, B:255:0x052b, B:257:0x0533, B:259:0x053b, B:261:0x0558, B:262:0x055d, B:264:0x056a, B:266:0x0578, B:270:0x058d, B:363:0x0707, B:365:0x070d, B:367:0x0713, B:370:0x0718, B:371:0x0723, B:373:0x0727, B:377:0x074c, B:379:0x0752, B:381:0x075a, B:382:0x0762, B:383:0x0765, B:385:0x076e, B:433:0x084c, B:442:0x0867, B:452:0x089f, B:388:0x077a, B:390:0x077e, B:392:0x0784, B:394:0x078a, B:396:0x0794, B:399:0x079a, B:400:0x079d, B:402:0x07a6, B:404:0x07b8, B:406:0x07c1, B:408:0x07c9, B:413:0x07d5, B:415:0x080a, B:417:0x0810, B:419:0x0815, B:420:0x081d, B:422:0x0823, B:423:0x0826, B:424:0x082f, B:426:0x0833, B:428:0x0839, B:429:0x083e, B:432:0x084b, B:273:0x0599, B:283:0x05b6, B:288:0x05c7, B:292:0x05d9, B:297:0x061d, B:299:0x0624, B:301:0x0628, B:305:0x0638, B:307:0x063c, B:311:0x0643, B:313:0x0649, B:315:0x0666, B:318:0x066f, B:320:0x0674, B:322:0x067b, B:323:0x0683, B:325:0x0689, B:303:0x062e, B:328:0x069a, B:344:0x06ce, B:346:0x06d4, B:348:0x06d8, B:350:0x06dd, B:362:0x0704, B:353:0x06e6, B:355:0x06ec, B:359:0x06fa, B:361:0x0701, B:231:0x04e2, B:218:0x04a9, B:220:0x04af), top: B:669:0x0462 }] */
    /* JADX WARN: Removed duplicated region for block: B:426:0x0833 A[Catch: IOException -> 0x002b, zzub -> 0x002e, zzgh -> 0x0031, zzaz -> 0x0034, zzru -> 0x0037, RuntimeException -> 0x04a1, zzik -> 0x04a4, TryCatch #4 {zzik -> 0x04a4, blocks: (B:213:0x049b, B:221:0x04ba, B:223:0x04c0, B:224:0x04c5, B:228:0x04d0, B:230:0x04d4, B:232:0x04e5, B:234:0x04e9, B:236:0x04ed, B:238:0x04f1, B:240:0x04f7, B:242:0x04fd, B:244:0x0503, B:246:0x0509, B:248:0x0511, B:250:0x051b, B:251:0x0521, B:253:0x0525, B:255:0x052b, B:257:0x0533, B:259:0x053b, B:261:0x0558, B:262:0x055d, B:264:0x056a, B:266:0x0578, B:270:0x058d, B:363:0x0707, B:365:0x070d, B:367:0x0713, B:370:0x0718, B:371:0x0723, B:373:0x0727, B:377:0x074c, B:379:0x0752, B:381:0x075a, B:382:0x0762, B:383:0x0765, B:385:0x076e, B:433:0x084c, B:442:0x0867, B:452:0x089f, B:388:0x077a, B:390:0x077e, B:392:0x0784, B:394:0x078a, B:396:0x0794, B:399:0x079a, B:400:0x079d, B:402:0x07a6, B:404:0x07b8, B:406:0x07c1, B:408:0x07c9, B:413:0x07d5, B:415:0x080a, B:417:0x0810, B:419:0x0815, B:420:0x081d, B:422:0x0823, B:423:0x0826, B:424:0x082f, B:426:0x0833, B:428:0x0839, B:429:0x083e, B:432:0x084b, B:273:0x0599, B:283:0x05b6, B:288:0x05c7, B:292:0x05d9, B:297:0x061d, B:299:0x0624, B:301:0x0628, B:305:0x0638, B:307:0x063c, B:311:0x0643, B:313:0x0649, B:315:0x0666, B:318:0x066f, B:320:0x0674, B:322:0x067b, B:323:0x0683, B:325:0x0689, B:303:0x062e, B:328:0x069a, B:344:0x06ce, B:346:0x06d4, B:348:0x06d8, B:350:0x06dd, B:362:0x0704, B:353:0x06e6, B:355:0x06ec, B:359:0x06fa, B:361:0x0701, B:231:0x04e2, B:218:0x04a9, B:220:0x04af), top: B:669:0x0462 }] */
    /* JADX WARN: Removed duplicated region for block: B:436:0x0857  */
    /* JADX WARN: Removed duplicated region for block: B:545:0x0a37  */
    /* JADX WARN: Removed duplicated region for block: B:571:0x0a96 A[Catch: IOException -> 0x002b, zzub -> 0x002e, zzgh -> 0x0031, zzaz -> 0x0034, zzru -> 0x0037, RuntimeException -> 0x08be, zzik -> 0x08c1, TryCatch #29 {zzik -> 0x08c1, RuntimeException -> 0x08be, blocks: (B:474:0x08db, B:457:0x08ad, B:459:0x08b4, B:467:0x08c8, B:473:0x08d8, B:479:0x08f9, B:481:0x08ff, B:485:0x0907, B:487:0x090f, B:489:0x0913, B:490:0x091e, B:492:0x0924, B:543:0x0a31, B:546:0x0a38, B:548:0x0a3c, B:550:0x0a44, B:551:0x0a47, B:552:0x0a4a, B:554:0x0a50, B:556:0x0a59, B:558:0x0a63, B:560:0x0a69, B:562:0x0a6f, B:569:0x0a90, B:571:0x0a96, B:575:0x0aa0, B:585:0x0ab8, B:582:0x0ab1, B:584:0x0ab5, B:563:0x0a76, B:566:0x0a84, B:567:0x0a8b, B:568:0x0a8c, B:493:0x092d, B:495:0x0933, B:497:0x0937, B:522:0x09d1, B:524:0x09df, B:500:0x0941, B:502:0x0945, B:504:0x0957, B:506:0x0962, B:508:0x096c, B:512:0x0975, B:514:0x097f, B:520:0x098a, B:525:0x09ec, B:527:0x09f3, B:529:0x09f7, B:533:0x0a00, B:535:0x0a0f, B:537:0x0a15, B:539:0x0a1f, B:540:0x0a24, B:541:0x0a29, B:542:0x0a2e, B:478:0x08ee, B:588:0x0ac4, B:592:0x0acf), top: B:677:0x0012 }] */
    /* JADX WARN: Removed duplicated region for block: B:577:0x0aa9 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:578:0x0aaa A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:596:0x0ae0  */
    /* JADX WARN: Removed duplicated region for block: B:606:0x0b1c  */
    /* JADX WARN: Removed duplicated region for block: B:610:0x0b26  */
    /* JADX WARN: Removed duplicated region for block: B:615:0x0b39  */
    /* JADX WARN: Removed duplicated region for block: B:622:0x0b52  */
    /* JADX WARN: Removed duplicated region for block: B:634:0x0b92 A[LOOP:8: B:634:0x0b92->B:637:0x0b9a, LOOP_START, PHI: r2 
      PHI: (r2v33 com.google.android.gms.internal.ads.zzkx) = (r2v31 com.google.android.gms.internal.ads.zzkx), (r2v34 com.google.android.gms.internal.ads.zzkx) binds: [B:632:0x0b8f, B:637:0x0b9a] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:640:0x0ba9  */
    /* JADX WARN: Removed duplicated region for block: B:643:0x0bb7  */
    /* JADX WARN: Removed duplicated region for block: B:646:0x0bc1  */
    /* JADX WARN: Removed duplicated region for block: B:654:0x0bfd  */
    /* JADX WARN: Removed duplicated region for block: B:703:0x0747 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:712:0x0849 A[SYNTHETIC] */
    @Override // android.os.Handler.Callback
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean handleMessage(android.os.Message r43) {
        /*
            Method dump skipped, instructions count: 3206
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzko.handleMessage(android.os.Message):boolean");
    }

    @Override // com.google.android.gms.internal.ads.zzhx
    public final void zza(int i) {
        this.zzi.zzd(33, i, 0).zza();
    }

    @Override // com.google.android.gms.internal.ads.zzhx
    public final void zzb(float f) {
        this.zzi.zzj(34);
    }

    @Override // com.google.android.gms.internal.ads.zzih
    public final void zzc(zzbb zzbbVar) {
        this.zzi.zzc(16, zzbbVar).zza();
    }

    @Override // com.google.android.gms.internal.ads.zzabi
    public final void zzcT(long j, long j2, zzz zzzVar, @Nullable MediaFormat mediaFormat) {
        if (this.zzB) {
            this.zzi.zzb(37).zza();
        }
    }

    public final Looper zze() {
        return this.zzk;
    }

    @Override // com.google.android.gms.internal.ads.zzwu
    public final /* bridge */ /* synthetic */ void zzi(zzwv zzwvVar) {
        this.zzi.zzc(9, (zzuz) zzwvVar).zza();
    }

    @Override // com.google.android.gms.internal.ads.zzll
    public final void zzj() {
        zzdq zzdqVar = this.zzi;
        zzdqVar.zzg(2);
        zzdqVar.zzj(22);
    }

    @Override // com.google.android.gms.internal.ads.zzuy
    public final void zzk(zzuz zzuzVar) {
        this.zzi.zzc(8, zzuzVar).zza();
    }

    @Override // com.google.android.gms.internal.ads.zzyw
    public final void zzl() {
        this.zzi.zzj(10);
    }

    public final void zzm() {
        this.zzi.zzb(29).zza();
    }

    public final void zzn(zzbl zzblVar, int i, long j) {
        this.zzi.zzc(3, new zzkm(zzblVar, i, j)).zza();
    }

    @Override // com.google.android.gms.internal.ads.zzlp
    public final void zzo(zzlr zzlrVar) {
        if (!this.zzF && this.zzk.getThread().isAlive()) {
            this.zzi.zzc(14, zzlrVar).zza();
            return;
        }
        zzdx.zzf("ExoPlayerImplInternal", "Ignoring messages sent after release.");
        zzlrVar.zzh(false);
    }

    public final void zzp(zze zzeVar, boolean z) {
        this.zzi.zze(31, 0, 0, zzeVar).zza();
    }

    public final void zzq(boolean z, int i, int i2) {
        this.zzi.zzd(1, z ? 1 : 0, (i2 << 4) | 1).zza();
    }

    public final void zzr(float f) {
        this.zzi.zzc(32, Float.valueOf(f)).zza();
    }

    public final void zzs() {
        this.zzi.zzb(6).zza();
    }

    public final boolean zzt() {
        if (this.zzF || !this.zzk.getThread().isAlive()) {
            return true;
        }
        this.zzF = true;
        zzdj zzdjVar = new zzdj(this.zzq);
        this.zzi.zzc(7, zzdjVar).zza();
        return zzdjVar.zzc(this.zzt);
    }

    public final boolean zzu(@Nullable Object obj, long j) {
        if (!this.zzF && this.zzk.getThread().isAlive()) {
            zzdj zzdjVar = new zzdj(this.zzq);
            this.zzi.zzc(30, new Pair(obj, zzdjVar)).zza();
            if (j != -9223372036854775807L) {
                return zzdjVar.zzc(j);
            }
            return true;
        }
        return true;
    }

    public final void zzv(List list, int i, long j, zzww zzwwVar) {
        this.zzi.zzc(17, new zzki(list, zzwwVar, i, j, null)).zza();
    }
}
