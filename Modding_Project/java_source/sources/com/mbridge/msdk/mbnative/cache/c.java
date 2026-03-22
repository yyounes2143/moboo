package com.mbridge.msdk.mbnative.cache;

import com.mbridge.msdk.out.Campaign;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
/* compiled from: Proguard */
/* loaded from: classes5.dex */
public class c {

    /* renamed from: a  reason: collision with root package name */
    public static Map<Integer, b<String, List<Campaign>>> f9226a = new HashMap();

    public static b<String, List<Campaign>> a(int i) {
        if (f9226a.containsKey(Integer.valueOf(i))) {
            return f9226a.get(Integer.valueOf(i));
        }
        a aVar = new a(i);
        f9226a.put(Integer.valueOf(i), aVar);
        return aVar;
    }
}
