package com.vungle.ads.internal.omsdk;

import android.webkit.WebView;
import androidx.annotation.VisibleForTesting;
import com.iab.omid.library.vungle.Omid;
import com.iab.omid.library.vungle.adsession.AdSession;
import com.iab.omid.library.vungle.adsession.AdSessionConfiguration;
import com.iab.omid.library.vungle.adsession.AdSessionContext;
import com.iab.omid.library.vungle.adsession.CreativeType;
import com.iab.omid.library.vungle.adsession.ImpressionType;
import com.iab.omid.library.vungle.adsession.Owner;
import com.iab.omid.library.vungle.adsession.Partner;
import com.vungle.ads.BuildConfig;
import java.util.concurrent.TimeUnit;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0003\u0018\u0000 \u000f2\u00020\u0001:\u0002\u000f\u0010B\u000f\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u0010\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bH\u0016J\u0006\u0010\f\u001a\u00020\tJ\u0006\u0010\r\u001a\u00020\u000eR\u0010\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0003X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u0011"}, d2 = {"Lcom/vungle/ads/internal/omsdk/OMTracker;", "Lcom/vungle/ads/internal/omsdk/WebViewObserver;", "enabled", "", "(Z)V", "adSession", "Lcom/iab/omid/library/vungle/adsession/AdSession;", "started", "onPageFinished", "", "webView", "Landroid/webkit/WebView;", "start", "stop", "", "Companion", "Factory", "vungle-ads_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes6.dex */
public final class OMTracker implements WebViewObserver {
    @NotNull
    public static final Companion Companion = new Companion(null);
    private static final long DESTROY_DELAY_MS = TimeUnit.SECONDS.toMillis(1);
    @Nullable
    private AdSession adSession;
    private final boolean enabled;
    private boolean started;

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0004\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u001c\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\u0005\u0010\u0002\u001a\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/vungle/ads/internal/omsdk/OMTracker$Companion;", "", "()V", "DESTROY_DELAY_MS", "", "getDESTROY_DELAY_MS$annotations", "getDESTROY_DELAY_MS", "()J", "vungle-ads_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes6.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final long getDESTROY_DELAY_MS() {
            return OMTracker.DESTROY_DELAY_MS;
        }

        private Companion() {
        }

        @VisibleForTesting
        public static /* synthetic */ void getDESTROY_DELAY_MS$annotations() {
        }
    }

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u000e\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006¨\u0006\u0007"}, d2 = {"Lcom/vungle/ads/internal/omsdk/OMTracker$Factory;", "", "()V", "make", "Lcom/vungle/ads/internal/omsdk/OMTracker;", "enabled", "", "vungle-ads_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes6.dex */
    public static final class Factory {
        @NotNull
        public final OMTracker make(boolean z) {
            return new OMTracker(z, null);
        }
    }

    public /* synthetic */ OMTracker(boolean z, DefaultConstructorMarker defaultConstructorMarker) {
        this(z);
    }

    @Override // com.vungle.ads.internal.omsdk.WebViewObserver
    public void onPageFinished(@NotNull WebView webView) {
        if (this.started && this.adSession == null) {
            CreativeType creativeType = CreativeType.DEFINED_BY_JAVASCRIPT;
            ImpressionType impressionType = ImpressionType.DEFINED_BY_JAVASCRIPT;
            Owner owner = Owner.JAVASCRIPT;
            AdSession Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = AdSession.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(AdSessionConfiguration.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(creativeType, impressionType, owner, owner, false), AdSessionContext.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Partner.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(BuildConfig.OMSDK_PARTNER_NAME, BuildConfig.VERSION_NAME), webView, null, null));
            this.adSession = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
            if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 != null) {
                Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(webView);
            }
            AdSession adSession = this.adSession;
            if (adSession != null) {
                adSession.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
            }
        }
    }

    public final void start() {
        if (this.enabled && Omid.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()) {
            this.started = true;
        }
    }

    public final long stop() {
        long j;
        AdSession adSession;
        if (this.started && (adSession = this.adSession) != null) {
            if (adSession != null) {
                adSession.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
            }
            j = DESTROY_DELAY_MS;
        } else {
            j = 0;
        }
        this.started = false;
        this.adSession = null;
        return j;
    }

    private OMTracker(boolean z) {
        this.enabled = z;
    }
}
