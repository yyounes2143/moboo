package com.cd_core4.cd_webview;

import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.net.http.SslError;
import android.view.KeyEvent;
import android.webkit.SslErrorHandler;
import android.webkit.WebResourceError;
import android.webkit.WebResourceRequest;
import android.webkit.WebResourceResponse;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.cd_core4.cd_webview.CDWebView$mWebViewClient$1;
import com.mbridge.msdk.MBridgeConstans;
import com.sensorsdata.analytics.android.autotrack.aop.SensorsDataAutoTrackHelper;
import com.sensorsdata.analytics.android.sdk.SensorsDataInstrumented;
import com.sensorsdata.analytics.android.sdk.jsbridge.JSHookAop;
import com.vungle.ads.internal.ui.AdActivity;
import io.flutter.plugin.common.MethodChannel;
import kotlin.Metadata;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000K\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u0018\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0016J\u0018\u0010\b\u001a\u00020\t2\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\n\u001a\u00020\u000bH\u0016J\u0018\u0010\b\u001a\u00020\t2\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0016J(\u0010\f\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00072\u0006\u0010\u0010\u001a\u00020\u0007H\u0016J&\u0010\u0011\u001a\u00020\u00032\b\u0010\u0004\u001a\u0004\u0018\u00010\u00052\b\u0010\n\u001a\u0004\u0018\u00010\u000b2\b\u0010\u0012\u001a\u0004\u0018\u00010\u0013H\u0016J&\u0010\f\u001a\u00020\u00032\b\u0010\u0004\u001a\u0004\u0018\u00010\u00052\b\u0010\n\u001a\u0004\u0018\u00010\u000b2\b\u0010\u0014\u001a\u0004\u0018\u00010\u0015H\u0016J$\u0010\u0016\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\b\u0010\u0017\u001a\u0004\u0018\u00010\u00182\b\u0010\u0014\u001a\u0004\u0018\u00010\u0019H\u0016¨\u0006\u001a"}, d2 = {"com/cd_core4/cd_webview/CDWebView$mWebViewClient$1", "Landroid/webkit/WebViewClient;", "onPageFinished", "", MBridgeConstans.DYNAMIC_VIEW_KEY_VIEW, "Landroid/webkit/WebView;", "url", "", "shouldOverrideUrlLoading", "", AdActivity.REQUEST_KEY_EXTRA, "Landroid/webkit/WebResourceRequest;", "onReceivedError", "errorCode", "", "description", "failingUrl", "onReceivedHttpError", "errorResponse", "Landroid/webkit/WebResourceResponse;", "error", "Landroid/webkit/WebResourceError;", "onReceivedSslError", "handler", "Landroid/webkit/SslErrorHandler;", "Landroid/net/http/SslError;", "cd_webview_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class CDWebView$mWebViewClient$1 extends WebViewClient {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final /* synthetic */ CDWebView f5284Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    public CDWebView$mWebViewClient$1(CDWebView cDWebView) {
        this.f5284Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = cDWebView;
    }

    public static final boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(SslErrorHandler sslErrorHandler, DialogInterface dialogInterface, int i, KeyEvent keyEvent) {
        if (keyEvent.getAction() == 1 && i == 4) {
            if (sslErrorHandler != null) {
                sslErrorHandler.cancel();
            }
            dialogInterface.dismiss();
            return true;
        }
        return false;
    }

    @SensorsDataInstrumented
    public static final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(SslErrorHandler sslErrorHandler, DialogInterface dialogInterface, int i) {
        if (sslErrorHandler != null) {
            sslErrorHandler.cancel();
        }
        SensorsDataAutoTrackHelper.trackDialog(dialogInterface, i);
    }

    @SensorsDataInstrumented
    public static final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(SslErrorHandler sslErrorHandler, DialogInterface dialogInterface, int i) {
        if (sslErrorHandler != null) {
            sslErrorHandler.proceed();
        }
        SensorsDataAutoTrackHelper.trackDialog(dialogInterface, i);
    }

    @Override // android.webkit.WebViewClient
    public void onPageFinished(WebView webView, String str) {
        boolean z;
        MethodChannel methodChannel;
        MethodChannel methodChannel2;
        String unused;
        try {
            super.onPageFinished(webView, str);
            unused = this.f5284Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.f5274Wwwwwwwwwwwwwwwww;
            z = this.f5284Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.f5276Wwwwwwwwwwwwwwwwwww;
            if (z) {
                methodChannel2 = this.f5284Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.f5281Wwwwwwwwwwwwwwwwwwwwwwww;
                if (methodChannel2 != null) {
                    methodChannel2.invokeMethod("webViewDidFail", "load failed");
                }
                this.f5284Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.f5276Wwwwwwwwwwwwwwwwwww = false;
                return;
            }
            methodChannel = this.f5284Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.f5281Wwwwwwwwwwwwwwwwwwwwwwww;
            if (methodChannel != null) {
                methodChannel.invokeMethod("webViewDidFinish", null);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override // android.webkit.WebViewClient
    public void onReceivedError(WebView webView, int i, String str, String str2) {
        String unused;
        unused = this.f5284Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.f5274Wwwwwwwwwwwwwwwww;
        this.f5284Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.f5276Wwwwwwwwwwwwwwwwwww = true;
    }

    @Override // android.webkit.WebViewClient
    public void onReceivedHttpError(WebView webView, WebResourceRequest webResourceRequest, WebResourceResponse webResourceResponse) {
        String unused;
        unused = this.f5284Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.f5274Wwwwwwwwwwwwwwwww;
        super.onReceivedHttpError(webView, webResourceRequest, webResourceResponse);
    }

    @Override // android.webkit.WebViewClient
    public void onReceivedSslError(WebView webView, final SslErrorHandler sslErrorHandler, SslError sslError) {
        Context context;
        boolean z;
        Context context2;
        try {
            context = this.f5284Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.f5278Wwwwwwwwwwwwwwwwwwwww;
            if (context == null && sslErrorHandler != null) {
                sslErrorHandler.cancel();
            }
            z = this.f5284Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.f5279Wwwwwwwwwwwwwwwwwwwwww;
            if (!z) {
                this.f5284Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.f5279Wwwwwwwwwwwwwwwwwwwwww = true;
                context2 = this.f5284Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.f5278Wwwwwwwwwwwwwwwwwwwww;
                AlertDialog.Builder builder = new AlertDialog.Builder(context2, R.style.AlertDialogTheme);
                builder.setMessage("SSL Certificate Failed Verification");
                builder.setPositiveButton("Continue", new DialogInterface.OnClickListener() { // from class: Wwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww
                    @Override // android.content.DialogInterface.OnClickListener
                    public final void onClick(DialogInterface dialogInterface, int i) {
                        CDWebView$mWebViewClient$1.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(sslErrorHandler, dialogInterface, i);
                    }
                });
                builder.setNegativeButton("Cancel", new DialogInterface.OnClickListener() { // from class: Wwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww
                    @Override // android.content.DialogInterface.OnClickListener
                    public final void onClick(DialogInterface dialogInterface, int i) {
                        CDWebView$mWebViewClient$1.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(sslErrorHandler, dialogInterface, i);
                    }
                });
                builder.setOnKeyListener(new DialogInterface.OnKeyListener() { // from class: Wwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww
                    @Override // android.content.DialogInterface.OnKeyListener
                    public final boolean onKey(DialogInterface dialogInterface, int i, KeyEvent keyEvent) {
                        boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
                        Wwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = CDWebView$mWebViewClient$1.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(sslErrorHandler, dialogInterface, i, keyEvent);
                        return Wwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
                    }
                });
                builder.create().show();
            } else if (sslErrorHandler != null) {
                sslErrorHandler.proceed();
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override // android.webkit.WebViewClient
    public boolean shouldOverrideUrlLoading(WebView webView, WebResourceRequest webResourceRequest) {
        return super.shouldOverrideUrlLoading(webView, webResourceRequest);
    }

    @Override // android.webkit.WebViewClient
    public boolean shouldOverrideUrlLoading(WebView webView, String str) {
        try {
            webView.loadUrl(str);
            JSHookAop.loadUrl(webView, str);
            return true;
        } catch (Exception e) {
            e.printStackTrace();
            return true;
        }
    }

    @Override // android.webkit.WebViewClient
    public void onReceivedError(WebView webView, WebResourceRequest webResourceRequest, WebResourceError webResourceError) {
        String unused;
        unused = this.f5284Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.f5274Wwwwwwwwwwwwwwwww;
        this.f5284Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.f5276Wwwwwwwwwwwwwwwwwww = true;
        super.onReceivedError(webView, webResourceRequest, webResourceError);
    }
}
