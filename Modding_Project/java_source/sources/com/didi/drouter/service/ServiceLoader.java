package com.didi.drouter.service;

import androidx.annotation.NonNull;
import java.util.List;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public class ServiceLoader<T> {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final ServiceAgent<T> f5779Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    public ServiceLoader(Class<T> cls) {
        this.f5779Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new ServiceAgent<>(cls);
    }

    @NonNull
    public static <T> ServiceLoader<T> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Class<T> cls) {
        if (cls != null) {
            return new ServiceLoader<>(cls);
        }
        throw new RuntimeException("DRouter function class can't be null");
    }

    public T Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Object... objArr) {
        return this.f5779Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(objArr);
    }

    @NonNull
    public List<T> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Object... objArr) {
        return this.f5779Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(objArr);
    }
}
