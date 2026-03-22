package com.tencent.liteav.base.a;

import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.TimeUnit;
/* compiled from: Proguard */
/* loaded from: classes6.dex */
public final class b {

    /* renamed from: a  reason: collision with root package name */
    private static final long f10203a = TimeUnit.SECONDS.toMillis(1);
    private final Map<String, a> b = new HashMap();

    public final synchronized a a(String str) {
        a aVar;
        aVar = this.b.get(str);
        if (aVar == null) {
            aVar = new a(f10203a);
            this.b.put(str, aVar);
        }
        return aVar;
    }
}
