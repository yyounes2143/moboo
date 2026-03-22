package com.changdu.component.webviewcache.cookie;

import java.util.ArrayList;
import java.util.List;
import okhttp3.Cookie;
import okhttp3.HttpUrl;
/* compiled from: Proguard */
@Deprecated
/* loaded from: classes3.dex */
public class MemoryCookieStore implements CookieStore {
    @Override // com.changdu.component.webviewcache.cookie.CookieStore
    public void add(HttpUrl httpUrl, Cookie cookie) {
        if (cookie.Wwwwwwwwwwwwwwwwwwwwwww()) {
            cookie.Wwwwwwwwwwwwwwwwwwwwwwwwww();
            cookie.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
            httpUrl.Wwwwwwwwwwwwwwwwwwwwwwwwww().startsWith("host_");
            httpUrl.Wwwwwwwwwwwwwwwwwwwwwwwwww();
            throw null;
        }
    }

    @Override // com.changdu.component.webviewcache.cookie.CookieStore
    public List<Cookie> get(HttpUrl httpUrl) {
        httpUrl.Wwwwwwwwwwwwwwwwwwwwwwwwww().startsWith("host_");
        httpUrl.Wwwwwwwwwwwwwwwwwwwwwwwwww();
        new ArrayList();
        throw null;
    }

    @Override // com.changdu.component.webviewcache.cookie.CookieStore
    public List<Cookie> getCookies() {
        new ArrayList();
        throw null;
    }

    @Override // com.changdu.component.webviewcache.cookie.CookieStore
    public boolean remove(HttpUrl httpUrl, Cookie cookie) {
        httpUrl.Wwwwwwwwwwwwwwwwwwwwwwwwww().startsWith("host_");
        httpUrl.Wwwwwwwwwwwwwwwwwwwwwwwwww();
        if (cookie != null) {
            cookie.Wwwwwwwwwwwwwwwwwwwwwwwwww();
            cookie.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        }
        throw null;
    }

    @Override // com.changdu.component.webviewcache.cookie.CookieStore
    public boolean removeAll() {
        throw null;
    }

    @Override // com.changdu.component.webviewcache.cookie.CookieStore
    public void add(HttpUrl httpUrl, List<Cookie> list) {
        for (Cookie cookie : list) {
            if (cookie.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww() >= System.currentTimeMillis()) {
                add(httpUrl, cookie);
            }
        }
    }
}
