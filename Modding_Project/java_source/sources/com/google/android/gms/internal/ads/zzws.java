package com.google.android.gms.internal.ads;

import androidx.annotation.CallSuper;
import androidx.annotation.GuardedBy;
import androidx.annotation.Nullable;
import androidx.media3.common.C;
import j$.util.Objects;
import java.io.IOException;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzws implements zzaet {
    private boolean zzA;
    @Nullable
    private zzsc zzB;
    private final zzwm zza;
    @Nullable
    private final zzsb zzd;
    @Nullable
    private final zzrw zze;
    @Nullable
    private zzwq zzf;
    @Nullable
    private zzz zzg;
    private int zzo;
    private int zzp;
    private int zzq;
    private int zzr;
    private boolean zzv;
    @Nullable
    private zzz zzy;
    private final zzwo zzb = new zzwo();
    private int zzh = 1000;
    private long[] zzi = new long[1000];
    private long[] zzj = new long[1000];
    private long[] zzm = new long[1000];
    private int[] zzl = new int[1000];
    private int[] zzk = new int[1000];
    private zzaes[] zzn = new zzaes[1000];
    private final zzwz zzc = new zzwz(new zzdk() { // from class: com.google.android.gms.internal.ads.zzwn
        @Override // com.google.android.gms.internal.ads.zzdk
        public final void zza(Object obj) {
            zzsa zzsaVar = ((zzwp) obj).zzb;
        }
    });
    private long zzs = Long.MIN_VALUE;
    private long zzt = Long.MIN_VALUE;
    private long zzu = Long.MIN_VALUE;
    private boolean zzx = true;
    private boolean zzw = true;
    private boolean zzz = true;

    public zzws(zzzg zzzgVar, @Nullable zzsb zzsbVar, @Nullable zzrw zzrwVar) {
        this.zzd = zzsbVar;
        this.zze = zzrwVar;
        this.zza = new zzwm(zzzgVar);
    }

    private final int zzB(int i, int i2, long j, boolean z) {
        int i3 = -1;
        for (int i4 = 0; i4 < i2; i4++) {
            int i5 = (this.zzm[i] > j ? 1 : (this.zzm[i] == j ? 0 : -1));
            if (i5 > 0) {
                break;
            }
            if (!z || (this.zzl[i] & 1) != 0) {
                if (i5 == 0) {
                    return i4;
                }
                i3 = i4;
            }
            i++;
            if (i == this.zzh) {
                i = 0;
            }
        }
        return i3;
    }

    private final int zzC(int i) {
        int i2 = this.zzq + i;
        int i3 = this.zzh;
        if (i2 < i3) {
            return i2;
        }
        return i2 - i3;
    }

    private final synchronized int zzD(zzkq zzkqVar, zzhp zzhpVar, boolean z, boolean z2, zzwo zzwoVar) {
        try {
            zzhpVar.zzd = false;
            if (!zzL()) {
                if (!z2 && !this.zzv) {
                    zzz zzzVar = this.zzy;
                    if (zzzVar == null || (!z && zzzVar == this.zzg)) {
                        return -3;
                    }
                    zzI(zzzVar, zzkqVar);
                    return -5;
                }
                zzhpVar.zzc(4);
                zzhpVar.zze = Long.MIN_VALUE;
                return -4;
            }
            zzz zzzVar2 = ((zzwp) this.zzc.zza(this.zzp + this.zzr)).zza;
            if (!z && zzzVar2 == this.zzg) {
                int zzC = zzC(this.zzr);
                if (!zzM(zzC)) {
                    zzhpVar.zzd = true;
                    return -3;
                }
                zzhpVar.zzc(this.zzl[zzC]);
                if (this.zzr == this.zzo - 1 && (z2 || this.zzv)) {
                    zzhpVar.zza(C.BUFFER_FLAG_LAST_SAMPLE);
                }
                zzhpVar.zze = this.zzm[zzC];
                zzwoVar.zza = this.zzk[zzC];
                zzwoVar.zzb = this.zzj[zzC];
                zzwoVar.zzc = this.zzn[zzC];
                return -4;
            }
            zzI(zzzVar2, zzkqVar);
            return -5;
        } catch (Throwable th) {
            throw th;
        }
    }

    private final synchronized long zzE(long j, boolean z, boolean z2) {
        Throwable th;
        try {
            try {
                int i = this.zzo;
                if (i != 0) {
                    long[] jArr = this.zzm;
                    int i2 = this.zzq;
                    if (j >= jArr[i2]) {
                        if (z2) {
                            try {
                                int i3 = this.zzr;
                                if (i3 != i) {
                                    i = i3 + 1;
                                }
                            } catch (Throwable th2) {
                                th = th2;
                                throw th;
                            }
                        }
                        int zzB = zzB(i2, i, j, false);
                        if (zzB != -1) {
                            return zzG(zzB);
                        }
                        return -1L;
                    }
                }
                return -1L;
            } catch (Throwable th3) {
                th = th3;
                th = th;
                throw th;
            }
        } catch (Throwable th4) {
            th = th4;
        }
    }

    private final synchronized long zzF() {
        int i = this.zzo;
        if (i == 0) {
            return -1L;
        }
        return zzG(i);
    }

    @GuardedBy("this")
    private final long zzG(int i) {
        int i2;
        long j = this.zzt;
        long j2 = Long.MIN_VALUE;
        if (i != 0) {
            int zzC = zzC(i - 1);
            for (int i3 = 0; i3 < i; i3++) {
                j2 = Math.max(j2, this.zzm[zzC]);
                if ((this.zzl[zzC] & 1) != 0) {
                    break;
                }
                zzC--;
                if (zzC == -1) {
                    zzC = this.zzh - 1;
                }
            }
        }
        this.zzt = Math.max(j, j2);
        this.zzo -= i;
        int i4 = this.zzp + i;
        this.zzp = i4;
        int i5 = this.zzq + i;
        this.zzq = i5;
        int i6 = this.zzh;
        if (i5 >= i6) {
            this.zzq = i5 - i6;
        }
        int i7 = this.zzr - i;
        this.zzr = i7;
        if (i7 < 0) {
            this.zzr = 0;
        }
        this.zzc.zze(i4);
        if (this.zzo == 0) {
            int i8 = this.zzq;
            if (i8 == 0) {
                i8 = this.zzh;
            }
            return this.zzj[i8 - 1] + this.zzk[i2];
        }
        return this.zzj[this.zzq];
    }

    private final synchronized void zzH(long j, int i, long j2, int i2, @Nullable zzaes zzaesVar) {
        boolean z;
        int zzC;
        boolean z2;
        try {
            int i3 = this.zzo;
            if (i3 > 0) {
                if (this.zzj[zzC(i3 - 1)] + this.zzk[zzC] <= j2) {
                    z2 = true;
                } else {
                    z2 = false;
                }
                zzdc.zzd(z2);
            }
            if ((536870912 & i) != 0) {
                z = true;
            } else {
                z = false;
            }
            this.zzv = z;
            this.zzu = Math.max(this.zzu, j);
            int zzC2 = zzC(this.zzo);
            this.zzm[zzC2] = j;
            this.zzj[zzC2] = j2;
            this.zzk[zzC2] = i2;
            this.zzl[zzC2] = i;
            this.zzn[zzC2] = zzaesVar;
            this.zzi[zzC2] = 0;
            zzwz zzwzVar = this.zzc;
            if (zzwzVar.zzf() || !((zzwp) zzwzVar.zzb()).zza.equals(this.zzy)) {
                zzz zzzVar = this.zzy;
                if (zzzVar != null) {
                    zzwzVar.zzc(this.zzp + this.zzo, new zzwp(zzzVar, this.zzd.zzb(this.zze, zzzVar), null));
                } else {
                    throw null;
                }
            }
            int i4 = this.zzo + 1;
            this.zzo = i4;
            int i5 = this.zzh;
            if (i4 == i5) {
                int i6 = i5 + 1000;
                long[] jArr = new long[i6];
                long[] jArr2 = new long[i6];
                long[] jArr3 = new long[i6];
                int[] iArr = new int[i6];
                int[] iArr2 = new int[i6];
                zzaes[] zzaesVarArr = new zzaes[i6];
                int i7 = this.zzq;
                int i8 = i5 - i7;
                System.arraycopy(this.zzj, i7, jArr2, 0, i8);
                System.arraycopy(this.zzm, this.zzq, jArr3, 0, i8);
                System.arraycopy(this.zzl, this.zzq, iArr, 0, i8);
                System.arraycopy(this.zzk, this.zzq, iArr2, 0, i8);
                System.arraycopy(this.zzn, this.zzq, zzaesVarArr, 0, i8);
                System.arraycopy(this.zzi, this.zzq, jArr, 0, i8);
                int i9 = this.zzq;
                System.arraycopy(this.zzj, 0, jArr2, i8, i9);
                System.arraycopy(this.zzm, 0, jArr3, i8, i9);
                System.arraycopy(this.zzl, 0, iArr, i8, i9);
                System.arraycopy(this.zzk, 0, iArr2, i8, i9);
                System.arraycopy(this.zzn, 0, zzaesVarArr, i8, i9);
                System.arraycopy(this.zzi, 0, jArr, i8, i9);
                this.zzj = jArr2;
                this.zzm = jArr3;
                this.zzl = iArr;
                this.zzk = iArr2;
                this.zzn = zzaesVarArr;
                this.zzi = jArr;
                this.zzq = 0;
                this.zzh = i6;
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    private final void zzI(zzz zzzVar, zzkq zzkqVar) {
        zzs zzsVar;
        zzz zzzVar2 = this.zzg;
        if (zzzVar2 == null) {
            zzsVar = null;
        } else {
            zzsVar = zzzVar2.zzs;
        }
        this.zzg = zzzVar;
        zzs zzsVar2 = zzzVar.zzs;
        zzsb zzsbVar = this.zzd;
        zzkqVar.zza = zzzVar.zzc(zzsbVar.zza(zzzVar));
        zzkqVar.zzb = this.zzB;
        if (zzzVar2 != null && Objects.equals(zzsVar, zzsVar2)) {
            return;
        }
        zzsc zzc = zzsbVar.zzc(this.zze, zzzVar);
        this.zzB = zzc;
        zzkqVar.zzb = zzc;
    }

    private final void zzJ() {
        if (this.zzB != null) {
            this.zzB = null;
            this.zzg = null;
        }
    }

    private final synchronized void zzK() {
        this.zzr = 0;
        this.zza.zzg();
    }

    private final boolean zzL() {
        if (this.zzr != this.zzo) {
            return true;
        }
        return false;
    }

    private final boolean zzM(int i) {
        if (this.zzB != null) {
            int i2 = this.zzl[i];
            return false;
        }
        return true;
    }

    private final synchronized boolean zzN(zzz zzzVar) {
        try {
            this.zzx = false;
            if (Objects.equals(zzzVar, this.zzy)) {
                return false;
            }
            zzwz zzwzVar = this.zzc;
            if (!zzwzVar.zzf() && ((zzwp) zzwzVar.zzb()).zza.equals(zzzVar)) {
                this.zzy = ((zzwp) zzwzVar.zzb()).zza;
            } else {
                this.zzy = zzzVar;
            }
            boolean z = this.zzz;
            zzz zzzVar2 = this.zzy;
            this.zzz = z & zzay.zzf(zzzVar2.zzo, zzzVar2.zzk);
            this.zzA = false;
            return true;
        } catch (Throwable th) {
            throw th;
        }
    }

    public final synchronized boolean zzA(long j, boolean z) {
        Throwable th;
        zzws zzwsVar;
        long j2;
        int i;
        try {
            try {
                zzK();
                int i2 = this.zzr;
                int zzC = zzC(i2);
                if (zzL() && j >= this.zzm[zzC]) {
                    if (j > this.zzu) {
                        if (z) {
                            z = true;
                        }
                    }
                    if (this.zzz) {
                        try {
                            int i3 = this.zzo - i2;
                            int i4 = 0;
                            while (true) {
                                if (i4 < i3) {
                                    if (this.zzm[zzC] < j) {
                                        zzC++;
                                        if (zzC == this.zzh) {
                                            zzC = 0;
                                        }
                                        i4++;
                                    } else {
                                        zzwsVar = this;
                                        j2 = j;
                                        i = i4;
                                        break;
                                    }
                                } else if (z) {
                                    j2 = j;
                                    i = i3;
                                    zzwsVar = this;
                                } else {
                                    zzwsVar = this;
                                    j2 = j;
                                    i = -1;
                                }
                            }
                        } catch (Throwable th2) {
                            th = th2;
                            throw th;
                        }
                    } else {
                        zzwsVar = this;
                        j2 = j;
                        i = zzwsVar.zzB(zzC, this.zzo - i2, j2, true);
                    }
                    if (i == -1) {
                        return false;
                    }
                    zzwsVar.zzs = j2;
                    zzwsVar.zzr += i;
                    return true;
                }
                return false;
            } catch (Throwable th3) {
                th = th3;
                th = th;
                throw th;
            }
        } catch (Throwable th4) {
            th = th4;
        }
    }

    public final int zza() {
        return this.zzp;
    }

    public final int zzb() {
        return this.zzp + this.zzr;
    }

    public final synchronized int zzc(long j, boolean z) {
        Throwable th;
        try {
            try {
                int i = this.zzr;
                int zzC = zzC(i);
                if (!zzL() || j < this.zzm[zzC]) {
                    return 0;
                }
                if (j > this.zzu && z) {
                    try {
                        return this.zzo - i;
                    } catch (Throwable th2) {
                        th = th2;
                        throw th;
                    }
                }
                int zzB = zzB(zzC, this.zzo - i, j, true);
                if (zzB == -1) {
                    return 0;
                }
                return zzB;
            } catch (Throwable th3) {
                th = th3;
                th = th;
                throw th;
            }
        } catch (Throwable th4) {
            th = th4;
            th = th;
            throw th;
        }
    }

    public final int zzd() {
        return this.zzp + this.zzo;
    }

    @CallSuper
    public final int zze(zzkq zzkqVar, zzhp zzhpVar, int i, boolean z) {
        boolean z2;
        if ((i & 2) != 0) {
            z2 = true;
        } else {
            z2 = false;
        }
        zzwo zzwoVar = this.zzb;
        int zzD = zzD(zzkqVar, zzhpVar, z2, z, zzwoVar);
        if (zzD == -4) {
            if (!zzhpVar.zzf()) {
                int i2 = i & 1;
                if ((i & 4) == 0) {
                    if (i2 != 0) {
                        this.zza.zzd(zzhpVar, zzwoVar);
                        return -4;
                    }
                    this.zza.zze(zzhpVar, zzwoVar);
                } else if (i2 != 0) {
                    return -4;
                }
                this.zzr++;
            }
            return -4;
        }
        return zzD;
    }

    @Override // com.google.android.gms.internal.ads.zzaet
    public final /* synthetic */ int zzf(zzl zzlVar, int i, boolean z) {
        return zzaer.zza(this, zzlVar, i, z);
    }

    @Override // com.google.android.gms.internal.ads.zzaet
    public final int zzg(zzl zzlVar, int i, boolean z, int i2) throws IOException {
        return this.zza.zza(zzlVar, i, z);
    }

    public final synchronized long zzh() {
        return this.zzu;
    }

    @Nullable
    public final synchronized zzz zzi() {
        if (this.zzx) {
            return null;
        }
        return this.zzy;
    }

    public final void zzj(long j, boolean z, boolean z2) {
        this.zza.zzc(zzE(j, false, z2));
    }

    public final void zzk() {
        this.zza.zzc(zzF());
    }

    @Override // com.google.android.gms.internal.ads.zzaet
    public final void zzm(zzz zzzVar) {
        boolean zzN = zzN(zzzVar);
        zzwq zzwqVar = this.zzf;
        if (zzwqVar != null && zzN) {
            zzwqVar.zzN(zzzVar);
        }
    }

    @CallSuper
    public final void zzn() throws IOException {
        zzsc zzscVar = this.zzB;
        if (zzscVar == null) {
            return;
        }
        throw zzscVar.zza();
    }

    @CallSuper
    public final void zzo() {
        zzk();
        zzJ();
    }

    @CallSuper
    public final void zzp() {
        zzq(true);
        zzJ();
    }

    @CallSuper
    public final void zzq(boolean z) {
        this.zza.zzf();
        this.zzo = 0;
        this.zzp = 0;
        this.zzq = 0;
        this.zzr = 0;
        this.zzw = true;
        this.zzs = Long.MIN_VALUE;
        this.zzt = Long.MIN_VALUE;
        this.zzu = Long.MIN_VALUE;
        this.zzv = false;
        this.zzc.zzd();
        if (z) {
            this.zzy = null;
            this.zzx = true;
            this.zzz = true;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzaet
    public final /* synthetic */ void zzr(zzek zzekVar, int i) {
        zzaer.zzb(this, zzekVar, i);
    }

    @Override // com.google.android.gms.internal.ads.zzaet
    public final void zzs(zzek zzekVar, int i, int i2) {
        this.zza.zzh(zzekVar, i);
    }

    @Override // com.google.android.gms.internal.ads.zzaet
    public final void zzt(long j, int i, int i2, int i3, @Nullable zzaes zzaesVar) {
        if (this.zzw) {
            if ((i & 1) != 0) {
                this.zzw = false;
            } else {
                return;
            }
        }
        if (this.zzz) {
            if (j >= this.zzs) {
                if ((i & 1) == 0) {
                    if (!this.zzA) {
                        zzdx.zzf("SampleQueue", "Overriding unexpected non-sync sample for format: ".concat(String.valueOf(this.zzy)));
                        this.zzA = true;
                    }
                    i |= 1;
                }
            } else {
                return;
            }
        }
        int i4 = i;
        zzH(j, i4, (this.zza.zzb() - i2) - i3, i2, zzaesVar);
    }

    public final void zzu(long j) {
        this.zzs = j;
    }

    public final void zzv(@Nullable zzwq zzwqVar) {
        this.zzf = zzwqVar;
    }

    public final synchronized void zzw(int i) {
        boolean z = false;
        if (i >= 0) {
            try {
                if (this.zzr + i <= this.zzo) {
                    z = true;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        zzdc.zzd(z);
        this.zzr += i;
    }

    public final synchronized boolean zzx() {
        return this.zzv;
    }

    @CallSuper
    public final synchronized boolean zzy(boolean z) {
        boolean z2 = true;
        if (!zzL()) {
            if (!z && !this.zzv) {
                zzz zzzVar = this.zzy;
                if (zzzVar != null) {
                    if (zzzVar == this.zzg) {
                        return false;
                    }
                } else {
                    z2 = false;
                }
            }
            return z2;
        } else if (((zzwp) this.zzc.zza(this.zzp + this.zzr)).zza != this.zzg) {
            return true;
        } else {
            return zzM(zzC(this.zzr));
        }
    }

    public final synchronized boolean zzz(int i) {
        zzK();
        int i2 = this.zzp;
        if (i >= i2 && i <= this.zzo + i2) {
            this.zzs = Long.MIN_VALUE;
            this.zzr = i - i2;
            return true;
        }
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzaet
    public final /* synthetic */ void zzl(long j) {
    }
}
