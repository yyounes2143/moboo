package com.google.android.gms.internal.ads;

import java.io.IOException;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
final class zzgam extends zzgao {
    private zzgam(zzgak zzgakVar, Character ch) {
        super(zzgakVar, ch);
        char[] cArr;
        cArr = zzgakVar.zzf;
        zzfvc.zze(cArr.length == 64);
    }

    @Override // com.google.android.gms.internal.ads.zzgao, com.google.android.gms.internal.ads.zzgap
    public final int zza(byte[] bArr, CharSequence charSequence) throws zzgan {
        CharSequence zzg = zzg(charSequence);
        int length = zzg.length();
        zzgak zzgakVar = this.zzb;
        if (zzgakVar.zzd(length)) {
            int i = 0;
            int i2 = 0;
            while (i < zzg.length()) {
                int i3 = i2 + 1;
                int zzb = (zzgakVar.zzb(zzg.charAt(i + 1)) << 12) | (zzgakVar.zzb(zzg.charAt(i)) << 18);
                bArr[i2] = (byte) (zzb >>> 16);
                int i4 = i + 2;
                if (i4 < zzg.length()) {
                    int i5 = i + 3;
                    int zzb2 = zzb | (zzgakVar.zzb(zzg.charAt(i4)) << 6);
                    int i6 = i2 + 2;
                    bArr[i3] = (byte) ((zzb2 >>> 8) & 255);
                    if (i5 < zzg.length()) {
                        i += 4;
                        i2 += 3;
                        bArr[i6] = (byte) ((zzb2 | zzgakVar.zzb(zzg.charAt(i5))) & 255);
                    } else {
                        i2 = i6;
                        i = i5;
                    }
                } else {
                    i = i4;
                    i2 = i3;
                }
            }
            return i2;
        }
        throw new zzgan("Invalid input length " + zzg.length());
    }

    @Override // com.google.android.gms.internal.ads.zzgao
    public final zzgap zzb(zzgak zzgakVar, Character ch) {
        return new zzgam(zzgakVar, ch);
    }

    @Override // com.google.android.gms.internal.ads.zzgao, com.google.android.gms.internal.ads.zzgap
    public final void zzc(Appendable appendable, byte[] bArr, int i, int i2) throws IOException {
        int i3 = 0;
        zzfvc.zzk(0, i2, bArr.length);
        for (int i4 = i2; i4 >= 3; i4 -= 3) {
            zzgak zzgakVar = this.zzb;
            int i5 = ((bArr[i3 + 1] & 255) << 8) | ((bArr[i3] & 255) << 16) | (bArr[i3 + 2] & 255);
            appendable.append(zzgakVar.zza(i5 >>> 18));
            appendable.append(zzgakVar.zza((i5 >>> 12) & 63));
            appendable.append(zzgakVar.zza((i5 >>> 6) & 63));
            appendable.append(zzgakVar.zza(i5 & 63));
            i3 += 3;
        }
        if (i3 < i2) {
            zzh(appendable, bArr, i3, i2 - i3);
        }
    }

    public zzgam(String str, String str2, Character ch) {
        this(new zzgak(str, str2.toCharArray()), ch);
    }
}
