package com.vungle.ads.internal.ui;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.res.Configuration;
import android.os.Bundle;
import android.view.MotionEvent;
import android.view.View;
import android.widget.FrameLayout;
import androidx.annotation.VisibleForTesting;
import androidx.core.graphics.Insets;
import androidx.core.view.OnApplyWindowInsetsListener;
import androidx.core.view.ViewCompat;
import androidx.core.view.WindowCompat;
import androidx.core.view.WindowInsetsCompat;
import androidx.core.view.WindowInsetsControllerCompat;
import com.appsflyer.AdRevenueScheme;
import com.sensorsdata.analytics.android.sdk.aop.push.PushAutoTrackHelper;
import com.tencent.thumbplayer.tcmedia.core.downloadproxy.api.TPDownloadProxyEnum;
import com.vungle.ads.AdCantPlayWithoutWebView;
import com.vungle.ads.AdConfig;
import com.vungle.ads.AdNotLoadedCantPlay;
import com.vungle.ads.AnalyticsClient;
import com.vungle.ads.ConcurrentPlaybackUnsupported;
import com.vungle.ads.ServiceLocator;
import com.vungle.ads.SingleValueMetric;
import com.vungle.ads.VungleError;
import com.vungle.ads.internal.ConfigManager;
import com.vungle.ads.internal.executor.Executors;
import com.vungle.ads.internal.executor.VungleThreadPoolExecutor;
import com.vungle.ads.internal.model.AdPayload;
import com.vungle.ads.internal.model.BidPayload;
import com.vungle.ads.internal.model.Placement;
import com.vungle.ads.internal.model.UnclosedAd;
import com.vungle.ads.internal.omsdk.OMTracker;
import com.vungle.ads.internal.platform.Platform;
import com.vungle.ads.internal.presenter.AdEventListener;
import com.vungle.ads.internal.presenter.MRAIDPresenter;
import com.vungle.ads.internal.presenter.PresenterDelegate;
import com.vungle.ads.internal.protos.Sdk;
import com.vungle.ads.internal.signals.SignalManager;
import com.vungle.ads.internal.ui.view.MRAIDAdWidget;
import com.vungle.ads.internal.util.ActivityManager;
import com.vungle.ads.internal.util.LogEntry;
import com.vungle.ads.internal.util.Logger;
import com.vungle.ads.internal.util.RingerModeReceiver;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000}\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002*\u0001\u0006\b&\u0018\u0000 72\u00020\u0001:\u00017B\u0005¢\u0006\u0002\u0010\u0002J\r\u0010!\u001a\u00020\u0004H\u0011¢\u0006\u0002\b\"J\b\u0010#\u001a\u00020$H\u0002J\b\u0010%\u001a\u00020$H\u0016J\u0012\u0010&\u001a\u00020$2\b\u0010'\u001a\u0004\u0018\u00010\u0017H\u0002J\u0010\u0010(\u001a\u00020$2\u0006\u0010)\u001a\u00020*H\u0016J\u0012\u0010+\u001a\u00020$2\b\u0010,\u001a\u0004\u0018\u00010-H\u0014J\b\u0010.\u001a\u00020$H\u0014J\u0010\u0010/\u001a\u00020$2\u0006\u00100\u001a\u000201H\u0014J\b\u00102\u001a\u00020$H\u0014J\b\u00103\u001a\u00020$H\u0014J\u0010\u00104\u001a\u00020$2\u0006\u00105\u001a\u000206H\u0016R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u00020\u0006X\u0082\u0004¢\u0006\u0004\n\u0002\u0010\u0007R&\u0010\b\u001a\u0004\u0018\u00010\t8\u0000@\u0000X\u0081\u000e¢\u0006\u0014\n\u0000\u0012\u0004\b\n\u0010\u0002\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000eR&\u0010\u000f\u001a\u0004\u0018\u00010\u00108\u0000@\u0000X\u0081\u000e¢\u0006\u0014\n\u0000\u0012\u0004\b\u0011\u0010\u0002\u001a\u0004\b\u0012\u0010\u0013\"\u0004\b\u0014\u0010\u0015R$\u0010\u0016\u001a\u00020\u00178\u0000@\u0000X\u0081\u000e¢\u0006\u0014\n\u0000\u0012\u0004\b\u0018\u0010\u0002\u001a\u0004\b\u0019\u0010\u001a\"\u0004\b\u001b\u0010\u001cR\u000e\u0010\u001d\u001a\u00020\u001eX\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u001f\u001a\u0004\u0018\u00010 X\u0082\u000e¢\u0006\u0002\n\u0000¨\u00068²\u0006\n\u00109\u001a\u00020:X\u008a\u0084\u0002²\u0006\n\u0010;\u001a\u00020<X\u008a\u0084\u0002²\u0006\n\u0010=\u001a\u00020>X\u008a\u0084\u0002²\u0006\n\u0010?\u001a\u00020@X\u008a\u0084\u0002"}, d2 = {"Lcom/vungle/ads/internal/ui/AdActivity;", "Landroid/app/Activity;", "()V", "isReceiverRegistered", "", "lifeCycleCallback", "com/vungle/ads/internal/ui/AdActivity$lifeCycleCallback$1", "Lcom/vungle/ads/internal/ui/AdActivity$lifeCycleCallback$1;", "mraidAdWidget", "Lcom/vungle/ads/internal/ui/view/MRAIDAdWidget;", "getMraidAdWidget$vungle_ads_release$annotations", "getMraidAdWidget$vungle_ads_release", "()Lcom/vungle/ads/internal/ui/view/MRAIDAdWidget;", "setMraidAdWidget$vungle_ads_release", "(Lcom/vungle/ads/internal/ui/view/MRAIDAdWidget;)V", "mraidPresenter", "Lcom/vungle/ads/internal/presenter/MRAIDPresenter;", "getMraidPresenter$vungle_ads_release$annotations", "getMraidPresenter$vungle_ads_release", "()Lcom/vungle/ads/internal/presenter/MRAIDPresenter;", "setMraidPresenter$vungle_ads_release", "(Lcom/vungle/ads/internal/presenter/MRAIDPresenter;)V", "placementRefId", "", "getPlacementRefId$vungle_ads_release$annotations", "getPlacementRefId$vungle_ads_release", "()Ljava/lang/String;", "setPlacementRefId$vungle_ads_release", "(Ljava/lang/String;)V", "ringerModeReceiver", "Lcom/vungle/ads/internal/util/RingerModeReceiver;", "unclosedAd", "Lcom/vungle/ads/internal/model/UnclosedAd;", "canRotate", "canRotate$vungle_ads_release", "hideSystemUi", "", "onBackPressed", "onConcurrentPlaybackError", AdRevenueScheme.PLACEMENT, "onConfigurationChanged", "newConfig", "Landroid/content/res/Configuration;", "onCreate", "savedInstanceState", "Landroid/os/Bundle;", "onDestroy", "onNewIntent", "intent", "Landroid/content/Intent;", "onPause", "onResume", "setRequestedOrientation", "requestedOrientation", "", "Companion", "vungle-ads_release", "signalManager", "Lcom/vungle/ads/internal/signals/SignalManager;", "executors", "Lcom/vungle/ads/internal/executor/Executors;", TPDownloadProxyEnum.USER_PLATFORM, "Lcom/vungle/ads/internal/platform/Platform;", "omTrackerFactory", "Lcom/vungle/ads/internal/omsdk/OMTracker$Factory;"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes6.dex */
public abstract class AdActivity extends Activity {
    @NotNull
    public static final String AD_INVISIBLE_LOGGED_KEY = "ad_invisible_logged";
    @NotNull
    public static final Companion Companion = new Companion(null);
    @NotNull
    public static final String REQUEST_KEY_EVENT_ID_EXTRA = "request_eventId";
    @NotNull
    public static final String REQUEST_KEY_EXTRA = "request";
    @NotNull
    private static final String TAG = "AdActivity";
    @Nullable
    private static AdPayload advertisement;
    @Nullable
    private static BidPayload bidPayload;
    @Nullable
    private static AdEventListener eventListener;
    @Nullable
    private static PresenterDelegate presenterDelegate;
    private boolean isReceiverRegistered;
    @Nullable
    private MRAIDAdWidget mraidAdWidget;
    @Nullable
    private MRAIDPresenter mraidPresenter;
    @Nullable
    private UnclosedAd unclosedAd;
    @NotNull
    private String placementRefId = "";
    @NotNull
    private final RingerModeReceiver ringerModeReceiver = new RingerModeReceiver();
    @NotNull
    private final AdActivity$lifeCycleCallback$1 lifeCycleCallback = new ActivityManager.LifeCycleCallback() { // from class: com.vungle.ads.internal.ui.AdActivity$lifeCycleCallback$1
        @Override // com.vungle.ads.internal.util.ActivityManager.LifeCycleCallback
        public void onBackground() {
            Long l;
            MRAIDPresenter mraidPresenter$vungle_ads_release = AdActivity.this.getMraidPresenter$vungle_ads_release();
            LogEntry logEntry = null;
            if (mraidPresenter$vungle_ads_release != null) {
                l = mraidPresenter$vungle_ads_release.getViewStatus();
            } else {
                l = null;
            }
            Logger.Companion.d("AdActivity", "App is in background, status: " + l);
            if (l != null) {
                long longValue = l.longValue();
                AnalyticsClient analyticsClient = AnalyticsClient.INSTANCE;
                Sdk.SDKMetric.SDKMetricType sDKMetricType = Sdk.SDKMetric.SDKMetricType.AD_BACKGROUND_BEFORE_IMPRESSION;
                AdPayload advertisement$vungle_ads_release = AdActivity.Companion.getAdvertisement$vungle_ads_release();
                if (advertisement$vungle_ads_release != null) {
                    logEntry = advertisement$vungle_ads_release.getLogEntry$vungle_ads_release();
                }
                AnalyticsClient.logMetric$vungle_ads_release$default(analyticsClient, sDKMetricType, longValue, logEntry, null, 8, null);
            }
        }

        @Override // com.vungle.ads.internal.util.ActivityManager.LifeCycleCallback
        public void onForeground() {
        }
    };

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\"\u0010\"\u001a\u00020#2\b\u0010$\u001a\u0004\u0018\u00010%2\u0006\u0010&\u001a\u00020\u00042\b\u0010'\u001a\u0004\u0018\u00010\u0004J\u0012\u0010(\u001a\u0004\u0018\u00010\u00042\u0006\u0010)\u001a\u00020#H\u0002J\u0012\u0010*\u001a\u0004\u0018\u00010\u00042\u0006\u0010)\u001a\u00020#H\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0080T¢\u0006\u0002\n\u0000R\u0016\u0010\u0005\u001a\u00020\u00048\u0000X\u0081T¢\u0006\b\n\u0000\u0012\u0004\b\u0006\u0010\u0002R\u0016\u0010\u0007\u001a\u00020\u00048\u0000X\u0081T¢\u0006\b\n\u0000\u0012\u0004\b\b\u0010\u0002R\u000e\u0010\t\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u001c\u0010\n\u001a\u0004\u0018\u00010\u000bX\u0080\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\f\u0010\r\"\u0004\b\u000e\u0010\u000fR\u001c\u0010\u0010\u001a\u0004\u0018\u00010\u0011X\u0080\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0012\u0010\u0013\"\u0004\b\u0014\u0010\u0015R\u001e\u0010\u0016\u001a\u0004\u0018\u00010\u00178AX\u0080\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0018\u0010\u0019\"\u0004\b\u001a\u0010\u001bR\u001c\u0010\u001c\u001a\u0004\u0018\u00010\u001dX\u0080\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001e\u0010\u001f\"\u0004\b \u0010!¨\u0006+"}, d2 = {"Lcom/vungle/ads/internal/ui/AdActivity$Companion;", "", "()V", "AD_INVISIBLE_LOGGED_KEY", "", "REQUEST_KEY_EVENT_ID_EXTRA", "getREQUEST_KEY_EVENT_ID_EXTRA$vungle_ads_release$annotations", "REQUEST_KEY_EXTRA", "getREQUEST_KEY_EXTRA$vungle_ads_release$annotations", "TAG", "advertisement", "Lcom/vungle/ads/internal/model/AdPayload;", "getAdvertisement$vungle_ads_release", "()Lcom/vungle/ads/internal/model/AdPayload;", "setAdvertisement$vungle_ads_release", "(Lcom/vungle/ads/internal/model/AdPayload;)V", "bidPayload", "Lcom/vungle/ads/internal/model/BidPayload;", "getBidPayload$vungle_ads_release", "()Lcom/vungle/ads/internal/model/BidPayload;", "setBidPayload$vungle_ads_release", "(Lcom/vungle/ads/internal/model/BidPayload;)V", "eventListener", "Lcom/vungle/ads/internal/presenter/AdEventListener;", "getEventListener$vungle_ads_release", "()Lcom/vungle/ads/internal/presenter/AdEventListener;", "setEventListener$vungle_ads_release", "(Lcom/vungle/ads/internal/presenter/AdEventListener;)V", "presenterDelegate", "Lcom/vungle/ads/internal/presenter/PresenterDelegate;", "getPresenterDelegate$vungle_ads_release", "()Lcom/vungle/ads/internal/presenter/PresenterDelegate;", "setPresenterDelegate$vungle_ads_release", "(Lcom/vungle/ads/internal/presenter/PresenterDelegate;)V", "createIntent", "Landroid/content/Intent;", "context", "Landroid/content/Context;", AdRevenueScheme.PLACEMENT, "eventId", "getEventId", "intent", "getPlacement", "vungle-ads_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes6.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final String getEventId(Intent intent) {
            try {
                Bundle extras = intent.getExtras();
                if (extras != null) {
                    return extras.getString(AdActivity.REQUEST_KEY_EVENT_ID_EXTRA);
                }
            } catch (Exception unused) {
            }
            return null;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final String getPlacement(Intent intent) {
            try {
                Bundle extras = intent.getExtras();
                if (extras != null) {
                    return extras.getString(AdActivity.REQUEST_KEY_EXTRA);
                }
            } catch (Exception unused) {
            }
            return null;
        }

        @NotNull
        public final Intent createIntent(@Nullable Context context, @NotNull String str, @Nullable String str2) {
            Intent intent = new Intent(context, VungleActivity.class);
            if (!(context instanceof Activity)) {
                intent.addFlags(268435456);
            }
            Bundle bundle = new Bundle();
            bundle.putString(AdActivity.REQUEST_KEY_EXTRA, str);
            bundle.putString(AdActivity.REQUEST_KEY_EVENT_ID_EXTRA, str2);
            intent.putExtras(bundle);
            return intent;
        }

        @Nullable
        public final AdPayload getAdvertisement$vungle_ads_release() {
            return AdActivity.advertisement;
        }

        @Nullable
        public final BidPayload getBidPayload$vungle_ads_release() {
            return AdActivity.bidPayload;
        }

        @VisibleForTesting
        @Nullable
        public final AdEventListener getEventListener$vungle_ads_release() {
            return AdActivity.eventListener;
        }

        @Nullable
        public final PresenterDelegate getPresenterDelegate$vungle_ads_release() {
            return AdActivity.presenterDelegate;
        }

        public final void setAdvertisement$vungle_ads_release(@Nullable AdPayload adPayload) {
            AdActivity.advertisement = adPayload;
        }

        public final void setBidPayload$vungle_ads_release(@Nullable BidPayload bidPayload) {
            AdActivity.bidPayload = bidPayload;
        }

        public final void setEventListener$vungle_ads_release(@Nullable AdEventListener adEventListener) {
            AdActivity.eventListener = adEventListener;
        }

        public final void setPresenterDelegate$vungle_ads_release(@Nullable PresenterDelegate presenterDelegate) {
            AdActivity.presenterDelegate = presenterDelegate;
        }

        private Companion() {
        }

        @VisibleForTesting
        public static /* synthetic */ void getREQUEST_KEY_EVENT_ID_EXTRA$vungle_ads_release$annotations() {
        }

        @VisibleForTesting
        public static /* synthetic */ void getREQUEST_KEY_EXTRA$vungle_ads_release$annotations() {
        }
    }

    private final void hideSystemUi() {
        WindowInsetsControllerCompat insetsController = WindowCompat.getInsetsController(getWindow(), getWindow().getDecorView());
        insetsController.setSystemBarsBehavior(2);
        insetsController.hide(WindowInsetsCompat.Type.systemBars());
    }

    private final void onConcurrentPlaybackError(String str) {
        LogEntry logEntry;
        ConcurrentPlaybackUnsupported concurrentPlaybackUnsupported = new ConcurrentPlaybackUnsupported("Trying to show " + str + " but " + this.placementRefId + " is already showing");
        AdPayload adPayload = advertisement;
        if (adPayload != null) {
            logEntry = adPayload.getLogEntry$vungle_ads_release();
        } else {
            logEntry = null;
        }
        VungleError logError$vungle_ads_release = concurrentPlaybackUnsupported.setLogEntry$vungle_ads_release(logEntry).logError$vungle_ads_release();
        AdEventListener adEventListener = eventListener;
        if (adEventListener != null) {
            adEventListener.onError(logError$vungle_ads_release, str);
        }
        Logger.Companion companion = Logger.Companion;
        companion.e(TAG, "onConcurrentPlaybackError: " + logError$vungle_ads_release.getLocalizedMessage());
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: onCreate$lambda-0  reason: not valid java name */
    public static final SignalManager m350onCreate$lambda0(Lazy<SignalManager> lazy) {
        return lazy.getValue();
    }

    /* renamed from: onCreate$lambda-4  reason: not valid java name */
    private static final Executors m351onCreate$lambda4(Lazy<? extends Executors> lazy) {
        return lazy.getValue();
    }

    /* renamed from: onCreate$lambda-5  reason: not valid java name */
    private static final Platform m352onCreate$lambda5(Lazy<? extends Platform> lazy) {
        return lazy.getValue();
    }

    /* renamed from: onCreate$lambda-6  reason: not valid java name */
    private static final OMTracker.Factory m353onCreate$lambda6(Lazy<OMTracker.Factory> lazy) {
        return lazy.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: onCreate$lambda-7  reason: not valid java name */
    public static final WindowInsetsCompat m354onCreate$lambda7(View view, WindowInsetsCompat windowInsetsCompat) {
        Insets insets = windowInsetsCompat.getInsets(WindowInsetsCompat.Type.systemBars() | WindowInsetsCompat.Type.displayCutout());
        if (windowInsetsCompat.isVisible(WindowInsetsCompat.Type.statusBars())) {
            view.setPadding(insets.left, insets.top, insets.right, insets.bottom);
        }
        return windowInsetsCompat;
    }

    @VisibleForTesting(otherwise = 4)
    public boolean canRotate$vungle_ads_release() {
        return false;
    }

    @Nullable
    public final MRAIDAdWidget getMraidAdWidget$vungle_ads_release() {
        return this.mraidAdWidget;
    }

    @Nullable
    public final MRAIDPresenter getMraidPresenter$vungle_ads_release() {
        return this.mraidPresenter;
    }

    @NotNull
    public final String getPlacementRefId$vungle_ads_release() {
        return this.placementRefId;
    }

    @Override // android.app.Activity
    public void onBackPressed() {
        MRAIDPresenter mRAIDPresenter = this.mraidPresenter;
        if (mRAIDPresenter != null) {
            mRAIDPresenter.handleExit();
        }
    }

    @Override // android.app.Activity, android.content.ComponentCallbacks
    public void onConfigurationChanged(@NotNull Configuration configuration) {
        try {
            super.onConfigurationChanged(configuration);
            int i = configuration.orientation;
            if (i == 2) {
                Logger.Companion.d(TAG, "landscape");
            } else if (i == 1) {
                Logger.Companion.d(TAG, "portrait");
            }
            MRAIDPresenter mRAIDPresenter = this.mraidPresenter;
            if (mRAIDPresenter != null) {
                mRAIDPresenter.onViewConfigurationChanged();
            }
        } catch (Exception e) {
            Logger.Companion companion = Logger.Companion;
            companion.e(TAG, "onConfigurationChanged: " + e.getLocalizedMessage());
        }
    }

    @Override // android.app.Activity
    public void onCreate(@Nullable Bundle bundle) {
        String str;
        String watermark$vungle_ads_release;
        super.onCreate(bundle);
        requestWindowFeature(1);
        getWindow().setFlags(16777216, 16777216);
        Companion companion = Companion;
        String placement = companion.getPlacement(getIntent());
        if (placement == null) {
            placement = "";
        }
        this.placementRefId = placement;
        AdPayload adPayload = advertisement;
        Placement placement2 = ConfigManager.INSTANCE.getPlacement(placement);
        LogEntry logEntry = null;
        UnclosedAd unclosedAd = null;
        if (placement2 != null && adPayload != null) {
            getWindow().getDecorView().setBackgroundColor(ViewCompat.MEASURED_STATE_MASK);
            try {
                MRAIDAdWidget mRAIDAdWidget = new MRAIDAdWidget(this);
                if (getIntent().getBooleanExtra(AD_INVISIBLE_LOGGED_KEY, false)) {
                    str = "3";
                } else {
                    str = "2";
                }
                AnalyticsClient.INSTANCE.logMetric$vungle_ads_release(new SingleValueMetric(Sdk.SDKMetric.SDKMetricType.AD_VISIBILITY), adPayload.getLogEntry$vungle_ads_release(), str);
                Logger.Companion companion2 = Logger.Companion;
                companion2.d(TAG, "Log metric AD_VISIBILITY: " + str);
                ServiceLocator.Companion companion3 = ServiceLocator.Companion;
                LazyThreadSafetyMode lazyThreadSafetyMode = LazyThreadSafetyMode.SYNCHRONIZED;
                final Lazy lazy = LazyKt.lazy(lazyThreadSafetyMode, (Function0) new Function0<SignalManager>() { // from class: com.vungle.ads.internal.ui.AdActivity$onCreate$$inlined$inject$1
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(0);
                    }

                    /* JADX WARN: Type inference failed for: r0v2, types: [com.vungle.ads.internal.signals.SignalManager, java.lang.Object] */
                    @Override // kotlin.jvm.functions.Function0
                    @NotNull
                    public final SignalManager invoke() {
                        return ServiceLocator.Companion.getInstance(this).getService(SignalManager.class);
                    }
                });
                String eventId = companion.getEventId(getIntent());
                if (eventId != null) {
                    unclosedAd = new UnclosedAd(eventId, (String) null, 2, (DefaultConstructorMarker) null);
                }
                this.unclosedAd = unclosedAd;
                if (unclosedAd != null) {
                    m350onCreate$lambda0(lazy).recordUnclosedAd(unclosedAd);
                }
                mRAIDAdWidget.setCloseDelegate(new MRAIDAdWidget.CloseDelegate() { // from class: com.vungle.ads.internal.ui.AdActivity$onCreate$3$1
                    @Override // com.vungle.ads.internal.ui.view.MRAIDAdWidget.CloseDelegate
                    public void close() {
                        Long l;
                        UnclosedAd unclosedAd2;
                        SignalManager m350onCreate$lambda0;
                        MRAIDPresenter mraidPresenter$vungle_ads_release = AdActivity.this.getMraidPresenter$vungle_ads_release();
                        LogEntry logEntry2 = null;
                        if (mraidPresenter$vungle_ads_release != null) {
                            l = mraidPresenter$vungle_ads_release.getViewStatus();
                        } else {
                            l = null;
                        }
                        if (l != null) {
                            long longValue = l.longValue();
                            AnalyticsClient analyticsClient = AnalyticsClient.INSTANCE;
                            Sdk.SDKMetric.SDKMetricType sDKMetricType = Sdk.SDKMetric.SDKMetricType.AD_CLOSED_BEFORE_IMPRESSION;
                            AdPayload advertisement$vungle_ads_release = AdActivity.Companion.getAdvertisement$vungle_ads_release();
                            if (advertisement$vungle_ads_release != null) {
                                logEntry2 = advertisement$vungle_ads_release.getLogEntry$vungle_ads_release();
                            }
                            AnalyticsClient.logMetric$vungle_ads_release$default(analyticsClient, sDKMetricType, longValue, logEntry2, null, 8, null);
                        }
                        unclosedAd2 = AdActivity.this.unclosedAd;
                        if (unclosedAd2 != null) {
                            m350onCreate$lambda0 = AdActivity.m350onCreate$lambda0(lazy);
                            m350onCreate$lambda0.removeUnclosedAd(unclosedAd2);
                        }
                        AdActivity.this.finish();
                    }
                });
                mRAIDAdWidget.setOnViewTouchListener(new MRAIDAdWidget.OnViewTouchListener() { // from class: com.vungle.ads.internal.ui.AdActivity$onCreate$3$2
                    @Override // com.vungle.ads.internal.ui.view.MRAIDAdWidget.OnViewTouchListener
                    public boolean onTouch(@Nullable MotionEvent motionEvent) {
                        MRAIDPresenter mraidPresenter$vungle_ads_release = AdActivity.this.getMraidPresenter$vungle_ads_release();
                        if (mraidPresenter$vungle_ads_release != null) {
                            mraidPresenter$vungle_ads_release.onViewTouched(motionEvent);
                            return false;
                        }
                        return false;
                    }
                });
                mRAIDAdWidget.setOrientationDelegate(new MRAIDAdWidget.OrientationDelegate() { // from class: com.vungle.ads.internal.ui.AdActivity$onCreate$3$3
                    @Override // com.vungle.ads.internal.ui.view.MRAIDAdWidget.OrientationDelegate
                    public void setOrientation(int i) {
                        AdActivity.this.setRequestedOrientation(i);
                    }
                });
                Lazy lazy2 = LazyKt.lazy(lazyThreadSafetyMode, (Function0) new Function0<Executors>() { // from class: com.vungle.ads.internal.ui.AdActivity$onCreate$$inlined$inject$2
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(0);
                    }

                    /* JADX WARN: Type inference failed for: r0v2, types: [java.lang.Object, com.vungle.ads.internal.executor.Executors] */
                    @Override // kotlin.jvm.functions.Function0
                    @NotNull
                    public final Executors invoke() {
                        return ServiceLocator.Companion.getInstance(this).getService(Executors.class);
                    }
                });
                Lazy lazy3 = LazyKt.lazy(lazyThreadSafetyMode, (Function0) new Function0<Platform>() { // from class: com.vungle.ads.internal.ui.AdActivity$onCreate$$inlined$inject$3
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(0);
                    }

                    /* JADX WARN: Type inference failed for: r0v2, types: [java.lang.Object, com.vungle.ads.internal.platform.Platform] */
                    @Override // kotlin.jvm.functions.Function0
                    @NotNull
                    public final Platform invoke() {
                        return ServiceLocator.Companion.getInstance(this).getService(Platform.class);
                    }
                });
                VungleWebClient vungleWebClient = new VungleWebClient(adPayload, placement2, m351onCreate$lambda4(lazy2).getOffloadExecutor(), m350onCreate$lambda0(lazy), m352onCreate$lambda5(lazy3));
                OMTracker make = m353onCreate$lambda6(LazyKt.lazy(lazyThreadSafetyMode, (Function0) new Function0<OMTracker.Factory>() { // from class: com.vungle.ads.internal.ui.AdActivity$onCreate$$inlined$inject$4
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(0);
                    }

                    /* JADX WARN: Type inference failed for: r0v2, types: [com.vungle.ads.internal.omsdk.OMTracker$Factory, java.lang.Object] */
                    @Override // kotlin.jvm.functions.Function0
                    @NotNull
                    public final OMTracker.Factory invoke() {
                        return ServiceLocator.Companion.getInstance(this).getService(OMTracker.Factory.class);
                    }
                })).make(adPayload.omEnabled());
                VungleThreadPoolExecutor jobExecutor = m351onCreate$lambda4(lazy2).getJobExecutor();
                vungleWebClient.setWebViewObserver(make);
                this.ringerModeReceiver.setWebClient(vungleWebClient);
                MRAIDPresenter mRAIDPresenter = new MRAIDPresenter(mRAIDAdWidget, adPayload, placement2, vungleWebClient, jobExecutor, make, bidPayload, m352onCreate$lambda5(lazy3));
                mRAIDPresenter.setEventListener(eventListener);
                mRAIDPresenter.setPresenterDelegate$vungle_ads_release(presenterDelegate);
                mRAIDPresenter.prepare();
                setContentView(mRAIDAdWidget, mRAIDAdWidget.getLayoutParams());
                ViewCompat.setOnApplyWindowInsetsListener(mRAIDAdWidget, new OnApplyWindowInsetsListener() { // from class: com.vungle.ads.internal.ui.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww
                    @Override // androidx.core.view.OnApplyWindowInsetsListener
                    public final WindowInsetsCompat onApplyWindowInsets(View view, WindowInsetsCompat windowInsetsCompat) {
                        WindowInsetsCompat m354onCreate$lambda7;
                        m354onCreate$lambda7 = AdActivity.m354onCreate$lambda7(view, windowInsetsCompat);
                        return m354onCreate$lambda7;
                    }
                });
                AdConfig adConfig = adPayload.getAdConfig();
                if (adConfig != null && (watermark$vungle_ads_release = adConfig.getWatermark$vungle_ads_release()) != null) {
                    WatermarkView watermarkView = new WatermarkView(this, watermark$vungle_ads_release);
                    ((FrameLayout) getWindow().getDecorView().findViewById(16908290)).addView(watermarkView);
                    watermarkView.bringToFront();
                }
                this.mraidAdWidget = mRAIDAdWidget;
                this.mraidPresenter = mRAIDPresenter;
                ActivityManager.Companion.addLifecycleListener(this.lifeCycleCallback);
                return;
            } catch (InstantiationException unused) {
                AdEventListener adEventListener = eventListener;
                if (adEventListener != null) {
                    adEventListener.onError(new AdCantPlayWithoutWebView().setLogEntry$vungle_ads_release(adPayload.getLogEntry$vungle_ads_release()).logError$vungle_ads_release(), this.placementRefId);
                }
                finish();
                return;
            }
        }
        AdEventListener adEventListener2 = eventListener;
        if (adEventListener2 != null) {
            AdNotLoadedCantPlay adNotLoadedCantPlay = new AdNotLoadedCantPlay("Can not play fullscreen ad. placement=" + placement2 + " adv=" + adPayload);
            if (adPayload != null) {
                logEntry = adPayload.getLogEntry$vungle_ads_release();
            }
            adEventListener2.onError(adNotLoadedCantPlay.setLogEntry$vungle_ads_release(logEntry).logError$vungle_ads_release(), this.placementRefId);
        }
        finish();
    }

    @Override // android.app.Activity
    public void onDestroy() {
        MRAIDPresenter mRAIDPresenter = this.mraidPresenter;
        if (mRAIDPresenter != null) {
            mRAIDPresenter.detach(isChangingConfigurations() | 2);
        }
        ActivityManager.Companion.removeLifecycleListener(this.lifeCycleCallback);
        super.onDestroy();
    }

    @Override // android.app.Activity
    public void onNewIntent(@NotNull Intent intent) {
        PushAutoTrackHelper.onNewIntent(this, intent);
        super.onNewIntent(intent);
        Companion companion = Companion;
        String placement = companion.getPlacement(getIntent());
        String placement2 = companion.getPlacement(intent);
        String eventId = companion.getEventId(getIntent());
        String eventId2 = companion.getEventId(intent);
        if ((placement != null && placement2 != null && !Intrinsics.areEqual(placement, placement2)) || (eventId != null && eventId2 != null && !Intrinsics.areEqual(eventId, eventId2))) {
            Logger.Companion companion2 = Logger.Companion;
            companion2.d(TAG, "Tried to play another placement " + placement2 + " while playing " + placement);
            onConcurrentPlaybackError(placement2);
        }
    }

    @Override // android.app.Activity
    public void onPause() {
        super.onPause();
        try {
            if (this.isReceiverRegistered) {
                unregisterReceiver(this.ringerModeReceiver);
                this.isReceiverRegistered = false;
                Logger.Companion companion = Logger.Companion;
                companion.d(TAG, "unregisterReceiver(): " + this.ringerModeReceiver.hashCode());
            }
        } catch (Exception e) {
            Logger.Companion companion2 = Logger.Companion;
            companion2.e(TAG, "unregisterReceiver error: " + e.getLocalizedMessage());
        }
        MRAIDPresenter mRAIDPresenter = this.mraidPresenter;
        if (mRAIDPresenter != null) {
            mRAIDPresenter.stop();
        }
    }

    @Override // android.app.Activity
    public void onResume() {
        super.onResume();
        hideSystemUi();
        try {
            if (!this.isReceiverRegistered) {
                registerReceiver(this.ringerModeReceiver, new IntentFilter("android.media.RINGER_MODE_CHANGED"));
                this.isReceiverRegistered = true;
                Logger.Companion companion = Logger.Companion;
                companion.d(TAG, "registerReceiver(): " + this.ringerModeReceiver.hashCode());
            }
        } catch (Exception e) {
            Logger.Companion companion2 = Logger.Companion;
            companion2.e(TAG, "registerReceiver error: " + e.getLocalizedMessage());
        }
        MRAIDPresenter mRAIDPresenter = this.mraidPresenter;
        if (mRAIDPresenter != null) {
            mRAIDPresenter.start();
        }
    }

    public final void setMraidAdWidget$vungle_ads_release(@Nullable MRAIDAdWidget mRAIDAdWidget) {
        this.mraidAdWidget = mRAIDAdWidget;
    }

    public final void setMraidPresenter$vungle_ads_release(@Nullable MRAIDPresenter mRAIDPresenter) {
        this.mraidPresenter = mRAIDPresenter;
    }

    public final void setPlacementRefId$vungle_ads_release(@NotNull String str) {
        this.placementRefId = str;
    }

    @Override // android.app.Activity
    public void setRequestedOrientation(int i) {
        if (canRotate$vungle_ads_release()) {
            super.setRequestedOrientation(i);
        }
    }

    @VisibleForTesting
    public static /* synthetic */ void getMraidAdWidget$vungle_ads_release$annotations() {
    }

    @VisibleForTesting
    public static /* synthetic */ void getMraidPresenter$vungle_ads_release$annotations() {
    }

    @VisibleForTesting
    public static /* synthetic */ void getPlacementRefId$vungle_ads_release$annotations() {
    }
}
