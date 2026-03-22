package com.mbridge.msdk.thrid.okio;

import java.io.IOException;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public abstract class g implements r, AutoCloseable {

    /* renamed from: a  reason: collision with root package name */
    private final r f9636a;

    public g(r rVar) {
        if (rVar != null) {
            this.f9636a = rVar;
            return;
        }
        throw new IllegalArgumentException("delegate == null");
    }

    @Override // com.mbridge.msdk.thrid.okio.r
    public void a(c cVar, long j) throws IOException {
        this.f9636a.a(cVar, j);
    }

    @Override // com.mbridge.msdk.thrid.okio.r
    public t b() {
        return this.f9636a.b();
    }

    @Override // com.mbridge.msdk.thrid.okio.r, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.f9636a.close();
    }

    @Override // com.mbridge.msdk.thrid.okio.r, java.io.Flushable
    public void flush() throws IOException {
        this.f9636a.flush();
    }

    public String toString() {
        return getClass().getSimpleName() + "(" + this.f9636a.toString() + ")";
    }
}
