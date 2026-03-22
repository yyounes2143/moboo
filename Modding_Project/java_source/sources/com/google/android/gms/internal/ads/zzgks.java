package com.google.android.gms.internal.ads;

import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.security.GeneralSecurityException;
import java.security.InvalidKeyException;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
abstract class zzgks {
    int[] zza;
    private final int zzb;

    public zzgks(byte[] bArr, int i) throws InvalidKeyException {
        if (bArr.length == 32) {
            this.zza = zzgkq.zze(bArr);
            this.zzb = i;
            return;
        }
        throw new InvalidKeyException("The key length in bytes must be 32.");
    }

    public abstract int zza();

    public abstract int[] zzb(int[] iArr, int i);

    public final ByteBuffer zzc(byte[] bArr, int i) {
        int[] zzb = zzb(zzgkq.zze(bArr), i);
        int[] iArr = (int[]) zzb.clone();
        zzgkq.zzc(iArr);
        for (int i2 = 0; i2 < 16; i2++) {
            zzb[i2] = zzb[i2] + iArr[i2];
        }
        ByteBuffer order = ByteBuffer.allocate(64).order(ByteOrder.LITTLE_ENDIAN);
        order.asIntBuffer().put(zzb, 0, 16);
        return order;
    }

    public final byte[] zzd(byte[] bArr, ByteBuffer byteBuffer) throws GeneralSecurityException {
        ByteBuffer allocate = ByteBuffer.allocate(byteBuffer.remaining());
        if (bArr.length == zza()) {
            int remaining = byteBuffer.remaining();
            int i = remaining / 64;
            for (int i2 = 0; i2 < i + 1; i2++) {
                ByteBuffer zzc = zzc(bArr, this.zzb + i2);
                if (i2 == i) {
                    zzgvp.zza(allocate, byteBuffer, zzc, remaining % 64);
                } else {
                    zzgvp.zza(allocate, byteBuffer, zzc, 64);
                }
            }
            return allocate.array();
        }
        int zza = zza();
        throw new GeneralSecurityException("The nonce length (in bytes) must be " + zza);
    }
}
