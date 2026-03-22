package com.changdu.component.webviewcache.internal;

import android.content.Context;
import android.text.TextUtils;
import com.changdu.component.webviewcache.CDWebResourceResponse;
import com.changdu.component.webviewcache.CacheRequest;
import com.changdu.component.webviewcache.Destroyable;
import com.changdu.component.webviewcache.WebResourceInterceptor;
import com.changdu.component.webviewcache.WebResourceInterceptorChain;
import com.changdu.component.webviewcache.config.CacheConfig;
import com.changdu.component.webviewcache.config.MimeTypeFilter;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public final class d implements Destroyable, WebResourceInterceptor {

    /* renamed from: a  reason: collision with root package name */
    public final g f5406a;
    public final MimeTypeFilter b;

    public d(Context context, CacheConfig cacheConfig) {
        MimeTypeFilter mimeTypeFilter;
        this.f5406a = new g(context);
        if (cacheConfig != null) {
            mimeTypeFilter = cacheConfig.getFilter();
        } else {
            mimeTypeFilter = null;
        }
        this.b = mimeTypeFilter;
    }

    @Override // com.changdu.component.webviewcache.Destroyable
    public final void destroy() {
        MimeTypeFilter mimeTypeFilter = this.b;
        if (mimeTypeFilter != null) {
            mimeTypeFilter.clear();
        }
    }

    @Override // com.changdu.component.webviewcache.WebResourceInterceptor
    public final CDWebResourceResponse load(WebResourceInterceptorChain webResourceInterceptorChain) {
        boolean isFilter;
        CacheRequest request = webResourceInterceptorChain.getRequest();
        String mimeType = request.getMimeType();
        if (TextUtils.isEmpty(mimeType)) {
            isFilter = this.b.isFilter("text/html");
        } else {
            isFilter = this.b.isFilter(mimeType);
        }
        CDWebResourceResponse a2 = this.f5406a.a(new h(request, isFilter));
        if (a2 != null) {
            return a2;
        }
        return webResourceInterceptorChain.process(request);
    }
}
