package com.applovin.applovin_max;

import j$.util.Objects;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public final /* synthetic */ class Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww {
    public static /* synthetic */ Map Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Map map) {
        HashMap hashMap = new HashMap(map.size());
        for (Map.Entry entry : map.entrySet()) {
            Object key = entry.getKey();
            Objects.requireNonNull(key);
            Object value = entry.getValue();
            Objects.requireNonNull(value);
            hashMap.put(key, value);
        }
        return Collections.unmodifiableMap(hashMap);
    }
}
