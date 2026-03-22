package com.changdu.component.webviewcache.cookie;

import java.util.List;
import okhttp3.Cookie;
import okhttp3.HttpUrl;
/* compiled from: Proguard */
@Deprecated
/* loaded from: classes3.dex */
public interface CookieStore {
    void add(HttpUrl httpUrl, List<Cookie> list);

    void add(HttpUrl httpUrl, Cookie cookie);

    List<Cookie> get(HttpUrl httpUrl);

    List<Cookie> getCookies();

    boolean remove(HttpUrl httpUrl, Cookie cookie);

    boolean removeAll();
}
