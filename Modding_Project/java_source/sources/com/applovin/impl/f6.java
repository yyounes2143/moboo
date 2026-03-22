package com.applovin.impl;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public class f6 extends w4 {
    private final Runnable g;

    public f6(com.applovin.impl.sdk.k kVar, String str, Runnable runnable) {
        this(kVar, false, str, runnable);
    }

    @Override // java.lang.Runnable
    public void run() {
        this.g.run();
    }

    public f6(com.applovin.impl.sdk.k kVar, boolean z, String str, Runnable runnable) {
        super("TaskRunnable:" + str, kVar, z);
        this.g = runnable;
    }
}
