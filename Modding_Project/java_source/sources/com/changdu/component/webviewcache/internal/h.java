package com.changdu.component.webviewcache.internal;

import com.changdu.component.webviewcache.CacheRequest;
import java.util.Map;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public final class h {

    /* renamed from: a  reason: collision with root package name */
    public final String f5410a;
    public final boolean b;
    public final Map c;
    public final String d;
    public final int e;

    public h(CacheRequest cacheRequest, boolean z) {
        this.b = z;
        this.f5410a = cacheRequest.getUrl();
        this.c = cacheRequest.getHeaders();
        this.d = cacheRequest.getUserAgent();
        this.e = cacheRequest.getWebViewRawCacheMode();
    }
}
