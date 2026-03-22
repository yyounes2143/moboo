package com.vungle.ads.internal.presenter;

import android.content.Context;
import android.view.MotionEvent;
import android.webkit.WebView;
import android.webkit.WebViewRenderProcess;
import androidx.annotation.VisibleForTesting;
import com.appsflyer.AdRevenueScheme;
import com.google.ads.mediation.vungle.VungleConstants;
import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import com.mbridge.msdk.MBridgeConstans;
import com.tencent.thumbplayer.tcmedia.core.downloadproxy.api.TPDownloadProxyEnum;
import com.vungle.ads.AdConfig;
import com.vungle.ads.AdNotLoadedCantPlay;
import com.vungle.ads.AnalyticsClient;
import com.vungle.ads.HeartbeatMissingError;
import com.vungle.ads.IndexHtmlError;
import com.vungle.ads.NetworkUnreachable;
import com.vungle.ads.ServiceLocator;
import com.vungle.ads.SingleValueMetric;
import com.vungle.ads.VungleError;
import com.vungle.ads.WebViewError;
import com.vungle.ads.WebViewRenderProcessUnresponsive;
import com.vungle.ads.WebViewRenderingProcessGone;
import com.vungle.ads.internal.ClickCoordinateTracker;
import com.vungle.ads.internal.ConfigManager;
import com.vungle.ads.internal.Constants;
import com.vungle.ads.internal.model.AdPayload;
import com.vungle.ads.internal.model.BidPayload;
import com.vungle.ads.internal.model.CommonRequestBody;
import com.vungle.ads.internal.model.Placement;
import com.vungle.ads.internal.network.Call;
import com.vungle.ads.internal.network.Callback;
import com.vungle.ads.internal.network.Response;
import com.vungle.ads.internal.network.TpatRequest;
import com.vungle.ads.internal.network.TpatSender;
import com.vungle.ads.internal.network.VungleApiClient;
import com.vungle.ads.internal.omsdk.OMTracker;
import com.vungle.ads.internal.platform.Platform;
import com.vungle.ads.internal.privacy.PrivacyManager;
import com.vungle.ads.internal.protos.Sdk;
import com.vungle.ads.internal.signals.SignalManager;
import com.vungle.ads.internal.ui.VungleWebClient;
import com.vungle.ads.internal.ui.view.MRAIDAdWidget;
import com.vungle.ads.internal.ui.view.WebViewAPI;
import com.vungle.ads.internal.util.HandlerScheduler;
import com.vungle.ads.internal.util.LogEntry;
import com.vungle.ads.internal.util.Logger;
import com.vungle.ads.internal.util.PathProvider;
import com.vungle.ads.internal.util.SuspendableTimer;
import com.vungle.ads.internal.util.ThreadUtil;
import java.io.File;
import java.util.List;
import java.util.Map;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.Metadata;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.collections.MapsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000ì\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\b\n\u0002\u0010\u000b\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0010\u0018\u0000 §\u00012\u00020\u00012\u00020\u0002:\u0002§\u0001BG\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\b\u0012\u0006\u0010\t\u001a\u00020\n\u0012\u0006\u0010\u000b\u001a\u00020\f\u0012\u0006\u0010\r\u001a\u00020\u000e\u0012\b\u0010\u000f\u001a\u0004\u0018\u00010\u0010\u0012\u0006\u0010\u0011\u001a\u00020\u0012¢\u0006\u0002\u0010\u0013J\b\u0010u\u001a\u00020vH\u0002J\u0010\u0010w\u001a\u00020v2\b\b\u0001\u0010x\u001a\u00020yJ\r\u0010z\u001a\u0004\u0018\u00010\u0015¢\u0006\u0002\u0010\u0019J\u0006\u0010{\u001a\u00020vJ%\u0010|\u001a\u00020v2\u0006\u0010}\u001a\u00020~2\u0006\u0010\u007f\u001a\u00020\u001e2\u000b\b\u0002\u0010\u0080\u0001\u001a\u0004\u0018\u00010fH\u0002J\u0015\u0010\u0081\u0001\u001a\u0004\u0018\u00010~2\b\u0010\u0082\u0001\u001a\u00030\u0083\u0001H\u0002J\u0011\u0010\u0084\u0001\u001a\u00020v2\u0006\u0010}\u001a\u00020~H\u0002J\u001b\u0010\u0085\u0001\u001a\u00020v2\u0007\u0010\u0086\u0001\u001a\u00020f2\u0007\u0010\u0087\u0001\u001a\u00020\u001eH\u0016J!\u0010\u0088\u0001\u001a\u00020v2\n\u0010\u0089\u0001\u001a\u0005\u0018\u00010\u008a\u00012\n\u0010\u008b\u0001\u001a\u0005\u0018\u00010\u008c\u0001H\u0016J\u0007\u0010\u008d\u0001\u001a\u00020vJ\u0013\u0010\u008e\u0001\u001a\u00020v2\n\u0010\u008f\u0001\u001a\u0005\u0018\u00010\u0090\u0001J&\u0010\u0091\u0001\u001a\u00020\u001e2\n\u0010\u0092\u0001\u001a\u0005\u0018\u00010\u008a\u00012\t\u0010\u0087\u0001\u001a\u0004\u0018\u00010\u001eH\u0016¢\u0006\u0003\u0010\u0093\u0001J\u0007\u0010\u0094\u0001\u001a\u00020vJ\u001c\u0010\u0095\u0001\u001a\u00020\u001e2\u0007\u0010\u0096\u0001\u001a\u00020f2\b\u0010\u0097\u0001\u001a\u00030\u0098\u0001H\u0016J\t\u0010\u0099\u0001\u001a\u00020vH\u0002J\u0011\u0010\u009a\u0001\u001a\u00020v2\u0006\u0010}\u001a\u00020~H\u0002J\u0010\u0010\u009b\u0001\u001a\u00020v2\u0007\u0010\u009c\u0001\u001a\u00020\u001eJ\u0012\u0010\u009d\u0001\u001a\u00020v2\t\u0010\u009e\u0001\u001a\u0004\u0018\u00010&J\u0019\u0010\u009f\u0001\u001a\u00020v2\b\u0010M\u001a\u0004\u0018\u00010NH\u0000¢\u0006\u0003\b \u0001J\u000f\u0010¡\u0001\u001a\u00020\u001eH\u0000¢\u0006\u0003\b¢\u0001J\u0007\u0010£\u0001\u001a\u00020vJ\u0007\u0010¤\u0001\u001a\u00020vJ\u0012\u0010¥\u0001\u001a\u00020v2\u0007\u0010¦\u0001\u001a\u00020fH\u0002R(\u0010\u0014\u001a\u0004\u0018\u00010\u00158\u0000@\u0000X\u0081\u000e¢\u0006\u0016\n\u0002\u0010\u001c\u0012\u0004\b\u0016\u0010\u0017\u001a\u0004\b\u0018\u0010\u0019\"\u0004\b\u001a\u0010\u001bR\u000e\u0010\u001d\u001a\u00020\u001eX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004¢\u0006\u0002\n\u0000R$\u0010\u001f\u001a\u00020\u001e8\u0000@\u0000X\u0081\u000e¢\u0006\u0014\n\u0000\u0012\u0004\b \u0010\u0017\u001a\u0004\b!\u0010\"\"\u0004\b#\u0010$R\u0010\u0010\u000f\u001a\u0004\u0018\u00010\u0010X\u0082\u0004¢\u0006\u0002\n\u0000R&\u0010%\u001a\u0004\u0018\u00010&8\u0006@\u0006X\u0087\u000e¢\u0006\u0014\n\u0000\u0012\u0004\b'\u0010\u0017\u001a\u0004\b(\u0010)\"\u0004\b*\u0010+R!\u0010,\u001a\u00020-8@X\u0081\u0084\u0002¢\u0006\u0012\n\u0004\b1\u00102\u0012\u0004\b.\u0010\u0017\u001a\u0004\b/\u00100R\u000e\u00103\u001a\u00020\u001eX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\fX\u0082\u000e¢\u0006\u0002\n\u0000R$\u00104\u001a\u00020\u001e8\u0000@\u0000X\u0081\u000e¢\u0006\u0014\n\u0000\u0012\u0004\b5\u0010\u0017\u001a\u0004\b6\u0010\"\"\u0004\b7\u0010$R\u001c\u00108\u001a\u0002098\u0000X\u0081\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b:\u0010\u0017\u001a\u0004\b;\u0010<R$\u0010=\u001a\u00020\u00158\u0000@\u0000X\u0081\u000e¢\u0006\u0014\n\u0000\u0012\u0004\b>\u0010\u0017\u001a\u0004\b?\u0010@\"\u0004\bA\u0010BR\u001d\u0010C\u001a\u0004\u0018\u00010D8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\bG\u00102\u001a\u0004\bE\u0010FR\u000e\u0010\r\u001a\u00020\u000eX\u0082\u0004¢\u0006\u0002\n\u0000R\u001b\u0010H\u001a\u00020I8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\bL\u00102\u001a\u0004\bJ\u0010KR\u000e\u0010\u0007\u001a\u00020\bX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0012X\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010M\u001a\u0004\u0018\u00010NX\u0082\u000e¢\u0006\u0002\n\u0000R\u001b\u0010O\u001a\u00020P8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\bS\u00102\u001a\u0004\bQ\u0010RR\u000e\u0010T\u001a\u000209X\u0082\u0004¢\u0006\u0002\n\u0000R\u001b\u0010U\u001a\u00020V8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\bY\u00102\u001a\u0004\bW\u0010XR!\u0010Z\u001a\u00020[8@X\u0081\u0084\u0002¢\u0006\u0012\n\u0004\b_\u00102\u0012\u0004\b\\\u0010\u0017\u001a\u0004\b]\u0010^R\u001b\u0010`\u001a\u00020a8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\bd\u00102\u001a\u0004\bb\u0010cR&\u0010e\u001a\u0004\u0018\u00010f8\u0000@\u0000X\u0081\u000e¢\u0006\u0014\n\u0000\u0012\u0004\bg\u0010\u0017\u001a\u0004\bh\u0010i\"\u0004\bj\u0010kR$\u0010l\u001a\u00020\u00158\u0000@\u0000X\u0081\u000e¢\u0006\u0014\n\u0000\u0012\u0004\bm\u0010\u0017\u001a\u0004\bn\u0010@\"\u0004\bo\u0010BR\u001b\u0010p\u001a\u00020q8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\bt\u00102\u001a\u0004\br\u0010sR\u000e\u0010\t\u001a\u00020\nX\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006¨\u0001"}, d2 = {"Lcom/vungle/ads/internal/presenter/MRAIDPresenter;", "Lcom/vungle/ads/internal/ui/view/WebViewAPI$MraidDelegate;", "Lcom/vungle/ads/internal/ui/view/WebViewAPI$WebClientErrorHandler;", "adWidget", "Lcom/vungle/ads/internal/ui/view/MRAIDAdWidget;", "advertisement", "Lcom/vungle/ads/internal/model/AdPayload;", AdRevenueScheme.PLACEMENT, "Lcom/vungle/ads/internal/model/Placement;", "vungleWebClient", "Lcom/vungle/ads/internal/ui/VungleWebClient;", "executor", "Ljava/util/concurrent/Executor;", "omTracker", "Lcom/vungle/ads/internal/omsdk/OMTracker;", "bidPayload", "Lcom/vungle/ads/internal/model/BidPayload;", TPDownloadProxyEnum.USER_PLATFORM, "Lcom/vungle/ads/internal/platform/Platform;", "(Lcom/vungle/ads/internal/ui/view/MRAIDAdWidget;Lcom/vungle/ads/internal/model/AdPayload;Lcom/vungle/ads/internal/model/Placement;Lcom/vungle/ads/internal/ui/VungleWebClient;Ljava/util/concurrent/Executor;Lcom/vungle/ads/internal/omsdk/OMTracker;Lcom/vungle/ads/internal/model/BidPayload;Lcom/vungle/ads/internal/platform/Platform;)V", "adStartTime", "", "getAdStartTime$vungle_ads_release$annotations", "()V", "getAdStartTime$vungle_ads_release", "()Ljava/lang/Long;", "setAdStartTime$vungle_ads_release", "(Ljava/lang/Long;)V", "Ljava/lang/Long;", "adViewed", "", "backEnabled", "getBackEnabled$vungle_ads_release$annotations", "getBackEnabled$vungle_ads_release", "()Z", "setBackEnabled$vungle_ads_release", "(Z)V", "bus", "Lcom/vungle/ads/internal/presenter/AdEventListener;", "getBus$annotations", "getBus", "()Lcom/vungle/ads/internal/presenter/AdEventListener;", "setBus", "(Lcom/vungle/ads/internal/presenter/AdEventListener;)V", "clickCoordinateTracker", "Lcom/vungle/ads/internal/ClickCoordinateTracker;", "getClickCoordinateTracker$vungle_ads_release$annotations", "getClickCoordinateTracker$vungle_ads_release", "()Lcom/vungle/ads/internal/ClickCoordinateTracker;", "clickCoordinateTracker$delegate", "Lkotlin/Lazy;", "cp0Fired", "heartbeatEnabled", "getHeartbeatEnabled$vungle_ads_release$annotations", "getHeartbeatEnabled$vungle_ads_release", "setHeartbeatEnabled$vungle_ads_release", "isDestroying", "Ljava/util/concurrent/atomic/AtomicBoolean;", "isDestroying$vungle_ads_release$annotations", "isDestroying$vungle_ads_release", "()Ljava/util/concurrent/atomic/AtomicBoolean;", "lastUserInteractionTimestamp", "getLastUserInteractionTimestamp$vungle_ads_release$annotations", "getLastUserInteractionTimestamp$vungle_ads_release", "()J", "setLastUserInteractionTimestamp$vungle_ads_release", "(J)V", "logEntry", "Lcom/vungle/ads/internal/util/LogEntry;", "getLogEntry", "()Lcom/vungle/ads/internal/util/LogEntry;", "logEntry$delegate", "pathProvider", "Lcom/vungle/ads/internal/util/PathProvider;", "getPathProvider", "()Lcom/vungle/ads/internal/util/PathProvider;", "pathProvider$delegate", "presenterDelegate", "Lcom/vungle/ads/internal/presenter/PresenterDelegate;", "scheduler", "Lcom/vungle/ads/internal/util/HandlerScheduler;", "getScheduler", "()Lcom/vungle/ads/internal/util/HandlerScheduler;", "scheduler$delegate", "sendReportIncentivized", "signalManager", "Lcom/vungle/ads/internal/signals/SignalManager;", "getSignalManager", "()Lcom/vungle/ads/internal/signals/SignalManager;", "signalManager$delegate", "suspendableTimer", "Lcom/vungle/ads/internal/util/SuspendableTimer;", "getSuspendableTimer$vungle_ads_release$annotations", "getSuspendableTimer$vungle_ads_release", "()Lcom/vungle/ads/internal/util/SuspendableTimer;", "suspendableTimer$delegate", "tpatSender", "Lcom/vungle/ads/internal/network/TpatSender;", "getTpatSender", "()Lcom/vungle/ads/internal/network/TpatSender;", "tpatSender$delegate", VungleConstants.KEY_USER_ID, "", "getUserId$vungle_ads_release$annotations", "getUserId$vungle_ads_release", "()Ljava/lang/String;", "setUserId$vungle_ads_release", "(Ljava/lang/String;)V", "videoLength", "getVideoLength$vungle_ads_release$annotations", "getVideoLength$vungle_ads_release", "setVideoLength$vungle_ads_release", "vungleApiClient", "Lcom/vungle/ads/internal/network/VungleApiClient;", "getVungleApiClient", "()Lcom/vungle/ads/internal/network/VungleApiClient;", "vungleApiClient$delegate", "closeView", "", "detach", "stopReason", "", "getViewStatus", "handleExit", "handleWebViewException", "reason", "Lcom/vungle/ads/VungleError;", "fatal", "errorMessage", "loadMraidAd", "dest", "Ljava/io/File;", "makeBusError", "onReceivedError", "errorDesc", "didCrash", "onRenderProcessUnresponsive", "webView", "Landroid/webkit/WebView;", "webViewRenderProcess", "Landroid/webkit/WebViewRenderProcess;", "onViewConfigurationChanged", "onViewTouched", "event", "Landroid/view/MotionEvent;", "onWebRenderingProcessGone", MBridgeConstans.DYNAMIC_VIEW_KEY_VIEW, "(Landroid/webkit/WebView;Ljava/lang/Boolean;)Z", "prepare", "processCommand", "command", "arguments", "Lkotlinx/serialization/json/JsonObject;", "recordPlayAssetMetric", "reportErrorAndCloseAd", "setAdVisibility", "isViewable", "setEventListener", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, "setPresenterDelegate", "setPresenterDelegate$vungle_ads_release", "shouldBlockAutoRedirect", "shouldBlockAutoRedirect$vungle_ads_release", "start", "stop", "triggerEventMetricForTpat", "key", "Companion", "vungle-ads_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes6.dex */
public final class MRAIDPresenter implements WebViewAPI.MraidDelegate, WebViewAPI.WebClientErrorHandler {
    @NotNull
    private static final String ACTION = "action";
    @NotNull
    public static final String ACTION_WITH_VALUE = "actionWithValue";
    @NotNull
    public static final String CLOSE = "close";
    @NotNull
    public static final String CONSENT_ACTION = "consentAction";
    @NotNull
    public static final String CREATIVE_HEARTBEAT = "creativeHeartbeat";
    @NotNull
    public static final String ERROR = "error";
    @NotNull
    public static final String GET_AVAILABLE_DISK_SPACE = "getAvailableDiskSpace";
    private static final double HEARTBEAT_INTERVAL = 6.0d;
    @NotNull
    public static final String OPEN = "open";
    @NotNull
    private static final String OPEN_NON_MRAID = "openNonMraid";
    @NotNull
    public static final String OPEN_PRIVACY = "openPrivacy";
    @NotNull
    public static final String PING_URL = "pingUrl";
    @NotNull
    public static final String SET_ORIENTATION_PROPERTIES = "setOrientationProperties";
    @NotNull
    public static final String SUCCESSFUL_VIEW = "successfulView";
    @NotNull
    private static final String TAG = "MRAIDPresenter";
    @NotNull
    public static final String TPAT = "tpat";
    @NotNull
    public static final String UPDATE_SIGNALS = "updateSignals";
    @NotNull
    private static final String USE_CUSTOM_CLOSE = "useCustomClose";
    @NotNull
    private static final String USE_CUSTOM_PRIVACY = "useCustomPrivacy";
    @NotNull
    public static final String VIDEO_LENGTH = "videoLength";
    @NotNull
    public static final String VIDEO_VIEWED = "videoViewed";
    @Nullable
    private Long adStartTime;
    private boolean adViewed;
    @NotNull
    private final MRAIDAdWidget adWidget;
    @NotNull
    private final AdPayload advertisement;
    private boolean backEnabled;
    @Nullable
    private final BidPayload bidPayload;
    @Nullable
    private AdEventListener bus;
    @NotNull
    private final Lazy clickCoordinateTracker$delegate;
    private boolean cp0Fired;
    @NotNull
    private Executor executor;
    private boolean heartbeatEnabled;
    private long lastUserInteractionTimestamp;
    @NotNull
    private final Lazy logEntry$delegate;
    @NotNull
    private final OMTracker omTracker;
    @NotNull
    private final Lazy pathProvider$delegate;
    @NotNull
    private final Placement placement;
    @NotNull
    private final Platform platform;
    @Nullable
    private PresenterDelegate presenterDelegate;
    @NotNull
    private final Lazy scheduler$delegate;
    @NotNull
    private final Lazy signalManager$delegate;
    @NotNull
    private final Lazy suspendableTimer$delegate;
    @NotNull
    private final Lazy tpatSender$delegate;
    @Nullable
    private String userId;
    private long videoLength;
    @NotNull
    private final Lazy vungleApiClient$delegate;
    @NotNull
    private final VungleWebClient vungleWebClient;
    @NotNull
    public static final Companion Companion = new Companion(null);
    @NotNull
    private static final Map<String, Sdk.SDKMetric.SDKMetricType> eventMap = MapsKt.mapOf(TuplesKt.to(Constants.CHECKPOINT_0, Sdk.SDKMetric.SDKMetricType.AD_START_EVENT), TuplesKt.to(Constants.CLICK_URL, Sdk.SDKMetric.SDKMetricType.AD_CLICK_EVENT));
    @NotNull
    private final AtomicBoolean isDestroying = new AtomicBoolean(false);
    @NotNull
    private final AtomicBoolean sendReportIncentivized = new AtomicBoolean(false);

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\r\n\u0002\u0010\u0006\n\u0002\b\u0017\n\u0002\u0010$\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u0016\u0010\u0005\u001a\u00020\u00048\u0000X\u0081T¢\u0006\b\n\u0000\u0012\u0004\b\u0006\u0010\u0002R\u0016\u0010\u0007\u001a\u00020\u00048\u0000X\u0081T¢\u0006\b\n\u0000\u0012\u0004\b\b\u0010\u0002R\u0016\u0010\t\u001a\u00020\u00048\u0000X\u0081T¢\u0006\b\n\u0000\u0012\u0004\b\n\u0010\u0002R\u0016\u0010\u000b\u001a\u00020\u00048\u0000X\u0081T¢\u0006\b\n\u0000\u0012\u0004\b\f\u0010\u0002R\u0016\u0010\r\u001a\u00020\u00048\u0000X\u0081T¢\u0006\b\n\u0000\u0012\u0004\b\u000e\u0010\u0002R\u0016\u0010\u000f\u001a\u00020\u00048\u0000X\u0081T¢\u0006\b\n\u0000\u0012\u0004\b\u0010\u0010\u0002R\u000e\u0010\u0011\u001a\u00020\u0012X\u0082T¢\u0006\u0002\n\u0000R\u0016\u0010\u0013\u001a\u00020\u00048\u0000X\u0081T¢\u0006\b\n\u0000\u0012\u0004\b\u0014\u0010\u0002R\u000e\u0010\u0015\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u0016\u0010\u0016\u001a\u00020\u00048\u0000X\u0081T¢\u0006\b\n\u0000\u0012\u0004\b\u0017\u0010\u0002R\u0016\u0010\u0018\u001a\u00020\u00048\u0000X\u0081T¢\u0006\b\n\u0000\u0012\u0004\b\u0019\u0010\u0002R\u0016\u0010\u001a\u001a\u00020\u00048\u0000X\u0081T¢\u0006\b\n\u0000\u0012\u0004\b\u001b\u0010\u0002R\u0016\u0010\u001c\u001a\u00020\u00048\u0000X\u0081T¢\u0006\b\n\u0000\u0012\u0004\b\u001d\u0010\u0002R\u000e\u0010\u001e\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u0016\u0010\u001f\u001a\u00020\u00048\u0000X\u0081T¢\u0006\b\n\u0000\u0012\u0004\b \u0010\u0002R\u0016\u0010!\u001a\u00020\u00048\u0000X\u0081T¢\u0006\b\n\u0000\u0012\u0004\b\"\u0010\u0002R\u000e\u0010#\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010$\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u0016\u0010%\u001a\u00020\u00048\u0000X\u0081T¢\u0006\b\n\u0000\u0012\u0004\b&\u0010\u0002R\u0016\u0010'\u001a\u00020\u00048\u0000X\u0081T¢\u0006\b\n\u0000\u0012\u0004\b(\u0010\u0002R(\u0010)\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020+0*8\u0000X\u0081\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b,\u0010\u0002\u001a\u0004\b-\u0010.¨\u0006/"}, d2 = {"Lcom/vungle/ads/internal/presenter/MRAIDPresenter$Companion;", "", "()V", "ACTION", "", "ACTION_WITH_VALUE", "getACTION_WITH_VALUE$vungle_ads_release$annotations", "CLOSE", "getCLOSE$vungle_ads_release$annotations", "CONSENT_ACTION", "getCONSENT_ACTION$vungle_ads_release$annotations", "CREATIVE_HEARTBEAT", "getCREATIVE_HEARTBEAT$vungle_ads_release$annotations", "ERROR", "getERROR$vungle_ads_release$annotations", "GET_AVAILABLE_DISK_SPACE", "getGET_AVAILABLE_DISK_SPACE$vungle_ads_release$annotations", "HEARTBEAT_INTERVAL", "", "OPEN", "getOPEN$vungle_ads_release$annotations", "OPEN_NON_MRAID", "OPEN_PRIVACY", "getOPEN_PRIVACY$vungle_ads_release$annotations", "PING_URL", "getPING_URL$vungle_ads_release$annotations", "SET_ORIENTATION_PROPERTIES", "getSET_ORIENTATION_PROPERTIES$vungle_ads_release$annotations", "SUCCESSFUL_VIEW", "getSUCCESSFUL_VIEW$vungle_ads_release$annotations", "TAG", "TPAT", "getTPAT$vungle_ads_release$annotations", "UPDATE_SIGNALS", "getUPDATE_SIGNALS$vungle_ads_release$annotations", "USE_CUSTOM_CLOSE", "USE_CUSTOM_PRIVACY", "VIDEO_LENGTH", "getVIDEO_LENGTH$vungle_ads_release$annotations", "VIDEO_VIEWED", "getVIDEO_VIEWED$vungle_ads_release$annotations", "eventMap", "", "Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$SDKMetricType;", "getEventMap$vungle_ads_release$annotations", "getEventMap$vungle_ads_release", "()Ljava/util/Map;", "vungle-ads_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes6.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final Map<String, Sdk.SDKMetric.SDKMetricType> getEventMap$vungle_ads_release() {
            return MRAIDPresenter.eventMap;
        }

        private Companion() {
        }

        @VisibleForTesting
        public static /* synthetic */ void getACTION_WITH_VALUE$vungle_ads_release$annotations() {
        }

        @VisibleForTesting
        public static /* synthetic */ void getCLOSE$vungle_ads_release$annotations() {
        }

        @VisibleForTesting
        public static /* synthetic */ void getCONSENT_ACTION$vungle_ads_release$annotations() {
        }

        @VisibleForTesting
        public static /* synthetic */ void getCREATIVE_HEARTBEAT$vungle_ads_release$annotations() {
        }

        @VisibleForTesting
        public static /* synthetic */ void getERROR$vungle_ads_release$annotations() {
        }

        @VisibleForTesting
        public static /* synthetic */ void getEventMap$vungle_ads_release$annotations() {
        }

        @VisibleForTesting
        public static /* synthetic */ void getGET_AVAILABLE_DISK_SPACE$vungle_ads_release$annotations() {
        }

        @VisibleForTesting
        public static /* synthetic */ void getOPEN$vungle_ads_release$annotations() {
        }

        @VisibleForTesting
        public static /* synthetic */ void getOPEN_PRIVACY$vungle_ads_release$annotations() {
        }

        @VisibleForTesting
        public static /* synthetic */ void getPING_URL$vungle_ads_release$annotations() {
        }

        @VisibleForTesting
        public static /* synthetic */ void getSET_ORIENTATION_PROPERTIES$vungle_ads_release$annotations() {
        }

        @VisibleForTesting
        public static /* synthetic */ void getSUCCESSFUL_VIEW$vungle_ads_release$annotations() {
        }

        @VisibleForTesting
        public static /* synthetic */ void getTPAT$vungle_ads_release$annotations() {
        }

        @VisibleForTesting
        public static /* synthetic */ void getUPDATE_SIGNALS$vungle_ads_release$annotations() {
        }

        @VisibleForTesting
        public static /* synthetic */ void getVIDEO_LENGTH$vungle_ads_release$annotations() {
        }

        @VisibleForTesting
        public static /* synthetic */ void getVIDEO_VIEWED$vungle_ads_release$annotations() {
        }
    }

    public MRAIDPresenter(@NotNull MRAIDAdWidget mRAIDAdWidget, @NotNull AdPayload adPayload, @NotNull Placement placement, @NotNull VungleWebClient vungleWebClient, @NotNull Executor executor, @NotNull OMTracker oMTracker, @Nullable BidPayload bidPayload, @NotNull Platform platform) {
        this.adWidget = mRAIDAdWidget;
        this.advertisement = adPayload;
        this.placement = placement;
        this.vungleWebClient = vungleWebClient;
        this.executor = executor;
        this.omTracker = oMTracker;
        this.bidPayload = bidPayload;
        this.platform = platform;
        ServiceLocator.Companion companion = ServiceLocator.Companion;
        final Context context = mRAIDAdWidget.getContext();
        LazyThreadSafetyMode lazyThreadSafetyMode = LazyThreadSafetyMode.SYNCHRONIZED;
        this.vungleApiClient$delegate = LazyKt.lazy(lazyThreadSafetyMode, (Function0) new Function0<VungleApiClient>() { // from class: com.vungle.ads.internal.presenter.MRAIDPresenter$special$$inlined$inject$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Type inference failed for: r0v2, types: [com.vungle.ads.internal.network.VungleApiClient, java.lang.Object] */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final VungleApiClient invoke() {
                return ServiceLocator.Companion.getInstance(context).getService(VungleApiClient.class);
            }
        });
        final Context context2 = mRAIDAdWidget.getContext();
        this.pathProvider$delegate = LazyKt.lazy(lazyThreadSafetyMode, (Function0) new Function0<PathProvider>() { // from class: com.vungle.ads.internal.presenter.MRAIDPresenter$special$$inlined$inject$2
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Type inference failed for: r0v2, types: [java.lang.Object, com.vungle.ads.internal.util.PathProvider] */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final PathProvider invoke() {
                return ServiceLocator.Companion.getInstance(context2).getService(PathProvider.class);
            }
        });
        final Context context3 = mRAIDAdWidget.getContext();
        this.signalManager$delegate = LazyKt.lazy(lazyThreadSafetyMode, (Function0) new Function0<SignalManager>() { // from class: com.vungle.ads.internal.presenter.MRAIDPresenter$special$$inlined$inject$3
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Type inference failed for: r0v2, types: [com.vungle.ads.internal.signals.SignalManager, java.lang.Object] */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final SignalManager invoke() {
                return ServiceLocator.Companion.getInstance(context3).getService(SignalManager.class);
            }
        });
        final Context context4 = mRAIDAdWidget.getContext();
        this.tpatSender$delegate = LazyKt.lazy(lazyThreadSafetyMode, (Function0) new Function0<TpatSender>() { // from class: com.vungle.ads.internal.presenter.MRAIDPresenter$special$$inlined$inject$4
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Type inference failed for: r0v2, types: [com.vungle.ads.internal.network.TpatSender, java.lang.Object] */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final TpatSender invoke() {
                return ServiceLocator.Companion.getInstance(context4).getService(TpatSender.class);
            }
        });
        this.scheduler$delegate = LazyKt.lazy(new Function0<HandlerScheduler>() { // from class: com.vungle.ads.internal.presenter.MRAIDPresenter$scheduler$2
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final HandlerScheduler invoke() {
                return new HandlerScheduler();
            }
        });
        this.logEntry$delegate = LazyKt.lazy(new Function0<LogEntry>() { // from class: com.vungle.ads.internal.presenter.MRAIDPresenter$logEntry$2
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @Nullable
            public final LogEntry invoke() {
                AdPayload adPayload2;
                adPayload2 = MRAIDPresenter.this.advertisement;
                return adPayload2.getLogEntry$vungle_ads_release();
            }
        });
        this.suspendableTimer$delegate = LazyKt.lazy(new Function0<SuspendableTimer>() { // from class: com.vungle.ads.internal.presenter.MRAIDPresenter$suspendableTimer$2
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final SuspendableTimer invoke() {
                final MRAIDPresenter mRAIDPresenter = MRAIDPresenter.this;
                return new SuspendableTimer(6.0d, true, null, new Function0<Unit>() { // from class: com.vungle.ads.internal.presenter.MRAIDPresenter$suspendableTimer$2.1
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
                        MRAIDPresenter.this.reportErrorAndCloseAd(new HeartbeatMissingError());
                    }
                }, 4, null);
            }
        });
        this.clickCoordinateTracker$delegate = LazyKt.lazy(new Function0<ClickCoordinateTracker>() { // from class: com.vungle.ads.internal.presenter.MRAIDPresenter$clickCoordinateTracker$2
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final ClickCoordinateTracker invoke() {
                MRAIDAdWidget mRAIDAdWidget2;
                AdPayload adPayload2;
                mRAIDAdWidget2 = MRAIDPresenter.this.adWidget;
                Context context5 = mRAIDAdWidget2.getContext();
                adPayload2 = MRAIDPresenter.this.advertisement;
                return new ClickCoordinateTracker(context5, adPayload2);
            }
        });
    }

    private final void closeView() {
        Long l = this.adStartTime;
        if (l != null) {
            List<String> tpatUrls = this.advertisement.getTpatUrls(Constants.AD_CLOSE, String.valueOf(System.currentTimeMillis() - l.longValue()), String.valueOf(this.platform.getVolumeLevel()));
            if (tpatUrls != null) {
                for (String str : tpatUrls) {
                    TpatSender.sendTpat$default(getTpatSender(), new TpatRequest.Builder(str).tpatKey(Constants.AD_CLOSE).withLogEntry(getLogEntry()).build(), false, 2, null);
                }
            }
        }
        ThreadUtil.INSTANCE.runOnUiThread(new Function0<Unit>() { // from class: com.vungle.ads.internal.presenter.MRAIDPresenter$closeView$2
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
                MRAIDAdWidget mRAIDAdWidget;
                mRAIDAdWidget = MRAIDPresenter.this.adWidget;
                mRAIDAdWidget.close();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final LogEntry getLogEntry() {
        return (LogEntry) this.logEntry$delegate.getValue();
    }

    private final PathProvider getPathProvider() {
        return (PathProvider) this.pathProvider$delegate.getValue();
    }

    private final HandlerScheduler getScheduler() {
        return (HandlerScheduler) this.scheduler$delegate.getValue();
    }

    private final SignalManager getSignalManager() {
        return (SignalManager) this.signalManager$delegate.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final TpatSender getTpatSender() {
        return (TpatSender) this.tpatSender$delegate.getValue();
    }

    private final VungleApiClient getVungleApiClient() {
        return (VungleApiClient) this.vungleApiClient$delegate.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void handleWebViewException(VungleError vungleError, boolean z, String str) {
        Logger.Companion companion = Logger.Companion;
        companion.e(TAG, "handleWebViewException: " + vungleError.getLocalizedMessage() + ", fatal: " + z + ", errorMsg: " + str);
        vungleError.setLogEntry$vungle_ads_release(getLogEntry()).logErrorNoReturnValue$vungle_ads_release();
        if (z) {
            makeBusError(vungleError);
            closeView();
        }
    }

    public static /* synthetic */ void handleWebViewException$default(MRAIDPresenter mRAIDPresenter, VungleError vungleError, boolean z, String str, int i, Object obj) {
        if ((i & 4) != 0) {
            str = null;
        }
        mRAIDPresenter.handleWebViewException(vungleError, z, str);
    }

    private final VungleError loadMraidAd(File file) {
        File file2 = new File(file.getPath(), Constants.AD_INDEX_FILE_NAME);
        if (!file2.exists()) {
            Sdk.SDKError.Reason reason = Sdk.SDKError.Reason.AD_HTML_FAILED_TO_LOAD;
            return new IndexHtmlError(reason, "Fail to load html " + file2.getPath());
        }
        MRAIDAdWidget mRAIDAdWidget = this.adWidget;
        mRAIDAdWidget.showWebsite(AdPayload.FILE_SCHEME + file2.getPath());
        return null;
    }

    private final void makeBusError(VungleError vungleError) {
        AdEventListener adEventListener = this.bus;
        if (adEventListener != null) {
            adEventListener.onError(vungleError, this.placement.getReferenceId());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: processCommand$lambda-10  reason: not valid java name */
    public static final void m335processCommand$lambda10(final MRAIDPresenter mRAIDPresenter) {
        String referenceId = mRAIDPresenter.placement.getReferenceId();
        Call<Void> ri = mRAIDPresenter.getVungleApiClient().ri(new CommonRequestBody.RequestParam((List) null, (CommonRequestBody.AdSizeParam) null, mRAIDPresenter.adStartTime, mRAIDPresenter.advertisement.advAppId(), referenceId, mRAIDPresenter.userId, 3, (DefaultConstructorMarker) null));
        if (ri == null) {
            Logger.Companion.e(TAG, "Invalid ri call.");
            new NetworkUnreachable("Error RI API for placement: " + mRAIDPresenter.placement.getReferenceId()).setLogEntry$vungle_ads_release(mRAIDPresenter.getLogEntry()).logErrorNoReturnValue$vungle_ads_release();
            return;
        }
        ri.enqueue(new Callback<Void>() { // from class: com.vungle.ads.internal.presenter.MRAIDPresenter$processCommand$7$1
            @Override // com.vungle.ads.internal.network.Callback
            public void onFailure(@Nullable Call<Void> call, @Nullable Throwable th) {
                String str;
                LogEntry logEntry;
                Logger.Companion.d("MRAIDPresenter", "send RI Failure");
                StringBuilder sb = new StringBuilder();
                sb.append("Error RI API calls: ");
                if (th != null) {
                    str = th.getLocalizedMessage();
                } else {
                    str = null;
                }
                sb.append(str);
                NetworkUnreachable networkUnreachable = new NetworkUnreachable(sb.toString());
                logEntry = MRAIDPresenter.this.getLogEntry();
                networkUnreachable.setLogEntry$vungle_ads_release(logEntry).logErrorNoReturnValue$vungle_ads_release();
            }

            @Override // com.vungle.ads.internal.network.Callback
            public void onResponse(@Nullable Call<Void> call, @Nullable Response<Void> response) {
                Logger.Companion.d("MRAIDPresenter", "send RI success");
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: processCommand$lambda-11  reason: not valid java name */
    public static final void m336processCommand$lambda11(MRAIDPresenter mRAIDPresenter) {
        mRAIDPresenter.getSuspendableTimer$vungle_ads_release().reset();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: processCommand$lambda-12  reason: not valid java name */
    public static final void m337processCommand$lambda12(MRAIDPresenter mRAIDPresenter, long j) {
        mRAIDPresenter.vungleWebClient.notifyDiskAvailableSize(j);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: processCommand$lambda-5  reason: not valid java name */
    public static final void m338processCommand$lambda5(MRAIDPresenter mRAIDPresenter) {
        mRAIDPresenter.adWidget.setVisibility(0);
    }

    private final void recordPlayAssetMetric() {
        Sdk.SDKMetric.SDKMetricType sDKMetricType;
        if (this.advertisement.getAssetsFullyDownloaded()) {
            sDKMetricType = Sdk.SDKMetric.SDKMetricType.LOCAL_ASSETS_USED;
        } else {
            sDKMetricType = Sdk.SDKMetric.SDKMetricType.REMOTE_ASSETS_USED;
        }
        AnalyticsClient.logMetric$vungle_ads_release$default(AnalyticsClient.INSTANCE, new SingleValueMetric(sDKMetricType), getLogEntry(), (String) null, 4, (Object) null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void reportErrorAndCloseAd(VungleError vungleError) {
        vungleError.setLogEntry$vungle_ads_release(getLogEntry()).logErrorNoReturnValue$vungle_ads_release();
        makeBusError(vungleError);
        closeView();
    }

    private final void triggerEventMetricForTpat(String str) {
        Sdk.SDKMetric.SDKMetricType sDKMetricType = eventMap.get(str);
        if (sDKMetricType != null) {
            AnalyticsClient.logMetric$vungle_ads_release$default(AnalyticsClient.INSTANCE, new SingleValueMetric(sDKMetricType), getLogEntry(), (String) null, 4, (Object) null);
        }
    }

    public final void detach(@MRAIDAdWidget.AdStopReason int i) {
        boolean z;
        AdEventListener adEventListener;
        Logger.Companion.d(TAG, "detach()");
        boolean z2 = false;
        if ((i & 1) != 0) {
            z = true;
        } else {
            z = false;
        }
        if ((i & 2) != 0) {
            z2 = true;
        }
        this.vungleWebClient.setWebViewObserver(null);
        this.vungleWebClient.setMraidDelegate(null);
        if (!z && z2 && !this.isDestroying.getAndSet(true) && (adEventListener = this.bus) != null) {
            adEventListener.onNext("end", null, this.placement.getReferenceId());
        }
        this.adWidget.destroyWebView(this.omTracker.stop());
        if (this.heartbeatEnabled) {
            getSuspendableTimer$vungle_ads_release().cancel();
        }
    }

    @Nullable
    public final Long getAdStartTime$vungle_ads_release() {
        return this.adStartTime;
    }

    public final boolean getBackEnabled$vungle_ads_release() {
        return this.backEnabled;
    }

    @Nullable
    public final AdEventListener getBus() {
        return this.bus;
    }

    @NotNull
    public final ClickCoordinateTracker getClickCoordinateTracker$vungle_ads_release() {
        return (ClickCoordinateTracker) this.clickCoordinateTracker$delegate.getValue();
    }

    public final boolean getHeartbeatEnabled$vungle_ads_release() {
        return this.heartbeatEnabled;
    }

    public final long getLastUserInteractionTimestamp$vungle_ads_release() {
        return this.lastUserInteractionTimestamp;
    }

    @NotNull
    public final SuspendableTimer getSuspendableTimer$vungle_ads_release() {
        return (SuspendableTimer) this.suspendableTimer$delegate.getValue();
    }

    @Nullable
    public final String getUserId$vungle_ads_release() {
        return this.userId;
    }

    public final long getVideoLength$vungle_ads_release() {
        return this.videoLength;
    }

    @Nullable
    public final Long getViewStatus() {
        boolean z = this.adViewed;
        if (!z && !this.cp0Fired) {
            return 3L;
        }
        if (!this.cp0Fired) {
            return 1L;
        }
        if (!z) {
            return 2L;
        }
        return null;
    }

    public final void handleExit() {
        if (this.backEnabled) {
            this.adWidget.showWebsite("javascript:window.vungle.mraidBridgeExt.requestMRAIDClose()");
        }
    }

    @NotNull
    public final AtomicBoolean isDestroying$vungle_ads_release() {
        return this.isDestroying;
    }

    @Override // com.vungle.ads.internal.ui.view.WebViewAPI.WebClientErrorHandler
    public void onReceivedError(@NotNull String str, boolean z) {
        if (z) {
            reportErrorAndCloseAd(new WebViewError(str));
        }
    }

    @Override // com.vungle.ads.internal.ui.view.WebViewAPI.WebClientErrorHandler
    public void onRenderProcessUnresponsive(@Nullable WebView webView, @Nullable WebViewRenderProcess webViewRenderProcess) {
        handleWebViewException$default(this, new WebViewRenderProcessUnresponsive("fatal=true"), true, null, 4, null);
    }

    public final void onViewConfigurationChanged() {
        this.vungleWebClient.notifyPropertiesChange(true);
    }

    public final void onViewTouched(@Nullable MotionEvent motionEvent) {
        if (motionEvent != null) {
            Logger.Companion.d(TAG, "user interaction");
            this.lastUserInteractionTimestamp = System.currentTimeMillis();
            getClickCoordinateTracker$vungle_ads_release().trackCoordinate(motionEvent);
        }
    }

    @Override // com.vungle.ads.internal.ui.view.WebViewAPI.WebClientErrorHandler
    public boolean onWebRenderingProcessGone(@Nullable WebView webView, @Nullable Boolean bool) {
        boolean z;
        if (bool != null) {
            z = bool.booleanValue();
        } else {
            z = true;
        }
        handleWebViewException$default(this, new WebViewRenderingProcessGone("didCrash=" + z), z, null, 4, null);
        return true;
    }

    public final void prepare() {
        Integer num;
        int i;
        String str;
        boolean z;
        int settings;
        boolean z2;
        this.isDestroying.set(false);
        this.adWidget.linkWebView(this.vungleWebClient, this.advertisement.getWebViewSettings());
        AdConfig adConfig = this.advertisement.getAdConfig();
        if (adConfig != null && (settings = adConfig.getSettings()) > 0) {
            if ((settings & 2) == 2) {
                z2 = true;
            } else {
                z2 = false;
            }
            this.backEnabled = z2;
        }
        this.heartbeatEnabled = this.advertisement.heartbeatEnabled();
        AdConfig adConfig2 = this.advertisement.getAdConfig();
        String str2 = null;
        if (adConfig2 != null) {
            num = Integer.valueOf(adConfig2.getAdOrientation());
        } else {
            num = null;
        }
        if (num != null && num.intValue() == 0) {
            i = 7;
        } else if (num != null && num.intValue() == 1) {
            i = 6;
        } else {
            i = 4;
        }
        this.adWidget.setOrientation(i);
        this.omTracker.start();
        this.vungleWebClient.setMraidDelegate(this);
        this.vungleWebClient.setErrorHandler(this);
        File assetDirectory = this.advertisement.getAssetDirectory();
        if (assetDirectory != null && assetDirectory.exists()) {
            VungleError loadMraidAd = loadMraidAd(assetDirectory);
            if (loadMraidAd != null) {
                reportErrorAndCloseAd(loadMraidAd);
                return;
            }
            this.adStartTime = Long.valueOf(System.currentTimeMillis());
            PresenterDelegate presenterDelegate = this.presenterDelegate;
            if (presenterDelegate != null) {
                str = presenterDelegate.getUserId();
            } else {
                str = null;
            }
            this.userId = str;
            PresenterDelegate presenterDelegate2 = this.presenterDelegate;
            String str3 = (presenterDelegate2 == null || (str3 = presenterDelegate2.getAlertTitleText()) == null) ? "" : "";
            PresenterDelegate presenterDelegate3 = this.presenterDelegate;
            String str4 = (presenterDelegate3 == null || (str4 = presenterDelegate3.getAlertBodyText()) == null) ? "" : "";
            PresenterDelegate presenterDelegate4 = this.presenterDelegate;
            String str5 = (presenterDelegate4 == null || (str5 = presenterDelegate4.getAlertContinueButtonText()) == null) ? "" : "";
            PresenterDelegate presenterDelegate5 = this.presenterDelegate;
            this.advertisement.setIncentivizedText(str3, str4, str5, (presenterDelegate5 == null || (r7 = presenterDelegate5.getAlertCloseButtonText()) == null) ? "" : "");
            ConfigManager configManager = ConfigManager.INSTANCE;
            if (configManager.getGDPRIsCountryDataProtected() && Intrinsics.areEqual("unknown", PrivacyManager.INSTANCE.getConsentStatus())) {
                z = true;
            } else {
                z = false;
            }
            this.vungleWebClient.setConsentStatus(z, configManager.getGDPRConsentTitle(), configManager.getGDPRConsentMessage(), configManager.getGDPRButtonAccept(), configManager.getGDPRButtonDeny());
            if (z) {
                PrivacyManager.INSTANCE.updateGdprConsent("opted_out_by_timeout", "vungle_modal", "");
            }
            int showCloseDelay = this.advertisement.getShowCloseDelay(Boolean.valueOf(this.placement.isRewardedVideo()));
            if (showCloseDelay > 0) {
                getScheduler().schedule(new Runnable() { // from class: com.vungle.ads.internal.presenter.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww
                    @Override // java.lang.Runnable
                    public final void run() {
                        MRAIDPresenter.this.backEnabled = true;
                    }
                }, showCloseDelay);
            } else {
                this.backEnabled = true;
            }
            AdEventListener adEventListener = this.bus;
            if (adEventListener != null) {
                adEventListener.onNext("start", null, this.placement.getReferenceId());
            }
            if (this.heartbeatEnabled) {
                getSuspendableTimer$vungle_ads_release().start();
            }
            if (this.advertisement.adLoadOptimizationEnabled()) {
                recordPlayAssetMetric();
                return;
            }
            return;
        }
        StringBuilder sb = new StringBuilder();
        sb.append("adv dir not exists: ");
        if (assetDirectory != null) {
            str2 = assetDirectory.getPath();
        }
        sb.append(str2);
        reportErrorAndCloseAd(new AdNotLoadedCantPlay(sb.toString()));
    }

    /* JADX WARN: Code restructure failed: missing block: B:100:0x021b, code lost:
        if (r0 == null) goto L84;
     */
    /* JADX WARN: Code restructure failed: missing block: B:101:0x021d, code lost:
        r15 = r0.getDeeplinkUrl();
     */
    /* JADX WARN: Code restructure failed: missing block: B:102:0x0221, code lost:
        r0 = com.vungle.ads.internal.util.JsonUtil.INSTANCE.getContentStringValue(r24, "url");
     */
    /* JADX WARN: Code restructure failed: missing block: B:103:0x022d, code lost:
        if (com.vungle.ads.internal.util.FileUtility.INSTANCE.isValidUrl(r0) != false) goto L87;
     */
    /* JADX WARN: Code restructure failed: missing block: B:104:0x022f, code lost:
        new com.vungle.ads.InvalidCTAUrl("Unable to open CTA Url (" + r0 + ')').setLogEntry$vungle_ads_release(getLogEntry()).logErrorNoReturnValue$vungle_ads_release();
     */
    /* JADX WARN: Code restructure failed: missing block: B:106:0x0259, code lost:
        if (shouldBlockAutoRedirect$vungle_ads_release() == false) goto L91;
     */
    /* JADX WARN: Code restructure failed: missing block: B:107:0x025b, code lost:
        r22.lastUserInteractionTimestamp = 0;
        com.vungle.ads.AnalyticsClient.logMetric$vungle_ads_release$default(com.vungle.ads.AnalyticsClient.INSTANCE, new com.vungle.ads.SingleValueMetric(com.vungle.ads.internal.protos.Sdk.SDKMetric.SDKMetricType.BANNER_AUTO_REDIRECT), getLogEntry(), (java.lang.String) null, 4, (java.lang.Object) null);
     */
    /* JADX WARN: Code restructure failed: missing block: B:108:0x0277, code lost:
        return true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:109:0x0278, code lost:
        r22.lastUserInteractionTimestamp = 0;
        r0 = com.vungle.ads.internal.util.ExternalRouter.launch(r15, r0, r22.adWidget.getContext(), getLogEntry(), new com.vungle.ads.internal.presenter.MRAIDPresenter$processCommand$launched$1(r15, r22));
        r2 = r22.bus;
     */
    /* JADX WARN: Code restructure failed: missing block: B:110:0x0291, code lost:
        if (r2 == null) goto L94;
     */
    /* JADX WARN: Code restructure failed: missing block: B:111:0x0293, code lost:
        r2.onNext("open", "adClick", r22.placement.getReferenceId());
        r2 = kotlin.Unit.INSTANCE;
     */
    /* JADX WARN: Code restructure failed: missing block: B:112:0x02a0, code lost:
        if (r0 == false) goto L98;
     */
    /* JADX WARN: Code restructure failed: missing block: B:113:0x02a2, code lost:
        r0 = r22.bus;
     */
    /* JADX WARN: Code restructure failed: missing block: B:114:0x02a4, code lost:
        if (r0 == null) goto L98;
     */
    /* JADX WARN: Code restructure failed: missing block: B:115:0x02a6, code lost:
        r0.onNext("open", "adLeftApplication", r22.placement.getReferenceId());
        r0 = kotlin.Unit.INSTANCE;
     */
    /* JADX WARN: Code restructure failed: missing block: B:116:0x02b1, code lost:
        return true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:90:0x01fc, code lost:
        if (r23.equals("open") == false) goto L238;
     */
    /* JADX WARN: Code restructure failed: missing block: B:97:0x0211, code lost:
        if (r23.equals(com.vungle.ads.internal.presenter.MRAIDPresenter.OPEN_NON_MRAID) == false) goto L238;
     */
    /* JADX WARN: Code restructure failed: missing block: B:99:0x0215, code lost:
        r0 = r22.advertisement.adUnit();
     */
    /* JADX WARN: Removed duplicated region for block: B:219:0x0512  */
    /* JADX WARN: Removed duplicated region for block: B:227:0x0535 A[LOOP:1: B:225:0x052f->B:227:0x0535, LOOP_END] */
    @Override // com.vungle.ads.internal.ui.view.WebViewAPI.MraidDelegate
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean processCommand(@org.jetbrains.annotations.NotNull java.lang.String r23, @org.jetbrains.annotations.NotNull kotlinx.serialization.json.JsonObject r24) {
        /*
            Method dump skipped, instructions count: 1588
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.vungle.ads.internal.presenter.MRAIDPresenter.processCommand(java.lang.String, kotlinx.serialization.json.JsonObject):boolean");
    }

    public final void setAdStartTime$vungle_ads_release(@Nullable Long l) {
        this.adStartTime = l;
    }

    public final void setAdVisibility(boolean z) {
        this.vungleWebClient.setAdVisibility(z);
    }

    public final void setBackEnabled$vungle_ads_release(boolean z) {
        this.backEnabled = z;
    }

    public final void setBus(@Nullable AdEventListener adEventListener) {
        this.bus = adEventListener;
    }

    public final void setEventListener(@Nullable AdEventListener adEventListener) {
        this.bus = adEventListener;
    }

    public final void setHeartbeatEnabled$vungle_ads_release(boolean z) {
        this.heartbeatEnabled = z;
    }

    public final void setLastUserInteractionTimestamp$vungle_ads_release(long j) {
        this.lastUserInteractionTimestamp = j;
    }

    public final void setPresenterDelegate$vungle_ads_release(@Nullable PresenterDelegate presenterDelegate) {
        this.presenterDelegate = presenterDelegate;
    }

    public final void setUserId$vungle_ads_release(@Nullable String str) {
        this.userId = str;
    }

    public final void setVideoLength$vungle_ads_release(long j) {
        this.videoLength = j;
    }

    public final boolean shouldBlockAutoRedirect$vungle_ads_release() {
        ConfigManager configManager = ConfigManager.INSTANCE;
        if (configManager.allowAutoRedirects() || (this.lastUserInteractionTimestamp != 0 && System.currentTimeMillis() - this.lastUserInteractionTimestamp <= configManager.afterClickDuration())) {
            return false;
        }
        return true;
    }

    public final void start() {
        Logger.Companion.d(TAG, "start()");
        this.adWidget.resumeWeb();
        setAdVisibility(true);
    }

    public final void stop() {
        Logger.Companion.d(TAG, "stop()");
        this.adWidget.pauseWeb();
        setAdVisibility(false);
    }

    @VisibleForTesting
    public static /* synthetic */ void getAdStartTime$vungle_ads_release$annotations() {
    }

    @VisibleForTesting
    public static /* synthetic */ void getBackEnabled$vungle_ads_release$annotations() {
    }

    @VisibleForTesting
    public static /* synthetic */ void getBus$annotations() {
    }

    @VisibleForTesting
    public static /* synthetic */ void getClickCoordinateTracker$vungle_ads_release$annotations() {
    }

    @VisibleForTesting
    public static /* synthetic */ void getHeartbeatEnabled$vungle_ads_release$annotations() {
    }

    @VisibleForTesting
    public static /* synthetic */ void getLastUserInteractionTimestamp$vungle_ads_release$annotations() {
    }

    @VisibleForTesting
    public static /* synthetic */ void getSuspendableTimer$vungle_ads_release$annotations() {
    }

    @VisibleForTesting
    public static /* synthetic */ void getUserId$vungle_ads_release$annotations() {
    }

    @VisibleForTesting
    public static /* synthetic */ void getVideoLength$vungle_ads_release$annotations() {
    }

    @VisibleForTesting
    public static /* synthetic */ void isDestroying$vungle_ads_release$annotations() {
    }
}
