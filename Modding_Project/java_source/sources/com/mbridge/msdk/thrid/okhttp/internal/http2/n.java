package com.mbridge.msdk.thrid.okhttp.internal.http2;

import java.io.IOException;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class n extends IOException {

    /* renamed from: a  reason: collision with root package name */
    public final b f9599a;

    public n(b bVar) {
        super("stream was reset: " + bVar);
        this.f9599a = bVar;
    }
}
