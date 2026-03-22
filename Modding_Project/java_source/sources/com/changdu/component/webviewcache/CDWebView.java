package com.changdu.component.webviewcache;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.net.Uri;
import android.util.AttributeSet;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.webkit.CookieManager;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import androidx.annotation.MainThread;
import com.changdu.component.webviewcache.config.CacheConfig;
import com.changdu.component.webviewcache.config.CacheMode;
import com.changdu.component.webviewcache.config.DefaultMimeTypeFilter;
import com.changdu.component.webviewcache.cookie.CDCookieManager;
import com.sensorsdata.analytics.android.sdk.jsbridge.JSHookAop;
import java.io.File;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.Metadata;
import kotlin.io.FilesKt;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000\u008e\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010%\n\u0002\b\b\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u0011\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010$\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\n\b\u0016\u0018\u0000 O2\u00020\u0001:\u0002OPB\u0011\b\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005B\u001b\b\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006¢\u0006\u0004\b\u0004\u0010\bB#\b\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\u0010\t\u001a\u0004\u0018\u00010\u0006\u0012\u0006\u0010\u000b\u001a\u00020\n¢\u0006\u0004\b\u0004\u0010\fJ\u000f\u0010\u000e\u001a\u00020\rH\u0016¢\u0006\u0004\b\u000e\u0010\u000fJ\u0017\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u0010\u001a\u00020\rH\u0016¢\u0006\u0004\b\u0012\u0010\u0013J\u000f\u0010\u0015\u001a\u00020\u0014H\u0016¢\u0006\u0004\b\u0015\u0010\u0016J\u0017\u0010\u0019\u001a\u00020\u00112\u0006\u0010\u0018\u001a\u00020\u0017H\u0016¢\u0006\u0004\b\u0019\u0010\u001aJ+\u0010\u0019\u001a\u00020\u00112\u0006\u0010\u0018\u001a\u00020\u00172\u0012\u0010\u001c\u001a\u000e\u0012\u0004\u0012\u00020\u0017\u0012\u0004\u0012\u00020\u00170\u001bH\u0016¢\u0006\u0004\b\u0019\u0010\u001dJ\u000f\u0010\u001e\u001a\u00020\u0011H\u0016¢\u0006\u0004\b\u001e\u0010\u001fJ\r\u0010 \u001a\u00020\u0011¢\u0006\u0004\b \u0010\u001fJ\u0015\u0010\"\u001a\u00020\u00112\u0006\u0010!\u001a\u00020\u0014¢\u0006\u0004\b\"\u0010#J\u0015\u0010&\u001a\u00020\u00112\u0006\u0010%\u001a\u00020$¢\u0006\u0004\b&\u0010'J%\u0010+\u001a\u00020\u00112\u0016\u0010*\u001a\u0012\u0012\u0004\u0012\u00020\u00170(j\b\u0012\u0004\u0012\u00020\u0017`)¢\u0006\u0004\b+\u0010,J%\u0010-\u001a\u00020\u00112\u0016\u0010*\u001a\u0012\u0012\u0004\u0012\u00020\u00170(j\b\u0012\u0004\u0012\u00020\u0017`)¢\u0006\u0004\b-\u0010,J\u0015\u00100\u001a\u00020\u00112\u0006\u0010/\u001a\u00020.¢\u0006\u0004\b0\u00101J\r\u00103\u001a\u000202¢\u0006\u0004\b3\u00104J\u0015\u00106\u001a\u00020\u00112\u0006\u00105\u001a\u00020\u0014¢\u0006\u0004\b6\u0010#J\r\u00107\u001a\u00020\u0014¢\u0006\u0004\b7\u0010\u0016J+\u0010<\u001a\u00020\u00112\u0006\u00108\u001a\u00020\u00172\u0012\u0010;\u001a\n\u0012\u0006\b\u0001\u0012\u00020:09\"\u00020:H\u0007¢\u0006\u0004\b<\u0010=J)\u0010B\u001a\u00020\u00112\u0012\u0010?\u001a\u000e\u0012\u0004\u0012\u00020\u0017\u0012\u0004\u0012\u00020:0>2\u0006\u0010A\u001a\u00020@¢\u0006\u0004\bB\u0010CJ\u0015\u0010E\u001a\u00020\u00112\u0006\u0010D\u001a\u00020\u0014¢\u0006\u0004\bE\u0010#J\r\u0010F\u001a\u00020\u0011¢\u0006\u0004\bF\u0010\u001fR$\u0010N\u001a\u0004\u0018\u00010G8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bH\u0010I\u001a\u0004\bJ\u0010K\"\u0004\bL\u0010M¨\u0006Q"}, d2 = {"Lcom/changdu/component/webviewcache/CDWebView;", "Landroid/webkit/WebView;", "Landroid/content/Context;", "context", "<init>", "(Landroid/content/Context;)V", "Landroid/util/AttributeSet;", "attributeSet", "(Landroid/content/Context;Landroid/util/AttributeSet;)V", "attrs", "", "defStyleAttr", "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", "Landroid/webkit/WebViewClient;", "getWebViewClient", "()Landroid/webkit/WebViewClient;", "client", "", "setWebViewClient", "(Landroid/webkit/WebViewClient;)V", "", "canGoBack", "()Z", "", "url", "loadUrl", "(Ljava/lang/String;)V", "", "additionalHttpHeaders", "(Ljava/lang/String;Ljava/util/Map;)V", "destroy", "()V", "release", "enable", "setEnableCustomCache", "(Z)V", "", "size", "setCacheSize", "(J)V", "Ljava/util/ArrayList;", "Lkotlin/collections/ArrayList;", "list", "setCacheBlackList", "(Ljava/util/ArrayList;)V", "addCacheBlackList", "Lcom/changdu/component/webviewcache/WebResourceInterceptor;", "interceptor", "addWebResourceInterceptor", "(Lcom/changdu/component/webviewcache/WebResourceInterceptor;)V", "Lcom/changdu/component/webviewcache/cookie/CDCookieManager;", "getCookieManager", "()Lcom/changdu/component/webviewcache/cookie/CDCookieManager;", "recycled", "setRecycled", "isRecycled", "functionName", "", "", "args", "runJavaScript", "(Ljava/lang/String;[Ljava/lang/Object;)V", "", "respDataMap", "Lcom/changdu/component/webviewcache/CDJsInterfaceParamsData;", "jsInterfaceParamsData", "responseBizJavaScript", "(Ljava/util/Map;Lcom/changdu/component/webviewcache/CDJsInterfaceParamsData;)V", "visible", "notifyVisible", "notifyUpdatePageAd", "Lcom/changdu/component/webviewcache/CDWebViewJsBridgeListener;", com.mbridge.msdk.foundation.same.report.j.b, "Lcom/changdu/component/webviewcache/CDWebViewJsBridgeListener;", "getCdJsBridgeListener", "()Lcom/changdu/component/webviewcache/CDWebViewJsBridgeListener;", "setCdJsBridgeListener", "(Lcom/changdu/component/webviewcache/CDWebViewJsBridgeListener;)V", "cdJsBridgeListener", "Companion", "WithHtmlMimeTypeFilter", "webview-cache_release"}, k = 1, mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nCDWebView.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CDWebView.kt\ncom/changdu/component/webviewcache/CDWebView\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,534:1\n1855#2,2:535\n1#3:537\n13374#4,3:538\n*S KotlinDebug\n*F\n+ 1 CDWebView.kt\ncom/changdu/component/webviewcache/CDWebView\n*L\n310#1:535,2\n448#1:538,3\n*E\n"})
/* loaded from: classes3.dex */
public class CDWebView extends WebView {
    @NotNull
    public static final String CD_H5_VERSION_QUERY_PARAMETER = "cdh5ver";
    @NotNull
    public static final Companion Companion = new Companion(null);
    @NotNull
    public static final String METHOD_GET = "GET";
    @NotNull
    public static final String SCHEME_HTTP = "http";
    @NotNull
    public static final String SCHEME_HTTPS = "https";

