package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
final class zzaiu {
    public final zzaet zza;
    public zzajk zzd;
    public zzaiq zze;
    public int zzf;
    public int zzg;
    public int zzh;
    public int zzi;
    private final String zzj;
    private boolean zzm;
    public final zzajj zzb = new zzajj();
    public final zzek zzc = new zzek();
    private final zzek zzk = new zzek(1);
    private final zzek zzl = new zzek();

    public zzaiu(zzaet zzaetVar, zzajk zzajkVar, zzaiq zzaiqVar, String str) {
        this.zza = zzaetVar;
        this.zzd = zzajkVar;
        this.zze = zzaiqVar;
        this.zzj = str;
        zzh(zzajkVar, zzaiqVar);
    }

    public final int zza() {
        int i;
        if (!this.zzm) {
            i = this.zzd.zzg[this.zzf];
        } else if (this.zzb.zzj[this.zzf]) {
            i = 1;
        } else {
            i = 0;
        }
        if (zzf() != null) {
            return i | 1073741824;
        }
        return i;
    }

    public final int zzb() {
        if (!this.zzm) {
            return this.zzd.zzd[this.zzf];
        }
        return this.zzb.zzh[this.zzf];
    }

    public final int zzc(int i, int i2) {
        zzek zzekVar;
        boolean z;
        int i3;
        zzaji zzf = zzf();
        if (zzf == null) {
            return 0;
        }
        int i4 = zzf.zzd;
        if (i4 != 0) {
            zzekVar = this.zzb.zzn;
        } else {
            byte[] bArr = zzf.zze;
            String str = zzeu.zza;
            zzek zzekVar2 = this.zzl;
            int length = bArr.length;
            zzekVar2.zzJ(bArr, length);
            zzekVar = zzekVar2;
            i4 = length;
        }
        zzajj zzajjVar = this.zzb;
        boolean zzb = zzajjVar.zzb(this.zzf);
        if (zzb || i2 != 0) {
            z = true;
        } else {
            z = false;
        }
        zzek zzekVar3 = this.zzk;
        if (true != z) {
            i3 = 0;
        } else {
            i3 = 128;
        }
        zzekVar3.zzN()[0] = (byte) (i3 | i4);
        zzekVar3.zzL(0);
        zzaet zzaetVar = this.zza;
        zzaetVar.zzs(zzekVar3, 1, 1);
        zzaetVar.zzs(zzekVar, i4, 1);
        if (!z) {
            return i4 + 1;
        }
        if (!zzb) {
            zzek zzekVar4 = this.zzc;
            zzekVar4.zzI(8);
            byte[] zzN = zzekVar4.zzN();
            zzN[0] = 0;
            zzN[1] = 1;
            zzN[2] = 0;
            zzN[3] = (byte) i2;
            zzN[4] = (byte) ((i >> 24) & 255);
            zzN[5] = (byte) ((i >> 16) & 255);
            zzN[6] = (byte) ((i >> 8) & 255);
            zzN[7] = (byte) (i & 255);
            zzaetVar.zzs(zzekVar4, 8, 1);
            return i4 + 9;
        }
        int i5 = i4 + 1;
        zzek zzekVar5 = zzajjVar.zzn;
        int zzq = zzekVar5.zzq();
        zzekVar5.zzM(-2);
        int i6 = (zzq * 6) + 2;
        if (i2 != 0) {
            zzek zzekVar6 = this.zzc;
            zzekVar6.zzI(i6);
            byte[] zzN2 = zzekVar6.zzN();
            zzekVar5.zzH(zzN2, 0, i6);
            int i7 = (((zzN2[2] & 255) << 8) | (zzN2[3] & 255)) + i2;
            zzN2[2] = (byte) ((i7 >> 8) & 255);
            zzN2[3] = (byte) (i7 & 255);
            zzekVar5 = zzekVar6;
        }
        zzaetVar.zzs(zzekVar5, i6, 1);
        return i5 + i6;
    }

    public final long zzd() {
        if (!this.zzm) {
            return this.zzd.zzc[this.zzf];
        }
        return this.zzb.zzf[this.zzh];
    }

    public final long zze() {
        if (!this.zzm) {
            return this.zzd.zzf[this.zzf];
        }
        zzajj zzajjVar = this.zzb;
        return zzajjVar.zzi[this.zzf];
    }

    @Nullable
    public final zzaji zzf() {
        if (!this.zzm) {
            return null;
        }
        zzajj zzajjVar = this.zzb;
        zzaiq zzaiqVar = zzajjVar.zza;
        String str = zzeu.zza;
        int i = zzaiqVar.zza;
        zzaji zzajiVar = zzajjVar.zzm;
        if (zzajiVar == null) {
            zzajiVar = this.zzd.zza.zzb(i);
        }
        if (zzajiVar == null || !zzajiVar.zza) {
            return null;
        }
        return zzajiVar;
    }

    public final void zzh(zzajk zzajkVar, zzaiq zzaiqVar) {
        this.zzd = zzajkVar;
        this.zze = zzaiqVar;
        zzx zzb = zzajkVar.zza.zzg.zzb();
        zzb.zzE(this.zzj);
        this.zza.zzm(zzb.zzaj());
        zzi();
    }

    public final void zzi() {
        zzajj zzajjVar = this.zzb;
        zzajjVar.zzd = 0;
        zzajjVar.zzp = 0L;
        zzajjVar.zzq = false;
        zzajjVar.zzk = false;
        zzajjVar.zzo = false;
        zzajjVar.zzm = null;
        this.zzf = 0;
        this.zzh = 0;
        this.zzg = 0;
        this.zzi = 0;
        this.zzm = false;
    }

    public final void zzj(zzs zzsVar) {
        String str;
        zzajh zzajhVar = this.zzd.zza;
        zzaiq zzaiqVar = this.zzb.zza;
        String str2 = zzeu.zza;
        zzaji zzb = zzajhVar.zzb(zzaiqVar.zza);
        if (zzb != null) {
            str = zzb.zzb;
        } else {
            str = null;
        }
        zzs zzb2 = zzsVar.zzb(str);
        zzz zzzVar = this.zzd.zza.zzg;
        String str3 = this.zzj;
        zzx zzb3 = zzzVar.zzb();
        zzb3.zzE(str3);
        zzb3.zzH(zzb2);
        this.zza.zzm(zzb3.zzaj());
    }

    public final boolean zzl() {
        this.zzf++;
        if (!this.zzm) {
            return false;
        }
        int i = this.zzg + 1;
        this.zzg = i;
        int[] iArr = this.zzb.zzg;
        int i2 = this.zzh;
        if (i != iArr[i2]) {
            return true;
        }
        this.zzh = i2 + 1;
        this.zzg = 0;
        return false;
    }
}
