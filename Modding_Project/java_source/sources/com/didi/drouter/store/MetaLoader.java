package com.didi.drouter.store;

import androidx.annotation.RestrictTo;
import j$.util.concurrent.ConcurrentHashMap;
import java.util.Collections;
import java.util.Map;
import java.util.Set;
/* compiled from: Proguard */
@RestrictTo({RestrictTo.Scope.LIBRARY})
/* loaded from: classes3.dex */
public abstract class MetaLoader {
    public abstract void load(Map<?, ?> map);

    public void put(String str, RouterMeta routerMeta, Map<String, Map<String, RouterMeta>> map) {
        Map<String, RouterMeta> map2 = map.get("RegexRouter");
        if (map2 == null) {
            map2 = new ConcurrentHashMap<>();
            map.put("RegexRouter", map2);
        }
        map2.put(str, routerMeta);
    }

    public void put(Class<?> cls, RouterMeta routerMeta, Map<Class<?>, Set<RouterMeta>> map) {
        Set<RouterMeta> set = map.get(cls);
        if (set == null) {
            set = Collections.newSetFromMap(new ConcurrentHashMap());
            map.put(cls, set);
        }
        set.add(routerMeta);
    }
}
