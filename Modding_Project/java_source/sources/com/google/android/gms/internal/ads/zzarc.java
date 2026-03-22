package com.google.android.gms.internal.ads;

import java.nio.ByteBuffer;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
final class zzarc extends ThreadLocal {
    public zzarc(zzard zzardVar) {
    }

    @Override // java.lang.ThreadLocal
    public final /* synthetic */ Object initialValue() {
        return ByteBuffer.allocate(32);
    }
}