    /* renamed from: a  reason: collision with root package name */
    public boolean f5381a;
    public boolean b;
    public long c;
    public final ArrayList d;
    public com.changdu.component.webviewcache.internal.b e;
    public WebViewClient f;
    public boolean g;
    public final ArrayList h;
    public final CDJsInterface i;
    public CDWebViewJsBridgeListener j;

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\t\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0017\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0007¢\u0006\u0004\b\u0005\u0010\u0006J\u001f\u0010\u000b\u001a\u00020\u00042\u0006\u0010\b\u001a\u00020\u00072\u0006\u0010\n\u001a\u00020\tH\u0007¢\u0006\u0004\b\u000b\u0010\fJ\u0017\u0010\r\u001a\u00020\u00042\u0006\u0010\b\u001a\u00020\u0007H\u0007¢\u0006\u0004\b\r\u0010\u000eJ;\u0010\u0013\u001a\u00020\t2\u0006\u0010\u000f\u001a\u00020\t2\"\u0010\u0012\u001a\u001e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\u00010\u0010j\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\u0001`\u0011H\u0007¢\u0006\u0004\b\u0013\u0010\u0014R\u0014\u0010\u0015\u001a\u00020\t8\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0015\u0010\u0016R\u0014\u0010\u0017\u001a\u00020\t8\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0017\u0010\u0016R\u0014\u0010\u0018\u001a\u00020\t8\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0018\u0010\u0016R\u0014\u0010\u0019\u001a\u00020\t8\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0019\u0010\u0016¨\u0006\u001a"}, d2 = {"Lcom/changdu/component/webviewcache/CDWebView$Companion;", "", "", "debug", "", "setDebug", "(Z)V", "Landroid/content/Context;", "context", "", "url", "preload", "(Landroid/content/Context;Ljava/lang/String;)V", "clearCache", "(Landroid/content/Context;)V", "htmlUrl", "Ljava/util/LinkedHashMap;", "Lkotlin/collections/LinkedHashMap;", "extraParamsMap", "parseHtmlUrl", "(Ljava/lang/String;Ljava/util/LinkedHashMap;)Ljava/lang/String;", "CD_H5_VERSION_QUERY_PARAMETER", "Ljava/lang/String;", "METHOD_GET", "SCHEME_HTTP", "SCHEME_HTTPS", "webview-cache_release"}, k = 1, mv = {1, 9, 0})
    @SourceDebugExtension({"SMAP\nCDWebView.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CDWebView.kt\ncom/changdu/component/webviewcache/CDWebView$Companion\n+ 2 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n*L\n1#1,534:1\n215#2,2:535\n*S KotlinDebug\n*F\n+ 1 CDWebView.kt\ncom/changdu/component/webviewcache/CDWebView$Companion\n*L\n87#1:535,2\n*E\n"})
    /* loaded from: classes3.dex */
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        @JvmStatic
        public final void clearCache(@NotNull Context context) {
            try {
                String str = context.getCacheDir() + File.separator + "CDWebViewCache";
                if (str != null && !StringsKt.isBlank(str)) {
                    FilesKt.deleteRecursively(new File(str));
                }
            } catch (Exception unused) {
            }
            try {
                String str2 = context.getCacheDir() + File.separator + "CDWebViewCacheOkHttp";
                if (str2 != null && !StringsKt.isBlank(str2)) {
                    FilesKt.deleteRecursively(new File(str2));
                }
            } catch (Exception unused2) {
            }
        }

        @JvmStatic
        @NotNull
        public final String parseHtmlUrl(@NotNull String str, @NotNull LinkedHashMap<String, Object> linkedHashMap) {
            String str2;
            if (!StringsKt.isBlank(str)) {
                if (StringsKt.startsWith$default(str, "http://", false, 2, (Object) null) || StringsKt.startsWith$default(str, "https://", false, 2, (Object) null)) {
                    try {
                        Uri.Builder buildUpon = Uri.parse("http://www.baidu.com?").buildUpon();
                        for (Map.Entry<String, Object> entry : linkedHashMap.entrySet()) {
                            String key = entry.getKey();
                            Object value = entry.getValue();
                            if (key != null && !StringsKt.isBlank(key)) {
                                buildUpon.appendQueryParameter(key, String.valueOf(value));
                            }
                        }
                        String encodedQuery = buildUpon.build().getEncodedQuery();
                        if (encodedQuery != null) {
                            if (StringsKt.contains$default((CharSequence) str, (CharSequence) "?", false, 2, (Object) null)) {
                                if (!StringsKt.endsWith$default(str, "?", false, 2, (Object) null)) {
                                    str2 = str + "&";
                                } else {
                                    str2 = str;
                                }
                                return str2 + encodedQuery;
                            }
                            return str + "?" + encodedQuery;
                        }
                        return str;
                    } catch (Exception unused) {
                        return str;
                    }
                }
                return str;
            }
            return str;
        }

        @JvmStatic
        public final void preload(@NotNull Context context, @NotNull String str) {
            CDWebView cDWebView = new CDWebView(context.getApplicationContext());
            cDWebView.loadUrl(str);
            JSHookAop.loadUrl(cDWebView, str);
        }

        @JvmStatic
        public final void setDebug(boolean z) {
            com.changdu.component.webviewcache.util.c.f5435a = z;
        }
    }

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0086\u0004\u0018\u00002\u00020\u0001B\u0007\b\u0016¢\u0006\u0002\u0010\u0002¨\u0006\u0003"}, d2 = {"Lcom/changdu/component/webviewcache/CDWebView$WithHtmlMimeTypeFilter;", "Lcom/changdu/component/webviewcache/config/DefaultMimeTypeFilter;", "(Lcom/changdu/component/webviewcache/CDWebView;)V", "webview-cache_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    /* loaded from: classes3.dex */
    public final class WithHtmlMimeTypeFilter extends DefaultMimeTypeFilter {
        public WithHtmlMimeTypeFilter(CDWebView cDWebView) {
            addMimeType("text/html");
        }
    }

    public CDWebView(@NotNull Context context) {
        this(context, null);
    }

    @JvmStatic
    public static final void clearCache(@NotNull Context context) {
        Companion.clearCache(context);
    }

    @JvmStatic
    @NotNull
    public static final String parseHtmlUrl(@NotNull String str, @NotNull LinkedHashMap<String, Object> linkedHashMap) {
        return Companion.parseHtmlUrl(str, linkedHashMap);
    }

    @JvmStatic
    public static final void preload(@NotNull Context context, @NotNull String str) {
        Companion.preload(context, str);
    }

    @JvmStatic
    public static final void setDebug(boolean z) {
        Companion.setDebug(z);
    }

    public final void a() {
        getSettings().setSavePassword(false);
        getSettings().setSaveFormData(false);
        getSettings().setJavaScriptEnabled(true);
        getSettings().setJavaScriptCanOpenWindowsAutomatically(true);
        getSettings().setDomStorageEnabled(true);
        getSettings().setDatabaseEnabled(true);
        getSettings().setCacheMode(-1);
        getSettings().setAllowFileAccess(true);
        getSettings().setGeolocationEnabled(true);
        getSettings().setPluginState(WebSettings.PluginState.ON_DEMAND);
        getSettings().setDefaultTextEncodingName("UTF-8");
        getSettings().setSupportZoom(false);
        getSettings().setBuiltInZoomControls(false);
        getSettings().setDisplayZoomControls(false);
        getSettings().setTextZoom(100);
        getSettings().setLayoutAlgorithm(WebSettings.LayoutAlgorithm.NARROW_COLUMNS);
        getSettings().setUseWideViewPort(true);
        getSettings().setLoadWithOverviewMode(true);
        getSettings().setMediaPlaybackRequiresUserGesture(false);
        getSettings().setAllowFileAccessFromFileURLs(true);
        getSettings().setAllowUniversalAccessFromFileURLs(true);
        CookieManager.getInstance().setAcceptThirdPartyCookies(this, true);
        getSettings().setMixedContentMode(2);
        this.i.bind(this);
        String userAgentString = getSettings().getUserAgentString();
        String a2 = com.changdu.component.webviewcache.util.a.a();
        WebSettings settings = getSettings();
        settings.setUserAgentString(userAgentString + " " + a2);
    }

    public final void addCacheBlackList(@NotNull ArrayList<String> arrayList) {
        if (!arrayList.isEmpty()) {
            this.d.addAll(arrayList);
            this.f5381a = true;
        }
    }

    public final void addWebResourceInterceptor(@NotNull WebResourceInterceptor webResourceInterceptor) {
        this.h.add(webResourceInterceptor);
    }

    @Override // android.webkit.WebView
    public boolean canGoBack() {
        if (!this.g && super.canGoBack()) {
            return true;
        }
        return false;
    }

    @Override // android.webkit.WebView
    public void destroy() {
        release();
        super.destroy();
    }

    @Nullable
    public final CDWebViewJsBridgeListener getCdJsBridgeListener() {
        return this.j;
    }

    @NotNull
    public final CDCookieManager getCookieManager() {
        return CDCookieManager.getInstance();
    }

    @Override // android.webkit.WebView
    @NotNull
    public WebViewClient getWebViewClient() {
        WebViewClient webViewClient = this.f;
        if (webViewClient == null) {
            return super.getWebViewClient();
        }
        return webViewClient;
    }

    public final boolean isRecycled() {
        return this.g;
    }

    @Override // android.webkit.WebView
    public void loadUrl(@NotNull String str) {
        a(str);
        super.loadUrl(str);
    }

    public final void notifyUpdatePageAd() {
        CDJsInterface cDJsInterface = this.i;
        if (cDJsInterface != null) {
            cDJsInterface.notifyUpdatePageAd();
        }
    }

    public final void notifyVisible(boolean z) {
        CDJsInterface cDJsInterface = this.i;
        if (cDJsInterface != null) {
            cDJsInterface.notifyVisible(z);
        }
    }

    public final void release() {
        try {
            stopLoading();
            this.g = true;
            this.h.clear();
            com.changdu.component.webviewcache.internal.b bVar = this.e;
            if (bVar != null) {
                bVar.destroy();
            }
            ViewGroup viewGroup = null;
            this.e = null;
            getSettings().setJavaScriptEnabled(false);
            getSettings().setBlockNetworkImage(false);
            clearHistory();
            clearCache(true);
            getCookieManager().destroy();
            removeJavascriptInterface("");
            try {
                this.i.unbind();
            } catch (Exception unused) {
            }
            this.j = null;
            removeAllViews();
            ViewParent parent = getParent();
            if (parent instanceof ViewGroup) {
                viewGroup = (ViewGroup) parent;
            }
            if (viewGroup != null) {
                viewGroup.removeView(this);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public final void responseBizJavaScript(@NotNull Map<String, ? extends Object> map, @NotNull CDJsInterfaceParamsData cDJsInterfaceParamsData) {
        cDJsInterfaceParamsData.setRespData(map);
        cDJsInterfaceParamsData.clearParams();
        runJavaScript("nativeOnResponse", cDJsInterfaceParamsData.toJsonStr());
    }

    @MainThread
    public final void runJavaScript(@NotNull String str, @NotNull Object... objArr) {
        try {
            StringBuilder sb = new StringBuilder("javascript:");
            sb.append(str);
            sb.append("(");
            if (objArr.length != 0) {
                int length = objArr.length;
                int i = 0;
                int i2 = 0;
                while (i < length) {
                    Object obj = objArr[i];
                    int i3 = i2 + 1;
                    if (obj != null) {
                        if (obj instanceof String) {
                            sb.append("'" + obj + "'");
                        } else {
                            sb.append(obj);
                        }
                        if (i2 != objArr.length - 1) {
                            sb.append(",");
                        }
                    }
                    i++;
                    i2 = i3;
                }
            }
            sb.append(");");
            String sb2 = sb.toString();
            loadUrl(sb2);
            JSHookAop.loadUrl(this, sb2);
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public final void setCacheBlackList(@NotNull ArrayList<String> arrayList) {
        this.d.clear();
        this.d.addAll(arrayList);
        this.f5381a = true;
    }

    public final void setCacheSize(long j) {
        if (j < 10485760) {
            return;
        }
        this.c = j;
        this.f5381a = true;
    }

    public final void setCdJsBridgeListener(@Nullable CDWebViewJsBridgeListener cDWebViewJsBridgeListener) {
        this.j = cDWebViewJsBridgeListener;
    }

    public final void setEnableCustomCache(boolean z) {
        this.b = z;
        this.f5381a = true;
    }

    public final void setRecycled(boolean z) {
        this.g = z;
    }

    @Override // android.webkit.WebView
    public void setWebViewClient(@NotNull WebViewClient webViewClient) {
        com.changdu.component.webviewcache.internal.b bVar = this.e;
        if (bVar == null) {
            super.setWebViewClient(webViewClient);
        } else {
            bVar.f5404a = webViewClient;
        }
        this.f = webViewClient;
    }

    public CDWebView(@NotNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, Resources.getSystem().getIdentifier("webViewStyle", "attr", "android"));
    }

    @Override // android.webkit.WebView
    public void loadUrl(@NotNull String str, @NotNull Map<String, String> map) {
        a(str);
        super.loadUrl(str, map);
    }

    public CDWebView(@NotNull Context context, @Nullable AttributeSet attributeSet, int i) {
        super(context.createConfigurationContext(new Configuration()), attributeSet, i);
        this.f5381a = true;
        this.c = 104857600L;
        this.d = new ArrayList();
        this.h = new ArrayList();
        this.i = new CDJsInterface();
        a();
    }

    public final void a(String str) {
        boolean z;
        if (str == null || StringsKt.isBlank(str)) {
            return;
        }
        int i = 0;
        if (StringsKt.startsWith$default(str, "http", false, 2, (Object) null) || StringsKt.startsWith$default(str, "https", false, 2, (Object) null)) {
            try {
                if (Intrinsics.areEqual(Uri.parse(str).getQueryParameter("cdnocache"), "1")) {
                    this.b = false;
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
            if (this.f5381a) {
                this.f5381a = false;
                ArrayList arrayList = this.d;
                int size = arrayList.size();
                int i2 = 0;
                while (true) {
                    if (i2 >= size) {
                        z = false;
                        break;
                    }
                    Object obj = arrayList.get(i2);
                    i2++;
                    if (StringsKt.startsWith$default(str, (String) obj, false, 2, (Object) null)) {
                        z = true;
                        break;
                    }
                }
                if (this.b && !z) {
                    getSettings().setBlockNetworkImage(true);
                    com.changdu.component.webviewcache.internal.b bVar = this.e;
                    if (bVar != null) {
                        bVar.destroy();
                    }
                    this.e = null;
                    CacheConfig.Builder diskCacheSize = new CacheConfig.Builder(getContext()).setDiskCacheSize(this.c);
                    if (StringsKt.contains$default((CharSequence) str, (CharSequence) CD_H5_VERSION_QUERY_PARAMETER, false, 2, (Object) null)) {
                        diskCacheSize.setExtensionFilter(new WithHtmlMimeTypeFilter(this));
                    } else {
                        diskCacheSize.setExtensionFilter(new DefaultMimeTypeFilter());
                    }
                    com.changdu.component.webviewcache.internal.b bVar2 = new com.changdu.component.webviewcache.internal.b(this);
                    bVar2.f5404a = this.f;
                    CacheMode cacheMode = CacheMode.FORCE;
                    CacheConfig build = diskCacheSize.build();
                    com.changdu.component.webviewcache.internal.a aVar = bVar2.b;
                    if (aVar != null) {
                        aVar.f5403a = cacheMode;
                        aVar.b = build;
                    }
                    ArrayList arrayList2 = this.h;
                    if (arrayList2 != null && !arrayList2.isEmpty()) {
                        ArrayList arrayList3 = this.h;
                        int size2 = arrayList3.size();
                        while (i < size2) {
                            Object obj2 = arrayList3.get(i);
                            i++;
                            WebResourceInterceptor webResourceInterceptor = (WebResourceInterceptor) obj2;
                            com.changdu.component.webviewcache.internal.a aVar2 = bVar2.b;
                            if (aVar2 != null) {
                                com.changdu.component.webviewcache.internal.i a2 = aVar2.a();
                                synchronized (a2) {
                                    try {
                                        if (a2.c == null) {
                                            a2.c = new ArrayList();
                                        }
                                        a2.c.add(webResourceInterceptor);
                                    } catch (Throwable th) {
                                        throw th;
                                    }
                                }
                            }
                        }
                    }
                    this.e = bVar2;
                    super.setWebViewClient(bVar2);
                    return;
                }
                getSettings().setBlockNetworkImage(false);
                com.changdu.component.webviewcache.internal.b bVar3 = this.e;
                if (bVar3 != null) {
                    bVar3.destroy();
                }
                this.e = null;
                WebViewClient webViewClient = this.f;
                if (webViewClient != null) {
                    super.setWebViewClient(webViewClient);
                }
            }
        }
    }
}
