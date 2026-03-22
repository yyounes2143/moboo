package com.google.android.gms.internal.ads;

import java.security.InvalidKeyException;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzgkr extends zzgks {
    public zzgkr(byte[] bArr, int i) throws InvalidKeyException {
        super(bArr, i);
    }

    @Override // com.google.android.gms.internal.ads.zzgks
    public final int zza() {
        return 12;
    }

    @Override // com.google.android.gms.internal.ads.zzgks
    public final int[] zzb(int[] iArr, int i) {
        int length = iArr.length;
        if (length == 3) {
            int[] iArr2 = new int[16];
            zzgkq.zzb(iArr2, this.zza);
            iArr2[12] = i;
            System.arraycopy(iArr, 0, iArr2, 13, 3);
            return iArr2;
        }
        throw new IllegalArgumentException(String.format("ChaCha20 uses 96-bit nonces, but got a %d-bit nonce", Integer.valueOf(length * 32)));
    }
}
