package androidx.webkit.internal;

import android.annotation.SuppressLint;
import android.net.Uri;
import android.os.Bundle;
import android.os.CancellationSignal;
import android.webkit.ValueCallback;
import android.webkit.WebChromeClient;
import android.webkit.WebViewClient;
import androidx.annotation.UiThread;
import androidx.webkit.PrerenderException;
import androidx.webkit.PrerenderOperationCallback;
import androidx.webkit.Profile;
import androidx.webkit.SpeculativeLoadingParameters;
import androidx.webkit.WebMessageCompat;
import androidx.webkit.WebMessagePortCompat;
import androidx.webkit.WebNavigationClient;
import androidx.webkit.WebViewCompat;
import androidx.webkit.WebViewRenderProcess;
import androidx.webkit.WebViewRenderProcessClient;
import java.lang.reflect.InvocationHandler;
import java.util.concurrent.Executor;
import org.chromium.support_lib_boundary.ProfileBoundaryInterface;
import org.chromium.support_lib_boundary.WebViewProviderBoundaryInterface;
import org.chromium.support_lib_boundary.util.BoundaryInterfaceReflectionUtil;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public class WebViewProviderAdapter {
    final WebViewProviderBoundaryInterface mImpl;

    public WebViewProviderAdapter(WebViewProviderBoundaryInterface webViewProviderBoundaryInterface) {
        this.mImpl = webViewProviderBoundaryInterface;
    }

    public ScriptHandlerImpl addDocumentStartJavaScript(String str, String[] strArr) {
        return ScriptHandlerImpl.toScriptHandler(this.mImpl.addDocumentStartJavaScript(str, strArr));
    }

    public void addWebMessageListener(String str, String[] strArr, WebViewCompat.WebMessageListener webMessageListener) {
        this.mImpl.addWebMessageListener(str, strArr, BoundaryInterfaceReflectionUtil.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(new WebMessageListenerAdapter(webMessageListener)));
    }

    public WebMessagePortCompat[] createWebMessageChannel() {
        InvocationHandler[] createWebMessageChannel = this.mImpl.createWebMessageChannel();
        WebMessagePortCompat[] webMessagePortCompatArr = new WebMessagePortCompat[createWebMessageChannel.length];
        for (int i = 0; i < createWebMessageChannel.length; i++) {
            webMessagePortCompatArr[i] = new WebMessagePortImpl(createWebMessageChannel[i]);
        }
        return webMessagePortCompatArr;
    }

    public Profile getProfile() {
        return new ProfileImpl((ProfileBoundaryInterface) BoundaryInterfaceReflectionUtil.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(ProfileBoundaryInterface.class, this.mImpl.getProfile()));
    }

    public WebChromeClient getWebChromeClient() {
        return this.mImpl.getWebChromeClient();
    }

    @UiThread
    public WebNavigationClient getWebNavigationClient() {
        InvocationHandler webViewNavigationClient = this.mImpl.getWebViewNavigationClient();
        if (webViewNavigationClient == null) {
            return null;
        }
        return ((WebNavigationClientAdapter) BoundaryInterfaceReflectionUtil.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(webViewNavigationClient)).getWebNavigationClient();
    }

    public WebViewClient getWebViewClient() {
        return this.mImpl.getWebViewClient();
    }

    public WebViewRenderProcess getWebViewRenderProcess() {
        return WebViewRenderProcessImpl.forInvocationHandler(this.mImpl.getWebViewRenderer());
    }

    public WebViewRenderProcessClient getWebViewRenderProcessClient() {
        InvocationHandler webViewRendererClient = this.mImpl.getWebViewRendererClient();
        if (webViewRendererClient == null) {
            return null;
        }
        return ((WebViewRenderProcessClientAdapter) BoundaryInterfaceReflectionUtil.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(webViewRendererClient)).getWebViewRenderProcessClient();
    }

    public void insertVisualStateCallback(long j, WebViewCompat.VisualStateCallback visualStateCallback) {
        this.mImpl.insertVisualStateCallback(j, BoundaryInterfaceReflectionUtil.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(new VisualStateCallbackAdapter(visualStateCallback)));
    }

    public boolean isAudioMuted() {
        return this.mImpl.isAudioMuted();
    }

    public void postWebMessage(WebMessageCompat webMessageCompat, Uri uri) {
        this.mImpl.postMessageToMainFrame(BoundaryInterfaceReflectionUtil.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(new WebMessageAdapter(webMessageCompat)), uri);
    }

    public void prerenderUrlAsync(String str, CancellationSignal cancellationSignal, Executor executor, final PrerenderOperationCallback prerenderOperationCallback) {
        this.mImpl.prerenderUrl(str, cancellationSignal, executor, new ValueCallback() { // from class: androidx.webkit.internal.Illllllllllllllllllllllllllll
            @Override // android.webkit.ValueCallback
            public final void onReceiveValue(Object obj) {
                Void r2 = (Void) obj;
                PrerenderOperationCallback.this.onPrerenderActivated();
            }
        }, new ValueCallback() { // from class: androidx.webkit.internal.Illlllllllllllllllllllllllll
            @Override // android.webkit.ValueCallback
            public final void onReceiveValue(Object obj) {
                PrerenderOperationCallback.this.onError(new PrerenderException("Prerender operation failed", (Throwable) obj));
            }
        });
    }

    public void removeWebMessageListener(String str) {
        this.mImpl.removeWebMessageListener(str);
    }

    @UiThread
    public void saveState(Bundle bundle, int i, boolean z) {
        this.mImpl.saveState(bundle, i, z);
    }

    public void setAudioMuted(boolean z) {
        this.mImpl.setAudioMuted(z);
    }

    public void setProfileWithName(String str) {
        this.mImpl.setProfile(str);
    }

    @UiThread
    public void setWebNavigationClient(WebNavigationClient webNavigationClient) {
        this.mImpl.setWebViewNavigationClient(BoundaryInterfaceReflectionUtil.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(new WebNavigationClientAdapter(webNavigationClient)));
    }

    @SuppressLint({"LambdaLast"})
    public void setWebViewRenderProcessClient(Executor executor, WebViewRenderProcessClient webViewRenderProcessClient) {
        InvocationHandler invocationHandler;
        if (webViewRenderProcessClient != null) {
            invocationHandler = BoundaryInterfaceReflectionUtil.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(new WebViewRenderProcessClientAdapter(executor, webViewRenderProcessClient));
        } else {
            invocationHandler = null;
        }
        this.mImpl.setWebViewRendererClient(invocationHandler);
    }

    public void prerenderUrlAsync(String str, CancellationSignal cancellationSignal, Executor executor, SpeculativeLoadingParameters speculativeLoadingParameters, final PrerenderOperationCallback prerenderOperationCallback) {
        this.mImpl.prerenderUrl(str, cancellationSignal, executor, BoundaryInterfaceReflectionUtil.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(new SpeculativeLoadingParametersAdapter(speculativeLoadingParameters)), new ValueCallback() { // from class: androidx.webkit.internal.Kkk
            @Override // android.webkit.ValueCallback
            public final void onReceiveValue(Object obj) {
                Void r2 = (Void) obj;
                PrerenderOperationCallback.this.onPrerenderActivated();
            }
        }, new ValueCallback() { // from class: androidx.webkit.internal.Kk
            @Override // android.webkit.ValueCallback
            public final void onReceiveValue(Object obj) {
                PrerenderOperationCallback.this.onError(new PrerenderException("Prerender operation failed", (Throwable) obj));
            }
        });
    }
}
