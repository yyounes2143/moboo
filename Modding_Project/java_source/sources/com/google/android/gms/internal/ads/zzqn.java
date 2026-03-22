package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;
import java.nio.ByteBuffer;
import java.util.Arrays;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzqn extends zzco {
    @Nullable
    private int[] zzd;
    @Nullable
    private int[] zze;

    @Override // com.google.android.gms.internal.ads.zzcn
    public final void zze(ByteBuffer byteBuffer) {
        int[] iArr = this.zze;
        iArr.getClass();
        int position = byteBuffer.position();
        int limit = byteBuffer.limit();
        ByteBuffer zzj = zzj(((limit - position) / this.zzb.zze) * this.zzc.zze);
        while (position < limit) {
            for (int i : iArr) {
                int zzk = (zzeu.zzk(this.zzb.zzd) * i) + position;
                int i2 = this.zzb.zzd;
                if (i2 != 2) {
                    if (i2 == 4) {
                        zzj.putFloat(byteBuffer.getFloat(zzk));
                    } else {
                        throw new IllegalStateException("Unexpected encoding: " + i2);
                    }
                } else {
                    zzj.putShort(byteBuffer.getShort(zzk));
                }
            }
            position += this.zzb.zze;
        }
        byteBuffer.position(limit);
        zzj.flip();
    }

    @Override // com.google.android.gms.internal.ads.zzco
    public final zzcl zzi(zzcl zzclVar) throws zzcm {
        boolean z;
        boolean z2;
        int[] iArr = this.zzd;
        if (iArr == null) {
            return zzcl.zza;
        }
        int i = zzclVar.zzd;
        if (i != 2 && i != 4) {
            throw new zzcm("Unhandled input format:", zzclVar);
        }
        int i2 = zzclVar.zzc;
        if (i2 != iArr.length) {
            z = true;
        } else {
            z = false;
        }
        int i3 = 0;
        while (true) {
            int length = iArr.length;
            if (i3 < length) {
                int i4 = iArr[i3];
                if (i4 < i2) {
                    if (i4 != i3) {
                        z2 = true;
                    } else {
                        z2 = false;
                    }
                    z |= z2;
                    i3++;
                } else {
                    throw new zzcm("Channel map (" + Arrays.toString(iArr) + ") trying to access non-existent input channel.", zzclVar);
                }
            } else if (z) {
                return new zzcl(zzclVar.zzb, length, i);
            } else {
                return zzcl.zza;
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzco
    public final void zzk() {
        this.zze = this.zzd;
    }

    @Override // com.google.android.gms.internal.ads.zzco
    public final void zzm() {
        this.zze = null;
        this.zzd = null;
    }

    public final void zzo(@Nullable int[] iArr) {
        this.zzd = iArr;
    }
}
