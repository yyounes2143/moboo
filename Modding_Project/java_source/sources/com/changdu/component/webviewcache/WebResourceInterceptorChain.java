package com.changdu.component.webviewcache;

import androidx.annotation.Nullable;
import java.util.List;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public class WebResourceInterceptorChain {

    /* renamed from: a  reason: collision with root package name */
    public final List f5384a;
    public int b = -1;
    public CacheRequest c;

    public WebResourceInterceptorChain(List<WebResourceInterceptor> list) {
        this.f5384a = list;
    }

    public CacheRequest getRequest() {
        return this.c;
    }

    @Nullable
    public CDWebResourceResponse process(CacheRequest cacheRequest) {
        int i = this.b + 1;
        this.b = i;
        if (i >= this.f5384a.size()) {
            return null;
        }
        this.c = cacheRequest;
        return ((WebResourceInterceptor) this.f5384a.get(this.b)).load(this);
    }
}
