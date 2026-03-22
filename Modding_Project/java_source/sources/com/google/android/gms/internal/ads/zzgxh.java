package com.google.android.gms.internal.ads;

import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.charset.Charset;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public class zzgxh extends zzgxg {
    protected final byte[] zza;

    public zzgxh(byte[] bArr) {
        super(null);
        bArr.getClass();
        this.zza = bArr;
    }

    @Override // com.google.android.gms.internal.ads.zzgxk
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof zzgxk) || zzd() != ((zzgxk) obj).zzd()) {
            return false;
        }
        if (zzd() == 0) {
            return true;
        }
        if (obj instanceof zzgxh) {
            zzgxh zzgxhVar = (zzgxh) obj;
            int zzr = zzr();
            int zzr2 = zzgxhVar.zzr();
            if (zzr != 0 && zzr2 != 0 && zzr != zzr2) {
                return false;
            }
            return zzg(zzgxhVar, 0, zzd());
        }
        return obj.equals(this);
    }

    @Override // com.google.android.gms.internal.ads.zzgxk
    public byte zza(int i) {
        return this.zza[i];
    }

    @Override // com.google.android.gms.internal.ads.zzgxk
    public byte zzb(int i) {
        return this.zza[i];
    }

    public int zzc() {
        return 0;
    }

    @Override // com.google.android.gms.internal.ads.zzgxk
    public int zzd() {
        return this.zza.length;
    }

    @Override // com.google.android.gms.internal.ads.zzgxk
    public void zze(byte[] bArr, int i, int i2, int i3) {
        System.arraycopy(this.zza, i, bArr, i2, i3);
    }

    @Override // com.google.android.gms.internal.ads.zzgxg
    public final boolean zzg(zzgxk zzgxkVar, int i, int i2) {
        if (i2 <= zzgxkVar.zzd()) {
            int i3 = i + i2;
            if (i3 <= zzgxkVar.zzd()) {
                if (zzgxkVar instanceof zzgxh) {
                    zzgxh zzgxhVar = (zzgxh) zzgxkVar;
                    byte[] bArr = this.zza;
                    byte[] bArr2 = zzgxhVar.zza;
                    int zzc = zzc() + i2;
                    int zzc2 = zzc();
                    int zzc3 = zzgxhVar.zzc() + i;
                    while (zzc2 < zzc) {
                        if (bArr[zzc2] != bArr2[zzc3]) {
                            return false;
                        }
                        zzc2++;
                        zzc3++;
                    }
                    return true;
                }
                return zzgxkVar.zzk(i, i3).equals(zzk(0, i2));
            }
            int zzd = zzgxkVar.zzd();
            throw new IllegalArgumentException("Ran off end of other: " + i + ", " + i2 + ", " + zzd);
        }
        int zzd2 = zzd();
        throw new IllegalArgumentException("Length too large: " + i2 + zzd2);
    }

    @Override // com.google.android.gms.internal.ads.zzgxk
    public final int zzi(int i, int i2, int i3) {
        return zzgzf.zzb(i, this.zza, zzc() + i2, i3);
    }

    @Override // com.google.android.gms.internal.ads.zzgxk
    public final int zzj(int i, int i2, int i3) {
        int zzc = zzc() + i2;
        return zzhbu.zzf(i, this.zza, zzc, i3 + zzc);
    }

    @Override // com.google.android.gms.internal.ads.zzgxk
    public final zzgxk zzk(int i, int i2) {
        int zzq = zzgxk.zzq(i, i2, zzd());
        if (zzq == 0) {
            return zzgxk.zzb;
        }
        return new zzgxe(this.zza, zzc() + i, zzq);
    }

    @Override // com.google.android.gms.internal.ads.zzgxk
    public final zzgxq zzl() {
        return zzgxq.zzH(this.zza, zzc(), zzd(), true);
    }

    @Override // com.google.android.gms.internal.ads.zzgxk
    public final String zzm(Charset charset) {
        return new String(this.zza, zzc(), zzd(), charset);
    }

    @Override // com.google.android.gms.internal.ads.zzgxk
    public final ByteBuffer zzn() {
        return ByteBuffer.wrap(this.zza, zzc(), zzd()).asReadOnlyBuffer();
    }

    @Override // com.google.android.gms.internal.ads.zzgxk
    public final void zzo(zzgxb zzgxbVar) throws IOException {
        zzgxbVar.zza(this.zza, zzc(), zzd());
    }

    @Override // com.google.android.gms.internal.ads.zzgxk
    public final boolean zzp() {
        int zzc = zzc();
        return zzhbu.zzi(this.zza, zzc, zzd() + zzc);
    }
}
