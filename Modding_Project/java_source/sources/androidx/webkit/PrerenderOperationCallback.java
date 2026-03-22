package androidx.webkit;

import androidx.webkit.WebViewCompat;
/* compiled from: Proguard */
@WebViewCompat.ExperimentalUrlPrerender
/* loaded from: classes3.dex */
public interface PrerenderOperationCallback {
    void onError(PrerenderException prerenderException);

    void onPrerenderActivated();
}
