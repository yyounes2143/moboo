package com.facebook.ads.redexgen.X;

import android.graphics.Bitmap;
import android.net.http.SslError;
import android.webkit.RenderProcessGoneDetail;
import android.webkit.SslErrorHandler;
import android.webkit.WebResourceError;
import android.webkit.WebResourceRequest;
import android.webkit.WebResourceResponse;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.google.common.base.Ascii;
import java.lang.ref.WeakReference;
import java.util.Arrays;
import kotlin.io.encoding.Base64;
/* renamed from: com.facebook.ads.redexgen.X.Zb  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class C1145Zb extends WebViewClient {
    public static byte[] A05;
    public ZX A00 = new ZX() { // from class: com.facebook.ads.redexgen.X.LP
        @Override // com.facebook.ads.redexgen.X.ZX
        public final boolean AAW(String str) {
            return C1145Zb.A04(str);
        }
    };
    public WeakReference<ZZ> A01 = new WeakReference<>(null);
    public final WeakReference<C1376dL> A02;
    public final WeakReference<ZY> A03;
    public final WeakReference<ZT> A04;

    static {
        A01();
    }

    public static String A00(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A05, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            copyOfRange[i4] = (byte) ((copyOfRange[i4] ^ i3) ^ 44);
        }
        return new String(copyOfRange);
    }

    public static void A01() {
        A05 = new byte[]{Ascii.FS, Ascii.US, Ascii.DC2, 8, 9, 71, Ascii.US, 17, Ascii.FS, 19, Ascii.SYN, 37, 42, Ascii.ESC, 37, 39, 48, 45, 50, 45, 48, Base64.padSymbol, Ascii.FF, 3, 9, Ascii.US, 2, 4, 9, 67, 4, 3, Ascii.EM, 8, 3, Ascii.EM, 67, Ascii.FF, Ascii.SO, Ascii.EM, 4, 2, 3, 67, 59, 36, 40, 58, 119, 120, 114, 100, 121, Byte.MAX_VALUE, 114, 56, Byte.MAX_VALUE, 120, 98, 115, 120, 98, 56, 117, 119, 98, 115, 113, 121, 100, 111, 56, 84, 68, 89, 65, 69, 87, 84, 90, 83, 117, 101, 120, 96, 100, 114, 101, 72, 113, 118, 123, 123, 117, 118, 116, 124, 72, 98, 101, 123, 51, 54, 35, 54, 97, 102, 124, 109, 102, 124, 2, 5, Ascii.ESC, 77, 87, Ascii.US, Ascii.CR, 10, 55, Ascii.RS, 1, Ascii.CR, Ascii.US};
    }

    public C1145Zb(WeakReference<C1376dL> weakReference, WeakReference<ZY> weakReference2, WeakReference<ZT> weakReference3) {
        this.A02 = weakReference;
        this.A03 = weakReference2;
        this.A04 = weakReference3;
    }

    private void A02(String str, C1376dL c1376dL) {
        c1376dL.A08().AAy(A00(11, 11, 104), AbstractC0987Sv.A09, new C0988Sw(A00(111, 5, 91) + str));
    }

    /* JADX WARN: Code restructure failed: missing block: B:63:0x015f, code lost:
        if (r0.contains(r2) == false) goto L67;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private boolean A03(android.webkit.WebView r14, java.lang.String r15) {
        /*
            Method dump skipped, instructions count: 406
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.C1145Zb.A03(android.webkit.WebView, java.lang.String):boolean");
    }

    public static /* synthetic */ boolean A04(String str) {
        return true;
    }

    public final void A05(ZX zx) {
        this.A00 = zx;
    }

    public final void A06(WeakReference<ZZ> weakReference) {
        this.A01 = weakReference;
    }

    @Override // android.webkit.WebViewClient
    public final void onPageFinished(WebView webView, String str) {
        super.onPageFinished(webView, str);
        ZT timingLogger = this.A04.get();
        if (timingLogger != null) {
            timingLogger.A03();
        }
        ZY zy = this.A03.get();
        if (zy != null) {
            zy.AES(str);
        }
        ZZ zz = this.A01.get();
        if (zz != null) {
            zz.ACa(webView.canGoBack());
            zz.ADJ(webView.canGoForward());
        }
    }

    @Override // android.webkit.WebViewClient
    public final void onPageStarted(WebView webView, String str, Bitmap bitmap) {
        super.onPageStarted(webView, str, bitmap);
        ZY listener = this.A03.get();
        if (listener != null) {
            listener.AEU(str);
        }
    }

    @Override // android.webkit.WebViewClient
    public final void onReceivedError(WebView webView, int i, String str, String str2) {
        super.onReceivedError(webView, i, str, str2);
        C1376dL c1376dL = this.A02.get();
        if (c1376dL != null) {
            StringBuilder sb = new StringBuilder();
            String A00 = A00(0, 0, 109);
            String errorMessage = AbstractC1081Wp.A01(i, sb.append(A00).append(str).toString(), A00 + str2);
            c1376dL.A0F().A9r(errorMessage);
        }
    }

    @Override // android.webkit.WebViewClient
    public final void onReceivedError(WebView webView, WebResourceRequest webResourceRequest, WebResourceError webResourceError) {
        super.onReceivedError(webView, webResourceRequest, webResourceError);
        C1376dL c1376dL = this.A02.get();
        if (c1376dL != null) {
            int errorCode = webResourceError.getErrorCode();
            StringBuilder sb = new StringBuilder();
            String A00 = A00(0, 0, 109);
            String errorMessage = AbstractC1081Wp.A01(errorCode, sb.append(A00).append((Object) webResourceError.getDescription()).toString(), A00 + webResourceRequest.getUrl());
            c1376dL.A0F().A9r(errorMessage);
        }
    }

    @Override // android.webkit.WebViewClient
    public final void onReceivedHttpError(WebView webView, WebResourceRequest webResourceRequest, WebResourceResponse webResourceResponse) {
        super.onReceivedHttpError(webView, webResourceRequest, webResourceResponse);
        C1376dL context = this.A02.get();
        if (context != null) {
            context.A0F().A9s();
        }
    }

    @Override // android.webkit.WebViewClient
    public final void onReceivedSslError(WebView webView, SslErrorHandler sslErrorHandler, SslError sslError) {
        super.onReceivedSslError(webView, sslErrorHandler, sslError);
        C1376dL context = this.A02.get();
        if (context != null) {
            context.A0F().A9t();
        }
    }

    @Override // android.webkit.WebViewClient
    public final boolean onRenderProcessGone(WebView webView, RenderProcessGoneDetail renderProcessGoneDetail) {
        AbstractC1148Ze.A0D(AbstractC0987Sv.A2e);
        ZY listener = this.A03.get();
        if (listener != null) {
            listener.AEw();
            return true;
        }
        return true;
    }

    @Override // android.webkit.WebViewClient
    public final boolean shouldOverrideUrlLoading(WebView webView, WebResourceRequest webResourceRequest) {
        return A03(webView, webResourceRequest.getUrl().toString());
    }

    @Override // android.webkit.WebViewClient
    public final boolean shouldOverrideUrlLoading(WebView webView, String str) {
        return A03(webView, str);
    }
}
