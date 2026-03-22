package com.google.android.gms.internal.ads;

import android.util.Pair;
import androidx.annotation.Nullable;
import androidx.media3.exoplayer.MediaPeriodQueue;
import java.util.ArrayList;
import java.util.List;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzla {
    private final zzmj zzc;
    private final zzdq zzd;
    private long zze;
    private int zzf;
    private boolean zzg;
    private zziu zzh;
    @Nullable
    private zzkx zzi;
    @Nullable
    private zzkx zzj;
    @Nullable
    private zzkx zzk;
    @Nullable
    private zzkx zzl;
    @Nullable
    private zzkx zzm;
    private int zzn;
    @Nullable
    private Object zzo;
    private long zzp;
    private final zzkf zzr;
    private final zzbj zza = new zzbj();
    private final zzbk zzb = new zzbk();
    private List zzq = new ArrayList();

    public zzla(zzmj zzmjVar, zzdq zzdqVar, zzkf zzkfVar, zziu zziuVar) {
        this.zzc = zzmjVar;
        this.zzd = zzdqVar;
        this.zzr = zzkfVar;
        this.zzh = zziuVar;
    }

    private final int zzA(zzbl zzblVar) {
        zzbl zzblVar2;
        zzkx zzkxVar = this.zzi;
        if (zzkxVar == null) {
            return 0;
        }
        int zza = zzblVar.zza(zzkxVar.zzb);
        while (true) {
            zzblVar2 = zzblVar;
            zza = zzblVar2.zzi(zza, this.zza, this.zzb, this.zzf, this.zzg);
            while (true) {
                zzkxVar.getClass();
                if (zzkxVar.zzg() == null || zzkxVar.zzg.zzh) {
                    break;
                }
                zzkxVar = zzkxVar.zzg();
            }
            zzkx zzg = zzkxVar.zzg();
            if (zza == -1 || zzg == null || zzblVar2.zza(zzg.zzb) != zza) {
                break;
            }
            zzkxVar = zzg;
            zzblVar = zzblVar2;
        }
        int zza2 = zza(zzkxVar);
        zzkxVar.zzg = zzp(zzblVar2, zzkxVar.zzg);
        return zza2;
    }

    private final long zzB(zzbl zzblVar, Object obj, int i) {
        zzbj zzbjVar = this.zza;
        zzblVar.zzn(obj, zzbjVar);
        zzbjVar.zzg(i);
        long j = zzbjVar.zzg.zza(i).zzh;
        return 0L;
    }

    private final long zzC(Object obj) {
        for (int i = 0; i < this.zzq.size(); i++) {
            zzkx zzkxVar = (zzkx) this.zzq.get(i);
            if (zzkxVar.zzb.equals(obj)) {
                return zzkxVar.zzg.zza.zzd;
            }
        }
        return -1L;
    }

    @Nullable
    private final zzky zzD(zzbl zzblVar, zzkx zzkxVar, long j) {
        zzbl zzblVar2;
        long j2;
        zzbl zzblVar3;
        zzbj zzbjVar;
        zzbk zzbkVar;
        Object obj;
        long j3;
        long j4;
        long j5;
        zzky zzkyVar = zzkxVar.zzg;
        long zze = zzkxVar.zze();
        long j6 = zzkyVar.zze;
        long j7 = (zze + j6) - j;
        if (zzkyVar.zzh) {
            zzvb zzvbVar = zzkyVar.zza;
            Object obj2 = zzvbVar.zza;
            int zza = zzblVar.zza(obj2);
            int i = this.zzf;
            boolean z = this.zzg;
            zzbk zzbkVar2 = this.zzb;
            zzbj zzbjVar2 = this.zza;
            long j8 = 0;
            int zzi = zzblVar.zzi(zza, zzbjVar2, zzbkVar2, i, z);
            if (zzi == -1) {
                return null;
            }
            int i2 = zzblVar.zzd(zzi, zzbjVar2, true).zzc;
            Object obj3 = zzbjVar2.zzb;
            obj3.getClass();
            long j9 = zzvbVar.zzd;
            if (zzblVar.zze(i2, zzbkVar2, 0L).zzn == zzi) {
                Pair zzm = zzblVar.zzm(zzbkVar2, zzbjVar2, i2, -9223372036854775807L, Math.max(0L, j7));
                if (zzm == null) {
                    return null;
                }
                Object obj4 = zzm.first;
                long longValue = ((Long) zzm.second).longValue();
                zzkx zzg = zzkxVar.zzg();
                if (zzg != null && zzg.zzb.equals(obj4)) {
                    j5 = zzg.zzg.zza.zzd;
                } else {
                    long zzC = zzC(obj4);
                    if (zzC == -1) {
                        zzC = this.zze;
                        this.zze = 1 + zzC;
                    }
                    j5 = zzC;
                }
                zzblVar3 = zzblVar;
                zzbkVar = zzbkVar2;
                zzbjVar = zzbjVar2;
                j3 = longValue;
                obj = obj4;
                j4 = j5;
                j8 = -9223372036854775807L;
            } else {
                zzblVar3 = zzblVar;
                zzbjVar = zzbjVar2;
                zzbkVar = zzbkVar2;
                obj = obj3;
                j3 = 0;
                j4 = j9;
            }
            zzvb zzH = zzH(zzblVar3, obj, j3, j4, zzbkVar, zzbjVar);
            long j10 = j3;
            zzbj zzbjVar3 = zzbjVar;
            if (j8 != -9223372036854775807L && zzkyVar.zzc != -9223372036854775807L) {
                zzblVar3.zzn(obj2, zzbjVar3).zzb();
                int i3 = zzbjVar3.zzg.zzd;
            }
            return zzE(zzblVar3, zzH, j8, j10);
        }
        zzvb zzvbVar2 = zzkyVar.zza;
        Object obj5 = zzvbVar2.zza;
        zzbj zzbjVar4 = this.zza;
        zzblVar.zzn(obj5, zzbjVar4);
        if (zzvbVar2.zzb()) {
            int i4 = zzvbVar2.zzb;
            if (zzbjVar4.zza(i4) == -1) {
                return null;
            }
            int zza2 = zzbjVar4.zzg.zza(i4).zza(zzvbVar2.zzc);
            if (zza2 < 0) {
                return zzF(zzblVar, obj5, i4, zza2, zzkyVar.zzc, zzvbVar2.zzd, false);
            }
            long j11 = zzkyVar.zzc;
            if (j11 == -9223372036854775807L) {
                Pair zzm2 = zzblVar.zzm(this.zzb, zzbjVar4, zzbjVar4.zzc, -9223372036854775807L, Math.max(0L, j7));
                zzblVar2 = zzblVar;
                if (zzm2 == null) {
                    return null;
                }
                j11 = ((Long) zzm2.second).longValue();
                j2 = -9223372036854775807L;
            } else {
                zzblVar2 = zzblVar;
                j2 = j11;
            }
            zzB(zzblVar2, obj5, i4);
            return zzG(zzblVar2, obj5, Math.max(0L, j11), j2, zzvbVar2.zzd, false);
        }
        int i5 = zzvbVar2.zze;
        if (i5 != -1) {
            zzbjVar4.zzj(i5);
        }
        int zze2 = zzbjVar4.zze(i5);
        zzbjVar4.zzk(i5);
        if (zze2 != zzbjVar4.zza(i5)) {
            return zzF(zzblVar, obj5, i5, zze2, j6, zzvbVar2.zzd, false);
        }
        zzB(zzblVar, obj5, i5);
        return zzG(zzblVar, obj5, 0L, j6, zzvbVar2.zzd, false);
    }

    private final zzky zzE(zzbl zzblVar, zzvb zzvbVar, long j, long j2) {
        Object obj = zzvbVar.zza;
        zzblVar.zzn(obj, this.zza);
        if (zzvbVar.zzb()) {
            return zzF(zzblVar, obj, zzvbVar.zzb, zzvbVar.zzc, j, zzvbVar.zzd, false);
        }
        return zzG(zzblVar, obj, j2, j, zzvbVar.zzd, false);
    }

    private final zzky zzF(zzbl zzblVar, Object obj, int i, int i2, long j, long j2, boolean z) {
        zzvb zzvbVar = new zzvb(obj, i, i2, j2);
        Object obj2 = zzvbVar.zza;
        int i3 = zzvbVar.zzb;
        int i4 = zzvbVar.zzc;
        zzbj zzbjVar = this.zza;
        long zzf = zzblVar.zzn(obj2, zzbjVar).zzf(i3, i4);
        if (i2 == zzbjVar.zze(i)) {
            zzbjVar.zzh();
        }
        zzbjVar.zzk(i3);
        long j3 = 0;
        if (zzf != -9223372036854775807L && zzf <= 0) {
            j3 = Math.max(0L, (-1) + zzf);
        }
        return new zzky(zzvbVar, j3, j, -9223372036854775807L, zzf, false, false, false, false, false);
    }

    private final zzky zzG(zzbl zzblVar, Object obj, long j, long j2, long j3, boolean z) {
        long j4;
        long j5;
        long j6;
        long j7 = j;
        zzbj zzbjVar = this.zza;
        zzblVar.zzn(obj, zzbjVar);
        int zzc = zzbjVar.zzc(j7);
        if (zzc == -1) {
            zzbjVar.zzb();
        } else {
            zzbjVar.zzk(zzc);
        }
        zzvb zzvbVar = new zzvb(obj, j3, zzc);
        boolean zzL = zzL(zzvbVar);
        boolean zzK = zzK(zzblVar, zzvbVar);
        boolean zzJ = zzJ(zzblVar, zzvbVar, zzL);
        if (zzc != -1) {
            zzbjVar.zzk(zzc);
        }
        if (zzc != -1) {
            zzbjVar.zzj(zzc);
        }
        if (zzc != -1) {
            zzbjVar.zzg(zzc);
            j4 = 0;
        } else {
            j4 = -9223372036854775807L;
        }
        if (j4 != -9223372036854775807L) {
            j6 = j4;
            j5 = j6;
        } else {
            j5 = zzbjVar.zzd;
            j6 = -9223372036854775807L;
        }
        if (j5 != -9223372036854775807L && j7 >= j5) {
            j7 = Math.max(0L, j5 - 1);
        }
        return new zzky(zzvbVar, j7, j2, j6, j5, false, false, zzL, zzK, zzJ);
    }

    private static zzvb zzH(zzbl zzblVar, Object obj, long j, long j2, zzbk zzbkVar, zzbj zzbjVar) {
        zzblVar.zzn(obj, zzbjVar);
        zzblVar.zze(zzbjVar.zzc, zzbkVar, 0L);
        zzblVar.zza(obj);
        zzbjVar.zzb();
        zzblVar.zzn(obj, zzbjVar);
        int zzd = zzbjVar.zzd(j);
        if (zzd == -1) {
            return new zzvb(obj, j2, zzbjVar.zzc(j));
        }
        return new zzvb(obj, zzd, zzbjVar.zze(zzd), j2);
    }

    private final void zzI() {
        final zzvb zzvbVar;
        int i = zzfyc.zzd;
        final zzfxz zzfxzVar = new zzfxz();
        for (zzkx zzkxVar = this.zzi; zzkxVar != null; zzkxVar = zzkxVar.zzg()) {
            zzfxzVar.zzf(zzkxVar.zzg.zza);
        }
        zzkx zzkxVar2 = this.zzj;
        if (zzkxVar2 == null) {
            zzvbVar = null;
        } else {
            zzvbVar = zzkxVar2.zzg.zza;
        }
        this.zzd.zzi(new Runnable() { // from class: com.google.android.gms.internal.ads.zzkz
            @Override // java.lang.Runnable
            public final void run() {
                zzla.this.zzc.zzU(zzfxzVar.zzi(), zzvbVar);
            }
        });
    }

    private final boolean zzJ(zzbl zzblVar, zzvb zzvbVar, boolean z) {
        int zza = zzblVar.zza(zzvbVar.zza);
        zzbj zzbjVar = this.zza;
        int i = zzblVar.zzd(zza, zzbjVar, false).zzc;
        zzbk zzbkVar = this.zzb;
        if (zzblVar.zze(i, zzbkVar, 0L).zzi || zzblVar.zzi(zza, zzbjVar, zzbkVar, this.zzf, this.zzg) != -1 || !z) {
            return false;
        }
        return true;
    }

    private final boolean zzK(zzbl zzblVar, zzvb zzvbVar) {
        if (!zzL(zzvbVar)) {
            return false;
        }
        Object obj = zzvbVar.zza;
        int i = zzblVar.zzn(obj, this.zza).zzc;
        if (zzblVar.zze(i, this.zzb, 0L).zzo != zzblVar.zza(obj)) {
            return false;
        }
        return true;
    }

    private static final boolean zzL(zzvb zzvbVar) {
        if (!zzvbVar.zzb() && zzvbVar.zze == -1) {
            return true;
        }
        return false;
    }

    public final int zza(zzkx zzkxVar) {
        zzdc.zzb(zzkxVar);
        int i = 0;
        if (zzkxVar.equals(this.zzl)) {
            return 0;
        }
        this.zzl = zzkxVar;
        while (zzkxVar.zzg() != null) {
            zzkxVar = zzkxVar.zzg();
            zzkxVar.getClass();
            if (zzkxVar == this.zzj) {
                zzkx zzkxVar2 = this.zzi;
                this.zzj = zzkxVar2;
                this.zzk = zzkxVar2;
                i = 3;
            }
            if (zzkxVar == this.zzk) {
                this.zzk = this.zzj;
                i |= 2;
            }
            zzkxVar.zzo();
            this.zzn--;
        }
        zzkx zzkxVar3 = this.zzl;
        zzkxVar3.getClass();
        zzkxVar3.zzp(null);
        zzI();
        return i;
    }

    /* JADX WARN: Removed duplicated region for block: B:39:0x007c A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:40:0x007d  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int zzb(com.google.android.gms.internal.ads.zzbl r14, long r15, long r17, long r19) {
        /*
            r13 = this;
            com.google.android.gms.internal.ads.zzkx r0 = r13.zzi
            r1 = 0
        L3:
            r2 = 0
            if (r0 == 0) goto L9e
            com.google.android.gms.internal.ads.zzky r3 = r0.zzg
            if (r1 != 0) goto L10
            com.google.android.gms.internal.ads.zzky r1 = r13.zzp(r14, r3)
            r4 = r15
            goto L2a
        L10:
            r4 = r15
            com.google.android.gms.internal.ads.zzky r6 = r13.zzD(r14, r1, r4)
            if (r6 == 0) goto L99
            long r7 = r3.zzb
            long r9 = r6.zzb
            int r7 = (r7 > r9 ? 1 : (r7 == r9 ? 0 : -1))
            if (r7 != 0) goto L99
            com.google.android.gms.internal.ads.zzvb r7 = r3.zza
            com.google.android.gms.internal.ads.zzvb r8 = r6.zza
            boolean r7 = r7.equals(r8)
            if (r7 == 0) goto L99
            r1 = r6
        L2a:
            long r6 = r3.zzc
            com.google.android.gms.internal.ads.zzky r6 = r1.zza(r6)
            r0.zzg = r6
            long r6 = r3.zze
            long r8 = r1.zze
            int r1 = (r6 > r8 ? 1 : (r6 == r8 ? 0 : -1))
            if (r1 == 0) goto L90
            r0.zzr()
            r3 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            int r14 = (r8 > r3 ? 1 : (r8 == r3 ? 0 : -1))
            if (r14 != 0) goto L4c
            r8 = 9223372036854775807(0x7fffffffffffffff, double:NaN)
            goto L51
        L4c:
            long r10 = r0.zze()
            long r8 = r8 + r10
        L51:
            com.google.android.gms.internal.ads.zzkx r14 = r13.zzj
            r10 = -9223372036854775808
            r1 = 1
            if (r0 != r14) goto L66
            com.google.android.gms.internal.ads.zzky r14 = r0.zzg
            boolean r14 = r14.zzg
            int r14 = (r17 > r10 ? 1 : (r17 == r10 ? 0 : -1))
            if (r14 == 0) goto L64
            int r14 = (r17 > r8 ? 1 : (r17 == r8 ? 0 : -1))
            if (r14 < 0) goto L66
        L64:
            r14 = r1
            goto L67
        L66:
            r14 = r2
        L67:
            com.google.android.gms.internal.ads.zzkx r5 = r13.zzk
            if (r0 != r5) goto L75
            int r5 = (r19 > r10 ? 1 : (r19 == r10 ? 0 : -1))
            if (r5 == 0) goto L73
            int r5 = (r19 > r8 ? 1 : (r19 == r8 ? 0 : -1))
            if (r5 < 0) goto L75
        L73:
            r5 = r1
            goto L76
        L75:
            r5 = r2
        L76:
            int r0 = r13.zza(r0)
            if (r0 == 0) goto L7d
            return r0
        L7d:
            int r0 = (r6 > r3 ? 1 : (r6 == r3 ? 0 : -1))
            if (r0 != 0) goto L82
            r6 = r3
        L82:
            if (r14 == 0) goto L8a
            int r14 = (r6 > r3 ? 1 : (r6 == r3 ? 0 : -1))
            if (r14 != 0) goto L89
            goto L8a
        L89:
            r2 = r1
        L8a:
            if (r5 == 0) goto L8f
            r14 = r2 | 2
            return r14
        L8f:
            return r2
        L90:
            com.google.android.gms.internal.ads.zzkx r1 = r0.zzg()
            r12 = r1
            r1 = r0
            r0 = r12
            goto L3
        L99:
            int r14 = r13.zza(r1)
            return r14
        L9e:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzla.zzb(com.google.android.gms.internal.ads.zzbl, long, long, long):int");
    }

    public final int zzc(zzbl zzblVar, int i) {
        this.zzf = i;
        return zzA(zzblVar);
    }

    public final int zzd(zzbl zzblVar, boolean z) {
        this.zzg = z;
        return zzA(zzblVar);
    }

    @Nullable
    public final zzkx zze() {
        zzkx zzkxVar = this.zzi;
        if (zzkxVar == null) {
            return null;
        }
        if (zzkxVar == this.zzj) {
            this.zzj = zzkxVar.zzg();
        }
        if (zzkxVar == this.zzk) {
            this.zzk = zzkxVar.zzg();
        }
        zzkxVar.zzo();
        int i = this.zzn - 1;
        this.zzn = i;
        if (i == 0) {
            this.zzl = null;
            zzkx zzkxVar2 = this.zzi;
            this.zzo = zzkxVar2.zzb;
            this.zzp = zzkxVar2.zzg.zza.zzd;
        }
        this.zzi = this.zzi.zzg();
        zzI();
        return this.zzi;
    }

    public final zzkx zzf() {
        zzkx zzkxVar = this.zzk;
        zzdc.zzb(zzkxVar);
        this.zzk = zzkxVar.zzg();
        zzI();
        zzkx zzkxVar2 = this.zzk;
        zzdc.zzb(zzkxVar2);
        return zzkxVar2;
    }

    public final zzkx zzg() {
        zzkx zzkxVar = this.zzk;
        zzkx zzkxVar2 = this.zzj;
        if (zzkxVar == zzkxVar2) {
            zzdc.zzb(zzkxVar2);
            this.zzk = zzkxVar2.zzg();
        }
        zzkx zzkxVar3 = this.zzj;
        zzdc.zzb(zzkxVar3);
        this.zzj = zzkxVar3.zzg();
        zzI();
        zzkx zzkxVar4 = this.zzj;
        zzdc.zzb(zzkxVar4);
        return zzkxVar4;
    }

    public final zzkx zzh(zzky zzkyVar) {
        long zze;
        zzkx zzkxVar;
        zzkx zzkxVar2 = this.zzl;
        if (zzkxVar2 == null) {
            zze = MediaPeriodQueue.INITIAL_RENDERER_POSITION_OFFSET_US;
        } else {
            zze = (zzkxVar2.zze() + zzkxVar2.zzg.zze) - zzkyVar.zzb;
        }
        int i = 0;
        while (true) {
            if (i < this.zzq.size()) {
                zzky zzkyVar2 = ((zzkx) this.zzq.get(i)).zzg;
                long j = zzkyVar2.zze;
                long j2 = zzkyVar.zze;
                if ((j == -9223372036854775807L || j == j2) && zzkyVar2.zzb == zzkyVar.zzb && zzkyVar2.zza.equals(zzkyVar.zza)) {
                    zzkxVar = (zzkx) this.zzq.remove(i);
                    break;
                }
                i++;
            } else {
                zzkxVar = null;
                break;
            }
        }
        if (zzkxVar == null) {
            zzkxVar = zzko.zzf(this.zzr.zza, zzkyVar, zze);
        } else {
            zzkxVar.zzg = zzkyVar;
            zzkxVar.zzq(zze);
        }
        zzkx zzkxVar3 = this.zzl;
        if (zzkxVar3 != null) {
            zzkxVar3.zzp(zzkxVar);
        } else {
            this.zzi = zzkxVar;
            this.zzj = zzkxVar;
            this.zzk = zzkxVar;
        }
        this.zzo = null;
        this.zzl = zzkxVar;
        this.zzn++;
        zzI();
        return zzkxVar;
    }

    @Nullable
    public final zzkx zzi() {
        return this.zzl;
    }

    @Nullable
    public final zzkx zzj() {
        return this.zzi;
    }

    @Nullable
    public final zzkx zzk(zzuz zzuzVar) {
        for (int i = 0; i < this.zzq.size(); i++) {
            zzkx zzkxVar = (zzkx) this.zzq.get(i);
            if (zzkxVar.zza == zzuzVar) {
                return zzkxVar;
            }
        }
        return null;
    }

    @Nullable
    public final zzkx zzl() {
        return this.zzm;
    }

    @Nullable
    public final zzkx zzm() {
        return this.zzk;
    }

    @Nullable
    public final zzkx zzn() {
        return this.zzj;
    }

    @Nullable
    public final zzky zzo(long j, zzln zzlnVar) {
        zzkx zzkxVar = this.zzl;
        if (zzkxVar == null) {
            return zzE(zzlnVar.zza, zzlnVar.zzb, zzlnVar.zzc, zzlnVar.zzs);
        }
        return zzD(zzlnVar.zza, zzkxVar, j);
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x0057  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x005d  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final com.google.android.gms.internal.ads.zzky zzp(com.google.android.gms.internal.ads.zzbl r19, com.google.android.gms.internal.ads.zzky r20) {
        /*
            r18 = this;
            r0 = r18
            r1 = r19
            r2 = r20
            com.google.android.gms.internal.ads.zzvb r3 = r2.zza
            boolean r13 = zzL(r3)
            boolean r14 = r0.zzK(r1, r3)
            boolean r15 = r0.zzJ(r1, r3, r13)
            java.lang.Object r4 = r3.zza
            com.google.android.gms.internal.ads.zzbj r5 = r0.zza
            r1.zzn(r4, r5)
            boolean r1 = r3.zzb()
            r4 = -1
            r6 = 0
            r8 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            if (r1 != 0) goto L2d
            int r1 = r3.zze
            if (r1 != r4) goto L2f
        L2d:
            r10 = r8
            goto L33
        L2f:
            r5.zzg(r1)
            r10 = r6
        L33:
            boolean r1 = r3.zzb()
            if (r1 == 0) goto L47
            int r1 = r3.zzb
            int r6 = r3.zzc
            long r6 = r5.zzf(r1, r6)
        L41:
            r16 = r10
            r9 = r6
            r7 = r16
            goto L51
        L47:
            int r1 = (r10 > r8 ? 1 : (r10 == r8 ? 0 : -1))
            if (r1 == 0) goto L4e
            r9 = r6
            r7 = r9
            goto L51
        L4e:
            long r6 = r5.zzd
            goto L41
        L51:
            boolean r1 = r3.zzb()
            if (r1 == 0) goto L5d
            int r1 = r3.zzb
            r5.zzk(r1)
            goto L64
        L5d:
            int r1 = r3.zze
            if (r1 == r4) goto L64
            r5.zzk(r1)
        L64:
            com.google.android.gms.internal.ads.zzky r1 = new com.google.android.gms.internal.ads.zzky
            r5 = r3
            long r3 = r2.zzb
            long r11 = r2.zzc
            r2 = r5
            r5 = r11
            r11 = 0
            r12 = 0
            r1.<init>(r2, r3, r5, r7, r9, r11, r12, r13, r14, r15)
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzla.zzp(com.google.android.gms.internal.ads.zzbl, com.google.android.gms.internal.ads.zzky):com.google.android.gms.internal.ads.zzky");
    }

    public final zzvb zzq(zzbl zzblVar, Object obj, long j) {
        long zzC;
        int zza;
        zzbj zzbjVar = this.zza;
        int i = zzblVar.zzn(obj, zzbjVar).zzc;
        Object obj2 = this.zzo;
        if (obj2 != null && (zza = zzblVar.zza(obj2)) != -1 && zzblVar.zzd(zza, zzbjVar, false).zzc == i) {
            zzC = this.zzp;
        } else {
            zzkx zzkxVar = this.zzi;
            while (true) {
                if (zzkxVar != null) {
                    if (zzkxVar.zzb.equals(obj)) {
                        zzC = zzkxVar.zzg.zza.zzd;
                        break;
                    }
                    zzkxVar = zzkxVar.zzg();
                } else {
                    zzkx zzkxVar2 = this.zzi;
                    while (true) {
                        if (zzkxVar2 != null) {
                            int zza2 = zzblVar.zza(zzkxVar2.zzb);
                            if (zza2 != -1 && zzblVar.zzd(zza2, zzbjVar, false).zzc == i) {
                                zzC = zzkxVar2.zzg.zza.zzd;
                                break;
                            }
                            zzkxVar2 = zzkxVar2.zzg();
                        } else {
                            zzC = zzC(obj);
                            if (zzC == -1) {
                                zzC = this.zze;
                                this.zze = 1 + zzC;
                                if (this.zzi == null) {
                                    this.zzo = obj;
                                    this.zzp = zzC;
                                }
                            }
                        }
                    }
                }
            }
        }
        long j2 = zzC;
        zzblVar.zzn(obj, zzbjVar);
        int i2 = zzbjVar.zzc;
        zzbk zzbkVar = this.zzb;
        zzblVar.zze(i2, zzbkVar, 0L);
        Object obj3 = obj;
        for (int zza3 = zzblVar.zza(obj); zza3 >= zzbkVar.zzn; zza3--) {
            zzblVar.zzd(zza3, zzbjVar, true);
            zzbjVar.zzb();
            if (zzbjVar.zzd(zzbjVar.zzd) != -1) {
                Object obj4 = zzbjVar.zzb;
                obj4.getClass();
                obj3 = obj4;
            }
        }
        return zzH(zzblVar, obj3, j, j2, zzbkVar, zzbjVar);
    }

    public final void zzs() {
        if (this.zzn == 0) {
            return;
        }
        zzkx zzkxVar = this.zzi;
        zzdc.zzb(zzkxVar);
        this.zzo = zzkxVar.zzb;
        this.zzp = zzkxVar.zzg.zza.zzd;
        while (zzkxVar != null) {
            zzkxVar.zzo();
            zzkxVar = zzkxVar.zzg();
        }
        this.zzi = null;
        this.zzl = null;
        this.zzj = null;
        this.zzk = null;
        this.zzn = 0;
        zzI();
    }

    public final void zzt() {
        zzkx zzkxVar = this.zzm;
        if (zzkxVar == null || zzkxVar.zzt()) {
            this.zzm = null;
            for (int i = 0; i < this.zzq.size(); i++) {
                zzkx zzkxVar2 = (zzkx) this.zzq.get(i);
                if (!zzkxVar2.zzt()) {
                    this.zzm = zzkxVar2;
                    return;
                }
            }
        }
    }

    public final void zzu(long j) {
        zzkx zzkxVar = this.zzl;
        if (zzkxVar != null) {
            zzkxVar.zzn(j);
        }
    }

    public final void zzv() {
        if (!this.zzq.isEmpty()) {
            ArrayList arrayList = new ArrayList();
            for (int i = 0; i < this.zzq.size(); i++) {
                ((zzkx) this.zzq.get(i)).zzo();
            }
            this.zzq = arrayList;
            this.zzm = null;
            zzt();
        }
    }

    public final void zzw(zzbl zzblVar, zziu zziuVar) {
        this.zzh = zziuVar;
        long j = zziuVar.zzb;
        zzv();
    }

    public final boolean zzx(zzuz zzuzVar) {
        zzkx zzkxVar = this.zzl;
        if (zzkxVar != null && zzkxVar.zza == zzuzVar) {
            return true;
        }
        return false;
    }

    public final boolean zzy(zzuz zzuzVar) {
        zzkx zzkxVar = this.zzm;
        if (zzkxVar != null && zzkxVar.zza == zzuzVar) {
            return true;
        }
        return false;
    }

    public final boolean zzz() {
        zzkx zzkxVar = this.zzl;
        if (zzkxVar == null) {
            return true;
        }
        if (!zzkxVar.zzg.zzj && zzkxVar.zzs() && this.zzl.zzg.zze != -9223372036854775807L && this.zzn < 100) {
            return true;
        }
        return false;
    }
}
