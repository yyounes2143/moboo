package com.mbridge.msdk.thrid.okio;

import java.io.IOException;
import java.io.InterruptedIOException;
import java.util.concurrent.TimeUnit;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public class t {
    public static final t d = new a();

    /* renamed from: a  reason: collision with root package name */
    private boolean f9648a;
    private long b;
    private long c;

    /* compiled from: Proguard */
    /* loaded from: classes4.dex */
    public static class a extends t {
        @Override // com.mbridge.msdk.thrid.okio.t
        public t a(long j) {
            return this;
        }

        @Override // com.mbridge.msdk.thrid.okio.t
        public t a(long j, TimeUnit timeUnit) {
            return this;
        }

        @Override // com.mbridge.msdk.thrid.okio.t
        public void e() throws IOException {
        }
    }

    public t a(long j, TimeUnit timeUnit) {
        if (j >= 0) {
            if (timeUnit != null) {
                this.c = timeUnit.toNanos(j);
                return this;
            }
            throw new IllegalArgumentException("unit == null");
        }
        throw new IllegalArgumentException("timeout < 0: " + j);
    }

    public t b() {
        this.c = 0L;
        return this;
    }

    public long c() {
        if (this.f9648a) {
            return this.b;
        }
        throw new IllegalStateException("No deadline");
    }

    public boolean d() {
        return this.f9648a;
    }

    public void e() throws IOException {
        if (!Thread.interrupted()) {
            if (this.f9648a && this.b - System.nanoTime() <= 0) {
                throw new InterruptedIOException("deadline reached");
            }
            return;
        }
        Thread.currentThread().interrupt();
        throw new InterruptedIOException("interrupted");
    }

    public long f() {
        return this.c;
    }

    public t a(long j) {
        this.f9648a = true;
        this.b = j;
        return this;
    }

    public t a() {
        this.f9648a = false;
        return this;
    }
}
