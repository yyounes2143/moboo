package com.google.android.gms.internal.ads;

import java.io.EOFException;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.util.Arrays;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
final class zzwm {
    private final zzek zza = new zzek(32);
    private zzwl zzb;
    private zzwl zzc;
    private zzwl zzd;
    private long zze;
    private final zzzg zzf;

    public zzwm(zzzg zzzgVar) {
        this.zzf = zzzgVar;
        zzwl zzwlVar = new zzwl(0L, 65536);
        this.zzb = zzwlVar;
        this.zzc = zzwlVar;
        this.zzd = zzwlVar;
    }

    private final int zzi(int i) {
        zzwl zzwlVar = this.zzd;
        if (zzwlVar.zzc == null) {
            zzyz zzb = this.zzf.zzb();
            zzwl zzwlVar2 = new zzwl(this.zzd.zzb, 65536);
            zzwlVar.zzc = zzb;
            zzwlVar.zzd = zzwlVar2;
        }
        return Math.min(i, (int) (this.zzd.zzb - this.zze));
    }

    private static zzwl zzj(zzwl zzwlVar, long j) {
        while (j >= zzwlVar.zzb) {
            zzwlVar = zzwlVar.zzd;
        }
        return zzwlVar;
    }

    private static zzwl zzk(zzwl zzwlVar, long j, ByteBuffer byteBuffer, int i) {
        zzwl zzj = zzj(zzwlVar, j);
        while (i > 0) {
            int min = Math.min(i, (int) (zzj.zzb - j));
            byteBuffer.put(zzj.zzc.zza, zzj.zza(j), min);
            i -= min;
            j += min;
            if (j == zzj.zzb) {
                zzj = zzj.zzd;
            }
        }
        return zzj;
    }

    private static zzwl zzl(zzwl zzwlVar, long j, byte[] bArr, int i) {
        zzwl zzj = zzj(zzwlVar, j);
        int i2 = i;
        while (i2 > 0) {
            int min = Math.min(i2, (int) (zzj.zzb - j));
            System.arraycopy(zzj.zzc.zza, zzj.zza(j), bArr, i - i2, min);
            i2 -= min;
            j += min;
            if (j == zzj.zzb) {
                zzj = zzj.zzd;
            }
        }
        return zzj;
    }

    private static zzwl zzm(zzwl zzwlVar, zzhp zzhpVar, zzwo zzwoVar, zzek zzekVar) {
        zzwl zzwlVar2;
        boolean z;
        int i;
        if (zzhpVar.zzl()) {
            long j = zzwoVar.zzb;
            zzekVar.zzI(1);
            zzwl zzl = zzl(zzwlVar, j, zzekVar.zzN(), 1);
            long j2 = j + 1;
            byte b = zzekVar.zzN()[0];
            int i2 = b & 128;
            int i3 = b & Byte.MAX_VALUE;
            zzhm zzhmVar = zzhpVar.zzb;
            byte[] bArr = zzhmVar.zza;
            if (bArr == null) {
                zzhmVar.zza = new byte[16];
            } else {
                Arrays.fill(bArr, (byte) 0);
            }
            if (i2 != 0) {
                z = true;
            } else {
                z = false;
            }
            zzwlVar2 = zzl(zzl, j2, zzhmVar.zza, i3);
            long j3 = j2 + i3;
            if (z) {
                zzekVar.zzI(2);
                zzwlVar2 = zzl(zzwlVar2, j3, zzekVar.zzN(), 2);
                j3 += 2;
                i = zzekVar.zzq();
            } else {
                i = 1;
            }
            int[] iArr = zzhmVar.zzd;
            if (iArr == null || iArr.length < i) {
                iArr = new int[i];
            }
            int[] iArr2 = iArr;
            int[] iArr3 = zzhmVar.zze;
            if (iArr3 == null || iArr3.length < i) {
                iArr3 = new int[i];
            }
            int[] iArr4 = iArr3;
            if (z) {
                int i4 = i * 6;
                zzekVar.zzI(i4);
                zzwlVar2 = zzl(zzwlVar2, j3, zzekVar.zzN(), i4);
                j3 += i4;
                zzekVar.zzL(0);
                for (int i5 = 0; i5 < i; i5++) {
                    iArr2[i5] = zzekVar.zzq();
                    iArr4[i5] = zzekVar.zzp();
                }
            } else {
                iArr2[0] = 0;
                iArr4[0] = zzwoVar.zza - ((int) (j3 - zzwoVar.zzb));
            }
            zzaes zzaesVar = zzwoVar.zzc;
            String str = zzeu.zza;
            zzhmVar.zzc(i, iArr2, iArr4, zzaesVar.zzb, zzhmVar.zza, zzaesVar.zza, zzaesVar.zzc, zzaesVar.zzd);
            long j4 = zzwoVar.zzb;
            int i6 = (int) (j3 - j4);
            zzwoVar.zzb = j4 + i6;
            zzwoVar.zza -= i6;
        } else {
            zzwlVar2 = zzwlVar;
        }
        if (zzhpVar.zze()) {
            zzekVar.zzI(4);
            zzwl zzl2 = zzl(zzwlVar2, zzwoVar.zzb, zzekVar.zzN(), 4);
            int zzp = zzekVar.zzp();
            zzwoVar.zzb += 4;
            zzwoVar.zza -= 4;
            zzhpVar.zzj(zzp);
            zzwl zzk = zzk(zzl2, zzwoVar.zzb, zzhpVar.zzc, zzp);
            zzwoVar.zzb += zzp;
            int i7 = zzwoVar.zza - zzp;
            zzwoVar.zza = i7;
            ByteBuffer byteBuffer = zzhpVar.zzf;
            if (byteBuffer != null && byteBuffer.capacity() >= i7) {
                zzhpVar.zzf.clear();
            } else {
                zzhpVar.zzf = ByteBuffer.allocate(i7);
            }
            return zzk(zzk, zzwoVar.zzb, zzhpVar.zzf, zzwoVar.zza);
        }
        zzhpVar.zzj(zzwoVar.zza);
        return zzk(zzwlVar2, zzwoVar.zzb, zzhpVar.zzc, zzwoVar.zza);
    }

