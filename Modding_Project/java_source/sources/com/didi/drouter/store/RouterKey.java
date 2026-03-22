package com.didi.drouter.store;

import android.net.Uri;
import androidx.lifecycle.Lifecycle;
import com.didi.drouter.router.IRouterInterceptor;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public class RouterKey {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public Lifecycle f5780Wwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public int f5781Wwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public boolean f5782Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public int f5783Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public String[] f5784Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public Class<? extends IRouterInterceptor>[] f5785Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public Uri f5786Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    public static RouterKey Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(String str) {
        RouterKey routerKey = new RouterKey();
        routerKey.f5786Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = Uri.parse(str);
        return routerKey;
    }

    public RouterKey Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lifecycle lifecycle) {
        this.f5780Wwwwwwwwwwwwwwwwwwwwwwwwwwww = lifecycle;
        return this;
    }
}
