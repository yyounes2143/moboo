package com.tencent.thumbplayer.tcmedia.utils;

import java.util.HashMap;
import java.util.Map;
/* loaded from: classes6.dex */
public class g<K, V> {

    /* renamed from: a  reason: collision with root package name */
    private Map<K, V> f10690a = new HashMap();

    public g<K, V> a(K k, V v) {
        this.f10690a.put(k, v);
        return this;
    }

    public Map<K, V> a() {
        return this.f10690a;
    }
}
