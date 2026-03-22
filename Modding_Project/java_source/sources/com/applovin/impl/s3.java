package com.applovin.impl;

import android.view.View;
import android.webkit.WebView;
import com.applovin.impl.sdk.AppLovinAdBase;
import com.applovin.impl.sdk.utils.StringUtils;
import com.applovin.sdk.AppLovinSdkUtils;
import com.iab.omid.library.applovin.adsession.AdEvents;
import com.iab.omid.library.applovin.adsession.AdSession;
import com.iab.omid.library.applovin.adsession.AdSessionConfiguration;
import com.iab.omid.library.applovin.adsession.AdSessionContext;
import com.iab.omid.library.applovin.adsession.ErrorType;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public abstract class s3 {

    /* renamed from: a  reason: collision with root package name */
    protected final AppLovinAdBase f3536a;
    protected final com.applovin.impl.sdk.k b;
    protected final com.applovin.impl.sdk.o c;
    protected final String d;
    protected boolean e;
    protected AdSession f;
    protected AdEvents g;

    public s3(AppLovinAdBase appLovinAdBase) {
        this.f3536a = appLovinAdBase;
        this.b = appLovinAdBase.getSdk();
        this.c = appLovinAdBase.getSdk().O();
        String str = "AdEventTracker:" + appLovinAdBase.getAdIdNumber();
        if (StringUtils.isValidString(appLovinAdBase.getDspName())) {
            str = str + ":" + appLovinAdBase.getDspName();
        }
        this.d = str;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void b(WebView webView) {
        AdSessionContext a2;
        if (!this.f3536a.isOpenMeasurementEnabled()) {
            if (com.applovin.impl.sdk.o.a()) {
                this.c.d(this.d, "Skip starting session - Open Measurement disabled");
            }
        } else if (this.f != null) {
            if (com.applovin.impl.sdk.o.a()) {
                com.applovin.impl.sdk.o oVar = this.c;
                String str = this.d;
                oVar.k(str, "Attempting to start session again for ad: " + this.f3536a);
            }
        } else {
            if (com.applovin.impl.sdk.o.a()) {
                this.c.a(this.d, "Starting session");
            }
            AdSessionConfiguration a3 = a();
            if (a3 == null || (a2 = a(webView)) == null) {
                return;
            }
            try {
                AdSession createAdSession = AdSession.createAdSession(a3, a2);
                this.f = createAdSession;
                try {
                    this.g = AdEvents.createAdEvents(createAdSession);
                    a(this.f);
                    this.f.start();
                    this.e = true;
                    if (com.applovin.impl.sdk.o.a()) {
                        this.c.a(this.d, "Session started");
                    }
                } catch (Throwable th) {
                    if (com.applovin.impl.sdk.o.a()) {
                        this.c.a(this.d, "Failed to create ad events", th);
                    }
                }
            } catch (Throwable th2) {
                if (com.applovin.impl.sdk.o.a()) {
                    this.c.a(this.d, "Failed to create session", th2);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void d() {
        this.g.loaded();
    }

    public abstract AdSessionConfiguration a();

    public abstract AdSessionContext a(WebView webView);

    public void a(AdSession adSession) {
    }

    public void c(final WebView webView) {
        AppLovinSdkUtils.runOnUiThread(new Runnable() { // from class: com.applovin.impl.Llllllllllll
            @Override // java.lang.Runnable
            public final void run() {
                s3.this.b(webView);
            }
        });
    }

    public void e() {
        c(null);
    }

    public void f() {
        b("stop session", new Runnable() { // from class: com.applovin.impl.Ooooooo
            @Override // java.lang.Runnable
            public final void run() {
                s3.this.b();
            }
        });
    }

    public void g() {
        b("track impression event", new Runnable() { // from class: com.applovin.impl.Ooo
            @Override // java.lang.Runnable
            public final void run() {
                s3.this.c();
            }
        });
    }

    public void h() {
        b("track loaded", new Runnable() { // from class: com.applovin.impl.Oooo
            @Override // java.lang.Runnable
            public final void run() {
                s3.this.d();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void c() {
        this.g.impressionOccurred();
    }

    public void a(View view) {
        b(view, Collections.EMPTY_LIST);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(View view, List list) {
        this.f.registerAdView(view);
        this.f.removeAllFriendlyObstructions();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            u3 u3Var = (u3) it.next();
            if (u3Var.c() != null) {
                try {
                    this.f.addFriendlyObstruction(u3Var.c(), u3Var.b(), u3Var.a());
                } catch (Throwable th) {
                    if (com.applovin.impl.sdk.o.a()) {
                        com.applovin.impl.sdk.o oVar = this.c;
                        String str = this.d;
                        oVar.a(str, "Failed to add friendly obstruction (" + u3Var + ")", th);
                    }
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(String str) {
        this.f.error(ErrorType.VIDEO, str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(String str, Runnable runnable) {
        try {
            if (this.e) {
                if (com.applovin.impl.sdk.o.a()) {
                    com.applovin.impl.sdk.o oVar = this.c;
                    String str2 = this.d;
                    oVar.a(str2, "Running operation: " + str);
                }
                runnable.run();
            }
        } catch (Throwable th) {
            if (com.applovin.impl.sdk.o.a()) {
                com.applovin.impl.sdk.o oVar2 = this.c;
                String str3 = this.d;
                oVar2.a(str3, "Failed to run operation: " + str, th);
            }
        }
    }

    public void b(final View view, final List list) {
        b("update main view: " + view, new Runnable() { // from class: com.applovin.impl.Lllllllllll
            @Override // java.lang.Runnable
            public final void run() {
                s3.this.a(view, list);
            }
        });
    }

    public void b(final String str) {
        b("track error", new Runnable() { // from class: com.applovin.impl.Ooooo
            @Override // java.lang.Runnable
            public final void run() {
                s3.this.a(str);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void b() {
        this.e = false;
        this.f.finish();
        this.f = null;
        this.g = null;
    }

    public void b(final String str, final Runnable runnable) {
        AppLovinSdkUtils.runOnUiThread(new Runnable() { // from class: com.applovin.impl.Oooooo
            @Override // java.lang.Runnable
            public final void run() {
                s3.this.a(str, runnable);
            }
        });
    }
}
