package com.mbridge.msdk.activity;

import android.app.Activity;
import android.content.Intent;
import android.graphics.Bitmap;
import android.os.Bundle;
import android.text.TextUtils;
import android.webkit.WebView;
import android.widget.Toast;
import androidx.annotation.Nullable;
import com.mbridge.msdk.foundation.controller.c;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.tools.c1;
import com.mbridge.msdk.foundation.tools.o0;
import com.mbridge.msdk.foundation.tools.s0;
import com.mbridge.msdk.foundation.webview.BrowserView;
import com.mbridge.msdk.foundation.webview.b;
import com.sensorsdata.analytics.android.sdk.SensorsDataInstrumented;
import com.sensorsdata.analytics.android.sdk.aop.push.PushAutoTrackHelper;
/* compiled from: Proguard */
/* loaded from: classes5.dex */
public class DomainMBCommonActivity extends Activity {

    /* renamed from: a  reason: collision with root package name */
    String f8710a = "";
    private final BrowserView.e b = new a();
    protected BrowserView browserView;
    private CampaignEx c;

    /* compiled from: Proguard */
    /* loaded from: classes5.dex */
    public class a implements BrowserView.e {
        public a() {
        }

        @Override // com.mbridge.msdk.foundation.webview.BrowserView.e
        public void a(WebView webView, int i, String str, String str2) {
        }

        @Override // com.mbridge.msdk.foundation.webview.BrowserView.e
        public boolean b(WebView webView, String str) {
            o0.b("MBCommonActivity", "shouldOverrideUrlLoading  " + str);
            if (s0.a.b(str) && s0.a.a(DomainMBCommonActivity.this, str, null)) {
                DomainMBCommonActivity.this.finish();
            }
            return DomainMBCommonActivity.this.a(webView, str);
        }

        @Override // com.mbridge.msdk.foundation.webview.BrowserView.e
        public void a() {
            DomainMBCommonActivity.this.finish();
        }

        @Override // com.mbridge.msdk.foundation.webview.BrowserView.e
        public void a(WebView webView, String str, Bitmap bitmap) {
            o0.b("MBCommonActivity", "onPageStarted  " + str);
        }

        @Override // com.mbridge.msdk.foundation.webview.BrowserView.e
        public void a(WebView webView, String str) {
            o0.b("MBCommonActivity", "onPageFinished  " + str);
        }

        @Override // com.mbridge.msdk.foundation.webview.BrowserView.e
        public void c(WebView webView, String str) {
        }
    }

    @Override // android.app.Activity
    public void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        try {
            requestWindowFeature(1);
        } catch (Throwable th) {
            o0.b("MBCommonActivity", th.getMessage());
        }
        if (c.m().d() == null) {
            c.m().b(getApplicationContext());
        }
        c.m().a(this);
        a();
    }

    @Override // android.app.Activity
    @SensorsDataInstrumented
    public void onNewIntent(Intent intent) {
        super.onNewIntent(intent);
        PushAutoTrackHelper.onNewIntent(this, intent);
    }

    private void a() {
        String stringExtra = getIntent().getStringExtra("url");
        this.f8710a = stringExtra;
        if (!TextUtils.isEmpty(stringExtra)) {
            this.c = (CampaignEx) getIntent().getSerializableExtra("mvcommon");
            if (b.f9139a.containsKey(this.f8710a)) {
                BrowserView browserView = b.f9139a.get(this.f8710a);
                this.browserView = browserView;
                if (browserView != null) {
                    browserView.setListener(this.b);
                }
            } else {
                BrowserView browserView2 = new BrowserView(this, this.c);
                this.browserView = browserView2;
                browserView2.setListener(this.b);
                this.browserView.loadUrl(this.f8710a);
            }
            BrowserView browserView3 = this.browserView;
            if (browserView3 != null) {
                c1.a(browserView3);
                setContentView(this.browserView);
                return;
            }
            return;
        }
        Toast.makeText(this, "Error: no data", 0).show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:59:0x00de A[Catch: all -> 0x0042, TryCatch #2 {all -> 0x0042, blocks: (B:3:0x0009, B:6:0x0010, B:8:0x001e, B:11:0x002a, B:14:0x0037, B:57:0x00d8, B:59:0x00de, B:61:0x00e7, B:63:0x00ed, B:65:0x00f3, B:19:0x0045, B:21:0x0050, B:27:0x0068, B:22:0x0055, B:24:0x005f, B:33:0x0079, B:35:0x007f, B:38:0x008b, B:39:0x0090, B:32:0x0075, B:43:0x00a0, B:46:0x00a9, B:48:0x00af, B:50:0x00bd, B:54:0x00ca), top: B:73:0x0009 }] */
    /* JADX WARN: Removed duplicated region for block: B:61:0x00e7 A[Catch: all -> 0x0042, TryCatch #2 {all -> 0x0042, blocks: (B:3:0x0009, B:6:0x0010, B:8:0x001e, B:11:0x002a, B:14:0x0037, B:57:0x00d8, B:59:0x00de, B:61:0x00e7, B:63:0x00ed, B:65:0x00f3, B:19:0x0045, B:21:0x0050, B:27:0x0068, B:22:0x0055, B:24:0x005f, B:33:0x0079, B:35:0x007f, B:38:0x008b, B:39:0x0090, B:32:0x0075, B:43:0x00a0, B:46:0x00a9, B:48:0x00af, B:50:0x00bd, B:54:0x00ca), top: B:73:0x0009 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean a(android.webkit.WebView r10, java.lang.String r11) {
        /*
            Method dump skipped, instructions count: 262
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mbridge.msdk.activity.DomainMBCommonActivity.a(android.webkit.WebView, java.lang.String):boolean");
    }
}
