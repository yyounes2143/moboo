package com.google.android.gms.internal.ads;

import java.nio.ByteBuffer;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzgnk {
    public static final zzgwp zza = zzgwp.zzb(new byte[0]);

    public static final zzgwp zza(int i) {
        return zzgwp.zzb(ByteBuffer.allocate(5).put((byte) 0).putInt(i).array());
    }

    public static final zzgwp zzb(int i) {
        return zzgwp.zzb(ByteBuffer.allocate(5).put((byte) 1).putInt(i).array());
    }
}
