package com.facebook.ads.redexgen.X;

import android.os.Build;
import android.webkit.RenderProcessGoneDetail;
import android.webkit.WebResourceError;
import android.webkit.WebResourceRequest;
import android.webkit.WebResourceResponse;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.google.common.base.Ascii;
import java.util.Arrays;
import java.util.Locale;
import org.json.JSONException;
import org.json.JSONObject;
/* renamed from: com.facebook.ads.redexgen.X.bp  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class C1283bp extends WebViewClient {
    public static byte[] A01;
    public static String[] A02 = {"", "6FWFK2Rjg5lzc4YxuKyAM2pjdKcDgsPX", "X8DXQa0II", "SNpKLA", "Qdf29haAswqAmNE65waVoEZq7xKg2wdQ", "zoYtBkcpJPqvxBhZCETS8Gv12yQPTvJi", "ExNOaNYHlEOFqs215y0dlBgemejMJNEa", "gJ6ZUqdzTjndwEo8cFEFcqem1uRbclUa"};
    public final /* synthetic */ C1287bt A00;

    public static String A00(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A01, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            int i5 = copyOfRange[i4] ^ i3;
            if (A02[5].charAt(10) != 'q') {
                throw new RuntimeException();
            }
            A02[5] = "pKC7szj5R0qBwTmNDTYZuLrnbbbgOopj";
            copyOfRange[i4] = (byte) (i5 ^ 33);
        }
        return new String(copyOfRange);
    }

    public static void A01() {
        A01 = new byte[]{98, 99, 117, 101, 116, 111, 118, 114, 111, 105, 104, 124, 113, 124, 91, 106, 121, 107, 112, 6, 17, 17, Ascii.FF, 17, 32, Ascii.FF, 7, 6, 90, 93, 74, 85, 95, 83, 82, Ascii.DC2, 85, 95, 83, Ascii.CR, 17, 17, Ascii.NAK, 58, 0, Ascii.ETB, Ascii.ETB, 10, Ascii.ETB, 19, 17, 10, Ascii.FF, 17, 10, Ascii.ETB, Ascii.SUB, 106, 109, 115};
    }

    static {
        A01();
    }

    public C1283bp(C1287bt c1287bt) {
        this.A00 = c1287bt;
    }

    private void A02(int i, String str, String str2, boolean z) {
        C1017Ua c1017Ua;
        C1376dL c1376dL;
        C1274bg c1274bg;
        if (z) {
            this.A00.A0S();
        }
        c1017Ua = this.A00.A0D;
        c1017Ua.A04(UZ.A0Q, null);
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put(A00(19, 9, 66), i);
            jSONObject.put(A00(0, 11, 39), str);
            jSONObject.put(A00(57, 3, 62), str2);
        } catch (JSONException unused) {
        }
        String jSONObject2 = jSONObject.toString();
        c1376dL = this.A00.A0B;
        c1376dL.A0F().A66(jSONObject2);
        c1274bg = this.A00.A0E;
        c1274bg.A04(AbstractC0987Sv.A16, jSONObject2);
    }

    @Override // android.webkit.WebViewClient
    public final void onPageFinished(WebView webView, String str) {
        C1017Ua c1017Ua;
        C1376dL c1376dL;
        long j;
        InterfaceC1285br interfaceC1285br;
        InterfaceC1285br interfaceC1285br2;
        c1017Ua = this.A00.A0D;
        c1017Ua.A04(UZ.A0R, null);
        c1376dL = this.A00.A0B;
        LH A0F = c1376dL.A0F();
        j = this.A00.A00;
        A0F.A67(XG.A01(j));
        this.A00.A0S();
        this.A00.A06 = true;
        this.A00.A0E();
        interfaceC1285br = this.A00.A03;
        if (interfaceC1285br == null) {
            return;
        }
        interfaceC1285br2 = this.A00.A03;
        interfaceC1285br2.AFx();
    }

    @Override // android.webkit.WebViewClient
    public final void onReceivedError(WebView webView, int i, String str, String str2) {
        super.onReceivedError(webView, i, str, str2);
        if (Build.VERSION.SDK_INT < 23) {
            A02(i, str, str2, true);
        }
    }

    @Override // android.webkit.WebViewClient
    public final void onReceivedError(WebView webView, WebResourceRequest webResourceRequest, WebResourceError webResourceError) {
        super.onReceivedError(webView, webResourceRequest, webResourceError);
        int errorCode = webResourceError.getErrorCode();
        StringBuilder sb = new StringBuilder();
        String A00 = A00(0, 0, 93);
        A02(errorCode, sb.append(A00).append((Object) webResourceError.getDescription()).toString(), A00 + webResourceRequest.getUrl(), true);
    }

    @Override // android.webkit.WebViewClient
    public final void onReceivedHttpError(WebView webView, WebResourceRequest webResourceRequest, WebResourceResponse webResourceResponse) {
        int i;
        super.onReceivedHttpError(webView, webResourceRequest, webResourceResponse);
        if (webResourceRequest.getUrl().toString().toLowerCase(Locale.US).contains(A00(28, 11, 29))) {
            return;
        }
        if (webResourceResponse != null) {
            i = webResourceResponse.getStatusCode();
        } else {
            i = -1;
        }
        A02(i, A00(39, 10, 68), A00(0, 0, 93) + webResourceRequest.getUrl(), false);
    }

    @Override // android.webkit.WebViewClient
    public final boolean onRenderProcessGone(WebView webView, RenderProcessGoneDetail renderProcessGoneDetail) {
        C1376dL c1376dL;
        AbstractC1657hy abstractC1657hy;
        InterfaceC1286bs interfaceC1286bs;
        InterfaceC1286bs interfaceC1286bs2;
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put(A00(11, 8, 57), renderProcessGoneDetail.didCrash());
            jSONObject.put(A00(49, 8, 66), renderProcessGoneDetail.rendererPriorityAtExit());
        } catch (JSONException unused) {
        }
        String jSONObject2 = jSONObject.toString();
        c1376dL = this.A00.A0B;
        String message = A02[5];
        if (message.charAt(10) == 'q') {
            A02[3] = "cKmn9F08G0LbJgt48cswTZGSotGQ5jj";
            c1376dL.A0F().A62(jSONObject2);
            abstractC1657hy = this.A00.A09;
            AbstractC1288bu.A04(abstractC1657hy.A17());
            interfaceC1286bs = this.A00.A04;
            if (interfaceC1286bs != null) {
                interfaceC1286bs2 = this.A00.A04;
                interfaceC1286bs2.AEm();
            }
            String message2 = A02[5];
            if (message2.charAt(10) == 'q') {
                A02[3] = "Jr1n";
                return true;
            }
        }
        throw new RuntimeException();
    }

    @Override // android.webkit.WebViewClient
    public final WebResourceResponse shouldInterceptRequest(WebView webView, WebResourceRequest webResourceRequest) {
        C1376dL c1376dL;
        SF sf;
        C1296c2 c1296c2;
        AbstractC1657hy abstractC1657hy;
        c1376dL = this.A00.A0B;
        sf = this.A00.A0A;
        c1296c2 = this.A00.A0H;
        abstractC1657hy = this.A00.A09;
        return C1298c4.A00(c1376dL, sf, webResourceRequest, c1296c2, abstractC1657hy.A1O());
    }
}
