package com.applovin.impl;

import com.applovin.impl.r5;
import java.util.concurrent.TimeUnit;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public abstract class e2 {

    /* renamed from: a  reason: collision with root package name */
    private static boolean f3117a;

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void a(com.applovin.impl.sdk.k kVar) {
        if (f3117a) {
            return;
        }
        kVar.E().a(y1.u0, "no_ads_loaded");
    }

    public static void b(final com.applovin.impl.sdk.k kVar) {
        Long l = (Long) kVar.a(g3.J7);
        if (l.longValue() <= 0) {
            return;
        }
        kVar.q0().a(new f6(kVar, true, "submitIntegrationErrorReport", new Runnable() { // from class: com.applovin.impl.Wwwwww
            @Override // java.lang.Runnable
            public final void run() {
                e2.a(com.applovin.impl.sdk.k.this);
            }
        }), r5.b.OTHER, TimeUnit.SECONDS.toMillis(l.longValue()));
    }

    public static void a() {
        f3117a = true;
    }
}
