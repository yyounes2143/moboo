package com.didi.drouter.store;

import androidx.annotation.NonNull;
import androidx.lifecycle.Lifecycle;
import com.didi.drouter.service.IFeatureMatcher;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public class ServiceKey<T> {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public RouterMeta f5824Wwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public Lifecycle f5825Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public int f5826Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public IFeatureMatcher<?> f5827Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @NonNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public String f5828Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = "";

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public Class<T> f5829Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    public static <T> ServiceKey<T> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Class<T> cls) {
        ServiceKey<T> serviceKey = new ServiceKey<>();
        serviceKey.f5829Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = cls;
        return serviceKey;
    }

    public ServiceKey<T> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lifecycle lifecycle) {
        this.f5825Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww = lifecycle;
        return this;
    }
}
