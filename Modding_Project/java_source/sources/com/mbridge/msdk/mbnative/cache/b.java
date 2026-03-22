package com.mbridge.msdk.mbnative.cache;

import com.mbridge.msdk.out.Campaign;
import com.mbridge.msdk.setting.g;
import com.mbridge.msdk.setting.h;
/* compiled from: Proguard */
/* loaded from: classes5.dex */
public abstract class b<K, V> {
    public long a() {
        g d = h.b().d(com.mbridge.msdk.foundation.controller.c.m().b());
        if (d == null) {
            d = h.b().a();
        }
        return d.Z() * 1000;
    }

    public abstract V a(K k, int i);

    public abstract void a(K k, V v);

    public abstract void a(K k, V v, String str);

    public abstract void a(String str, Campaign campaign, String str2);

    public V b(K k, int i) {
        return null;
    }

    public long b() {
        g d = h.b().d(com.mbridge.msdk.foundation.controller.c.m().b());
        if (d == null) {
            d = h.b().a();
        }
        return d.a0() * 1000;
    }
}
