package com.changdu.component.webviewcache.cookie;

import android.content.Context;
import com.changdu.component.webviewcache.Destroyable;
import java.util.ArrayList;
import okhttp3.CookieJar;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public class CDCookieManager implements Destroyable {

    /* renamed from: a  reason: collision with root package name */
    public final ArrayList f5392a = new ArrayList();
    public final ArrayList b = new ArrayList();
    public CookieJar c;

    /* compiled from: Proguard */
    /* loaded from: classes3.dex */
    public static class SingletonHolder {

        /* renamed from: a  reason: collision with root package name */
        public static final CDCookieManager f5393a = new CDCookieManager();
    }

    public static CDCookieManager getInstance() {
        return SingletonHolder.f5393a;
    }

    public void addRequestCookieInterceptor(CookieInterceptor cookieInterceptor) {
        if (!this.f5392a.contains(cookieInterceptor)) {
            this.f5392a.add(cookieInterceptor);
        }
    }

    public void addResponseCookieInterceptor(CookieInterceptor cookieInterceptor) {
        if (!this.b.contains(cookieInterceptor)) {
            this.b.add(cookieInterceptor);
        }
    }

    @Override // com.changdu.component.webviewcache.Destroyable
    public void destroy() {
        this.f5392a.clear();
        this.b.clear();
        this.c = null;
    }

    public CookieJar getCookieJar(Context context) {
        CookieJar cookieJar = this.c;
        if (cookieJar != null) {
            return cookieJar;
        }
        return new CookieJarImpl();
    }

    public void setCookieJar(CookieJar cookieJar) {
        this.c = cookieJar;
    }
}
