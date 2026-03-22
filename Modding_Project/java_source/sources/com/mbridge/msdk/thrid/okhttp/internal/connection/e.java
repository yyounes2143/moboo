package com.mbridge.msdk.thrid.okhttp.internal.connection;

import java.io.IOException;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class e extends RuntimeException {

    /* renamed from: a  reason: collision with root package name */
    private IOException f9562a;
    private IOException b;

    public e(IOException iOException) {
        super(iOException);
        this.f9562a = iOException;
        this.b = iOException;
    }

    public IOException a() {
        return this.f9562a;
    }

    public IOException b() {
        return this.b;
    }

    public void a(IOException iOException) {
        com.mbridge.msdk.thrid.okhttp.internal.c.a((Throwable) this.f9562a, (Throwable) iOException);
        this.b = iOException;
    }
}
