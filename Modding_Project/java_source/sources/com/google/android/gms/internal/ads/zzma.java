package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;
import j$.util.Objects;
import java.io.IOException;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzma {
    private final zzlv zza;
    private final int zzb;
    @Nullable
    private final zzlv zzc;
    private int zzd = 0;
    private boolean zze = false;
    private boolean zzf = false;

    public zzma(zzlv zzlvVar, @Nullable zzlv zzlvVar2, int i) {
        this.zza = zzlvVar;
        this.zzb = i;
        this.zzc = zzlvVar2;
    }

    private final int zzK(@Nullable zzlv zzlvVar, zzkx zzkxVar, zzyy zzyyVar, zzii zziiVar) throws zzik {
        boolean z;
        if (zzlvVar != null && zzS(zzlvVar)) {
            zzlv zzlvVar2 = this.zza;
            if (zzlvVar == zzlvVar2) {
                z = false;
            } else {
                z = true;
            }
            if ((zzlvVar != zzlvVar2 || !zzR()) && (zzlvVar != this.zzc || !zzT())) {
                zzwt zzp = zzlvVar.zzp();
                zzwt[] zzwtVarArr = zzkxVar.zzc;
                int i = this.zzb;
                zzwt zzwtVar = zzwtVarArr[i];
                boolean zzb = zzyyVar.zzb(i);
                if (zzb && zzp == zzwtVar) {
                    return 1;
                }
                if (!zzlvVar.zzR()) {
                    zzz[] zzU = zzU(zzyyVar.zzc[i]);
                    zzwt zzwtVar2 = zzwtVarArr[i];
                    zzwtVar2.getClass();
                    zzlvVar.zzH(zzU, zzwtVar2, zzkxVar.zzf(), zzkxVar.zze(), zzkxVar.zzg.zza);
                    return 3;
                } else if (!zzlvVar.zzW()) {
                    return 0;
                } else {
                    zzM(zzlvVar, zziiVar);
                    if (!zzb || zzG()) {
                        zzO(!z);
                    }
                    return 1;
                }
            }
        }
        return 1;
    }

    @Nullable
    private final zzlv zzL(@Nullable zzkx zzkxVar) {
        if (zzkxVar != null) {
            int i = this.zzb;
            zzwt[] zzwtVarArr = zzkxVar.zzc;
            if (zzwtVarArr[i] != null) {
                zzlv zzlvVar = this.zza;
                zzwt zzp = zzlvVar.zzp();
                zzwt zzwtVar = zzwtVarArr[i];
                if (zzp == zzwtVar) {
                    return zzlvVar;
                }
                zzlv zzlvVar2 = this.zzc;
                if (zzlvVar2 != null && zzlvVar2.zzp() == zzwtVar) {
                    return zzlvVar2;
                }
            }
        }
        return null;
    }

    private final void zzM(zzlv zzlvVar, zzii zziiVar) {
        boolean z = true;
        if (this.zza != zzlvVar && this.zzc != zzlvVar) {
            z = false;
        }
        zzdc.zzf(z);
        if (!zzS(zzlvVar)) {
            return;
        }
        zziiVar.zzd(zzlvVar);
        zzV(zzlvVar);
        zzlvVar.zzr();
    }

    private final void zzN(zzlv zzlvVar, zzwt zzwtVar, zzii zziiVar, long j, boolean z) throws zzik {
        if (zzS(zzlvVar)) {
            if (zzwtVar != zzlvVar.zzp()) {
                zzM(zzlvVar, zziiVar);
            } else if (z) {
                zzlvVar.zzJ(j);
            }
        }
    }

    private final void zzO(boolean z) {
        if (z) {
            if (this.zze) {
                this.zza.zzI();
                this.zze = false;
            }
        } else if (this.zzf) {
            zzlv zzlvVar = this.zzc;
            zzlvVar.getClass();
            zzlvVar.zzI();
            this.zzf = false;
        }
    }

    private final void zzP(boolean z) throws zzik {
        if (z) {
            zzlv zzlvVar = this.zzc;
            zzlvVar.getClass();
            zzlvVar.zzu(17, this.zza);
            return;
        }
        zzlv zzlvVar2 = this.zza;
        zzlv zzlvVar3 = this.zzc;
        zzlvVar3.getClass();
        zzlvVar2.zzu(17, zzlvVar3);
    }

    private final boolean zzQ(zzkx zzkxVar, @Nullable zzlv zzlvVar) {
        if (zzlvVar == null) {
            return true;
        }
        zzwt[] zzwtVarArr = zzkxVar.zzc;
        int i = this.zzb;
        zzwt zzwtVar = zzwtVarArr[i];
        if (zzlvVar.zzp() != null) {
            if (zzlvVar.zzp() == zzwtVar) {
                if (zzwtVar != null && !zzlvVar.zzQ()) {
                    zzkxVar.zzg();
                    boolean z = zzkxVar.zzg.zzg;
                }
            }
            zzkx zzg = zzkxVar.zzg();
            if (zzg != null && zzg.zzc[i] == zzlvVar.zzp()) {
                return true;
            }
            return false;
        }
        return true;
    }

    private final boolean zzR() {
        int i = this.zzd;
        if (i != 2 && i != 4) {
            return false;
        }
        return true;
    }

    private static boolean zzS(zzlv zzlvVar) {
        if (zzlvVar.zzcU() != 0) {
            return true;
        }
        return false;
    }

    private final boolean zzT() {
        if (this.zzd == 3) {
            return true;
        }
        return false;
    }

    private static zzz[] zzU(@Nullable zzyq zzyqVar) {
        int i;
        if (zzyqVar != null) {
            i = zzyqVar.zzh();
        } else {
            i = 0;
        }
        zzz[] zzzVarArr = new zzz[i];
        for (int i2 = 0; i2 < i; i2++) {
            zzyqVar.getClass();
            zzzVarArr[i2] = zzyqVar.zza(i2);
        }
        return zzzVarArr;
    }

    private static final void zzV(zzlv zzlvVar) {
        if (zzlvVar.zzcU() == 2) {
            zzlvVar.zzP();
        }
    }

    private static final void zzW(zzlv zzlvVar, long j) {
        zzlvVar.zzK();
        if (!(zzlvVar instanceof zzxi)) {
            return;
        }
        zzxi zzxiVar = (zzxi) zzlvVar;
        throw null;
    }

    public final void zzA() {
        zzlv zzlvVar = this.zza;
        if (zzS(zzlvVar)) {
            zzV(zzlvVar);
        }
        zzlv zzlvVar2 = this.zzc;
        if (zzlvVar2 != null && zzS(zzlvVar2)) {
            zzV(zzlvVar2);
        }
    }

    public final boolean zzB(zzkx zzkxVar) {
        zzlv zzL = zzL(zzkxVar);
        if (zzL != null && !zzL.zzQ() && !zzL.zzX() && !zzL.zzW()) {
            return false;
        }
        return true;
    }

    public final boolean zzC(zzkx zzkxVar) {
        if (zzQ(zzkxVar, this.zza) && zzQ(zzkxVar, this.zzc)) {
            return true;
        }
        return false;
    }

    public final boolean zzD(zzkx zzkxVar) {
        zzlv zzL = zzL(zzkxVar);
        zzL.getClass();
        return zzL.zzQ();
    }

    public final boolean zzE() {
        if (this.zzc != null) {
            return true;
        }
        return false;
    }

    public final boolean zzF() {
        boolean z;
        zzlv zzlvVar = this.zza;
        if (zzS(zzlvVar)) {
            z = zzlvVar.zzW();
        } else {
            z = true;
        }
        zzlv zzlvVar2 = this.zzc;
        if (zzlvVar2 != null && zzS(zzlvVar2)) {
            return z & zzlvVar2.zzW();
        }
        return z;
    }

    public final boolean zzG() {
        if (!zzR() && !zzT()) {
            return false;
        }
        return true;
    }

    public final boolean zzH(zzkx zzkxVar) {
        boolean z;
        boolean z2;
        if (zzR() && zzL(zzkxVar) == this.zza) {
            z = true;
        } else {
            z = false;
        }
        if (zzT() && zzL(zzkxVar) == this.zzc) {
            z2 = true;
        } else {
            z2 = false;
        }
        if (z || z2) {
            return true;
        }
        return false;
    }

    public final boolean zzI(@Nullable zzkx zzkxVar) {
        if (zzL(zzkxVar) != null) {
            return true;
        }
        return false;
    }

    public final boolean zzJ() {
        int i = this.zzd;
        if (i != 0 && i != 2 && i != 4) {
            zzlv zzlvVar = this.zzc;
            zzlvVar.getClass();
            return zzS(zzlvVar);
        }
        return zzS(this.zza);
    }

    public final int zza() {
        zzlv zzlvVar = this.zzc;
        boolean zzS = zzS(this.zza);
        int i = 0;
        if (zzlvVar != null && zzS(zzlvVar)) {
            i = 1;
        }
        return (zzS ? 1 : 0) + i;
    }

    public final int zzb() {
        return this.zza.zzb();
    }

    public final int zzc(zzkx zzkxVar, zzyy zzyyVar, zzii zziiVar) throws zzik {
        int zzK = zzK(this.zza, zzkxVar, zzyyVar, zziiVar);
        int zzK2 = zzK(this.zzc, zzkxVar, zzyyVar, zziiVar);
        if (zzK == 1) {
            return zzK2;
        }
        return zzK;
    }

    public final long zzd(@Nullable zzkx zzkxVar) {
        zzlv zzL = zzL(zzkxVar);
        Objects.requireNonNull(zzL);
        return zzL.zzcW();
    }

    public final void zze(zzii zziiVar) throws zzik {
        boolean z;
        zzM(this.zza, zziiVar);
        zzlv zzlvVar = this.zzc;
        if (zzlvVar != null) {
            if (zzS(zzlvVar) && this.zzd != 3) {
                z = true;
            } else {
                z = false;
            }
            zzM(zzlvVar, zziiVar);
            zzO(false);
            if (z) {
                zzP(true);
            }
        }
        this.zzd = 0;
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x0017  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x001a  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0027  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void zzf(com.google.android.gms.internal.ads.zzii r7) {
        /*
            r6 = this;
            boolean r0 = r6.zzG()
            if (r0 != 0) goto L7
            return
        L7:
            int r0 = r6.zzd
            r1 = 0
            r2 = 4
            r3 = 1
            if (r0 == r2) goto L12
            r4 = 2
            if (r0 != r4) goto L14
            r0 = r4
        L12:
            r4 = r3
            goto L15
        L14:
            r4 = r1
        L15:
            if (r4 == 0) goto L1a
            com.google.android.gms.internal.ads.zzlv r5 = r6.zza
            goto L1f
        L1a:
            com.google.android.gms.internal.ads.zzlv r5 = r6.zzc
            r5.getClass()
        L1f:
            r6.zzM(r5, r7)
            r6.zzO(r4)
            if (r0 != r2) goto L28
            r1 = r3
        L28:
            r6.zzd = r1
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzma.zzf(com.google.android.gms.internal.ads.zzii):void");
    }

    public final void zzg(zzlz zzlzVar, zzyq zzyqVar, zzwt zzwtVar, long j, boolean z, boolean z2, long j2, long j3, zzvb zzvbVar, zzii zziiVar) throws zzik {
        zzz[] zzU = zzU(zzyqVar);
        int i = this.zzd;
        if (i != 0 && i != 2 && i != 4) {
            this.zzf = true;
            zzlv zzlvVar = this.zzc;
            zzlvVar.getClass();
            zzlvVar.zzs(zzlzVar, zzU, zzwtVar, j, z, z2, j2, j3, zzvbVar);
            zziiVar.zze(zzlvVar);
            return;
        }
        this.zze = true;
        zzlv zzlvVar2 = this.zza;
        zzlvVar2.zzs(zzlzVar, zzU, zzwtVar, j, z, z2, j2, j3, zzvbVar);
        zziiVar.zze(zzlvVar2);
    }

    public final void zzh() {
        zzlv zzlvVar = this.zza;
        if (zzS(zzlvVar)) {
            zzlvVar.zzt();
            return;
        }
        zzlv zzlvVar2 = this.zzc;
        if (zzlvVar2 != null && zzS(zzlvVar2)) {
            zzlvVar2.zzt();
        }
    }

    public final void zzi(int i, @Nullable Object obj, zzkx zzkxVar) throws zzik {
        zzlv zzL = zzL(zzkxVar);
        zzL.getClass();
        zzL.zzu(11, obj);
    }

    public final void zzj(zzwt zzwtVar, zzii zziiVar, long j, boolean z) throws zzik {
        zzN(this.zza, zzwtVar, zziiVar, j, z);
        zzlv zzlvVar = this.zzc;
        if (zzlvVar != null) {
            zzN(zzlvVar, zzwtVar, zziiVar, j, z);
        }
    }

    public final void zzk() throws zzik {
        boolean z;
        int i = this.zzd;
        int i2 = 0;
        if (i != 3 && i != 4) {
            if (i == 2) {
                this.zzd = 0;
                return;
            }
            return;
        }
        if (i == 4) {
            z = true;
        } else {
            z = false;
        }
        zzP(z);
        if (this.zzd != 4) {
            i2 = 1;
        }
        this.zzd = i2;
    }

    public final void zzl(zzyy zzyyVar, zzyy zzyyVar2, long j) {
        int i;
        int i2 = this.zzb;
        boolean zzb = zzyyVar.zzb(i2);
        boolean zzb2 = zzyyVar2.zzb(i2);
        zzlv zzlvVar = this.zzc;
        if (zzlvVar == null || (i = this.zzd) == 3 || (i == 0 && zzS(this.zza))) {
            zzlvVar = this.zza;
        }
        if (zzb && !zzlvVar.zzR()) {
            zzb();
            zzlz zzlzVar = zzyyVar.zzb[i2];
            zzlz zzlzVar2 = zzyyVar2.zzb[i2];
            if (!zzb2 || !Objects.equals(zzlzVar2, zzlzVar) || zzG()) {
                zzW(zzlvVar, j);
            }
        }
    }

    public final void zzm(zzkx zzkxVar) throws IOException {
        zzlv zzL = zzL(zzkxVar);
        zzL.getClass();
        zzL.zzw();
    }

    public final void zzn() {
        this.zza.zzG();
        this.zze = false;
        zzlv zzlvVar = this.zzc;
        if (zzlvVar != null) {
            zzlvVar.zzG();
            this.zzf = false;
        }
    }

    public final void zzo(long j, long j2) throws zzik {
        zzlv zzlvVar = this.zza;
        if (zzS(zzlvVar)) {
            zzlvVar.zzV(j, j2);
        }
        zzlv zzlvVar2 = this.zzc;
        if (zzlvVar2 != null && zzS(zzlvVar2)) {
            zzlvVar2.zzV(j, j2);
        }
    }

    public final void zzp() {
        if (!zzS(this.zza)) {
            zzO(true);
        }
        zzlv zzlvVar = this.zzc;
        if (zzlvVar != null && !zzS(zzlvVar)) {
            zzO(false);
        }
    }

    public final void zzq(zzkx zzkxVar, long j) throws zzik {
        zzlv zzL = zzL(zzkxVar);
        if (zzL != null) {
            zzL.zzJ(j);
        }
    }

    public final void zzr(long j) {
        int i;
        zzlv zzlvVar = this.zza;
        if (zzS(zzlvVar) && (i = this.zzd) != 4 && i != 2) {
            zzW(zzlvVar, j);
        }
        zzlv zzlvVar2 = this.zzc;
        if (zzlvVar2 != null && zzS(zzlvVar2) && this.zzd != 3) {
            zzW(zzlvVar2, j);
        }
    }

    public final void zzs(zzkx zzkxVar, long j) {
        zzlv zzL = zzL(zzkxVar);
        zzL.getClass();
        zzW(zzL, j);
    }

    public final void zzt(float f, float f2) throws zzik {
        this.zza.zzM(f, f2);
        zzlv zzlvVar = this.zzc;
        if (zzlvVar != null) {
            zzlvVar.zzM(f, f2);
        }
    }

    public final void zzu(zzbl zzblVar) {
        this.zza.zzN(zzblVar);
        zzlv zzlvVar = this.zzc;
        if (zzlvVar != null) {
            zzlvVar.zzN(zzblVar);
        }
    }

    public final void zzv(zzabi zzabiVar) throws zzik {
        if (zzb() == 2) {
            this.zza.zzu(7, zzabiVar);
            zzlv zzlvVar = this.zzc;
            if (zzlvVar != null) {
                zzlvVar.zzu(7, zzabiVar);
            }
        }
    }

    public final void zzw(@Nullable Object obj) throws zzik {
        if (zzb() != 2) {
            return;
        }
        int i = this.zzd;
        if (i != 4 && i != 1) {
            this.zza.zzu(1, obj);
            return;
        }
        zzlv zzlvVar = this.zzc;
        zzlvVar.getClass();
        zzlvVar.zzu(1, obj);
    }

    public final void zzx(float f) throws zzik {
        if (zzb() == 1) {
            zzlv zzlvVar = this.zza;
            Float valueOf = Float.valueOf(f);
            zzlvVar.zzu(2, valueOf);
            zzlv zzlvVar2 = this.zzc;
            if (zzlvVar2 != null) {
                zzlvVar2.zzu(2, valueOf);
            }
        }
    }

    public final void zzy() throws zzik {
        zzlv zzlvVar = this.zza;
        if (zzlvVar.zzcU() == 1 && this.zzd != 4) {
            zzlvVar.zzO();
            return;
        }
        zzlv zzlvVar2 = this.zzc;
        if (zzlvVar2 != null && zzlvVar2.zzcU() == 1 && this.zzd != 3) {
            zzlvVar2.zzO();
        }
    }

    public final void zzz() {
        int i;
        zzdc.zzf(!zzG());
        if (zzS(this.zza)) {
            i = 3;
        } else {
            zzlv zzlvVar = this.zzc;
            if (zzlvVar != null && zzS(zzlvVar)) {
                i = 4;
            } else {
                i = 2;
            }
        }
        this.zzd = i;
    }
}
