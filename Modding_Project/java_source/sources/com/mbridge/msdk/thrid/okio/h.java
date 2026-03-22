package com.mbridge.msdk.thrid.okio;

import java.io.IOException;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public abstract class h implements s, AutoCloseable {

    /* renamed from: a  reason: collision with root package name */
    private final s f9637a;

    public h(s sVar) {
        if (sVar != null) {
            this.f9637a = sVar;
            return;
        }
        throw new IllegalArgumentException("delegate == null");
    }

    @Override // com.mbridge.msdk.thrid.okio.s
    public t b() {
        return this.f9637a.b();
    }

    @Override // com.mbridge.msdk.thrid.okio.s, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.f9637a.close();
    }

    public final s d() {
        return this.f9637a;
    }

    public String toString() {
        return getClass().getSimpleName() + "(" + this.f9637a.toString() + ")";
    }
}
