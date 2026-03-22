package com.changdu.component.webviewcache.cookie;

import android.text.TextUtils;
import android.webkit.CookieManager;
import androidx.annotation.NonNull;
import java.util.ArrayList;
import java.util.List;
import okhttp3.Cookie;
import okhttp3.CookieJar;
import okhttp3.HttpUrl;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public class CookieJarImpl implements CookieJar {

    /* renamed from: a  reason: collision with root package name */
    public final CDCookieManager f5394a = CDCookieManager.getInstance();

    @Override // okhttp3.CookieJar
    @NonNull
    public synchronized List<Cookie> loadForRequest(HttpUrl httpUrl) {
        ArrayList arrayList;
        try {
            arrayList = new ArrayList();
            String cookie = CookieManager.getInstance().getCookie(httpUrl.Wwwwwwwwwwwwwwwwwwwwwwwwww());
            int i = 0;
            if (!TextUtils.isEmpty(cookie)) {
                for (String str : cookie.split(";")) {
                    Cookie Wwwwwwwwwwwwwwwwwwwwwwwww2 = Cookie.Wwwwwwwwwwwwwwwwwwwwwwwww(httpUrl, str);
                    if (Wwwwwwwwwwwwwwwwwwwwwwwww2 != null) {
                        arrayList.add(Wwwwwwwwwwwwwwwwwwwwwwwww2);
                    }
                }
            }
            ArrayList arrayList2 = this.f5394a.b;
            if (arrayList2 != null && !arrayList2.isEmpty()) {
                int size = arrayList2.size();
                arrayList = arrayList;
                while (i < size) {
                    Object obj = arrayList2.get(i);
                    i++;
                    arrayList = ((CookieInterceptor) obj).newCookies(httpUrl, arrayList);
                }
            }
        } catch (Throwable th) {
            throw th;
        }
        return arrayList;
    }

    @Override // okhttp3.CookieJar
    public synchronized void saveFromResponse(HttpUrl httpUrl, List<Cookie> list) {
        try {
            ArrayList arrayList = this.f5394a.f5392a;
            if (arrayList != null && !arrayList.isEmpty()) {
                int size = arrayList.size();
                int i = 0;
                while (i < size) {
                    Object obj = arrayList.get(i);
                    i++;
                    list = ((CookieInterceptor) obj).newCookies(httpUrl, list);
                }
            }
            CookieManager cookieManager = CookieManager.getInstance();
            cookieManager.setAcceptCookie(true);
            for (Cookie cookie : list) {
                cookieManager.setCookie(httpUrl.toString(), cookie.toString());
            }
        } catch (Throwable th) {
            throw th;
        }
    }
}
