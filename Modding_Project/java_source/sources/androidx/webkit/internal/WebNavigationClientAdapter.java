package androidx.webkit.internal;

import androidx.webkit.WebNavigationClient;
import androidx.webkit.WebViewFeature;
import java.lang.reflect.InvocationHandler;
import java.util.concurrent.Callable;
import org.chromium.support_lib_boundary.WebViewNavigationBoundaryInterface;
import org.chromium.support_lib_boundary.WebViewNavigationClientBoundaryInterface;
import org.chromium.support_lib_boundary.WebViewPageBoundaryInterface;
import org.chromium.support_lib_boundary.util.BoundaryInterfaceReflectionUtil;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public class WebNavigationClientAdapter implements WebViewNavigationClientBoundaryInterface {
    WebNavigationClient mWebNavigationClient;

    public WebNavigationClientAdapter(WebNavigationClient webNavigationClient) {
        this.mWebNavigationClient = webNavigationClient;
    }

    public static /* synthetic */ Object Wwwwwwwwwwwwwwwwwwwwwwwwwwww(WebViewPageBoundaryInterface webViewPageBoundaryInterface) {
        return new PageImpl(webViewPageBoundaryInterface);
    }

    public static /* synthetic */ Object Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(WebViewPageBoundaryInterface webViewPageBoundaryInterface) {
        return new PageImpl(webViewPageBoundaryInterface);
    }

    public static /* synthetic */ Object Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(WebViewNavigationBoundaryInterface webViewNavigationBoundaryInterface) {
        return new NavigationAdapter(webViewNavigationBoundaryInterface);
    }

    public static /* synthetic */ Object Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(WebViewNavigationBoundaryInterface webViewNavigationBoundaryInterface) {
        return new NavigationAdapter(webViewNavigationBoundaryInterface);
    }

    public static /* synthetic */ Object Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(WebViewPageBoundaryInterface webViewPageBoundaryInterface) {
        return new PageImpl(webViewPageBoundaryInterface);
    }

    public static /* synthetic */ Object Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(WebViewPageBoundaryInterface webViewPageBoundaryInterface) {
        return new PageImpl(webViewPageBoundaryInterface);
    }

    public static /* synthetic */ Object Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(WebViewNavigationBoundaryInterface webViewNavigationBoundaryInterface) {
        return new NavigationAdapter(webViewNavigationBoundaryInterface);
    }

    @Override // org.chromium.support_lib_boundary.FeatureFlagHolderBoundaryInterface
    public String[] getSupportedFeatures() {
        return new String[]{WebViewFeature.NAVIGATION_CALLBACK_BASIC};
    }

    public WebNavigationClient getWebNavigationClient() {
        return this.mWebNavigationClient;
    }

    @Override // org.chromium.support_lib_boundary.WebViewNavigationClientBoundaryInterface
    public void onFirstContentfulPaint(InvocationHandler invocationHandler) {
        final WebViewPageBoundaryInterface webViewPageBoundaryInterface = (WebViewPageBoundaryInterface) BoundaryInterfaceReflectionUtil.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(WebViewPageBoundaryInterface.class, invocationHandler);
        this.mWebNavigationClient.onFirstContentfulPaint((PageImpl) webViewPageBoundaryInterface.getOrCreatePeer(new Callable() { // from class: androidx.webkit.internal.Kkkkkkkkkk
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return WebNavigationClientAdapter.Wwwwwwwwwwwwwwwwwwwwwwwwwwww(WebViewPageBoundaryInterface.this);
            }
        }));
    }

    @Override // org.chromium.support_lib_boundary.WebViewNavigationClientBoundaryInterface
    public void onNavigationCompleted(InvocationHandler invocationHandler) {
        final WebViewNavigationBoundaryInterface webViewNavigationBoundaryInterface = (WebViewNavigationBoundaryInterface) BoundaryInterfaceReflectionUtil.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(WebViewNavigationBoundaryInterface.class, invocationHandler);
        this.mWebNavigationClient.onNavigationCompleted((NavigationAdapter) webViewNavigationBoundaryInterface.getOrCreatePeer(new Callable() { // from class: androidx.webkit.internal.Kkkk
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return WebNavigationClientAdapter.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(WebViewNavigationBoundaryInterface.this);
            }
        }));
    }

    @Override // org.chromium.support_lib_boundary.WebViewNavigationClientBoundaryInterface
    public void onNavigationRedirected(InvocationHandler invocationHandler) {
        final WebViewNavigationBoundaryInterface webViewNavigationBoundaryInterface = (WebViewNavigationBoundaryInterface) BoundaryInterfaceReflectionUtil.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(WebViewNavigationBoundaryInterface.class, invocationHandler);
        this.mWebNavigationClient.onNavigationRedirected((NavigationAdapter) webViewNavigationBoundaryInterface.getOrCreatePeer(new Callable() { // from class: androidx.webkit.internal.Kkkkkkk
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return WebNavigationClientAdapter.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(WebViewNavigationBoundaryInterface.this);
            }
        }));
    }

    @Override // org.chromium.support_lib_boundary.WebViewNavigationClientBoundaryInterface
    public void onNavigationStarted(InvocationHandler invocationHandler) {
        final WebViewNavigationBoundaryInterface webViewNavigationBoundaryInterface = (WebViewNavigationBoundaryInterface) BoundaryInterfaceReflectionUtil.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(WebViewNavigationBoundaryInterface.class, invocationHandler);
        this.mWebNavigationClient.onNavigationStarted((NavigationAdapter) webViewNavigationBoundaryInterface.getOrCreatePeer(new Callable() { // from class: androidx.webkit.internal.Kkkkkkkkk
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return WebNavigationClientAdapter.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(WebViewNavigationBoundaryInterface.this);
            }
        }));
    }

    @Override // org.chromium.support_lib_boundary.WebViewNavigationClientBoundaryInterface
    public void onPageDOMContentLoadedEventFired(InvocationHandler invocationHandler) {
        final WebViewPageBoundaryInterface webViewPageBoundaryInterface = (WebViewPageBoundaryInterface) BoundaryInterfaceReflectionUtil.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(WebViewPageBoundaryInterface.class, invocationHandler);
        this.mWebNavigationClient.onPageDomContentLoadedEventFired((PageImpl) webViewPageBoundaryInterface.getOrCreatePeer(new Callable() { // from class: androidx.webkit.internal.Kkkkk
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return WebNavigationClientAdapter.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(WebViewPageBoundaryInterface.this);
            }
        }));
    }

    @Override // org.chromium.support_lib_boundary.WebViewNavigationClientBoundaryInterface
    public void onPageDeleted(InvocationHandler invocationHandler) {
        final WebViewPageBoundaryInterface webViewPageBoundaryInterface = (WebViewPageBoundaryInterface) BoundaryInterfaceReflectionUtil.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(WebViewPageBoundaryInterface.class, invocationHandler);
        this.mWebNavigationClient.onPageDeleted((PageImpl) webViewPageBoundaryInterface.getOrCreatePeer(new Callable() { // from class: androidx.webkit.internal.Kkkkkkkk
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return WebNavigationClientAdapter.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(WebViewPageBoundaryInterface.this);
            }
        }));
    }

    @Override // org.chromium.support_lib_boundary.WebViewNavigationClientBoundaryInterface
    public void onPageLoadEventFired(InvocationHandler invocationHandler) {
        final WebViewPageBoundaryInterface webViewPageBoundaryInterface = (WebViewPageBoundaryInterface) BoundaryInterfaceReflectionUtil.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(WebViewPageBoundaryInterface.class, invocationHandler);
        this.mWebNavigationClient.onPageLoadEventFired((PageImpl) webViewPageBoundaryInterface.getOrCreatePeer(new Callable() { // from class: androidx.webkit.internal.Kkkkkk
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return WebNavigationClientAdapter.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(WebViewPageBoundaryInterface.this);
            }
        }));
    }
}
