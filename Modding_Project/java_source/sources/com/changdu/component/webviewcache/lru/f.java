package com.changdu.component.webviewcache.lru;

import java.io.Closeable;
import java.io.InputStream;
import java.nio.charset.Charset;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public final class f implements Closeable, AutoCloseable {

    /* renamed from: a  reason: collision with root package name */
    public final InputStream[] f5420a;

    public f(InputStream[] inputStreamArr) {
        this.f5420a = inputStreamArr;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        InputStream[] inputStreamArr;
        for (InputStream inputStream : this.f5420a) {
            Charset charset = j.f5424a;
            if (inputStream != null) {
                try {
                    inputStream.close();
                } catch (RuntimeException e) {
                    throw e;
                } catch (Exception unused) {
                }
            }
        }
    }
}
