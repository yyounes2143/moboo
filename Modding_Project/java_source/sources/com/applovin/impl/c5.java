package com.applovin.impl;

import com.applovin.impl.u;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public class c5 extends w4 {
    private final a g;

    /* compiled from: Proguard */
    /* loaded from: classes3.dex */
    public interface a {
        void a(u.a aVar);
    }

    public c5(com.applovin.impl.sdk.k kVar, a aVar) {
        super("TaskCollectAdvertisingId", kVar, true);
        this.g = aVar;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.g.a(this.f3803a.B().f());
    }
}
