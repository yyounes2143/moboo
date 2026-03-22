package com.google.android.gms.internal.ads;

import java.io.IOException;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
final class zzgal extends zzgao {
    final char[] zza;

    private zzgal(zzgak zzgakVar) {
        super(zzgakVar, null);
        char[] cArr;
        this.zza = new char[512];
        cArr = zzgakVar.zzf;
        zzfvc.zze(cArr.length == 16);
        for (int i = 0; i < 256; i++) {
            this.zza[i] = zzgakVar.zza(i >>> 4);
            this.zza[i | 256] = zzgakVar.zza(i & 15);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzgao, com.google.android.gms.internal.ads.zzgap
    public final int zza(byte[] bArr, CharSequence charSequence) throws zzgan {
        if (charSequence.length() % 2 != 1) {
            int i = 0;
            int i2 = 0;
            while (i < charSequence.length()) {
                zzgak zzgakVar = this.zzb;
                bArr[i2] = (byte) (zzgakVar.zzb(charSequence.charAt(i + 1)) | (zzgakVar.zzb(charSequence.charAt(i)) << 4));
                i += 2;
                i2++;
            }
            return i2;
        }
        throw new zzgan("Invalid input length " + charSequence.length());
    }

    @Override // com.google.android.gms.internal.ads.zzgao
    public final zzgap zzb(zzgak zzgakVar, Character ch) {
        return new zzgal(zzgakVar);
    }

    @Override // com.google.android.gms.internal.ads.zzgao, com.google.android.gms.internal.ads.zzgap
    public final void zzc(Appendable appendable, byte[] bArr, int i, int i2) throws IOException {
        zzfvc.zzk(0, i2, bArr.length);
        for (int i3 = 0; i3 < i2; i3++) {
            int i4 = bArr[i3] & 255;
            char[] cArr = this.zza;
            appendable.append(cArr[i4]);
            appendable.append(cArr[i4 | 256]);
        }
    }

    public zzgal(String str, String str2) {
        this(new zzgak("base16()", "0123456789ABCDEF".toCharArray()));
    }
}
