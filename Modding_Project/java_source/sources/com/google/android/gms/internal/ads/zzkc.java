package com.google.android.gms.internal.ads;

import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.SurfaceTexture;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.util.Pair;
import android.view.Surface;
import androidx.annotation.Nullable;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Locale;
import java.util.concurrent.CopyOnWriteArraySet;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzkc extends zzg implements zziv {
    public static final /* synthetic */ int zzd = 0;
    private final zzdf zzA;
    private int zzB;
    private int zzC;
    private boolean zzD;
    private zzmd zzE;
    private zziu zzF;
    private zzbd zzG;
    private zzat zzH;
    @Nullable
    private Object zzI;
    @Nullable
    private Surface zzJ;
    private int zzK;
    private zzel zzL;
    private zze zzM;
    private float zzN;
    private boolean zzO;
    private boolean zzP;
    private boolean zzQ;
    private int zzR;
    private zzat zzS;
    private zzln zzT;
    private int zzU;
    private long zzV;
    private final zzjg zzW;
    private zzww zzX;
    final zzyy zzb;
    final zzbd zzc;
    private final zzdj zze = new zzdj(zzdg.zza);
    private final Context zzf;
    private final zzbh zzg;
    private final zzlv[] zzh;
    private final zzlv[] zzi;
    private final zzyx zzj;
    private final zzdq zzk;
    private final zzko zzl;
    private final zzdw zzm;
    private final CopyOnWriteArraySet zzn;
    private final zzbj zzo;
    private final List zzp;
    private final boolean zzq;
    private final zzmj zzr;
    private final Looper zzs;
    private final zzzf zzt;
    private final zzdg zzu;
    private final zzjy zzv;
    private final zzjz zzw;
    private final zzmh zzx;
    private final zzmi zzy;
    private final long zzz;

    static {
        zzaq.zzb("media3.exoplayer");
    }

    @SuppressLint({"HandlerLeak"})
    public zzkc(zzit zzitVar, @Nullable zzbh zzbhVar) {
        try {
            zzdx.zze("ExoPlayerImpl", "Init " + Integer.toHexString(System.identityHashCode(this)) + " [AndroidXMedia3/1.6.1] [" + zzeu.zza + "]");
            this.zzf = zzitVar.zza.getApplicationContext();
            this.zzr = (zzmj) zzitVar.zzh.apply(zzitVar.zzb);
            this.zzR = zzitVar.zzj;
            this.zzM = zzitVar.zzk;
            this.zzK = zzitVar.zzl;
            this.zzO = false;
            this.zzz = zzitVar.zzp;
            zzjy zzjyVar = new zzjy(this, null);
            this.zzv = zzjyVar;
            this.zzw = new zzjz(null);
            zzlv[] zzac = zzcej.zzac(((zzim) zzitVar.zzc).zza.zza, new Handler(zzitVar.zzi), zzjyVar, zzjyVar, zzjyVar, zzjyVar);
            this.zzh = zzac;
            int length = zzac.length;
            this.zzi = new zzlv[2];
            int i = 0;
            while (true) {
                zzlv[] zzlvVarArr = this.zzi;
                int length2 = zzlvVarArr.length;
                if (i >= 2) {
                    break;
                }
                zzlv zzlvVar = this.zzh[i];
                zzlvVarArr[i] = null;
                i++;
            }
            zzyx zzyxVar = (zzyx) zzitVar.zze.zza();
            this.zzj = zzyxVar;
            zzit.zza(((zzin) zzitVar.zzd).zza);
            zzzj zzh = zzzj.zzh(((zziq) zzitVar.zzg).zza);
            this.zzt = zzh;
            this.zzq = zzitVar.zzm;
            this.zzE = zzitVar.zzn;
            Looper looper = zzitVar.zzi;
            this.zzs = looper;
            zzdg zzdgVar = zzitVar.zzb;
            this.zzu = zzdgVar;
            this.zzg = zzbhVar;
            zzdw zzdwVar = new zzdw(looper, zzdgVar, new zzdu(this) { // from class: com.google.android.gms.internal.ads.zzjf
                @Override // com.google.android.gms.internal.ads.zzdu
                public final void zza(Object obj, zzv zzvVar) {
                    zzbe zzbeVar = (zzbe) obj;
                }
            });
            this.zzm = zzdwVar;
            CopyOnWriteArraySet copyOnWriteArraySet = new CopyOnWriteArraySet();
            this.zzn = copyOnWriteArraySet;
            this.zzp = new ArrayList();
            this.zzX = new zzww(0);
            this.zzF = zziu.zza;
            int length3 = this.zzh.length;
            zzyy zzyyVar = new zzyy(new zzlz[2], new zzyq[2], zzbt.zza, null);
            this.zzb = zzyyVar;
            this.zzo = new zzbj();
            zzbc zzbcVar = new zzbc();
            zzbcVar.zzc(1, 2, 3, 13, 14, 15, 16, 17, 18, 19, 31, 20, 30, 21, 35, 22, 24, 27, 28, 32);
            zzyxVar.zzn();
            zzbcVar.zzd(29, true);
            zzbcVar.zzd(23, false);
            zzbcVar.zzd(25, false);
            zzbcVar.zzd(33, false);
            zzbcVar.zzd(26, false);
            zzbcVar.zzd(34, false);
            zzbd zze = zzbcVar.zze();
            this.zzc = zze;
            zzbc zzbcVar2 = new zzbc();
            zzbcVar2.zzb(zze);
            zzbcVar2.zza(4);
            zzbcVar2.zza(10);
            this.zzG = zzbcVar2.zze();
            this.zzk = zzdgVar.zzd(looper, null);
            zzjg zzjgVar = new zzjg(this);
            this.zzW = zzjgVar;
            this.zzT = zzln.zzh(zzyyVar);
            this.zzr.zzT(zzbhVar, looper);
            final zzpc zzpcVar = new zzpc(zzitVar.zzs);
            zzko zzkoVar = new zzko(this.zzf, this.zzh, this.zzi, zzyxVar, zzyyVar, (zzks) zzitVar.zzf.zza(), zzh, 0, false, this.zzr, this.zzE, zzitVar.zzt, zzitVar.zzo, false, false, looper, zzdgVar, zzjgVar, zzpcVar, null, this.zzF, this.zzw);
            this.zzl = zzkoVar;
            Looper zze2 = zzkoVar.zze();
            this.zzN = 1.0f;
            zzat zzatVar = zzat.zza;
            this.zzH = zzatVar;
            this.zzS = zzatVar;
            this.zzU = -1;
            int i2 = zzcv.zza;
            this.zzP = true;
            zzmj zzmjVar = this.zzr;
            if (zzmjVar != null) {
                zzdwVar.zzb(zzmjVar);
                zzh.zzf(new Handler(looper), this.zzr);
                copyOnWriteArraySet.add(this.zzv);
                if (Build.VERSION.SDK_INT >= 31) {
                    final Context context = this.zzf;
                    final boolean z = zzitVar.zzq;
                    zzdgVar.zzd(zzkoVar.zze(), null).zzi(new Runnable() { // from class: com.google.android.gms.internal.ads.zzju
                        @Override // java.lang.Runnable
                        public final void run() {
                            zzoy zzb = zzoy.zzb(context);
                            if (zzb == null) {
                                zzdx.zzf("ExoPlayerImpl", "MediaMetricsService unavailable.");
                                return;
                            }
                            if (z) {
                                this.zzz(zzb);
                            }
                            zzpcVar.zzb(zzb.zza());
                        }
                    });
                }
                zzdf zzdfVar = new zzdf(0, zze2, looper, zzdgVar, new zzjh(this));
                this.zzA = zzdfVar;
                zzdfVar.zzb(new Runnable() { // from class: com.google.android.gms.internal.ads.zzji
                    @Override // java.lang.Runnable
                    public final void run() {
                        zzkc.zzI(zzkc.this);
                    }
                });
                new zzhu(zzitVar.zza, zze2, zzitVar.zzi, this.zzv, zzdgVar);
                this.zzx = new zzmh(zzitVar.zza, zze2, zzdgVar);
                this.zzy = new zzmi(zzitVar.zza, zze2, zzdgVar);
                int i3 = zzo.zza;
                zzcd zzcdVar = zzcd.zza;
                this.zzL = zzel.zza;
                zzkoVar.zzp(this.zzM, false);
                zzac(1, 3, this.zzM);
                zzac(2, 4, Integer.valueOf(this.zzK));
                zzac(2, 5, 0);
                zzac(1, 9, Boolean.valueOf(this.zzO));
                zzac(6, 8, this.zzw);
                zzac(-1, 16, Integer.valueOf(this.zzR));
                this.zze.zzf();
                return;
            }
            throw null;
        } catch (Throwable th) {
            this.zze.zzf();
            throw th;
        }
    }

    public static /* synthetic */ void zzI(zzkc zzkcVar) {
        String str = zzeu.zza;
        zzkcVar.zzA.zzc(Integer.valueOf(zzcj.zzc(zzkcVar.zzf).generateAudioSessionId()));
    }

    public static /* synthetic */ void zzJ(zzkc zzkcVar, zzkl zzklVar) {
        boolean z;
        boolean z2;
        int i = zzkcVar.zzB - zzklVar.zzb;
        zzkcVar.zzB = i;
        boolean z3 = true;
        if (zzklVar.zzc) {
            zzkcVar.zzC = zzklVar.zzd;
            zzkcVar.zzD = true;
        }
        if (i == 0) {
            zzbl zzblVar = zzklVar.zza.zza;
            if (!zzkcVar.zzT.zza.zzo() && zzblVar.zzo()) {
                zzkcVar.zzU = -1;
                zzkcVar.zzV = 0L;
            }
            if (!zzblVar.zzo()) {
                List zzw = ((zzlt) zzblVar).zzw();
                int size = zzw.size();
                List list = zzkcVar.zzp;
                if (size == list.size()) {
                    z2 = true;
                } else {
                    z2 = false;
                }
                zzdc.zzf(z2);
                for (int i2 = 0; i2 < zzw.size(); i2++) {
                    ((zzka) list.get(i2)).zzc((zzbl) zzw.get(i2));
                }
            }
            long j = -9223372036854775807L;
            if (zzkcVar.zzD) {
                if (zzklVar.zza.zzb.equals(zzkcVar.zzT.zzb) && zzklVar.zza.zzd == zzkcVar.zzT.zzs) {
                    z3 = false;
                }
                if (z3) {
                    if (!zzblVar.zzo() && !zzklVar.zza.zzb.zzb()) {
                        zzln zzlnVar = zzklVar.zza;
                        zzvb zzvbVar = zzlnVar.zzb;
                        long j2 = zzlnVar.zzd;
                        zzkcVar.zzV(zzblVar, zzvbVar, j2);
                        j = j2;
                    } else {
                        j = zzklVar.zza.zzd;
                    }
                }
                z = z3;
            } else {
                z = false;
            }
            zzkcVar.zzD = false;
            zzkcVar.zzaf(zzklVar.zza, 1, z, zzkcVar.zzC, j, -1, false);
        }
    }

    public static /* synthetic */ void zzK(zzkc zzkcVar, int i, final int i2) {
        zzkcVar.zzah();
        Integer valueOf = Integer.valueOf(i2);
        zzkcVar.zzac(1, 10, valueOf);
        zzkcVar.zzac(2, 10, valueOf);
        zzdt zzdtVar = new zzdt() { // from class: com.google.android.gms.internal.ads.zzjj
            @Override // com.google.android.gms.internal.ads.zzdt
            public final void zza(Object obj) {
                int i3 = zzkc.zzd;
                ((zzbe) obj).zza(i2);
            }
        };
        zzdw zzdwVar = zzkcVar.zzm;
        zzdwVar.zzd(21, zzdtVar);
        zzdwVar.zzc();
    }

    public static /* bridge */ /* synthetic */ void zzO(zzkc zzkcVar, SurfaceTexture surfaceTexture) {
        Surface surface = new Surface(surfaceTexture);
        zzkcVar.zzad(surface);
        zzkcVar.zzJ = surface;
    }

    private final int zzR(zzln zzlnVar) {
        zzbl zzblVar = zzlnVar.zza;
        if (zzblVar.zzo()) {
            return this.zzU;
        }
        return zzblVar.zzn(zzlnVar.zzb.zza, this.zzo).zzc;
    }

    private final long zzS(zzln zzlnVar) {
        zzvb zzvbVar = zzlnVar.zzb;
        if (zzvbVar.zzb()) {
            zzbl zzblVar = zzlnVar.zza;
            zzblVar.zzn(zzvbVar.zza, this.zzo);
            long j = zzlnVar.zzc;
            if (j == -9223372036854775807L) {
                long j2 = zzblVar.zze(zzR(zzlnVar), this.zza, 0L).zzl;
                return zzeu.zzv(0L);
            }
            return zzeu.zzv(0L) + zzeu.zzv(j);
        }
        return zzeu.zzv(zzT(zzlnVar));
    }

    private final long zzT(zzln zzlnVar) {
        zzbl zzblVar = zzlnVar.zza;
        if (zzblVar.zzo()) {
            return zzeu.zzs(this.zzV);
        }
        long j = zzlnVar.zzs;
        zzvb zzvbVar = zzlnVar.zzb;
        if (zzvbVar.zzb()) {
            return j;
        }
        zzV(zzblVar, zzvbVar, j);
        return j;
    }

    private static long zzU(zzln zzlnVar) {
        zzbk zzbkVar = new zzbk();
        zzbj zzbjVar = new zzbj();
        zzbl zzblVar = zzlnVar.zza;
        zzblVar.zzn(zzlnVar.zzb.zza, zzbjVar);
        long j = zzlnVar.zzc;
        if (j == -9223372036854775807L) {
            long j2 = zzblVar.zze(zzbjVar.zzc, zzbkVar, 0L).zzl;
            return 0L;
        }
        return j;
    }

    private final long zzV(zzbl zzblVar, zzvb zzvbVar, long j) {
        zzblVar.zzn(zzvbVar.zza, this.zzo);
        return j;
    }

    @Nullable
    private final Pair zzW(zzbl zzblVar, int i, long j) {
        if (zzblVar.zzo()) {
            this.zzU = i;
            if (j == -9223372036854775807L) {
                j = 0;
            }
            this.zzV = j;
            return null;
        }
        if (i == -1 || i >= zzblVar.zzc()) {
            i = zzblVar.zzg(false);
            long j2 = zzblVar.zze(i, this.zza, 0L).zzl;
            j = zzeu.zzv(0L);
        }
        return zzblVar.zzl(this.zza, this.zzo, i, zzeu.zzs(j));
    }

    private static zzln zzX(zzln zzlnVar, int i) {
        zzln zzf = zzlnVar.zzf(i);
        if (i != 1 && i != 4) {
            return zzf;
        }
        return zzf.zza(false);
    }

    private final zzln zzY(zzln zzlnVar, zzbl zzblVar, @Nullable Pair pair) {
        boolean z;
        zzvb zzvbVar;
        zzxe zzxeVar;
        zzyy zzyyVar;
        List list;
        int i;
        long j;
        if (zzblVar.zzo() || pair != null) {
            z = true;
        } else {
            z = false;
        }
        zzdc.zzd(z);
        zzbl zzblVar2 = zzlnVar.zza;
        long zzS = zzS(zzlnVar);
        zzln zzg = zzlnVar.zzg(zzblVar);
        if (zzblVar.zzo()) {
            zzvb zzi = zzln.zzi();
            long zzs = zzeu.zzs(this.zzV);
            zzln zzb = zzg.zzc(zzi, zzs, zzs, zzs, 0L, zzxe.zza, this.zzb, zzfyc.zzn()).zzb(zzi);
            zzb.zzq = zzb.zzs;
            return zzb;
        }
        zzvb zzvbVar2 = zzg.zzb;
        Object obj = zzvbVar2.zza;
        String str = zzeu.zza;
        boolean equals = obj.equals(pair.first);
        if (!equals) {
            zzvbVar = new zzvb(pair.first, -1L);
        } else {
            zzvbVar = zzvbVar2;
        }
        long longValue = ((Long) pair.second).longValue();
        long zzs2 = zzeu.zzs(zzS);
        if (!zzblVar2.zzo()) {
            zzblVar2.zzn(obj, this.zzo);
        }
        if (!equals || longValue < zzs2) {
            zzvb zzvbVar3 = zzvbVar;
            zzdc.zzf(!zzvbVar3.zzb());
            if (!equals) {
                zzxeVar = zzxe.zza;
            } else {
                zzxeVar = zzg.zzh;
            }
            zzxe zzxeVar2 = zzxeVar;
            if (!equals) {
                zzyyVar = this.zzb;
            } else {
                zzyyVar = zzg.zzi;
            }
            zzyy zzyyVar2 = zzyyVar;
            if (!equals) {
                list = zzfyc.zzn();
            } else {
                list = zzg.zzj;
            }
            zzln zzb2 = zzg.zzc(zzvbVar3, longValue, longValue, longValue, 0L, zzxeVar2, zzyyVar2, list).zzb(zzvbVar3);
            zzb2.zzq = longValue;
            return zzb2;
        } else if (i == 0) {
            int zza = zzblVar.zza(zzg.zzk.zza);
            if (zza != -1) {
                zzbj zzbjVar = this.zzo;
                if (zzblVar.zzd(zza, zzbjVar, false).zzc == zzblVar.zzn(zzvbVar.zza, zzbjVar).zzc) {
                    return zzg;
                }
            }
            Object obj2 = zzvbVar.zza;
            zzbj zzbjVar2 = this.zzo;
            zzblVar.zzn(obj2, zzbjVar2);
            if (zzvbVar.zzb()) {
                j = zzbjVar2.zzf(zzvbVar.zzb, zzvbVar.zzc);
            } else {
                j = zzbjVar2.zzd;
            }
            zzvb zzvbVar4 = zzvbVar;
            zzln zzb3 = zzg.zzc(zzvbVar4, zzg.zzs, zzg.zzs, zzg.zzd, j - zzg.zzs, zzg.zzh, zzg.zzi, zzg.zzj).zzb(zzvbVar4);
            zzb3.zzq = j;
            return zzb3;
        } else {
            zzvb zzvbVar5 = zzvbVar;
            zzdc.zzf(!zzvbVar5.zzb());
            long max = Math.max(0L, zzg.zzr - (longValue - zzs2));
            long j2 = zzg.zzq;
            if (zzg.zzk.equals(zzvbVar2)) {
                j2 = longValue + max;
            }
            zzln zzc = zzg.zzc(zzvbVar5, longValue, longValue, longValue, max, zzg.zzh, zzg.zzi, zzg.zzj);
            zzc.zzq = j2;
            return zzc;
        }
    }

    private final zzlr zzZ(zzlq zzlqVar) {
        int zzR = zzR(this.zzT);
        zzbl zzblVar = this.zzT.zza;
        if (zzR == -1) {
            zzR = 0;
        }
        zzdg zzdgVar = this.zzu;
        zzko zzkoVar = this.zzl;
        return new zzlr(zzkoVar, zzlqVar, zzblVar, zzR, zzdgVar, zzkoVar.zze());
    }

    public final /* synthetic */ void zzaa(final zzkl zzklVar) {
        this.zzk.zzi(new Runnable() { // from class: com.google.android.gms.internal.ads.zzjl
            @Override // java.lang.Runnable
            public final void run() {
                zzkc.zzJ(zzkc.this, zzklVar);
            }
        });
    }

    public final void zzab(final int i, final int i2) {
        if (i == this.zzL.zzb() && i2 == this.zzL.zza()) {
            return;
        }
        this.zzL = new zzel(i, i2);
        zzdw zzdwVar = this.zzm;
        zzdwVar.zzd(24, new zzdt() { // from class: com.google.android.gms.internal.ads.zzjc
            @Override // com.google.android.gms.internal.ads.zzdt
            public final void zza(Object obj) {
                int i3 = zzkc.zzd;
                ((zzbe) obj).zzp(i, i2);
            }
        });
        zzdwVar.zzc();
        zzac(2, 14, new zzel(i, i2));
    }

    private final void zzac(int i, int i2, @Nullable Object obj) {
        zzlv[] zzlvVarArr = this.zzh;
        int length = zzlvVarArr.length;
        for (int i3 = 0; i3 < 2; i3++) {
            zzlv zzlvVar = zzlvVarArr[i3];
            if (i == -1 || zzlvVar.zzb() == i) {
                zzlr zzZ = zzZ(zzlvVar);
                zzZ.zzf(i2);
                zzZ.zze(obj);
                zzZ.zzd();
            }
        }
        zzlv[] zzlvVarArr2 = this.zzi;
        int length2 = zzlvVarArr2.length;
        for (int i4 = 0; i4 < 2; i4++) {
            zzlv zzlvVar2 = zzlvVarArr2[i4];
            if (zzlvVar2 != null && (i == -1 || zzlvVar2.zzb() == i)) {
                zzlr zzZ2 = zzZ(zzlvVar2);
                zzZ2.zzf(i2);
                zzZ2.zze(obj);
                zzZ2.zzd();
            }
        }
    }

    public final void zzad(@Nullable Object obj) {
        long j;
        Object obj2 = this.zzI;
        boolean z = false;
        if (obj2 != null && obj2 != obj) {
            z = true;
        }
        if (z) {
            j = this.zzz;
        } else {
            j = -9223372036854775807L;
        }
        boolean zzu = this.zzl.zzu(obj, j);
        if (z) {
            Object obj3 = this.zzI;
            Surface surface = this.zzJ;
            if (obj3 == surface) {
                surface.release();
                this.zzJ = null;
            }
        }
        this.zzI = obj;
        if (!zzu) {
            zzae(zzik.zzd(new zzkp(3), 1003));
        }
    }

    private final void zzae(@Nullable zzik zzikVar) {
        zzln zzlnVar = this.zzT;
        zzln zzb = zzlnVar.zzb(zzlnVar.zzb);
        zzb.zzq = zzb.zzs;
        zzb.zzr = 0L;
        zzln zzX = zzX(zzb, 1);
        if (zzikVar != null) {
            zzX = zzX.zze(zzikVar);
        }
        this.zzB++;
        this.zzl.zzs();
        zzaf(zzX, 0, false, 5, -9223372036854775807L, -1, false);
    }

    /* JADX WARN: Removed duplicated region for block: B:264:0x00ea  */
    /* JADX WARN: Removed duplicated region for block: B:269:0x010b  */
    /* JADX WARN: Removed duplicated region for block: B:276:0x0128  */
    /* JADX WARN: Removed duplicated region for block: B:284:0x0159  */
    /* JADX WARN: Removed duplicated region for block: B:285:0x015c  */
    /* JADX WARN: Removed duplicated region for block: B:288:0x0187  */
    /* JADX WARN: Removed duplicated region for block: B:289:0x0189  */
    /* JADX WARN: Removed duplicated region for block: B:292:0x0191  */
    /* JADX WARN: Removed duplicated region for block: B:293:0x0193  */
    /* JADX WARN: Removed duplicated region for block: B:299:0x01a2  */
    /* JADX WARN: Removed duplicated region for block: B:300:0x01a4  */
    /* JADX WARN: Removed duplicated region for block: B:302:0x01a8  */
    /* JADX WARN: Removed duplicated region for block: B:304:0x01b8  */
    /* JADX WARN: Removed duplicated region for block: B:323:0x025b  */
    /* JADX WARN: Removed duplicated region for block: B:324:0x028c  */
    /* JADX WARN: Removed duplicated region for block: B:327:0x02a5  */
    /* JADX WARN: Removed duplicated region for block: B:328:0x02b2  */
    /* JADX WARN: Removed duplicated region for block: B:330:0x02d4  */
    /* JADX WARN: Removed duplicated region for block: B:332:0x02db  */
    /* JADX WARN: Removed duplicated region for block: B:335:0x02ee  */
    /* JADX WARN: Removed duplicated region for block: B:340:0x0308  */
    /* JADX WARN: Removed duplicated region for block: B:342:0x031c  */
    /* JADX WARN: Removed duplicated region for block: B:344:0x032c  */
    /* JADX WARN: Removed duplicated region for block: B:350:0x034a  */
    /* JADX WARN: Removed duplicated region for block: B:358:0x036e  */
    /* JADX WARN: Removed duplicated region for block: B:361:0x0383  */
    /* JADX WARN: Removed duplicated region for block: B:364:0x0399  */
    /* JADX WARN: Removed duplicated region for block: B:373:0x03d9  */
    /* JADX WARN: Removed duplicated region for block: B:374:0x03de  */
    /* JADX WARN: Removed duplicated region for block: B:381:0x0401  */
    /* JADX WARN: Removed duplicated region for block: B:386:0x041c  */
    /* JADX WARN: Removed duplicated region for block: B:390:0x0434  */
    /* JADX WARN: Removed duplicated region for block: B:393:0x0443  */
    /* JADX WARN: Removed duplicated region for block: B:399:0x046d A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:404:0x0478 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:409:0x0483 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:419:0x0497 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:424:0x04a4 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:433:0x04bd A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:439:0x04cb A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:445:0x04e3  */
    /* JADX WARN: Type inference failed for: r15v15 */
    /* JADX WARN: Type inference failed for: r15v6 */
    /* JADX WARN: Type inference failed for: r15v7, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r15v8 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final void zzaf(final com.google.android.gms.internal.ads.zzln r34, final int r35, boolean r36, int r37, long r38, int r40, boolean r41) {
        /*
            Method dump skipped, instructions count: 1269
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzkc.zzaf(com.google.android.gms.internal.ads.zzln, int, boolean, int, long, int, boolean):void");
    }

    private final void zzag() {
        int zzg = zzg();
        if (zzg != 2 && zzg != 3) {
            this.zzx.zza(false);
            this.zzy.zza(false);
            return;
        }
        zzah();
        boolean z = this.zzT.zzp;
        this.zzx.zza(zzv());
        this.zzy.zza(zzv());
    }

    private final void zzah() {
        IllegalStateException illegalStateException;
        this.zze.zzb();
        Looper looper = this.zzs;
        if (Thread.currentThread() != looper.getThread()) {
            Object[] objArr = {Thread.currentThread().getName(), looper.getThread().getName()};
            String str = zzeu.zza;
            String format = String.format(Locale.US, "Player is accessed on the wrong thread.\nCurrent thread: '%s'\nExpected thread: '%s'\nSee https://developer.android.com/guide/topics/media/issues/player-accessed-on-wrong-thread", objArr);
            if (!this.zzP) {
                if (this.zzQ) {
                    illegalStateException = null;
                } else {
                    illegalStateException = new IllegalStateException();
                }
                zzdx.zzg("ExoPlayerImpl", format, illegalStateException);
                this.zzQ = true;
                return;
            }
            throw new IllegalStateException(format);
        }
    }

    @Override // com.google.android.gms.internal.ads.zziv
    public final void zzA() {
        String hexString = Integer.toHexString(System.identityHashCode(this));
        String str = zzeu.zza;
        String zza = zzaq.zza();
        zzdx.zze("ExoPlayerImpl", "Release " + hexString + " [AndroidXMedia3/1.6.1] [" + str + "] [" + zza + "]");
        zzah();
        this.zzx.zza(false);
        this.zzy.zza(false);
        if (!this.zzl.zzt()) {
            zzdw zzdwVar = this.zzm;
            zzdwVar.zzd(10, new zzdt() { // from class: com.google.android.gms.internal.ads.zzjd
                @Override // com.google.android.gms.internal.ads.zzdt
                public final void zza(Object obj) {
                    int i = zzkc.zzd;
                    ((zzbe) obj).zzk(zzik.zzd(new zzkp(1), 1003));
                }
            });
            zzdwVar.zzc();
        }
        this.zzm.zze();
        this.zzk.zzf(null);
        zzzf zzzfVar = this.zzt;
        zzmj zzmjVar = this.zzr;
        zzzfVar.zzg(zzmjVar);
        zzln zzlnVar = this.zzT;
        boolean z = zzlnVar.zzp;
        zzln zzX = zzX(zzlnVar, 1);
        this.zzT = zzX;
        zzln zzb = zzX.zzb(zzX.zzb);
        this.zzT = zzb;
        zzb.zzq = zzb.zzs;
        this.zzT.zzr = 0L;
        zzmjVar.zzR();
        Surface surface = this.zzJ;
        if (surface != null) {
            surface.release();
            this.zzJ = null;
        }
        int i = zzcv.zza;
    }

    @Override // com.google.android.gms.internal.ads.zziv
    public final void zzB(zzmm zzmmVar) {
        zzah();
        this.zzr.zzS(zzmmVar);
    }

    @Override // com.google.android.gms.internal.ads.zziv
    public final void zzC(zzvd zzvdVar) {
        zzah();
        List singletonList = Collections.singletonList(zzvdVar);
        zzah();
        zzah();
        zzR(this.zzT);
        zzl();
        boolean z = true;
        this.zzB++;
        List list = this.zzp;
        if (!list.isEmpty()) {
            int size = list.size();
            for (int i = size - 1; i >= 0; i--) {
                list.remove(i);
            }
            this.zzX = this.zzX.zzh(0, size);
        }
        ArrayList arrayList = new ArrayList();
        for (int i2 = 0; i2 < singletonList.size(); i2++) {
            zzlk zzlkVar = new zzlk((zzvd) singletonList.get(i2), this.zzq);
            arrayList.add(zzlkVar);
            list.add(i2, new zzka(zzlkVar.zzb, zzlkVar.zza));
        }
        this.zzX = this.zzX.zzg(0, arrayList.size());
        zzlt zzltVar = new zzlt(list, this.zzX);
        if (!zzltVar.zzo() && zzltVar.zzc() < 0) {
            throw new zzaa(zzltVar, -1, -9223372036854775807L);
        }
        int zzg = zzltVar.zzg(false);
        zzln zzY = zzY(this.zzT, zzltVar, zzW(zzltVar, zzg, -9223372036854775807L));
        int i3 = zzY.zze;
        if (zzg != -1 && i3 != 1) {
            i3 = 4;
            if (!zzltVar.zzo() && zzg < zzltVar.zzc()) {
                i3 = 2;
            }
        }
        zzln zzX = zzX(zzY, i3);
        this.zzl.zzv(arrayList, zzg, zzeu.zzs(-9223372036854775807L), this.zzX);
        zzaf(zzX, 0, (this.zzT.zzb.zza.equals(zzX.zzb.zza) || this.zzT.zza.zzo()) ? false : false, 4, zzT(zzX), -1, false);
    }

    @Nullable
    public final zzik zzE() {
        zzah();
        return this.zzT.zzf;
    }

    @Override // com.google.android.gms.internal.ads.zzg
    public final void zzb(int i, long j, int i2, boolean z) {
        boolean z2;
        zzah();
        if (i != -1) {
            if (i >= 0) {
                z2 = true;
            } else {
                z2 = false;
            }
            zzdc.zzd(z2);
            zzbl zzblVar = this.zzT.zza;
            if (!zzblVar.zzo() && i >= zzblVar.zzc()) {
                return;
            }
            this.zzr.zzv();
            this.zzB++;
            if (zzx()) {
                zzdx.zzf("ExoPlayerImpl", "seekTo ignored because an ad is playing");
                zzkl zzklVar = new zzkl(this.zzT);
                zzklVar.zza(1);
                this.zzW.zza.zzaa(zzklVar);
                return;
            }
            zzln zzlnVar = this.zzT;
            int i3 = zzlnVar.zze;
            if (i3 == 3 || (i3 == 4 && !zzblVar.zzo())) {
                zzlnVar = zzX(this.zzT, 2);
            }
            int zze = zze();
            zzln zzY = zzY(zzlnVar, zzblVar, zzW(zzblVar, i, j));
            this.zzl.zzn(zzblVar, i, zzeu.zzs(j));
            zzaf(zzY, 0, true, 1, zzT(zzY), zze, false);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbh
    public final int zzc() {
        zzah();
        if (zzx()) {
            return this.zzT.zzb.zzb;
        }
        return -1;
    }

    @Override // com.google.android.gms.internal.ads.zzbh
    public final int zzd() {
        zzah();
        if (zzx()) {
            return this.zzT.zzb.zzc;
        }
        return -1;
    }

    @Override // com.google.android.gms.internal.ads.zzbh
    public final int zze() {
        zzah();
        int zzR = zzR(this.zzT);
        if (zzR == -1) {
            return 0;
        }
        return zzR;
    }

    @Override // com.google.android.gms.internal.ads.zzbh
    public final int zzf() {
        zzah();
        if (this.zzT.zza.zzo()) {
            return 0;
        }
        zzln zzlnVar = this.zzT;
        return zzlnVar.zza.zza(zzlnVar.zzb.zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbh
    public final int zzg() {
        zzah();
        return this.zzT.zze;
    }

    @Override // com.google.android.gms.internal.ads.zzbh
    public final int zzh() {
        zzah();
        return this.zzT.zzn;
    }

    @Override // com.google.android.gms.internal.ads.zzbh
    public final int zzi() {
        zzah();
        return 0;
    }

    @Override // com.google.android.gms.internal.ads.zzbh
    public final long zzj() {
        zzah();
        if (zzx()) {
            zzln zzlnVar = this.zzT;
            if (zzlnVar.zzk.equals(zzlnVar.zzb)) {
                return zzeu.zzv(this.zzT.zzq);
            }
            return zzm();
        }
        zzah();
        if (this.zzT.zza.zzo()) {
            return this.zzV;
        }
        zzln zzlnVar2 = this.zzT;
        long j = 0;
        if (zzlnVar2.zzk.zzd != zzlnVar2.zzb.zzd) {
            return zzeu.zzv(zzlnVar2.zza.zze(zze(), this.zza, 0L).zzm);
        }
        long j2 = zzlnVar2.zzq;
        if (this.zzT.zzk.zzb()) {
            zzln zzlnVar3 = this.zzT;
            zzlnVar3.zza.zzn(zzlnVar3.zzk.zza, this.zzo).zzg(this.zzT.zzk.zzb);
        } else {
            j = j2;
        }
        zzln zzlnVar4 = this.zzT;
        zzV(zzlnVar4.zza, zzlnVar4.zzk, j);
        return zzeu.zzv(j);
    }

    @Override // com.google.android.gms.internal.ads.zzbh
    public final long zzk() {
        zzah();
        return zzS(this.zzT);
    }

    @Override // com.google.android.gms.internal.ads.zzbh
    public final long zzl() {
        zzah();
        return zzeu.zzv(zzT(this.zzT));
    }

    @Override // com.google.android.gms.internal.ads.zzbh
    public final long zzm() {
        zzah();
        if (!zzx()) {
            zzbl zzo = zzo();
            if (zzo.zzo()) {
                return -9223372036854775807L;
            }
            return zzeu.zzv(zzo.zze(zze(), this.zza, 0L).zzm);
        }
        zzln zzlnVar = this.zzT;
        zzvb zzvbVar = zzlnVar.zzb;
        zzbl zzblVar = zzlnVar.zza;
        Object obj = zzvbVar.zza;
        zzbj zzbjVar = this.zzo;
        zzblVar.zzn(obj, zzbjVar);
        return zzeu.zzv(zzbjVar.zzf(zzvbVar.zzb, zzvbVar.zzc));
    }

    @Override // com.google.android.gms.internal.ads.zzbh
    public final long zzn() {
        zzah();
        return zzeu.zzv(this.zzT.zzr);
    }

    @Override // com.google.android.gms.internal.ads.zzbh
    public final zzbl zzo() {
        zzah();
        return this.zzT.zza;
    }

    @Override // com.google.android.gms.internal.ads.zzbh
    public final zzbt zzp() {
        zzah();
        return this.zzT.zzi.zzd;
    }

    @Override // com.google.android.gms.internal.ads.zzbh
    public final void zzq() {
        int i;
        zzah();
        zzln zzlnVar = this.zzT;
        if (zzlnVar.zze != 1) {
            return;
        }
        zzln zze = zzlnVar.zze(null);
        if (true != zze.zza.zzo()) {
            i = 2;
        } else {
            i = 4;
        }
        zzln zzX = zzX(zze, i);
        this.zzB++;
        this.zzl.zzm();
        zzaf(zzX, 1, false, 5, -9223372036854775807L, -1, false);
    }

    @Override // com.google.android.gms.internal.ads.zzbh
    public final void zzr(boolean z) {
        zzah();
        zzln zzlnVar = this.zzT;
        int i = zzlnVar.zzn;
        int i2 = 0;
        if (i == 1) {
            if (!z) {
                i = 1;
                i2 = 1;
            } else {
                i = 1;
            }
        }
        if (zzlnVar.zzl == z && i == i2 && zzlnVar.zzm == 1) {
            return;
        }
        this.zzB++;
        zzln zzd2 = zzlnVar.zzd(z, 1, i2);
        this.zzl.zzq(z, 1, i2);
        zzaf(zzd2, 0, false, 5, -9223372036854775807L, -1, false);
    }

    @Override // com.google.android.gms.internal.ads.zzbh
    public final void zzs(@Nullable Surface surface) {
        int i;
        zzah();
        zzad(surface);
        if (surface == null) {
            i = 0;
        } else {
            i = -1;
        }
        zzab(i, i);
    }

    @Override // com.google.android.gms.internal.ads.zzbh
    public final void zzt(float f) {
        zzah();
        String str = zzeu.zza;
        final float max = Math.max(0.0f, Math.min(f, 1.0f));
        if (this.zzN == max) {
            return;
        }
        this.zzN = max;
        this.zzl.zzr(max);
        zzdw zzdwVar = this.zzm;
        zzdwVar.zzd(22, new zzdt() { // from class: com.google.android.gms.internal.ads.zzjb
            @Override // com.google.android.gms.internal.ads.zzdt
            public final void zza(Object obj) {
                int i = zzkc.zzd;
                ((zzbe) obj).zzt(max);
            }
        });
        zzdwVar.zzc();
    }

    @Override // com.google.android.gms.internal.ads.zzbh
    public final void zzu() {
        zzah();
        zzae(null);
        int i = zzcv.zza;
        zzfyc zzn = zzfyc.zzn();
        long j = this.zzT.zzs;
        zzfyc.zzl(zzn);
    }

    @Override // com.google.android.gms.internal.ads.zzbh
    public final boolean zzv() {
        zzah();
        return this.zzT.zzl;
    }

    @Override // com.google.android.gms.internal.ads.zzbh
    public final boolean zzw() {
        zzah();
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzbh
    public final boolean zzx() {
        zzah();
        return this.zzT.zzb.zzb();
    }

    @Override // com.google.android.gms.internal.ads.zziv
    public final int zzy() {
        zzah();
        int length = this.zzh.length;
        return 2;
    }

    @Override // com.google.android.gms.internal.ads.zziv
    public final void zzz(zzmm zzmmVar) {
        this.zzr.zzu(zzmmVar);
    }
}
