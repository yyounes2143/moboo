package com.google.android.gms.internal.ads;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Iterator;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzhav extends zzgxk {
    static final int[] zza = {1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, 144, 233, 377, TypedValues.MotionType.TYPE_QUANTIZE_MOTIONSTEPS, 987, 1597, 2584, 4181, 6765, 10946, 17711, 28657, 46368, 75025, 121393, 196418, 317811, 514229, 832040, 1346269, 2178309, 3524578, 5702887, 9227465, 14930352, 24157817, 39088169, 63245986, 102334155, 165580141, 267914296, 433494437, 701408733, 1134903170, 1836311903, Integer.MAX_VALUE};
    private final int zzc;
    private final zzgxk zzd;
    private final zzgxk zze;
    private final int zzf;
    private final int zzg;

    public static zzgxk zzC(zzgxk zzgxkVar, zzgxk zzgxkVar2) {
        if (zzgxkVar2.zzd() == 0) {
            return zzgxkVar;
        }
        if (zzgxkVar.zzd() == 0) {
            return zzgxkVar2;
        }
        int zzd = zzgxkVar.zzd() + zzgxkVar2.zzd();
        if (zzd < 128) {
            return zzD(zzgxkVar, zzgxkVar2);
        }
        if (zzgxkVar instanceof zzhav) {
            zzhav zzhavVar = (zzhav) zzgxkVar;
            zzgxk zzgxkVar3 = zzhavVar.zze;
            if (zzgxkVar3.zzd() + zzgxkVar2.zzd() < 128) {
                return new zzhav(zzhavVar.zzd, zzD(zzgxkVar3, zzgxkVar2));
            }
            zzgxk zzgxkVar4 = zzhavVar.zzd;
            if (zzgxkVar4.zzf() > zzgxkVar3.zzf() && zzhavVar.zzg > zzgxkVar2.zzf()) {
                return new zzhav(zzgxkVar4, new zzhav(zzgxkVar3, zzgxkVar2));
            }
        }
        if (zzd >= zzc(Math.max(zzgxkVar.zzf(), zzgxkVar2.zzf()) + 1)) {
            return new zzhav(zzgxkVar, zzgxkVar2);
        }
        return zzhas.zza(new zzhas(null), zzgxkVar, zzgxkVar2);
    }

    private static zzgxk zzD(zzgxk zzgxkVar, zzgxk zzgxkVar2) {
        int zzd = zzgxkVar.zzd();
        int zzd2 = zzgxkVar2.zzd();
        byte[] bArr = new byte[zzd + zzd2];
        zzgxkVar.zzz(bArr, 0, 0, zzd);
        zzgxkVar2.zzz(bArr, 0, zzd, zzd2);
        return new zzgxh(bArr);
    }

    public static int zzc(int i) {
        int[] iArr = zza;
        int length = iArr.length;
        if (i >= 47) {
            return Integer.MAX_VALUE;
        }
        return iArr[i];
    }

    @Override // com.google.android.gms.internal.ads.zzgxk
    public final boolean equals(Object obj) {
        boolean zzg;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof zzgxk)) {
            return false;
        }
        zzgxk zzgxkVar = (zzgxk) obj;
        int i = this.zzc;
        if (i != zzgxkVar.zzd()) {
            return false;
        }
        if (i == 0) {
            return true;
        }
        int zzr = zzr();
        int zzr2 = zzgxkVar.zzr();
        if (zzr != 0 && zzr2 != 0 && zzr != zzr2) {
            return false;
        }
        zzhat zzhatVar = new zzhat(this, null);
        zzgxg next = zzhatVar.next();
        zzhat zzhatVar2 = new zzhat(zzgxkVar, null);
        zzgxg next2 = zzhatVar2.next();
        int i2 = 0;
        int i3 = 0;
        int i4 = 0;
        while (true) {
            int zzd = next.zzd() - i2;
            int zzd2 = next2.zzd() - i3;
            int min = Math.min(zzd, zzd2);
            if (i2 == 0) {
                zzg = next.zzg(next2, i3, min);
            } else {
                zzg = next2.zzg(next, i2, min);
            }
            if (!zzg) {
                return false;
            }
            i4 += min;
            if (i4 >= i) {
                if (i4 == i) {
                    return true;
                }
                throw new IllegalStateException();
            }
            if (min == zzd) {
                next = zzhatVar.next();
                i2 = 0;
            } else {
                i2 += min;
            }
            if (min == zzd2) {
                next2 = zzhatVar2.next();
                i3 = 0;
            } else {
                i3 += min;
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzgxk, java.lang.Iterable
    public final /* synthetic */ Iterator<Byte> iterator() {
        return new zzhar(this);
    }

    @Override // com.google.android.gms.internal.ads.zzgxk
    public final byte zza(int i) {
        zzgxk.zzy(i, this.zzc);
        return zzb(i);
    }

    @Override // com.google.android.gms.internal.ads.zzgxk
    public final byte zzb(int i) {
        int i2 = this.zzf;
        if (i < i2) {
            return this.zzd.zzb(i);
        }
        return this.zze.zzb(i - i2);
    }

    @Override // com.google.android.gms.internal.ads.zzgxk
    public final int zzd() {
        return this.zzc;
    }

    @Override // com.google.android.gms.internal.ads.zzgxk
    public final void zze(byte[] bArr, int i, int i2, int i3) {
        int i4 = i + i3;
        int i5 = this.zzf;
        if (i4 <= i5) {
            this.zzd.zze(bArr, i, i2, i3);
        } else if (i >= i5) {
            this.zze.zze(bArr, i - i5, i2, i3);
        } else {
            int i6 = i5 - i;
            this.zzd.zze(bArr, i, i2, i6);
            this.zze.zze(bArr, 0, i2 + i6, i3 - i6);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzgxk
    public final int zzf() {
        return this.zzg;
    }

    @Override // com.google.android.gms.internal.ads.zzgxk
    public final boolean zzh() {
        if (this.zzc >= zzc(this.zzg)) {
            return true;
        }
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzgxk
    public final int zzi(int i, int i2, int i3) {
        int i4 = i2 + i3;
        int i5 = this.zzf;
        if (i4 <= i5) {
            return this.zzd.zzi(i, i2, i3);
        }
        if (i2 >= i5) {
            return this.zze.zzi(i, i2 - i5, i3);
        }
        int i6 = i5 - i2;
        return this.zze.zzi(this.zzd.zzi(i, i2, i6), 0, i3 - i6);
    }

    @Override // com.google.android.gms.internal.ads.zzgxk
    public final int zzj(int i, int i2, int i3) {
        int i4 = i2 + i3;
        int i5 = this.zzf;
        if (i4 <= i5) {
            return this.zzd.zzj(i, i2, i3);
        }
        if (i2 >= i5) {
            return this.zze.zzj(i, i2 - i5, i3);
        }
        int i6 = i5 - i2;
        return this.zze.zzj(this.zzd.zzj(i, i2, i6), 0, i3 - i6);
    }

    @Override // com.google.android.gms.internal.ads.zzgxk
    public final zzgxk zzk(int i, int i2) {
        int i3 = this.zzc;
        int zzq = zzgxk.zzq(i, i2, i3);
        if (zzq == 0) {
            return zzgxk.zzb;
        }
        if (zzq == i3) {
            return this;
        }
        int i4 = this.zzf;
        if (i2 <= i4) {
            return this.zzd.zzk(i, i2);
        }
        int i5 = i2 - i4;
        if (i >= i4) {
            return this.zze.zzk(i - i4, i5);
        }
        zzgxk zzgxkVar = this.zzd;
        return new zzhav(zzgxkVar.zzk(i, zzgxkVar.zzd()), this.zze.zzk(0, i5));
    }

    @Override // com.google.android.gms.internal.ads.zzgxk
    public final zzgxq zzl() {
        ArrayList arrayList = new ArrayList();
        zzhat zzhatVar = new zzhat(this, null);
        while (zzhatVar.hasNext()) {
            arrayList.add(zzhatVar.next().zzn());
        }
        int i = zzgxq.zze;
        int size = arrayList.size();
        boolean z = false;
        int i2 = 0;
        int i3 = 0;
        while (i3 < size) {
            Object obj = arrayList.get(i3);
            i3++;
            ByteBuffer byteBuffer = (ByteBuffer) obj;
            i2 += byteBuffer.remaining();
            if (byteBuffer.hasArray()) {
                z |= true;
            } else if (byteBuffer.isDirect()) {
                z |= true;
            } else {
                z |= true;
            }
        }
        if (z) {
            return new zzgxm(arrayList, i2, true, null);
        }
        return zzgxq.zzG(new zzgzi(arrayList), 4096);
    }

    @Override // com.google.android.gms.internal.ads.zzgxk
    public final String zzm(Charset charset) {
        return new String(zzA(), charset);
    }

    @Override // com.google.android.gms.internal.ads.zzgxk
    public final ByteBuffer zzn() {
        throw null;
    }

    @Override // com.google.android.gms.internal.ads.zzgxk
    public final void zzo(zzgxb zzgxbVar) throws IOException {
        this.zzd.zzo(zzgxbVar);
        this.zze.zzo(zzgxbVar);
    }

    @Override // com.google.android.gms.internal.ads.zzgxk
    public final boolean zzp() {
        zzgxk zzgxkVar = this.zzd;
        zzgxk zzgxkVar2 = this.zze;
        if (zzgxkVar2.zzj(zzgxkVar.zzj(0, 0, this.zzf), 0, zzgxkVar2.zzd()) != 0) {
            return false;
        }
        return true;
    }

    @Override // com.google.android.gms.internal.ads.zzgxk
    public final zzgxf zzs() {
        return new zzhar(this);
    }

    private zzhav(zzgxk zzgxkVar, zzgxk zzgxkVar2) {
        this.zzd = zzgxkVar;
        this.zze = zzgxkVar2;
        int zzd = zzgxkVar.zzd();
        this.zzf = zzd;
        this.zzc = zzd + zzgxkVar2.zzd();
        this.zzg = Math.max(zzgxkVar.zzf(), zzgxkVar2.zzf()) + 1;
    }
}
