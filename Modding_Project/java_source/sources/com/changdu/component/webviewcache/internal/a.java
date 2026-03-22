package com.changdu.component.webviewcache.internal;

import android.content.Context;
import com.changdu.component.webviewcache.Destroyable;
import com.changdu.component.webviewcache.WebResourceInterceptor;
import com.changdu.component.webviewcache.config.CacheConfig;
import com.changdu.component.webviewcache.config.CacheMode;
import java.util.ArrayList;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public final class a implements Destroyable {

    /* renamed from: a  reason: collision with root package name */
    public CacheMode f5403a;
    public CacheConfig b;
    public i c;
    public Context d;

    public a(Context context) {
        this.d = context;
    }

    /* JADX WARN: Removed duplicated region for block: B:25:0x008b  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x008d  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x0094  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x00cc  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final android.webkit.WebResourceResponse a(android.webkit.WebResourceRequest r6, int r7, java.lang.String r8) {
        /*
            Method dump skipped, instructions count: 273
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.changdu.component.webviewcache.internal.a.a(android.webkit.WebResourceRequest, int, java.lang.String):android.webkit.WebResourceResponse");
    }

    @Override // com.changdu.component.webviewcache.Destroyable
    public final void destroy() {
        i iVar = this.c;
        if (iVar != null) {
            synchronized (iVar) {
                try {
                    ArrayList arrayList = iVar.e;
                    int i = 0;
                    if (arrayList != null && !arrayList.isEmpty()) {
                        int size = arrayList.size();
                        int i2 = 0;
                        while (i2 < size) {
                            Object obj = arrayList.get(i2);
                            i2++;
                            WebResourceInterceptor webResourceInterceptor = (WebResourceInterceptor) obj;
                            if (webResourceInterceptor instanceof Destroyable) {
                                ((Destroyable) webResourceInterceptor).destroy();
                            }
                        }
                        arrayList.clear();
                    }
                    ArrayList arrayList2 = iVar.d;
                    if (arrayList2 != null && !arrayList2.isEmpty()) {
                        int size2 = arrayList2.size();
                        while (i < size2) {
                            Object obj2 = arrayList2.get(i);
                            i++;
                            WebResourceInterceptor webResourceInterceptor2 = (WebResourceInterceptor) obj2;
                            if (webResourceInterceptor2 instanceof Destroyable) {
                                ((Destroyable) webResourceInterceptor2).destroy();
                            }
                        }
                        arrayList2.clear();
                    }
                    ArrayList arrayList3 = iVar.c;
                    if (arrayList3 != null) {
                        arrayList3.clear();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        this.b = null;
        this.c = null;
        this.d = null;
    }

    public final synchronized i a() {
        try {
            if (this.c == null) {
                Context context = this.d;
                CacheConfig cacheConfig = this.b;
                if (cacheConfig == null) {
                    cacheConfig = new CacheConfig.Builder(context).build();
                }
                this.c = new i(context, cacheConfig);
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.c;
    }
}
