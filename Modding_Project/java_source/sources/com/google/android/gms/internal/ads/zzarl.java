package com.google.android.gms.internal.ads;

import java.nio.ByteBuffer;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzarl extends zzhfc {
    public zzarl(String str) {
        super(str);
    }

    @Override // com.google.android.gms.internal.ads.zzhfc
    public final void zze(ByteBuffer byteBuffer) {
        byteBuffer.position(byteBuffer.position() + byteBuffer.remaining());
    }
}
