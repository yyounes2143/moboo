package com.tencent.liteav.base;

import android.os.StrictMode;
import java.io.Closeable;
/* compiled from: Proguard */
/* loaded from: classes6.dex */
public final class b implements Closeable, AutoCloseable {

    /* renamed from: a  reason: collision with root package name */
    private final StrictMode.ThreadPolicy f10204a;
    private final StrictMode.VmPolicy b;

    private b(StrictMode.ThreadPolicy threadPolicy) {
        this.f10204a = threadPolicy;
        this.b = null;
    }

    public static b a() {
        return new b(StrictMode.allowThreadDiskWrites(), (byte) 0);
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        StrictMode.ThreadPolicy threadPolicy = this.f10204a;
        if (threadPolicy != null) {
            StrictMode.setThreadPolicy(threadPolicy);
        }
        StrictMode.VmPolicy vmPolicy = this.b;
        if (vmPolicy != null) {
            StrictMode.setVmPolicy(vmPolicy);
        }
    }

    private b(StrictMode.ThreadPolicy threadPolicy, byte b) {
        this(threadPolicy);
    }
}
