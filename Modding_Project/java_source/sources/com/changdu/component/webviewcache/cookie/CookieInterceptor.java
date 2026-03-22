package com.changdu.component.webviewcache.cookie;

import java.util.List;
import okhttp3.Cookie;
import okhttp3.HttpUrl;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public interface CookieInterceptor {
    List<Cookie> newCookies(HttpUrl httpUrl, List<Cookie> list);
}
