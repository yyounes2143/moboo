package com.google.android.gms.internal.ads;

import java.nio.ByteBuffer;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public abstract class zzhfe extends zzhfc implements zzarh {
    private int zzg;

    public zzhfe(String str) {
        super("mvhd");
    }

    public final int zzg() {
        if (!this.zzb) {
            zzf();
        }
        return this.zzg;
    }

    public final long zzh(ByteBuffer byteBuffer) {
        this.zzg = zzarg.zzc(byteBuffer.get());
        zzarg.zzd(byteBuffer);
        byteBuffer.get();
        return 4L;
    }
}
