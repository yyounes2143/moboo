package com.unity3d.scar.adapter.common.signals;

import j$.util.concurrent.ConcurrentHashMap;
import java.util.Map;
/* compiled from: Proguard */
/* loaded from: classes6.dex */
public class SignalsStorage<T> {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Map<String, T> f10884Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new ConcurrentHashMap();

    public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(String str, T t) {
        this.f10884Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.put(str, t);
    }
}