    private final void zzn(int i) {
        long j = this.zze + i;
        this.zze = j;
        zzwl zzwlVar = this.zzd;
        if (j == zzwlVar.zzb) {
            this.zzd = zzwlVar.zzd;
        }
    }

    public final int zza(zzl zzlVar, int i, boolean z) throws IOException {
        int zzi = zzi(i);
        zzwl zzwlVar = this.zzd;
        int zza = zzlVar.zza(zzwlVar.zzc.zza, zzwlVar.zza(this.zze), zzi);
        if (zza == -1) {
            if (z) {
                return -1;
            }
            throw new EOFException();
        }
        zzn(zza);
        return zza;
    }

    public final long zzb() {
        return this.zze;
    }

    public final void zzc(long j) {
        zzwl zzwlVar;
        if (j != -1) {
            while (true) {
                zzwlVar = this.zzb;
                if (j < zzwlVar.zzb) {
                    break;
                }
                this.zzf.zzc(zzwlVar.zzc);
                this.zzb = this.zzb.zzb();
            }
            if (this.zzc.zza < zzwlVar.zza) {
                this.zzc = zzwlVar;
            }
        }
    }

    public final void zzd(zzhp zzhpVar, zzwo zzwoVar) {
        zzm(this.zzc, zzhpVar, zzwoVar, this.zza);
    }

    public final void zze(zzhp zzhpVar, zzwo zzwoVar) {
        this.zzc = zzm(this.zzc, zzhpVar, zzwoVar, this.zza);
    }

    public final void zzf() {
        zzwl zzwlVar = this.zzb;
        if (zzwlVar.zzc != null) {
            this.zzf.zzd(zzwlVar);
            zzwlVar.zzb();
        }
        this.zzb.zze(0L, 65536);
        zzwl zzwlVar2 = this.zzb;
        this.zzc = zzwlVar2;
        this.zzd = zzwlVar2;
        this.zze = 0L;
        this.zzf.zzg();
    }

    public final void zzg() {
        this.zzc = this.zzb;
    }

    public final void zzh(zzek zzekVar, int i) {
        while (i > 0) {
            int zzi = zzi(i);
            zzwl zzwlVar = this.zzd;
            zzekVar.zzH(zzwlVar.zzc.zza, zzwlVar.zza(this.zze), zzi);
            i -= zzi;
            zzn(zzi);
        }
    }
}
