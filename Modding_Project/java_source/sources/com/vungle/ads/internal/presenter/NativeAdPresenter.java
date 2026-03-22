package com.vungle.ads.internal.presenter;

import android.app.Activity;
import android.app.AlertDialog;
import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.view.ContextThemeWrapper;
import android.view.View;
import androidx.annotation.VisibleForTesting;
import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import com.sensorsdata.analytics.android.autotrack.aop.SensorsDataAutoTrackHelper;
import com.sensorsdata.analytics.android.sdk.SensorsDataInstrumented;
import com.tencent.thumbplayer.tcmedia.core.downloadproxy.api.TPDownloadProxyEnum;
import com.vungle.ads.AnalyticsClient;
import com.vungle.ads.LinkError;
import com.vungle.ads.PrivacyUrlError;
import com.vungle.ads.ServiceLocator;
import com.vungle.ads.SingleValueMetric;
import com.vungle.ads.TpatError;
import com.vungle.ads.internal.ConfigManager;
import com.vungle.ads.internal.Constants;
import com.vungle.ads.internal.model.AdPayload;
import com.vungle.ads.internal.network.TpatRequest;
import com.vungle.ads.internal.network.TpatSender;
import com.vungle.ads.internal.omsdk.NativeOMTracker;
import com.vungle.ads.internal.omsdk.OMInjector;
import com.vungle.ads.internal.platform.Platform;
import com.vungle.ads.internal.privacy.PrivacyConsent;
import com.vungle.ads.internal.privacy.PrivacyManager;
import com.vungle.ads.internal.protos.Sdk;
import com.vungle.ads.internal.ui.PresenterAdOpenCallback;
import com.vungle.ads.internal.util.ExternalRouter;
import com.vungle.ads.internal.util.FileUtility;
import com.vungle.ads.internal.util.LogEntry;
import com.vungle.ads.internal.util.Logger;
import java.util.List;
import java.util.Map;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.Metadata;
import kotlin.TuplesKt;
import kotlin.collections.MapsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000p\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0010\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\u0018\u0000 92\u00020\u0001:\u00019B'\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\u0006\u0010\b\u001a\u00020\t¢\u0006\u0002\u0010\nJ\u0006\u0010!\u001a\u00020\"J\u000e\u0010#\u001a\u00020\"2\u0006\u0010$\u001a\u00020%J\b\u0010&\u001a\u00020\u000fH\u0002J\u0012\u0010'\u001a\u00020\"2\b\u0010(\u001a\u0004\u0018\u00010%H\u0002J\u0006\u0010)\u001a\u00020\"J\u0012\u0010*\u001a\u00020\"2\b\u0010+\u001a\u0004\u0018\u00010%H\u0002J\u0006\u0010,\u001a\u00020\"J\u001a\u0010-\u001a\u00020\"2\u0006\u0010.\u001a\u00020%2\n\b\u0002\u0010/\u001a\u0004\u0018\u00010%J\u0010\u00100\u001a\u00020\"2\b\u00101\u001a\u0004\u0018\u00010\u0011J\b\u00102\u001a\u00020\"H\u0002J\b\u00103\u001a\u00020\"H\u0002J\u000e\u00104\u001a\u00020\"2\u0006\u00105\u001a\u000206J\u0010\u00107\u001a\u00020\"2\u0006\u00108\u001a\u00020%H\u0002R\u0012\u0010\u000b\u001a\u0004\u0018\u00010\fX\u0082\u000e¢\u0006\u0004\n\u0002\u0010\rR\u000e\u0010\u000e\u001a\u00020\u000fX\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0010\u001a\u0004\u0018\u00010\u0011X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0012\u001a\u0004\u0018\u00010\u0013X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u001d\u0010\u0014\u001a\u0004\u0018\u00010\u00158BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0018\u0010\u0019\u001a\u0004\b\u0016\u0010\u0017R\u0010\u0010\u001a\u001a\u0004\u0018\u00010\u001bX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\tX\u0082\u0004¢\u0006\u0002\n\u0000R\u001b\u0010\u001c\u001a\u00020\u001d8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b \u0010\u0019\u001a\u0004\b\u001e\u0010\u001f¨\u0006:²\u0006\n\u0010;\u001a\u00020<X\u008a\u0084\u0002"}, d2 = {"Lcom/vungle/ads/internal/presenter/NativeAdPresenter;", "", "context", "Landroid/content/Context;", "delegate", "Lcom/vungle/ads/internal/presenter/NativePresenterDelegate;", "advertisement", "Lcom/vungle/ads/internal/model/AdPayload;", TPDownloadProxyEnum.USER_PLATFORM, "Lcom/vungle/ads/internal/platform/Platform;", "(Landroid/content/Context;Lcom/vungle/ads/internal/presenter/NativePresenterDelegate;Lcom/vungle/ads/internal/model/AdPayload;Lcom/vungle/ads/internal/platform/Platform;)V", "adStartTime", "", "Ljava/lang/Long;", "adViewed", "", "bus", "Lcom/vungle/ads/internal/presenter/AdEventListener;", "currentDialog", "Landroid/app/Dialog;", "logEntry", "Lcom/vungle/ads/internal/util/LogEntry;", "getLogEntry", "()Lcom/vungle/ads/internal/util/LogEntry;", "logEntry$delegate", "Lkotlin/Lazy;", "omTracker", "Lcom/vungle/ads/internal/omsdk/NativeOMTracker;", "tpatSender", "Lcom/vungle/ads/internal/network/TpatSender;", "getTpatSender", "()Lcom/vungle/ads/internal/network/TpatSender;", "tpatSender$delegate", "detach", "", "initOMTracker", "omSdkData", "", "needShowGdpr", "onDownload", "ctaUrl", "onImpression", "onPrivacy", "privacyUrl", "prepare", "processCommand", "action", "value", "setEventListener", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, "showGdpr", "start", "startTracking", "rootView", "Landroid/view/View;", "triggerEventMetricForTpat", "key", "Companion", "vungle-ads_release", "omInjector", "Lcom/vungle/ads/internal/omsdk/OMInjector;"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes6.dex */
public final class NativeAdPresenter {
    @NotNull
    public static final String DOWNLOAD = "download";
    @NotNull
    public static final String OPEN_PRIVACY = "openPrivacy";
    @NotNull
    private static final String TAG = "NativeAdPresenter";
    @NotNull
    public static final String TPAT = "tpat";
    @NotNull
    public static final String VIDEO_VIEWED = "videoViewed";
    @Nullable
    private Long adStartTime;
    private boolean adViewed;
    @Nullable
    private final AdPayload advertisement;
    @Nullable
    private AdEventListener bus;
    @NotNull
    private final Context context;
    @Nullable
    private Dialog currentDialog;
    @NotNull
    private final NativePresenterDelegate delegate;
    @NotNull
    private final Lazy logEntry$delegate;
    @Nullable
    private NativeOMTracker omTracker;
    @NotNull
    private final Platform platform;
    @NotNull
    private final Lazy tpatSender$delegate;
    @NotNull
    public static final Companion Companion = new Companion(null);
    @NotNull
    private static final Map<String, Sdk.SDKMetric.SDKMetricType> eventMap = MapsKt.mapOf(TuplesKt.to(Constants.CHECKPOINT_0, Sdk.SDKMetric.SDKMetricType.AD_START_EVENT), TuplesKt.to(Constants.CLICK_URL, Sdk.SDKMetric.SDKMetricType.AD_CLICK_EVENT));

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010$\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R(\u0010\t\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u000b0\n8\u0000X\u0081\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\f\u0010\u0002\u001a\u0004\b\r\u0010\u000e¨\u0006\u000f"}, d2 = {"Lcom/vungle/ads/internal/presenter/NativeAdPresenter$Companion;", "", "()V", "DOWNLOAD", "", "OPEN_PRIVACY", "TAG", "TPAT", "VIDEO_VIEWED", "eventMap", "", "Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$SDKMetricType;", "getEventMap$vungle_ads_release$annotations", "getEventMap$vungle_ads_release", "()Ljava/util/Map;", "vungle-ads_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes6.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final Map<String, Sdk.SDKMetric.SDKMetricType> getEventMap$vungle_ads_release() {
            return NativeAdPresenter.eventMap;
        }

        private Companion() {
        }

        @VisibleForTesting
        public static /* synthetic */ void getEventMap$vungle_ads_release$annotations() {
        }
    }

    public NativeAdPresenter(@NotNull final Context context, @NotNull NativePresenterDelegate nativePresenterDelegate, @Nullable AdPayload adPayload, @NotNull Platform platform) {
        this.context = context;
        this.delegate = nativePresenterDelegate;
        this.advertisement = adPayload;
        this.platform = platform;
        ServiceLocator.Companion companion = ServiceLocator.Companion;
        this.tpatSender$delegate = LazyKt.lazy(LazyThreadSafetyMode.SYNCHRONIZED, (Function0) new Function0<TpatSender>() { // from class: com.vungle.ads.internal.presenter.NativeAdPresenter$special$$inlined$inject$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Type inference failed for: r0v2, types: [com.vungle.ads.internal.network.TpatSender, java.lang.Object] */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final TpatSender invoke() {
                return ServiceLocator.Companion.getInstance(context).getService(TpatSender.class);
            }
        });
        this.logEntry$delegate = LazyKt.lazy(new Function0<LogEntry>() { // from class: com.vungle.ads.internal.presenter.NativeAdPresenter$logEntry$2
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @Nullable
            public final LogEntry invoke() {
                AdPayload adPayload2;
                adPayload2 = NativeAdPresenter.this.advertisement;
                if (adPayload2 != null) {
                    return adPayload2.getLogEntry$vungle_ads_release();
                }
                return null;
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final LogEntry getLogEntry() {
        return (LogEntry) this.logEntry$delegate.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final TpatSender getTpatSender() {
        return (TpatSender) this.tpatSender$delegate.getValue();
    }

    /* renamed from: initOMTracker$lambda-10  reason: not valid java name */
    private static final OMInjector m339initOMTracker$lambda10(Lazy<OMInjector> lazy) {
        return lazy.getValue();
    }

    private final boolean needShowGdpr() {
        if (ConfigManager.INSTANCE.getGDPRIsCountryDataProtected() && Intrinsics.areEqual("unknown", PrivacyManager.INSTANCE.getConsentStatus())) {
            return true;
        }
        return false;
    }

    private final void onDownload(String str) {
        List<String> list;
        AdEventListener adEventListener;
        AdPayload.AdUnit adUnit;
        AdPayload adPayload = this.advertisement;
        final String str2 = null;
        if (adPayload != null) {
            list = AdPayload.getTpatUrls$default(adPayload, Constants.CLICK_URL, null, null, 6, null);
        } else {
            list = null;
        }
        List list2 = list;
        if (list2 != null && !list2.isEmpty()) {
            for (String str3 : list) {
                TpatSender.sendTpat$default(getTpatSender(), new TpatRequest.Builder(str3).tpatKey(Constants.CLICK_URL).withLogEntry(getLogEntry()).build(), false, 2, null);
            }
        } else {
            new TpatError(Sdk.SDKError.Reason.EMPTY_TPAT_ERROR, "Empty tpat key: clickUrl").setLogEntry$vungle_ads_release(getLogEntry()).logErrorNoReturnValue$vungle_ads_release();
        }
        if (str != null) {
            TpatSender.sendTpat$default(getTpatSender(), new TpatRequest.Builder(str).tpatKey(Constants.CTA_URL).withLogEntry(getLogEntry()).build(), false, 2, null);
        }
        AdPayload adPayload2 = this.advertisement;
        if (adPayload2 != null && (adUnit = adPayload2.adUnit()) != null) {
            str2 = adUnit.getDeeplinkUrl();
        }
        boolean launch = ExternalRouter.launch(str2, str, this.context, getLogEntry(), new PresenterAdOpenCallback() { // from class: com.vungle.ads.internal.presenter.NativeAdPresenter$onDownload$launched$1
            @Override // com.vungle.ads.internal.ui.PresenterAdOpenCallback
            public void onDeeplinkClick(boolean z) {
                AdPayload adPayload3;
                List<String> list3;
                LogEntry logEntry;
                TpatSender tpatSender;
                LogEntry logEntry2;
                if (!z) {
                    LinkError linkError = new LinkError(Sdk.SDKError.Reason.DEEPLINK_OPEN_FAILED, "Fail to open " + str2);
                    logEntry2 = this.getLogEntry();
                    linkError.setLogEntry$vungle_ads_release(logEntry2).logErrorNoReturnValue$vungle_ads_release();
                }
                adPayload3 = this.advertisement;
                if (adPayload3 != null) {
                    list3 = AdPayload.getTpatUrls$default(adPayload3, Constants.DEEPLINK_CLICK, String.valueOf(z), null, 4, null);
                } else {
                    list3 = null;
                }
                if (list3 != null) {
                    NativeAdPresenter nativeAdPresenter = this;
                    for (String str4 : list3) {
                        TpatRequest.Builder tpatKey = new TpatRequest.Builder(str4).tpatKey(Constants.DEEPLINK_CLICK);
                        logEntry = nativeAdPresenter.getLogEntry();
                        TpatRequest build = tpatKey.withLogEntry(logEntry).build();
                        tpatSender = nativeAdPresenter.getTpatSender();
                        TpatSender.sendTpat$default(tpatSender, build, false, 2, null);
                    }
                }
            }
        });
        AdEventListener adEventListener2 = this.bus;
        if (adEventListener2 != null) {
            adEventListener2.onNext("open", "adClick", this.delegate.getPlacementRefId());
        }
        if (launch && (adEventListener = this.bus) != null) {
            adEventListener.onNext("open", "adLeftApplication", this.delegate.getPlacementRefId());
        }
    }

    private final void onPrivacy(String str) {
        AnalyticsClient.logMetric$vungle_ads_release$default(AnalyticsClient.INSTANCE, new SingleValueMetric(Sdk.SDKMetric.SDKMetricType.PRIVACY_URL_OPENED), getLogEntry(), (String) null, 4, (Object) null);
        if (str != null) {
            if (!FileUtility.INSTANCE.isValidUrl(str)) {
                new PrivacyUrlError(str).setLogEntry$vungle_ads_release(getLogEntry()).logErrorNoReturnValue$vungle_ads_release();
            } else if (ExternalRouter.launch$default(null, str, this.context, getLogEntry(), null, 16, null)) {
                AdEventListener adEventListener = this.bus;
                if (adEventListener != null) {
                    adEventListener.onNext("open", "adLeftApplication", this.delegate.getPlacementRefId());
                }
            } else {
                new PrivacyUrlError(str).setLogEntry$vungle_ads_release(getLogEntry()).logErrorNoReturnValue$vungle_ads_release();
            }
        }
    }

    public static /* synthetic */ void processCommand$default(NativeAdPresenter nativeAdPresenter, String str, String str2, int i, Object obj) {
        if ((i & 2) != 0) {
            str2 = null;
        }
        nativeAdPresenter.processCommand(str, str2);
    }

    private final void showGdpr() {
        PrivacyManager.INSTANCE.updateGdprConsent("opted_out_by_timeout", "vungle_modal", null);
        if (!(this.context instanceof Activity)) {
            Logger.Companion.w(TAG, "We can not show GDPR dialog with application context.");
            return;
        }
        DialogInterface.OnClickListener onClickListener = new DialogInterface.OnClickListener() { // from class: com.vungle.ads.internal.presenter.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                NativeAdPresenter.m340showGdpr$lambda8(NativeAdPresenter.this, dialogInterface, i);
            }
        };
        ConfigManager configManager = ConfigManager.INSTANCE;
        String gDPRConsentTitle = configManager.getGDPRConsentTitle();
        String gDPRConsentMessage = configManager.getGDPRConsentMessage();
        String gDPRButtonAccept = configManager.getGDPRButtonAccept();
        String gDPRButtonDeny = configManager.getGDPRButtonDeny();
        Context context = this.context;
        AlertDialog.Builder builder = new AlertDialog.Builder(new ContextThemeWrapper(context, ((Activity) context).getApplicationInfo().theme));
        if (gDPRConsentTitle != null && gDPRConsentTitle.length() != 0) {
            builder.setTitle(gDPRConsentTitle);
        }
        if (gDPRConsentMessage != null && gDPRConsentMessage.length() != 0) {
            builder.setMessage(gDPRConsentMessage);
        }
        builder.setPositiveButton(gDPRButtonAccept, onClickListener);
        builder.setNegativeButton(gDPRButtonDeny, onClickListener);
        builder.setCancelable(false);
        AlertDialog create = builder.create();
        create.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.vungle.ads.internal.presenter.Wwwwwwwwwwwwwwwwwwwwwwwwwwww
            @Override // android.content.DialogInterface.OnDismissListener
            public final void onDismiss(DialogInterface dialogInterface) {
                NativeAdPresenter.this.currentDialog = null;
            }
        });
        this.currentDialog = create;
        create.show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    @SensorsDataInstrumented
    /* renamed from: showGdpr$lambda-8  reason: not valid java name */
    public static final void m340showGdpr$lambda8(NativeAdPresenter nativeAdPresenter, DialogInterface dialogInterface, int i) {
        String value;
        if (i != -2) {
            if (i != -1) {
                value = "opted_out_by_timeout";
            } else {
                value = PrivacyConsent.OPT_IN.getValue();
            }
        } else {
            value = PrivacyConsent.OPT_OUT.getValue();
        }
        PrivacyManager.INSTANCE.updateGdprConsent(value, "vungle_modal", null);
        nativeAdPresenter.start();
        SensorsDataAutoTrackHelper.trackDialog(dialogInterface, i);
    }

    private final void start() {
        if (needShowGdpr()) {
            showGdpr();
        }
    }

    private final void triggerEventMetricForTpat(String str) {
        Sdk.SDKMetric.SDKMetricType sDKMetricType = eventMap.get(str);
        if (sDKMetricType != null) {
            AnalyticsClient.logMetric$vungle_ads_release$default(AnalyticsClient.INSTANCE, new SingleValueMetric(sDKMetricType), getLogEntry(), (String) null, 4, (Object) null);
        }
    }

    public final void detach() {
        List<String> tpatUrls;
        NativeOMTracker nativeOMTracker = this.omTracker;
        if (nativeOMTracker != null) {
            nativeOMTracker.stop();
        }
        Dialog dialog = this.currentDialog;
        if (dialog != null && dialog.isShowing()) {
            dialog.dismiss();
        }
        Long l = this.adStartTime;
        if (l != null) {
            long currentTimeMillis = System.currentTimeMillis() - l.longValue();
            AdPayload adPayload = this.advertisement;
            if (adPayload != null && (tpatUrls = adPayload.getTpatUrls(Constants.AD_CLOSE, String.valueOf(currentTimeMillis), String.valueOf(this.platform.getVolumeLevel()))) != null) {
                for (String str : tpatUrls) {
                    TpatSender.sendTpat$default(getTpatSender(), new TpatRequest.Builder(str).tpatKey(Constants.AD_CLOSE).withLogEntry(getLogEntry()).build(), false, 2, null);
                }
            }
        }
        AdEventListener adEventListener = this.bus;
        if (adEventListener != null) {
            adEventListener.onNext("end", null, this.delegate.getPlacementRefId());
        }
    }

    public final void initOMTracker(@NotNull String str) {
        boolean z;
        AdPayload adPayload = this.advertisement;
        if (adPayload != null) {
            z = adPayload.omEnabled();
        } else {
            z = false;
        }
        if (str.length() > 0 && z) {
            ServiceLocator.Companion companion = ServiceLocator.Companion;
            final Context context = this.context;
            Lazy lazy = LazyKt.lazy(LazyThreadSafetyMode.SYNCHRONIZED, (Function0) new Function0<OMInjector>() { // from class: com.vungle.ads.internal.presenter.NativeAdPresenter$initOMTracker$$inlined$inject$1
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(0);
                }

                /* JADX WARN: Type inference failed for: r0v2, types: [java.lang.Object, com.vungle.ads.internal.omsdk.OMInjector] */
                @Override // kotlin.jvm.functions.Function0
                @NotNull
                public final OMInjector invoke() {
                    return ServiceLocator.Companion.getInstance(context).getService(OMInjector.class);
                }
            });
            m339initOMTracker$lambda10(lazy).init();
            String oMSDKJS$vungle_ads_release = m339initOMTracker$lambda10(lazy).getOMSDKJS$vungle_ads_release();
            if (oMSDKJS$vungle_ads_release != null) {
                this.omTracker = new NativeOMTracker(str, oMSDKJS$vungle_ads_release);
            }
        }
    }

    public final void onImpression() {
        NativeOMTracker nativeOMTracker = this.omTracker;
        if (nativeOMTracker != null) {
            nativeOMTracker.impressionOccurred();
        }
    }

    public final void prepare() {
        start();
        AdEventListener adEventListener = this.bus;
        if (adEventListener != null) {
            adEventListener.onNext("start", null, this.delegate.getPlacementRefId());
        }
        this.adStartTime = Long.valueOf(System.currentTimeMillis());
    }

    public final void processCommand(@NotNull String str, @Nullable String str2) {
        String str3;
        List<String> tpatUrls$default;
        switch (str.hashCode()) {
            case -511324706:
                if (str.equals("openPrivacy")) {
                    onPrivacy(str2);
                    return;
                }
                break;
            case 3566511:
                if (str.equals("tpat")) {
                    if (str2 != null && str2.length() != 0) {
                        triggerEventMetricForTpat(str2);
                        if (Intrinsics.areEqual(str2, Constants.CHECKPOINT_0)) {
                            AdPayload adPayload = this.advertisement;
                            if (adPayload != null) {
                                tpatUrls$default = adPayload.getTpatUrls(str2, this.platform.getCarrierName(), String.valueOf(this.platform.getVolumeLevel()));
                                str3 = str2;
                            }
                            str3 = str2;
                            tpatUrls$default = null;
                        } else {
                            AdPayload adPayload2 = this.advertisement;
                            if (adPayload2 != null) {
                                str3 = str2;
                                tpatUrls$default = AdPayload.getTpatUrls$default(adPayload2, str3, null, null, 6, null);
                            }
                            str3 = str2;
                            tpatUrls$default = null;
                        }
                        List<String> list = tpatUrls$default;
                        if (list != null && !list.isEmpty()) {
                            for (String str4 : tpatUrls$default) {
                                TpatSender.sendTpat$default(getTpatSender(), new TpatRequest.Builder(str4).tpatKey(str3).withLogEntry(getLogEntry()).build(), false, 2, null);
                            }
                            return;
                        }
                        new TpatError(Sdk.SDKError.Reason.INVALID_TPAT_KEY, "Empty urls for tpat: " + str3).setLogEntry$vungle_ads_release(getLogEntry()).logErrorNoReturnValue$vungle_ads_release();
                        return;
                    }
                    new TpatError(Sdk.SDKError.Reason.EMPTY_TPAT_ERROR, "Empty tpat key").setLogEntry$vungle_ads_release(getLogEntry()).logErrorNoReturnValue$vungle_ads_release();
                    return;
                }
                break;
            case 1118284383:
                if (str.equals("videoViewed")) {
                    AdEventListener adEventListener = this.bus;
                    if (adEventListener != null && !this.adViewed) {
                        this.adViewed = true;
                        if (adEventListener != null) {
                            adEventListener.onNext("adViewed", null, this.delegate.getPlacementRefId());
                        }
                        List<String> impressionUrls = this.delegate.getImpressionUrls();
                        if (impressionUrls != null) {
                            for (String str5 : impressionUrls) {
                                TpatSender.sendTpat$default(getTpatSender(), new TpatRequest.Builder(str5).tpatKey("impression").withLogEntry(getLogEntry()).build(), false, 2, null);
                            }
                            return;
                        }
                        return;
                    }
                    return;
                }
                break;
            case 1427818632:
                if (str.equals(DOWNLOAD)) {
                    onDownload(str2);
                    return;
                }
                break;
        }
        Logger.Companion.w(TAG, "Unknown native ad action: " + str);
    }

    public final void setEventListener(@Nullable AdEventListener adEventListener) {
        this.bus = adEventListener;
    }

    public final void startTracking(@NotNull View view) {
        NativeOMTracker nativeOMTracker = this.omTracker;
        if (nativeOMTracker != null) {
            nativeOMTracker.start(view);
        }
    }
}
