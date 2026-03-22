package com.changdu.component.webviewcache.internal;

import android.content.Context;
import com.changdu.component.webviewcache.cookie.CDCookieManager;
import java.io.File;
import java.util.concurrent.TimeUnit;
import javax.net.ssl.SSLContext;
import javax.net.ssl.X509TrustManager;
import okhttp3.Cache;
import okhttp3.OkHttpClient;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public final class f {
    public static volatile f b;

    /* renamed from: a  reason: collision with root package name */
    public final OkHttpClient f5408a;

    public f(Context context) {
        OkHttpClient.Builder Wwwwwwwwwwwwwwwwwwwwwwwwww2 = new OkHttpClient.Builder().Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(CDCookieManager.getInstance().getCookieJar(context)).Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(new Cache(new File(context.getCacheDir() + File.separator + "CDWebViewCacheOkHttp"), 52428800L)).Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(5L, TimeUnit.SECONDS).Wwwwwwwwwwwwwwwwwwwwwwwww(false).Wwwwwwwwwwwwwwwwwwwwwwwwww(false);
        try {
            SSLContext sSLContext = SSLContext.getInstance("SSL");
            k kVar = l.b;
            sSLContext.init(null, new X509TrustManager[]{kVar}, null);
            Wwwwwwwwwwwwwwwwwwwwwwwwww2.Illlllllllllllllllllllllll(sSLContext.getSocketFactory(), kVar);
            Wwwwwwwwwwwwwwwwwwwwwwwwww2.Kkkkkkkkkkkkkkkkkk(l.f5412a);
        } catch (Exception unused) {
        }
        this.f5408a = Wwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
    }
}
