package androidx.webkit;

import androidx.webkit.internal.ProfileStoreImpl;
import androidx.webkit.internal.WebViewFeatureInternal;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public final /* synthetic */ class Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww {
    public static ProfileStore Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        if (WebViewFeatureInternal.MULTI_PROFILE.isSupportedByWebView()) {
            return ProfileStoreImpl.getInstance();
        }
        throw WebViewFeatureInternal.getUnsupportedOperationException();
    }
}
