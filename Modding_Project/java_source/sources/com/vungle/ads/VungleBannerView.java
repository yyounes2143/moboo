package com.vungle.ads;

import android.content.Context;
import android.content.IntentFilter;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.RelativeLayout;
import com.appsflyer.AdRevenueScheme;
import com.tencent.thumbplayer.tcmedia.core.downloadproxy.api.TPDownloadProxyEnum;
import com.unity3d.ads.core.domain.HandleInvocationsFromAdViewer;
import com.unity3d.ads.core.domain.LegacyLoadUseCase;
import com.vungle.ads.ServiceLocator;
import com.vungle.ads.internal.AdInternal;
import com.vungle.ads.internal.BannerAdImpl;
import com.vungle.ads.internal.ImpressionTracker;
import com.vungle.ads.internal.executor.Executors;
import com.vungle.ads.internal.model.AdPayload;
import com.vungle.ads.internal.model.Placement;
import com.vungle.ads.internal.omsdk.OMTracker;
import com.vungle.ads.internal.platform.Platform;
import com.vungle.ads.internal.presenter.AdEventListener;
import com.vungle.ads.internal.presenter.AdPlayCallbackWrapper;
import com.vungle.ads.internal.presenter.MRAIDPresenter;
import com.vungle.ads.internal.protos.Sdk;
import com.vungle.ads.internal.ui.VungleWebClient;
import com.vungle.ads.internal.ui.WatermarkView;
import com.vungle.ads.internal.ui.view.MRAIDAdWidget;
import com.vungle.ads.internal.util.Logger;
import com.vungle.ads.internal.util.RingerModeReceiver;
import com.vungle.ads.internal.util.ThreadUtil;
import com.vungle.ads.internal.util.ViewUtility;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000\u009c\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\u0018\u0000 Q2\u00020\u0001:\u0001QB\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007¢\u0006\u0002\u0010\bJ\b\u00107\u001a\u000208H\u0002J\u0006\u00109\u001a\u000208J\u0010\u0010:\u001a\u0002082\u0006\u0010;\u001a\u00020/H\u0002J\u0006\u0010<\u001a\u00020\u0007J\u0012\u0010=\u001a\u0002082\n\b\u0002\u0010>\u001a\u0004\u0018\u00010\u0005J\b\u0010?\u001a\u000208H\u0002J\b\u0010@\u001a\u000208H\u0002J\b\u0010A\u001a\u000208H\u0014J\u0010\u0010B\u001a\u0002082\u0006\u0010C\u001a\u00020DH\u0002J\b\u0010E\u001a\u000208H\u0014J\u0010\u0010F\u001a\u0002082\u0006\u0010G\u001a\u00020\u001aH\u0014J\b\u0010H\u001a\u000208H\u0002J\u0010\u0010I\u001a\u0002082\u0006\u0010J\u001a\u00020/H\u0002J \u0010K\u001a\u0002082\u0006\u0010L\u001a\u00020M2\u0006\u0010N\u001a\u00020O2\u0006\u0010P\u001a\u00020\u0007H\u0002R\u0011\u0010\t\u001a\u00020\n8F¢\u0006\u0006\u001a\u0004\b\u000b\u0010\fR\u001c\u0010\r\u001a\u0004\u0018\u00010\u000eX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000f\u0010\u0010\"\u0004\b\u0011\u0010\u0012R\u0011\u0010\u0006\u001a\u00020\u0007¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\u0014R\u000e\u0010\u0015\u001a\u00020\u0016X\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0017\u001a\u0004\u0018\u00010\u0018X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0019\u001a\u00020\u001aX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u001b\u001a\u00020\u001aX\u0082\u000e¢\u0006\u0002\n\u0000R\u0013\u0010\u001c\u001a\u0004\u0018\u00010\u00058F¢\u0006\u0006\u001a\u0004\b\u001d\u0010\u001eR\u000e\u0010\u001f\u001a\u00020 X\u0082\u0004¢\u0006\u0002\n\u0000R\u0013\u0010!\u001a\u0004\u0018\u00010\u00058F¢\u0006\u0006\u001a\u0004\b\"\u0010\u001eR\u0010\u0010#\u001a\u0004\u0018\u00010$X\u0082\u000e¢\u0006\u0002\n\u0000R\u001b\u0010%\u001a\u00020&8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b)\u0010*\u001a\u0004\b'\u0010(R\u000e\u0010+\u001a\u00020 X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010,\u001a\u00020 X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010-\u001a\u00020 X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010.\u001a\u00020/X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u00100\u001a\u00020/X\u0082\u000e¢\u0006\u0002\n\u0000R\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b1\u0010\u001eR\u0010\u00102\u001a\u0004\u0018\u000103X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u00104\u001a\u00020 X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u00105\u001a\u000206X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006R²\u0006\n\u0010S\u001a\u00020TX\u008a\u0084\u0002²\u0006\n\u0010U\u001a\u00020VX\u008a\u0084\u0002²\u0006\n\u0010W\u001a\u00020XX\u008a\u0084\u0002"}, d2 = {"Lcom/vungle/ads/VungleBannerView;", "Landroid/widget/RelativeLayout;", "context", "Landroid/content/Context;", HandleInvocationsFromAdViewer.KEY_PLACEMENT_ID, "", "adSize", "Lcom/vungle/ads/VungleAdSize;", "(Landroid/content/Context;Ljava/lang/String;Lcom/vungle/ads/VungleAdSize;)V", "adConfig", "Lcom/vungle/ads/AdConfig;", "getAdConfig", "()Lcom/vungle/ads/AdConfig;", "adListener", "Lcom/vungle/ads/BannerAdListener;", "getAdListener", "()Lcom/vungle/ads/BannerAdListener;", "setAdListener", "(Lcom/vungle/ads/BannerAdListener;)V", "getAdSize", "()Lcom/vungle/ads/VungleAdSize;", "adViewImpl", "Lcom/vungle/ads/internal/BannerAdImpl;", "adWidget", "Lcom/vungle/ads/internal/ui/view/MRAIDAdWidget;", "calculatedPixelHeight", "", "calculatedPixelWidth", "creativeId", "getCreativeId", "()Ljava/lang/String;", "destroyed", "Ljava/util/concurrent/atomic/AtomicBoolean;", "eventId", "getEventId", "imageView", "Lcom/vungle/ads/internal/ui/WatermarkView;", "impressionTracker", "Lcom/vungle/ads/internal/ImpressionTracker;", "getImpressionTracker", "()Lcom/vungle/ads/internal/ImpressionTracker;", "impressionTracker$delegate", "Lkotlin/Lazy;", "isAdAttachedToWindow", "isAdDownloaded", "isInvisibleLogged", "isOnImpressionCalled", "", "isReceiverRegistered", "getPlacementId", "presenter", "Lcom/vungle/ads/internal/presenter/MRAIDPresenter;", "presenterStarted", "ringerModeReceiver", "Lcom/vungle/ads/internal/util/RingerModeReceiver;", "checkHardwareAcceleration", "", "finishAd", "finishAdInternal", "isFinishedByApi", "getAdViewSize", "load", LegacyLoadUseCase.KEY_AD_MARKUP, "logViewInvisibleOnPlay", "logViewVisibleOnPlay", "onAttachedToWindow", "onBannerAdLoaded", "baseAd", "Lcom/vungle/ads/BaseAd;", "onDetachedFromWindow", "onWindowVisibilityChanged", "visibility", "renderAd", "setAdVisibility", "isVisible", "willPresentAdView", "advertisement", "Lcom/vungle/ads/internal/model/AdPayload;", AdRevenueScheme.PLACEMENT, "Lcom/vungle/ads/internal/model/Placement;", "fixedAdSize", "Companion", "vungle-ads_release", "executors", "Lcom/vungle/ads/internal/executor/Executors;", "omTrackerFactory", "Lcom/vungle/ads/internal/omsdk/OMTracker$Factory;", TPDownloadProxyEnum.USER_PLATFORM, "Lcom/vungle/ads/internal/platform/Platform;"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes6.dex */
public final class VungleBannerView extends RelativeLayout {
    @NotNull
    public static final Companion Companion = new Companion(null);
    @NotNull
    private static final String TAG = "VungleBannerView";
    @Nullable
    private BannerAdListener adListener;
    @NotNull
    private final VungleAdSize adSize;
    @NotNull
    private final BannerAdImpl adViewImpl;
    @Nullable
    private MRAIDAdWidget adWidget;
    private int calculatedPixelHeight;
    private int calculatedPixelWidth;
    @NotNull
    private final AtomicBoolean destroyed;
    @Nullable
    private WatermarkView imageView;
    @NotNull
    private final Lazy impressionTracker$delegate;
    @NotNull
    private final AtomicBoolean isAdAttachedToWindow;
    @NotNull
    private final AtomicBoolean isAdDownloaded;
    @NotNull
    private final AtomicBoolean isInvisibleLogged;
    private boolean isOnImpressionCalled;
    private boolean isReceiverRegistered;
    @NotNull
    private final String placementId;
    @Nullable
    private MRAIDPresenter presenter;
    @NotNull
    private final AtomicBoolean presenterStarted;
    @NotNull
    private final RingerModeReceiver ringerModeReceiver;

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000¨\u0006\u0005"}, d2 = {"Lcom/vungle/ads/VungleBannerView$Companion;", "", "()V", "TAG", "", "vungle-ads_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes6.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }

    public VungleBannerView(@NotNull final Context context, @NotNull String str, @NotNull VungleAdSize vungleAdSize) {
        super(context);
        this.placementId = str;
        this.adSize = vungleAdSize;
        this.ringerModeReceiver = new RingerModeReceiver();
        BannerAdImpl bannerAdImpl = new BannerAdImpl(context, str, vungleAdSize, new AdConfig());
        this.adViewImpl = bannerAdImpl;
        this.destroyed = new AtomicBoolean(false);
        this.presenterStarted = new AtomicBoolean(false);
        this.isAdDownloaded = new AtomicBoolean(false);
        this.isAdAttachedToWindow = new AtomicBoolean(false);
        this.isInvisibleLogged = new AtomicBoolean(false);
        this.impressionTracker$delegate = LazyKt.lazy(new Function0<ImpressionTracker>() { // from class: com.vungle.ads.VungleBannerView$impressionTracker$2
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final ImpressionTracker invoke() {
                return new ImpressionTracker(context);
            }
        });
        bannerAdImpl.setAdListener(new BannerAdListener() { // from class: com.vungle.ads.VungleBannerView.1
            @Override // com.vungle.ads.BaseAdListener
            public void onAdClicked(@NotNull BaseAd baseAd) {
                BannerAdListener adListener = VungleBannerView.this.getAdListener();
                if (adListener != null) {
                    adListener.onAdClicked(baseAd);
                }
            }

            @Override // com.vungle.ads.BaseAdListener
            public void onAdEnd(@NotNull BaseAd baseAd) {
                BannerAdListener adListener = VungleBannerView.this.getAdListener();
                if (adListener != null) {
                    adListener.onAdEnd(baseAd);
                }
            }

            @Override // com.vungle.ads.BaseAdListener
            public void onAdFailedToLoad(@NotNull BaseAd baseAd, @NotNull VungleError vungleError) {
                BannerAdListener adListener = VungleBannerView.this.getAdListener();
                if (adListener != null) {
                    adListener.onAdFailedToLoad(baseAd, vungleError);
                }
            }

            @Override // com.vungle.ads.BaseAdListener
            public void onAdFailedToPlay(@NotNull BaseAd baseAd, @NotNull VungleError vungleError) {
                BannerAdListener adListener = VungleBannerView.this.getAdListener();
                if (adListener != null) {
                    adListener.onAdFailedToPlay(baseAd, vungleError);
                }
            }

            @Override // com.vungle.ads.BaseAdListener
            public void onAdImpression(@NotNull BaseAd baseAd) {
                BannerAdListener adListener = VungleBannerView.this.getAdListener();
                if (adListener != null) {
                    adListener.onAdImpression(baseAd);
                }
            }

            @Override // com.vungle.ads.BaseAdListener
            public void onAdLeftApplication(@NotNull BaseAd baseAd) {
                BannerAdListener adListener = VungleBannerView.this.getAdListener();
                if (adListener != null) {
                    adListener.onAdLeftApplication(baseAd);
                }
            }

            @Override // com.vungle.ads.BaseAdListener
            public void onAdLoaded(@NotNull BaseAd baseAd) {
                VungleBannerView.this.onBannerAdLoaded(baseAd);
            }

            @Override // com.vungle.ads.BaseAdListener
            public void onAdStart(@NotNull BaseAd baseAd) {
                BannerAdListener adListener = VungleBannerView.this.getAdListener();
                if (adListener != null) {
                    adListener.onAdStart(baseAd);
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void checkHardwareAcceleration() {
        Logger.Companion companion = Logger.Companion;
        companion.w(TAG, "hardwareAccelerated = " + isHardwareAccelerated());
        if (!isHardwareAccelerated()) {
            AnalyticsClient.logMetric$vungle_ads_release$default(AnalyticsClient.INSTANCE, Sdk.SDKMetric.SDKMetricType.HARDWARE_ACCELERATE_DISABLED, 0L, this.adViewImpl.getLogEntry$vungle_ads_release(), null, 10, null);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void finishAdInternal(boolean z) {
        int i;
        if (!this.destroyed.get()) {
            this.destroyed.set(true);
            if (z) {
                i = 4;
            } else {
                i = 0;
            }
            int i2 = i | 2;
            MRAIDPresenter mRAIDPresenter = this.presenter;
            if (mRAIDPresenter != null) {
                mRAIDPresenter.stop();
            }
            MRAIDPresenter mRAIDPresenter2 = this.presenter;
            if (mRAIDPresenter2 != null) {
                mRAIDPresenter2.detach(i2);
            }
            getImpressionTracker().destroy();
            try {
                ViewParent parent = getParent();
                if (parent != null && (parent instanceof ViewGroup)) {
                    ((ViewGroup) parent).removeView(this);
                }
                removeAllViews();
            } catch (Exception e) {
                Logger.Companion companion = Logger.Companion;
                companion.d(TAG, "Removing webView error: " + e);
            }
        }
    }

    private final ImpressionTracker getImpressionTracker() {
        return (ImpressionTracker) this.impressionTracker$delegate.getValue();
    }

    public static /* synthetic */ void load$default(VungleBannerView vungleBannerView, String str, int i, Object obj) {
        if ((i & 1) != 0) {
            str = null;
        }
        vungleBannerView.load(str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void logViewInvisibleOnPlay() {
        if (!this.isInvisibleLogged.getAndSet(true)) {
            Logger.Companion companion = Logger.Companion;
            companion.d(TAG, "ImpressionTracker checked the banner view invisible on play. " + hashCode());
            AnalyticsClient.INSTANCE.logMetric$vungle_ads_release(new SingleValueMetric(Sdk.SDKMetric.SDKMetricType.AD_VISIBILITY), this.adViewImpl.getLogEntry$vungle_ads_release(), "1");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void logViewVisibleOnPlay() {
        String str;
        if (this.isInvisibleLogged.get()) {
            str = "3";
        } else {
            str = "2";
        }
        AnalyticsClient.INSTANCE.logMetric$vungle_ads_release(new SingleValueMetric(Sdk.SDKMetric.SDKMetricType.AD_VISIBILITY), this.adViewImpl.getLogEntry$vungle_ads_release(), str);
        Logger.Companion companion = Logger.Companion;
        companion.d(TAG, "Log metric AD_VISIBILITY: " + str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void onBannerAdLoaded(BaseAd baseAd) {
        AnalyticsClient analyticsClient = AnalyticsClient.INSTANCE;
        AnalyticsClient.logMetric$vungle_ads_release$default(analyticsClient, new SingleValueMetric(Sdk.SDKMetric.SDKMetricType.PLAY_AD_API), this.adViewImpl.getLogEntry$vungle_ads_release(), (String) null, 4, (Object) null);
        this.adViewImpl.getAdInternal$vungle_ads_release().getShowToValidationMetric$vungle_ads_release().markStart();
        VungleError canPlayAd = this.adViewImpl.getAdInternal$vungle_ads_release().canPlayAd(true);
        if (canPlayAd != null) {
            if (this.adViewImpl.getAdInternal$vungle_ads_release().isErrorTerminal$vungle_ads_release(canPlayAd.getCode())) {
                this.adViewImpl.getAdInternal$vungle_ads_release().setAdState(AdInternal.AdState.ERROR);
            }
            BannerAdListener bannerAdListener = this.adListener;
            if (bannerAdListener != null) {
                bannerAdListener.onAdFailedToPlay(baseAd, canPlayAd);
                return;
            }
            return;
        }
        AdPayload advertisement = this.adViewImpl.getAdInternal$vungle_ads_release().getAdvertisement();
        Placement placement = this.adViewImpl.getAdInternal$vungle_ads_release().getPlacement();
        if (advertisement != null && placement != null) {
            this.adViewImpl.getAdInternal$vungle_ads_release().cancelDownload$vungle_ads_release();
            try {
                willPresentAdView(advertisement, placement, getAdViewSize());
                this.adViewImpl.getResponseToShowMetric$vungle_ads_release().markEnd();
                AnalyticsClient.logMetric$vungle_ads_release$default(analyticsClient, this.adViewImpl.getResponseToShowMetric$vungle_ads_release(), this.adViewImpl.getLogEntry$vungle_ads_release(), (String) null, 4, (Object) null);
                this.adViewImpl.getShowToCloseMetric$vungle_ads_release().markStart();
                this.adViewImpl.getShowToFailMetric$vungle_ads_release().markStart();
                this.isAdDownloaded.set(true);
                BannerAdListener bannerAdListener2 = this.adListener;
                if (bannerAdListener2 != null) {
                    bannerAdListener2.onAdLoaded(baseAd);
                }
                renderAd();
                return;
            } catch (InstantiationException unused) {
                return;
            }
        }
        BannerAdListener bannerAdListener3 = this.adListener;
        if (bannerAdListener3 != null) {
            bannerAdListener3.onAdFailedToPlay(baseAd, new AdNotLoadedCantPlay("Ad or Placement is null").setLogEntry$vungle_ads_release(this.adViewImpl.getLogEntry$vungle_ads_release()).logError$vungle_ads_release());
        }
    }

    private final void renderAd() {
        ViewParent viewParent;
        if (this.destroyed.get()) {
            Logger.Companion.w(TAG, "renderAd() - destroyed");
        } else if (!this.isAdDownloaded.get()) {
            Logger.Companion.d(TAG, "renderAd() - not ready: not downloaded.");
        } else if (!this.isAdAttachedToWindow.get()) {
            Logger.Companion.d(TAG, "renderAd() - not ready: not attached.");
            logViewInvisibleOnPlay();
        } else {
            if (!this.presenterStarted.getAndSet(true)) {
                this.adViewImpl.getAdInternal$vungle_ads_release().getShowToValidationMetric$vungle_ads_release().markEnd();
                AnalyticsClient.logMetric$vungle_ads_release$default(AnalyticsClient.INSTANCE, this.adViewImpl.getAdInternal$vungle_ads_release().getShowToValidationMetric$vungle_ads_release(), this.adViewImpl.getLogEntry$vungle_ads_release(), (String) null, 4, (Object) null);
                this.adViewImpl.getAdInternal$vungle_ads_release().getValidationToPresentMetric$vungle_ads_release().markStart();
                MRAIDPresenter mRAIDPresenter = this.presenter;
                if (mRAIDPresenter != null) {
                    mRAIDPresenter.prepare();
                }
                getImpressionTracker().addView(this, new ImpressionTracker.ImpressionListener() { // from class: com.vungle.ads.VungleBannerView$renderAd$1
                    @Override // com.vungle.ads.internal.ImpressionTracker.ImpressionListener
                    public void onImpression(@Nullable View view) {
                        MRAIDPresenter mRAIDPresenter2;
                        Logger.Companion.d("VungleBannerView", "ImpressionTracker checked the banner view become visible.");
                        VungleBannerView.this.isOnImpressionCalled = true;
                        VungleBannerView.this.logViewVisibleOnPlay();
                        VungleBannerView.this.checkHardwareAcceleration();
                        mRAIDPresenter2 = VungleBannerView.this.presenter;
                        if (mRAIDPresenter2 != null) {
                            mRAIDPresenter2.start();
                        }
                    }

                    @Override // com.vungle.ads.internal.ImpressionTracker.ImpressionListener
                    public void onViewInvisible(@Nullable View view) {
                        VungleBannerView.this.logViewInvisibleOnPlay();
                    }
                });
            }
            MRAIDAdWidget mRAIDAdWidget = this.adWidget;
            if (mRAIDAdWidget != null) {
                if (mRAIDAdWidget != null) {
                    viewParent = mRAIDAdWidget.getParent();
                } else {
                    viewParent = null;
                }
                if (!Intrinsics.areEqual(viewParent, this)) {
                    addView(this.adWidget, this.calculatedPixelWidth, this.calculatedPixelHeight);
                    WatermarkView watermarkView = this.imageView;
                    if (watermarkView != null) {
                        addView(watermarkView, this.calculatedPixelWidth, this.calculatedPixelHeight);
                        WatermarkView watermarkView2 = this.imageView;
                        if (watermarkView2 != null) {
                            watermarkView2.bringToFront();
                        }
                    }
                }
            }
            ViewGroup.LayoutParams layoutParams = getLayoutParams();
            if (layoutParams != null) {
                layoutParams.height = this.calculatedPixelHeight;
                layoutParams.width = this.calculatedPixelWidth;
                requestLayout();
            }
        }
    }

    private final void setAdVisibility(boolean z) {
        MRAIDPresenter mRAIDPresenter;
        if (this.isOnImpressionCalled && !this.destroyed.get() && (mRAIDPresenter = this.presenter) != null) {
            mRAIDPresenter.setAdVisibility(z);
        }
    }

    private final void willPresentAdView(AdPayload adPayload, Placement placement, VungleAdSize vungleAdSize) throws InstantiationException {
        ViewUtility viewUtility = ViewUtility.INSTANCE;
        this.calculatedPixelHeight = viewUtility.dpToPixels(getContext(), vungleAdSize.getHeight());
        this.calculatedPixelWidth = viewUtility.dpToPixels(getContext(), vungleAdSize.getWidth());
        final AdPlayCallbackWrapper adPlayCallback$vungle_ads_release = this.adViewImpl.getAdPlayCallback$vungle_ads_release();
        final Placement placement2 = this.adViewImpl.getAdInternal$vungle_ads_release().getPlacement();
        AdEventListener adEventListener = new AdEventListener(adPlayCallback$vungle_ads_release, placement2) { // from class: com.vungle.ads.VungleBannerView$willPresentAdView$adEventListener$1
        };
        try {
            MRAIDAdWidget mRAIDAdWidget = new MRAIDAdWidget(getContext());
            this.adWidget = mRAIDAdWidget;
            mRAIDAdWidget.setCloseDelegate(new MRAIDAdWidget.CloseDelegate() { // from class: com.vungle.ads.VungleBannerView$willPresentAdView$1
                @Override // com.vungle.ads.internal.ui.view.MRAIDAdWidget.CloseDelegate
                public void close() {
                    VungleBannerView.this.finishAdInternal(false);
                }
            });
            mRAIDAdWidget.setOnViewTouchListener(new MRAIDAdWidget.OnViewTouchListener() { // from class: com.vungle.ads.VungleBannerView$willPresentAdView$2
                @Override // com.vungle.ads.internal.ui.view.MRAIDAdWidget.OnViewTouchListener
                public boolean onTouch(@Nullable MotionEvent motionEvent) {
                    MRAIDPresenter mRAIDPresenter;
                    mRAIDPresenter = VungleBannerView.this.presenter;
                    if (mRAIDPresenter != null) {
                        mRAIDPresenter.onViewTouched(motionEvent);
                        return false;
                    }
                    return false;
                }
            });
            ServiceLocator.Companion companion = ServiceLocator.Companion;
            final Context context = getContext();
            LazyThreadSafetyMode lazyThreadSafetyMode = LazyThreadSafetyMode.SYNCHRONIZED;
            Lazy lazy = LazyKt.lazy(lazyThreadSafetyMode, (Function0) new Function0<Executors>() { // from class: com.vungle.ads.VungleBannerView$willPresentAdView$$inlined$inject$1
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(0);
                }

                /* JADX WARN: Type inference failed for: r0v2, types: [java.lang.Object, com.vungle.ads.internal.executor.Executors] */
                @Override // kotlin.jvm.functions.Function0
                @NotNull
                public final Executors invoke() {
                    return ServiceLocator.Companion.getInstance(context).getService(Executors.class);
                }
            });
            final Context context2 = getContext();
            OMTracker make = m278willPresentAdView$lambda2(LazyKt.lazy(lazyThreadSafetyMode, (Function0) new Function0<OMTracker.Factory>() { // from class: com.vungle.ads.VungleBannerView$willPresentAdView$$inlined$inject$2
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(0);
                }

                /* JADX WARN: Type inference failed for: r0v2, types: [com.vungle.ads.internal.omsdk.OMTracker$Factory, java.lang.Object] */
                @Override // kotlin.jvm.functions.Function0
                @NotNull
                public final OMTracker.Factory invoke() {
                    return ServiceLocator.Companion.getInstance(context2).getService(OMTracker.Factory.class);
                }
            })).make(adPayload.omEnabled());
            final Context context3 = getContext();
            Lazy lazy2 = LazyKt.lazy(lazyThreadSafetyMode, (Function0) new Function0<Platform>() { // from class: com.vungle.ads.VungleBannerView$willPresentAdView$$inlined$inject$3
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(0);
                }

                /* JADX WARN: Type inference failed for: r0v2, types: [java.lang.Object, com.vungle.ads.internal.platform.Platform] */
                @Override // kotlin.jvm.functions.Function0
                @NotNull
                public final Platform invoke() {
                    return ServiceLocator.Companion.getInstance(context3).getService(Platform.class);
                }
            });
            VungleWebClient vungleWebClient = new VungleWebClient(adPayload, placement, m277willPresentAdView$lambda1(lazy).getOffloadExecutor(), null, m279willPresentAdView$lambda3(lazy2), 8, null);
            this.ringerModeReceiver.setWebClient(vungleWebClient);
            vungleWebClient.setWebViewObserver(make);
            MRAIDPresenter mRAIDPresenter = new MRAIDPresenter(mRAIDAdWidget, adPayload, placement, vungleWebClient, m277willPresentAdView$lambda1(lazy).getJobExecutor(), make, this.adViewImpl.getAdInternal$vungle_ads_release().getBidPayload(), m279willPresentAdView$lambda3(lazy2));
            mRAIDPresenter.setEventListener(adEventListener);
            this.presenter = mRAIDPresenter;
            String watermark$vungle_ads_release = getAdConfig().getWatermark$vungle_ads_release();
            if (watermark$vungle_ads_release != null) {
                this.imageView = new WatermarkView(getContext(), watermark$vungle_ads_release);
            }
        } catch (InstantiationException e) {
            adEventListener.onError(new AdCantPlayWithoutWebView().setLogEntry$vungle_ads_release(this.adViewImpl.getLogEntry$vungle_ads_release()).logError$vungle_ads_release(), this.placementId);
            throw e;
        }
    }

    /* renamed from: willPresentAdView$lambda-1  reason: not valid java name */
    private static final Executors m277willPresentAdView$lambda1(Lazy<? extends Executors> lazy) {
        return lazy.getValue();
    }

    /* renamed from: willPresentAdView$lambda-2  reason: not valid java name */
    private static final OMTracker.Factory m278willPresentAdView$lambda2(Lazy<OMTracker.Factory> lazy) {
        return lazy.getValue();
    }

    /* renamed from: willPresentAdView$lambda-3  reason: not valid java name */
    private static final Platform m279willPresentAdView$lambda3(Lazy<? extends Platform> lazy) {
        return lazy.getValue();
    }

    public final void finishAd() {
        ThreadUtil.INSTANCE.runOnUiThread(new Function0<Unit>() { // from class: com.vungle.ads.VungleBannerView$finishAd$1
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ Unit invoke() {
                invoke2();
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2() {
                VungleBannerView.this.finishAdInternal(true);
            }
        });
    }

    @NotNull
    public final AdConfig getAdConfig() {
        return this.adViewImpl.getAdConfig();
    }

    @Nullable
    public final BannerAdListener getAdListener() {
        return this.adListener;
    }

    @NotNull
    public final VungleAdSize getAdSize() {
        return this.adSize;
    }

    @NotNull
    public final VungleAdSize getAdViewSize() {
        return this.adViewImpl.getAdViewSize();
    }

    @Nullable
    public final String getCreativeId() {
        return this.adViewImpl.getCreativeId();
    }

    @Nullable
    public final String getEventId() {
        return this.adViewImpl.getEventId();
    }

    @NotNull
    public final String getPlacementId() {
        return this.placementId;
    }

    public final void load(@Nullable String str) {
        this.adViewImpl.load(str);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        Logger.Companion companion = Logger.Companion;
        companion.d(TAG, "onAttachedToWindow(): " + hashCode());
        this.isAdAttachedToWindow.set(true);
        if (this.adViewImpl.getAdInternal$vungle_ads_release().getPlacement() != null) {
            try {
                if (!this.isReceiverRegistered) {
                    getContext().registerReceiver(this.ringerModeReceiver, new IntentFilter("android.media.RINGER_MODE_CHANGED"));
                    this.isReceiverRegistered = true;
                    companion.d(TAG, "registerReceiver(): " + this.ringerModeReceiver.hashCode());
                }
            } catch (Exception e) {
                Logger.Companion companion2 = Logger.Companion;
                companion2.e(TAG, "registerReceiver error: " + e.getLocalizedMessage());
            }
        }
        renderAd();
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        Logger.Companion companion = Logger.Companion;
        companion.d(TAG, "onDetachedFromWindow(): " + hashCode());
        this.isAdAttachedToWindow.set(false);
        if (this.adViewImpl.getAdInternal$vungle_ads_release().getPlacement() != null) {
            try {
                if (this.isReceiverRegistered) {
                    getContext().unregisterReceiver(this.ringerModeReceiver);
                    this.isReceiverRegistered = false;
                }
            } catch (Exception e) {
                Logger.Companion companion2 = Logger.Companion;
                companion2.e(TAG, "unregisterReceiver error: " + e.getLocalizedMessage());
            }
        }
    }

    @Override // android.view.View
    public void onWindowVisibilityChanged(int i) {
        boolean z;
        super.onWindowVisibilityChanged(i);
        if (i == 0) {
            z = true;
        } else {
            z = false;
        }
        setAdVisibility(z);
    }

    public final void setAdListener(@Nullable BannerAdListener bannerAdListener) {
        this.adListener = bannerAdListener;
    }
}
