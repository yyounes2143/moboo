package com.changdu.component.webviewcache.internal;

import android.content.Context;
import com.changdu.component.webviewcache.CDWebResourceResponse;
import com.changdu.component.webviewcache.CacheRequest;
import com.changdu.component.webviewcache.WebResourceInterceptor;
import com.changdu.component.webviewcache.WebResourceInterceptorChain;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public final class e implements WebResourceInterceptor {

    /* renamed from: a  reason: collision with root package name */
    public final g f5407a;

    public e(Context context) {
        this.f5407a = new g(context);
    }

    @Override // com.changdu.component.webviewcache.WebResourceInterceptor
    public final CDWebResourceResponse load(WebResourceInterceptorChain webResourceInterceptorChain) {
        CacheRequest request = webResourceInterceptorChain.getRequest();
        CDWebResourceResponse a2 = this.f5407a.a(new h(request, true));
        if (a2 != null) {
            return a2;
        }
        return webResourceInterceptorChain.process(request);
    }
}
