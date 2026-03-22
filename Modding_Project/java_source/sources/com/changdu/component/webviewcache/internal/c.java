package com.changdu.component.webviewcache.internal;

import android.text.TextUtils;
import com.changdu.component.webviewcache.CDWebResourceResponse;
import com.changdu.component.webviewcache.Destroyable;
import com.changdu.component.webviewcache.WebResourceInterceptor;
import com.changdu.component.webviewcache.config.CacheConfig;
import java.io.IOException;
import java.util.Map;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public final class c implements Destroyable, WebResourceInterceptor {

    /* renamed from: a  reason: collision with root package name */
    public com.changdu.component.webviewcache.lru.g f5405a;
    public final CacheConfig b;

    public c(CacheConfig cacheConfig) {
        this.b = cacheConfig;
    }

    public final boolean a(CDWebResourceResponse cDWebResourceResponse) {
        String str;
        String str2;
        Map<String, String> responseHeaders = cDWebResourceResponse.getResponseHeaders();
        if (responseHeaders != null) {
            String lowerCase = "Content-Type".toLowerCase();
            if (responseHeaders.containsKey("Content-Type")) {
                str2 = responseHeaders.get("Content-Type");
            } else {
                str2 = responseHeaders.get(lowerCase);
            }
            String str3 = str2;
            if (!TextUtils.isEmpty(str3)) {
                String[] split = str3.split(";");
                if (split.length >= 1) {
                    str = split[0];
                    if (str != null || this.b.getFilter().isFilter(str)) {
                        return false;
                    }
                    return true;
                }
            }
        }
        str = null;
        if (str != null) {
        }
        return false;
    }

    @Override // com.changdu.component.webviewcache.Destroyable
    public final void destroy() {
        com.changdu.component.webviewcache.lru.g gVar = this.f5405a;
        if (gVar != null && !gVar.a()) {
            try {
                this.f5405a.close();
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:66:0x0129  */
    /* JADX WARN: Removed duplicated region for block: B:67:0x012b A[Catch: Exception -> 0x0195, IOException -> 0x0197, TryCatch #6 {IOException -> 0x0197, Exception -> 0x0195, blocks: (B:64:0x0121, B:67:0x012b, B:68:0x016b, B:70:0x0171, B:75:0x0199, B:77:0x01b1, B:79:0x01b4, B:80:0x01bd), top: B:95:0x0121 }] */
    @Override // com.changdu.component.webviewcache.WebResourceInterceptor
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final com.changdu.component.webviewcache.CDWebResourceResponse load(com.changdu.component.webviewcache.WebResourceInterceptorChain r14) {
        /*
            Method dump skipped, instructions count: 464
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.changdu.component.webviewcache.internal.c.load(com.changdu.component.webviewcache.WebResourceInterceptorChain):com.changdu.component.webviewcache.CDWebResourceResponse");
    }
}
