package com.applovin.impl.adview;

import android.content.Context;
import android.net.Uri;
import android.view.MotionEvent;
import android.view.View;
import android.webkit.WebSettings;
import android.webkit.WebViewClient;
import com.applovin.impl.a2;
import com.applovin.impl.a7;
import com.applovin.impl.a8;
import com.applovin.impl.d7;
import com.applovin.impl.f0;
import com.applovin.impl.h4;
import com.applovin.impl.i7;
import com.applovin.impl.k0;
import com.applovin.impl.l4;
import com.applovin.impl.s;
import com.applovin.impl.sdk.ad.AppLovinAdImpl;
import com.applovin.impl.sdk.o;
import com.applovin.impl.sdk.utils.CollectionUtils;
import com.applovin.impl.sdk.utils.StringUtils;
import com.applovin.impl.z6;
import com.sensorsdata.analytics.android.sdk.jsbridge.JSHookAop;
import com.tencent.thumbplayer.tcmedia.core.common.TPMediaCodecProfileLevel;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.WeakHashMap;
import kotlinx.serialization.json.internal.AbstractJsonLexerKt;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public class b extends f0 {
    private static final Set j = Collections.newSetFromMap(new WeakHashMap());
    private static final Object k = new Object();
    private final o c;
    private final com.applovin.impl.sdk.k d;
    private com.applovin.impl.sdk.ad.b e;
    private boolean f;
    private boolean g;
    private final List h;
    private final Object i;

    /* compiled from: Proguard */
    /* loaded from: classes3.dex */
    public class a extends h4 {
        public a() {
        }

        @Override // com.applovin.impl.h4
        public Map a() {
            return CollectionUtils.hashMap("name", "AdWebView");
        }
    }

    public b(c cVar, com.applovin.impl.sdk.k kVar, Context context) {
        super(context);
        WebViewClient aVar;
        com.applovin.impl.adview.a aVar2;
        this.h = new ArrayList();
        this.i = new Object();
        if (kVar != null) {
            this.d = kVar;
            this.c = kVar.O();
            Integer num = (Integer) kVar.a(l4.b6);
            if (num.intValue() > 0) {
                synchronized (k) {
                    Set set = j;
                    set.add(this);
                    z6.a("AdWebView", set.size(), num.intValue(), kVar.E());
                }
            }
            setBackgroundColor(0);
            WebSettings settings = getSettings();
            settings.setSupportMultipleWindows(false);
            settings.setJavaScriptEnabled(true);
            if (cVar != null) {
                aVar = cVar;
            } else {
                aVar = new a();
            }
            setWebViewClient(aVar);
            if (cVar != null) {
                aVar2 = cVar.d();
            } else {
                aVar2 = null;
            }
            setWebChromeClient(new s(aVar2, kVar));
            setVerticalScrollBarEnabled(false);
            setHorizontalScrollBarEnabled(false);
            setScrollBarStyle(TPMediaCodecProfileLevel.HEVCHighTierLevel62);
            if (k0.i() && ((Boolean) kVar.a(l4.w5)).booleanValue()) {
                setWebViewRenderProcessClient(new d(kVar).a());
            }
            setOnTouchListener(new View.OnTouchListener() { // from class: com.applovin.impl.adview.Wwwwwwwwwwwwwwwwwwww
                @Override // android.view.View.OnTouchListener
                public final boolean onTouch(View view, MotionEvent motionEvent) {
                    boolean a2;
                    a2 = b.a(view, motionEvent);
                    return a2;
                }
            });
            setOnLongClickListener(new View.OnLongClickListener() { // from class: com.applovin.impl.adview.Wwwwwwwwwwwwwwwwwww
                @Override // android.view.View.OnLongClickListener
                public final boolean onLongClick(View view) {
                    boolean a2;
                    a2 = b.this.a(view);
                    return a2;
                }
            });
            return;
        }
        throw new IllegalArgumentException("No sdk specified.");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ boolean a(View view, MotionEvent motionEvent) {
        if (view.hasFocus()) {
            return false;
        }
        view.requestFocus();
        return false;
    }

    private void b() {
        synchronized (this.i) {
            try {
                for (String str : this.h) {
                    a8.a(this, str, "AdWebView", this.d);
                }
                this.h.clear();
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // android.webkit.WebView
    public void destroy() {
        this.f = true;
        this.g = false;
        super.destroy();
    }

    public com.applovin.impl.sdk.ad.b getCurrentAd() {
        return this.e;
    }

    public void setAdHtmlLoaded(boolean z) {
        this.g = z;
        if (z && ((Boolean) this.d.a(l4.T5)).booleanValue()) {
            b();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ boolean a(View view) {
        if (o.a()) {
            this.c.a("AdWebView", "Received a LongClick event.");
            return true;
        }
        return true;
    }

    public void a(com.applovin.impl.sdk.ad.b bVar) {
        String str;
        if (!this.f) {
            this.e = bVar;
            try {
                applySettings(bVar);
                if (z6.a(bVar.getSize())) {
                    setVisibility(0);
                }
                try {
                    if (bVar instanceof com.applovin.impl.sdk.ad.a) {
                        String o1 = ((com.applovin.impl.sdk.ad.a) bVar).o1();
                        String k2 = bVar.k();
                        try {
                            loadDataWithBaseURL(k2, o1, "text/html", null, "");
                            JSHookAop.loadDataWithBaseURL(this, k2, o1, "text/html", null, "");
                            if (o.a()) {
                                this.c.a("AdWebView", "AppLovinAd rendered");
                            }
                        } catch (Throwable th) {
                            th = th;
                            String valueOf = bVar != null ? String.valueOf(bVar.getAdIdNumber()) : AbstractJsonLexerKt.NULL;
                            throw new RuntimeException("Unable to render AppLovin ad (" + valueOf + ") - " + th);
                        }
                    } else if (bVar instanceof a7) {
                        a7 a7Var = (a7) bVar;
                        d7 o12 = a7Var.o1();
                        if (o12 != null) {
                            i7 e = o12.e();
                            Uri c = e.c();
                            if (c != null) {
                                str = c.toString();
                            } else {
                                str = "";
                            }
                            String str2 = str;
                            String b = e.b();
                            String q1 = a7Var.q1();
                            if (!StringUtils.isValidString(str2) && !StringUtils.isValidString(b)) {
                                if (o.a()) {
                                    this.c.b("AdWebView", "Unable to load companion ad. No resources provided.");
                                    return;
                                }
                                return;
                            }
                            if (e.d() == i7.a.STATIC) {
                                if (o.a()) {
                                    this.c.a("AdWebView", "Rendering WebView for static VAST ad");
                                }
                                String a2 = a((String) this.d.a(l4.o4), str2);
                                if (a7Var.F1() && a7Var.isOpenMeasurementEnabled() && a7Var.G1()) {
                                    a2 = this.d.d0().a(a2, a2.a((AppLovinAdImpl) bVar));
                                }
                                String str3 = a2;
                                String k3 = bVar.k();
                                loadDataWithBaseURL(k3, str3, "text/html", null, "");
                                JSHookAop.loadDataWithBaseURL(this, k3, str3, "text/html", null, "");
                            } else if (e.d() == i7.a.HTML) {
                                if (StringUtils.isValidString(b)) {
                                    String a3 = a(q1, b);
                                    String str4 = StringUtils.isValidString(a3) ? a3 : b;
                                    if (o.a()) {
                                        o oVar = this.c;
                                        oVar.a("AdWebView", "Rendering WebView for HTML VAST ad with resourceContents: " + str4);
                                    }
                                    String k4 = bVar.k();
                                    loadDataWithBaseURL(k4, str4, "text/html", null, "");
                                    JSHookAop.loadDataWithBaseURL(this, k4, str4, "text/html", null, "");
                                } else if (StringUtils.isValidString(str2)) {
                                    if (o.a()) {
                                        this.c.a("AdWebView", "Preparing to load HTML VAST ad resourceUri");
                                    }
                                    a(str2, bVar.k(), q1, this.d, a7Var);
                                }
                            } else if (e.d() == i7.a.IFRAME) {
                                if (StringUtils.isValidString(str2)) {
                                    if (o.a()) {
                                        this.c.a("AdWebView", "Preparing to load iFrame VAST ad resourceUri");
                                    }
                                    a(str2, bVar.k(), q1, this.d, a7Var);
                                } else if (StringUtils.isValidString(b)) {
                                    String a4 = a(q1, b);
                                    String str5 = StringUtils.isValidString(a4) ? a4 : b;
                                    if (o.a()) {
                                        o oVar2 = this.c;
                                        oVar2.a("AdWebView", "Rendering WebView for iFrame VAST ad with resourceContents: " + str5);
                                    }
                                    String k5 = bVar.k();
                                    loadDataWithBaseURL(k5, str5, "text/html", null, "");
                                    JSHookAop.loadDataWithBaseURL(this, k5, str5, "text/html", null, "");
                                }
                            } else if (o.a()) {
                                this.c.b("AdWebView", "Failed to render VAST companion ad of invalid type");
                            }
                        } else if (o.a()) {
                            this.c.a("AdWebView", "No companion ad provided.");
                        }
                    }
                } catch (Throwable th2) {
                    th = th2;
                }
            } catch (Throwable th3) {
                th = th3;
            }
        } else {
            o.h("AdWebView", "Ad can not be loaded in a destroyed webview");
        }
    }

    @Override // android.webkit.WebView, android.view.View
    public void computeScroll() {
    }

    public void a(String str) {
        if (((Boolean) this.d.a(l4.T5)).booleanValue()) {
            if (this.g) {
                a8.a(this, str, "AdWebView", this.d);
                return;
            }
            synchronized (this.h) {
                this.h.add(str);
            }
            return;
        }
        a8.a(this, str, "AdWebView", this.d);
    }

    @Override // android.view.View
    public void scrollTo(int i, int i2) {
    }

    private void a(String str, String str2, String str3, com.applovin.impl.sdk.k kVar, a7 a7Var) {
        String a2 = a(str3, str);
        if (StringUtils.isValidString(a2)) {
            if (o.a()) {
                o oVar = this.c;
                oVar.a("AdWebView", "Rendering webview for VAST ad with resourceContents : " + a2);
            }
            loadDataWithBaseURL(str2, a2, "text/html", null, "");
            JSHookAop.loadDataWithBaseURL(this, str2, a2, "text/html", null, "");
            return;
        }
        String a3 = a((String) kVar.a(l4.p4), str);
        if (StringUtils.isValidString(a3)) {
            if (a7Var.F1() && a7Var.isOpenMeasurementEnabled()) {
                a3 = kVar.d0().a(a3, a2.a((AppLovinAdImpl) a7Var));
            }
            if (o.a()) {
                o oVar2 = this.c;
                oVar2.a("AdWebView", "Rendering webview for VAST ad with resourceContents : " + a3);
            }
            loadDataWithBaseURL(str2, a3, "text/html", null, "");
            JSHookAop.loadDataWithBaseURL(this, str2, a3, "text/html", null, "");
            return;
        }
        if (o.a()) {
            o oVar3 = this.c;
            oVar3.a("AdWebView", "Rendering webview for VAST ad with resourceURL : " + str);
        }
        loadUrl(str);
        JSHookAop.loadUrl(this, str);
    }

    private String a(String str, String str2) {
        if (StringUtils.isValidString(str)) {
            return str.replace("{SOURCE}", str2);
        }
        return null;
    }

    @Override // android.webkit.WebView, android.view.View
    public void onScrollChanged(int i, int i2, int i3, int i4) {
    }
}
