package com.vungle.ads;

import android.os.Build;
import androidx.annotation.VisibleForTesting;
import androidx.annotation.WorkerThread;
import com.tencent.vod.flutter.FTXEvent;
import com.vungle.ads.internal.executor.VungleThreadPoolExecutor;
import com.vungle.ads.internal.network.VungleApiClient;
import com.vungle.ads.internal.network.VungleHeader;
import com.vungle.ads.internal.protos.Sdk;
import com.vungle.ads.internal.util.ActivityManager;
import com.vungle.ads.internal.util.LogEntry;
import com.vungle.ads.internal.util.Logger;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.Executors;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000\u008e\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0010\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\bÆ\u0002\u0018\u00002\u00020\u0001:\u0002XYB\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\b\u00109\u001a\u00020:H\u0003J\b\u0010;\u001a\u00020:H\u0003J2\u0010<\u001a\u00020\u001e2\u0006\u0010=\u001a\u00020>2\b\b\u0002\u0010?\u001a\u00020\u00062\n\b\u0002\u0010@\u001a\u0004\u0018\u00010A2\n\b\u0002\u0010B\u001a\u0004\u0018\u00010\bH\u0002J$\u0010C\u001a\u00020\u000b2\u0006\u0010D\u001a\u00020E2\u0006\u0010F\u001a\u00020\b2\n\b\u0002\u0010G\u001a\u0004\u0018\u00010AH\u0002J-\u0010H\u001a\u00020:2\u0006\u00102\u001a\u0002032\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010I\u001a\u00020\u00042\u0006\u0010!\u001a\u00020\"H\u0000¢\u0006\u0002\bJJ)\u0010K\u001a\u00020:2\u0006\u0010D\u001a\u00020E2\u0006\u0010F\u001a\u00020\b2\n\b\u0002\u0010G\u001a\u0004\u0018\u00010AH\u0000¢\u0006\u0002\bLJ$\u0010M\u001a\u00020:2\u0006\u0010D\u001a\u00020E2\u0006\u0010F\u001a\u00020\b2\n\b\u0002\u0010G\u001a\u0004\u0018\u00010AH\u0002J-\u0010N\u001a\u00020:2\u0006\u0010O\u001a\u00020P2\n\b\u0002\u0010@\u001a\u0004\u0018\u00010A2\n\b\u0002\u0010B\u001a\u0004\u0018\u00010\bH\u0000¢\u0006\u0002\bQJ-\u0010N\u001a\u00020:2\u0006\u0010R\u001a\u00020S2\n\b\u0002\u0010@\u001a\u0004\u0018\u00010A2\n\b\u0002\u0010B\u001a\u0004\u0018\u00010\bH\u0000¢\u0006\u0002\bQJ-\u0010N\u001a\u00020:2\u0006\u0010T\u001a\u00020U2\n\b\u0002\u0010@\u001a\u0004\u0018\u00010A2\n\b\u0002\u0010B\u001a\u0004\u0018\u00010\bH\u0000¢\u0006\u0002\bQJ7\u0010N\u001a\u00020:2\u0006\u0010=\u001a\u00020>2\b\b\u0002\u0010?\u001a\u00020\u00062\n\b\u0002\u0010@\u001a\u0004\u0018\u00010A2\n\b\u0002\u0010B\u001a\u0004\u0018\u00010\bH\u0000¢\u0006\u0002\bQJ2\u0010V\u001a\u00020:2\u0006\u0010=\u001a\u00020>2\b\b\u0002\u0010?\u001a\u00020\u00062\n\b\u0002\u0010@\u001a\u0004\u0018\u00010A2\n\b\u0002\u0010B\u001a\u0004\u0018\u00010\bH\u0002J\b\u0010W\u001a\u00020:H\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\bX\u0082T¢\u0006\u0002\n\u0000R\"\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u000b0\n8\u0000X\u0081\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\f\u0010\u0002\u001a\u0004\b\r\u0010\u000eR&\u0010\u000f\u001a\u0004\u0018\u00010\u00108\u0000@\u0000X\u0081\u000e¢\u0006\u0014\n\u0000\u0012\u0004\b\u0011\u0010\u0002\u001a\u0004\b\u0012\u0010\u0013\"\u0004\b\u0014\u0010\u0015R\u001c\u0010\u0016\u001a\u00020\u00178\u0000X\u0081\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\u0018\u0010\u0002\u001a\u0004\b\u0019\u0010\u001aR\u000e\u0010\u001b\u001a\u00020\u001cX\u0082\u000e¢\u0006\u0002\n\u0000R\"\u0010\u001d\u001a\b\u0012\u0004\u0012\u00020\u001e0\n8\u0000X\u0081\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\u001f\u0010\u0002\u001a\u0004\b \u0010\u000eR$\u0010!\u001a\u00020\"8\u0000@\u0000X\u0081\u000e¢\u0006\u0014\n\u0000\u0012\u0004\b#\u0010\u0002\u001a\u0004\b$\u0010%\"\u0004\b&\u0010'R\"\u0010(\u001a\b\u0012\u0004\u0012\u00020\u000b0\n8\u0000X\u0081\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b)\u0010\u0002\u001a\u0004\b*\u0010\u000eR\"\u0010+\u001a\b\u0012\u0004\u0012\u00020\u001e0\n8\u0000X\u0081\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b,\u0010\u0002\u001a\u0004\b-\u0010\u000eR$\u0010.\u001a\u00020\"8\u0000@\u0000X\u0081\u000e¢\u0006\u0014\n\u0000\u0012\u0004\b/\u0010\u0002\u001a\u0004\b0\u0010%\"\u0004\b1\u0010'R&\u00102\u001a\u0004\u0018\u0001038\u0000@\u0000X\u0081\u000e¢\u0006\u0014\n\u0000\u0012\u0004\b4\u0010\u0002\u001a\u0004\b5\u00106\"\u0004\b7\u00108¨\u0006Z"}, d2 = {"Lcom/vungle/ads/AnalyticsClient;", "", "()V", "MAX_BATCH_SIZE", "", "REFRESH_TIME_MILLIS", "", "TAG", "", "errors", "Ljava/util/concurrent/BlockingQueue;", "Lcom/vungle/ads/internal/protos/Sdk$SDKError$Builder;", "getErrors$vungle_ads_release$annotations", "getErrors$vungle_ads_release", "()Ljava/util/concurrent/BlockingQueue;", "executor", "Lcom/vungle/ads/internal/executor/VungleThreadPoolExecutor;", "getExecutor$vungle_ads_release$annotations", "getExecutor$vungle_ads_release", "()Lcom/vungle/ads/internal/executor/VungleThreadPoolExecutor;", "setExecutor$vungle_ads_release", "(Lcom/vungle/ads/internal/executor/VungleThreadPoolExecutor;)V", "isInitialized", "Ljava/util/concurrent/atomic/AtomicBoolean;", "isInitialized$vungle_ads_release$annotations", "isInitialized$vungle_ads_release", "()Ljava/util/concurrent/atomic/AtomicBoolean;", FTXEvent.EVENT_LOG_LEVEL, "Lcom/vungle/ads/AnalyticsClient$LogLevel;", "metrics", "Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$Builder;", "getMetrics$vungle_ads_release$annotations", "getMetrics$vungle_ads_release", "metricsEnabled", "", "getMetricsEnabled$vungle_ads_release$annotations", "getMetricsEnabled$vungle_ads_release", "()Z", "setMetricsEnabled$vungle_ads_release", "(Z)V", "pendingErrors", "getPendingErrors$vungle_ads_release$annotations", "getPendingErrors$vungle_ads_release", "pendingMetrics", "getPendingMetrics$vungle_ads_release$annotations", "getPendingMetrics$vungle_ads_release", "refreshEnabled", "getRefreshEnabled$vungle_ads_release$annotations", "getRefreshEnabled$vungle_ads_release", "setRefreshEnabled$vungle_ads_release", "vungleApiClient", "Lcom/vungle/ads/internal/network/VungleApiClient;", "getVungleApiClient$vungle_ads_release$annotations", "getVungleApiClient$vungle_ads_release", "()Lcom/vungle/ads/internal/network/VungleApiClient;", "setVungleApiClient$vungle_ads_release", "(Lcom/vungle/ads/internal/network/VungleApiClient;)V", "flushErrors", "", "flushMetrics", "genMetric", "metricType", "Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$SDKMetricType;", "metricValue", "logEntry", "Lcom/vungle/ads/internal/util/LogEntry;", "metaData", "genSDKError", "reason", "Lcom/vungle/ads/internal/protos/Sdk$SDKError$Reason;", "message", "entry", "initOrUpdate", "errorLogLevel", "initOrUpdate$vungle_ads_release", "logError", "logError$vungle_ads_release", "logErrorInSameThread", "logMetric", "oneShotTimeIntervalMetric", "Lcom/vungle/ads/OneShotTimeIntervalMetric;", "logMetric$vungle_ads_release", "singleValueMetric", "Lcom/vungle/ads/SingleValueMetric;", "timeIntervalMetric", "Lcom/vungle/ads/TimeIntervalMetric;", "logMetricInSameThread", "report", "LogLevel", "RequestListener", "vungle-ads_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes6.dex */
public final class AnalyticsClient {
    private static final int MAX_BATCH_SIZE = 20;
    private static final long REFRESH_TIME_MILLIS = 5000;
    @NotNull
    private static final String TAG = "AnalyticsClient";
    @Nullable
    private static VungleThreadPoolExecutor executor;
    private static boolean metricsEnabled;
    @Nullable
    private static VungleApiClient vungleApiClient;
    @NotNull
    public static final AnalyticsClient INSTANCE = new AnalyticsClient();
    @NotNull
    private static final BlockingQueue<Sdk.SDKError.Builder> errors = new LinkedBlockingQueue();
    @NotNull
    private static final BlockingQueue<Sdk.SDKMetric.Builder> metrics = new LinkedBlockingQueue();
    @NotNull
    private static final BlockingQueue<Sdk.SDKError.Builder> pendingErrors = new LinkedBlockingQueue();
    @NotNull
    private static final BlockingQueue<Sdk.SDKMetric.Builder> pendingMetrics = new LinkedBlockingQueue();
    @NotNull
    private static LogLevel logLevel = LogLevel.ERROR_LOG_LEVEL_ERROR;
    private static boolean refreshEnabled = true;
    @NotNull
    private static final AtomicBoolean isInitialized = new AtomicBoolean(false);

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\b\n\u0002\b\b\b\u0086\u0001\u0018\u0000 \n2\b\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\nB\u000f\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006j\u0002\b\u0007j\u0002\b\bj\u0002\b\t¨\u0006\u000b"}, d2 = {"Lcom/vungle/ads/AnalyticsClient$LogLevel;", "", "level", "", "(Ljava/lang/String;II)V", "getLevel", "()I", "ERROR_LOG_LEVEL_OFF", "ERROR_LOG_LEVEL_ERROR", "ERROR_LOG_LEVEL_DEBUG", "Companion", "vungle-ads_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes6.dex */
    public enum LogLevel {
        ERROR_LOG_LEVEL_OFF(0),
        ERROR_LOG_LEVEL_ERROR(1),
        ERROR_LOG_LEVEL_DEBUG(2);
        
        @NotNull
        public static final Companion Companion = new Companion(null);
        private final int level;

        /* compiled from: Proguard */
        @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000e\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006¨\u0006\u0007"}, d2 = {"Lcom/vungle/ads/AnalyticsClient$LogLevel$Companion;", "", "()V", "fromValue", "Lcom/vungle/ads/AnalyticsClient$LogLevel;", FTXEvent.EVENT_LOG_LEVEL, "", "vungle-ads_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
        /* loaded from: classes6.dex */
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            @NotNull
            public final LogLevel fromValue(int i) {
                LogLevel logLevel = LogLevel.ERROR_LOG_LEVEL_DEBUG;
                if (i == logLevel.getLevel()) {
                    return logLevel;
                }
                LogLevel logLevel2 = LogLevel.ERROR_LOG_LEVEL_ERROR;
                if (i != logLevel2.getLevel()) {
                    LogLevel logLevel3 = LogLevel.ERROR_LOG_LEVEL_OFF;
                    if (i == logLevel3.getLevel()) {
                        return logLevel3;
                    }
                }
                return logLevel2;
            }

            private Companion() {
            }
        }

        LogLevel(int i) {
            this.level = i;
        }

        public final int getLevel() {
            return this.level;
        }
    }

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\bf\u0018\u00002\u00020\u0001J\b\u0010\u0002\u001a\u00020\u0003H&J\b\u0010\u0004\u001a\u00020\u0003H&¨\u0006\u0005"}, d2 = {"Lcom/vungle/ads/AnalyticsClient$RequestListener;", "", "onFailure", "", "onSuccess", "vungle-ads_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes6.dex */
    public interface RequestListener {
        void onFailure();

        void onSuccess();
    }

    private AnalyticsClient() {
    }

    @WorkerThread
    private final void flushErrors() {
        VungleApiClient vungleApiClient2;
        Logger.Companion companion = Logger.Companion;
        StringBuilder sb = new StringBuilder();
        sb.append("Sending ");
        BlockingQueue<Sdk.SDKError.Builder> blockingQueue = errors;
        sb.append(blockingQueue.size());
        sb.append(" errors");
        companion.d(TAG, sb.toString());
        final LinkedBlockingQueue linkedBlockingQueue = new LinkedBlockingQueue();
        blockingQueue.drainTo(linkedBlockingQueue);
        if (!linkedBlockingQueue.isEmpty() && (vungleApiClient2 = vungleApiClient) != null) {
            vungleApiClient2.reportErrors(linkedBlockingQueue, new RequestListener() { // from class: com.vungle.ads.AnalyticsClient$flushErrors$1
                @Override // com.vungle.ads.AnalyticsClient.RequestListener
                public void onFailure() {
                    Logger.Companion companion2 = Logger.Companion;
                    companion2.d("AnalyticsClient", "Failed to send " + linkedBlockingQueue.size() + " errors");
                    AnalyticsClient.INSTANCE.getErrors$vungle_ads_release().addAll(linkedBlockingQueue);
                }

                @Override // com.vungle.ads.AnalyticsClient.RequestListener
                public void onSuccess() {
                    Logger.Companion companion2 = Logger.Companion;
                    companion2.d("AnalyticsClient", "Sent " + linkedBlockingQueue.size() + " errors");
                }
            });
        }
    }

    @WorkerThread
    private final void flushMetrics() {
        VungleApiClient vungleApiClient2;
        Logger.Companion companion = Logger.Companion;
        StringBuilder sb = new StringBuilder();
        sb.append("Sending ");
        BlockingQueue<Sdk.SDKMetric.Builder> blockingQueue = metrics;
        sb.append(blockingQueue.size());
        sb.append(" metrics");
        companion.d(TAG, sb.toString());
        final LinkedBlockingQueue linkedBlockingQueue = new LinkedBlockingQueue();
        blockingQueue.drainTo(linkedBlockingQueue);
        if (!linkedBlockingQueue.isEmpty() && (vungleApiClient2 = vungleApiClient) != null) {
            vungleApiClient2.reportMetrics(linkedBlockingQueue, new RequestListener() { // from class: com.vungle.ads.AnalyticsClient$flushMetrics$1
                @Override // com.vungle.ads.AnalyticsClient.RequestListener
                public void onFailure() {
                    Logger.Companion companion2 = Logger.Companion;
                    companion2.d("AnalyticsClient", "Failed to send " + linkedBlockingQueue.size() + " metrics");
                    AnalyticsClient.INSTANCE.getMetrics$vungle_ads_release().addAll(linkedBlockingQueue);
                }

                @Override // com.vungle.ads.AnalyticsClient.RequestListener
                public void onSuccess() {
                    Logger.Companion companion2 = Logger.Companion;
                    companion2.d("AnalyticsClient", "Sent " + linkedBlockingQueue.size() + " metrics");
                }
            });
        }
    }

    private final Sdk.SDKMetric.Builder genMetric(Sdk.SDKMetric.SDKMetricType sDKMetricType, long j, LogEntry logEntry, String str) {
        String str2;
        String headerUa;
        long j2;
        String vmVersion$vungle_ads_release;
        Sdk.SDKMetric.Builder value = Sdk.SDKMetric.newBuilder().setType(sDKMetricType).setValue(j);
        String str3 = Build.MANUFACTURER;
        Sdk.SDKMetric.Builder model = value.setMake(str3).setModel(Build.MODEL);
        if (Intrinsics.areEqual("Amazon", str3)) {
            str2 = "amazon";
        } else {
            str2 = "android";
        }
        Sdk.SDKMetric.Builder osVersion = model.setOs(str2).setOsVersion(String.valueOf(Build.VERSION.SDK_INT));
        String str4 = "";
        Sdk.SDKMetric.Builder eventId = osVersion.setPlacementReferenceId((logEntry == null || (r4 = logEntry.getPlacementRefId$vungle_ads_release()) == null) ? "" : "").setCreativeId((logEntry == null || (r4 = logEntry.getCreativeId$vungle_ads_release()) == null) ? "" : "").setEventId((logEntry == null || (r4 = logEntry.getEventId$vungle_ads_release()) == null) ? "" : "");
        if (str == null) {
            str = "";
        }
        Sdk.SDKMetric.Builder meta = eventId.setMeta(str);
        if (logEntry == null || (headerUa = logEntry.getMediationName$vungle_ads_release()) == null) {
            headerUa = VungleHeader.INSTANCE.getHeaderUa();
        }
        Sdk.SDKMetric.Builder adSource = meta.setMediationName(headerUa).setAdSource((logEntry == null || (r4 = logEntry.getAdSource$vungle_ads_release()) == null) ? "" : "");
        if (logEntry != null && (vmVersion$vungle_ads_release = logEntry.getVmVersion$vungle_ads_release()) != null) {
            str4 = vmVersion$vungle_ads_release;
        }
        Sdk.SDKMetric.Builder vmVersion = adSource.setVmVersion(str4);
        if (ActivityManager.Companion.isForeground()) {
            j2 = 0;
        } else {
            j2 = 2;
        }
        return vmVersion.setAppState(j2);
    }

    public static /* synthetic */ Sdk.SDKMetric.Builder genMetric$default(AnalyticsClient analyticsClient, Sdk.SDKMetric.SDKMetricType sDKMetricType, long j, LogEntry logEntry, String str, int i, Object obj) {
        LogEntry logEntry2;
        String str2;
        if ((i & 2) != 0) {
            j = 0;
        }
        long j2 = j;
        if ((i & 4) != 0) {
            logEntry2 = null;
        } else {
            logEntry2 = logEntry;
        }
        if ((i & 8) != 0) {
            str2 = null;
        } else {
            str2 = str;
        }
        return analyticsClient.genMetric(sDKMetricType, j2, logEntry2, str2);
    }

    private final Sdk.SDKError.Builder genSDKError(Sdk.SDKError.Reason reason, String str, LogEntry logEntry) {
        String str2;
        String headerUa;
        long j;
        String vmVersion$vungle_ads_release;
        Sdk.SDKError.Builder newBuilder = Sdk.SDKError.newBuilder();
        String str3 = Build.MANUFACTURER;
        if (Intrinsics.areEqual("Amazon", str3)) {
            str2 = "amazon";
        } else {
            str2 = "android";
        }
        Sdk.SDKError.Builder at = newBuilder.setOs(str2).setOsVersion(String.valueOf(Build.VERSION.SDK_INT)).setMake(str3).setModel(Build.MODEL).setReason(reason).setMessage(str).setAt(System.currentTimeMillis());
        String str4 = "";
        Sdk.SDKError.Builder adSource = at.setPlacementReferenceId((logEntry == null || (r0 = logEntry.getPlacementRefId$vungle_ads_release()) == null) ? "" : "").setCreativeId((logEntry == null || (r0 = logEntry.getCreativeId$vungle_ads_release()) == null) ? "" : "").setEventId((logEntry == null || (r0 = logEntry.getEventId$vungle_ads_release()) == null) ? "" : "").setAdSource((logEntry == null || (r0 = logEntry.getAdSource$vungle_ads_release()) == null) ? "" : "");
        if (logEntry != null && (vmVersion$vungle_ads_release = logEntry.getVmVersion$vungle_ads_release()) != null) {
            str4 = vmVersion$vungle_ads_release;
        }
        Sdk.SDKError.Builder vmVersion = adSource.setVmVersion(str4);
        if (logEntry == null || (headerUa = logEntry.getMediationName$vungle_ads_release()) == null) {
            headerUa = VungleHeader.INSTANCE.getHeaderUa();
        }
        Sdk.SDKError.Builder mediationName = vmVersion.setMediationName(headerUa);
        if (ActivityManager.Companion.isForeground()) {
            j = 0;
        } else {
            j = 2;
        }
        return mediationName.setAppState(j);
    }

    public static /* synthetic */ Sdk.SDKError.Builder genSDKError$default(AnalyticsClient analyticsClient, Sdk.SDKError.Reason reason, String str, LogEntry logEntry, int i, Object obj) {
        if ((i & 4) != 0) {
            logEntry = null;
        }
        return analyticsClient.genSDKError(reason, str, logEntry);
    }

    /* renamed from: initOrUpdate$lambda-1 */
    public static final void m266initOrUpdate$lambda1(VungleThreadPoolExecutor vungleThreadPoolExecutor) {
        vungleThreadPoolExecutor.execute(new Runnable() { // from class: com.vungle.ads.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww
            @Override // java.lang.Runnable
            public final void run() {
                AnalyticsClient.m267initOrUpdate$lambda1$lambda0();
            }
        });
    }

    /* renamed from: initOrUpdate$lambda-1$lambda-0 */
    public static final void m267initOrUpdate$lambda1$lambda0() {
        INSTANCE.report();
    }

    /* renamed from: logError$lambda-2 */
    public static final void m268logError$lambda2(Sdk.SDKError.Reason reason, String str, LogEntry logEntry) {
        INSTANCE.logErrorInSameThread(reason, str, logEntry);
    }

    public static /* synthetic */ void logError$vungle_ads_release$default(AnalyticsClient analyticsClient, Sdk.SDKError.Reason reason, String str, LogEntry logEntry, int i, Object obj) {
        if ((i & 4) != 0) {
            logEntry = null;
        }
        analyticsClient.logError$vungle_ads_release(reason, str, logEntry);
    }

    private final synchronized void logErrorInSameThread(Sdk.SDKError.Reason reason, String str, LogEntry logEntry) {
        if (logLevel == LogLevel.ERROR_LOG_LEVEL_OFF) {
            return;
        }
        try {
            Sdk.SDKError.Builder genSDKError = genSDKError(reason, str, logEntry);
            BlockingQueue<Sdk.SDKError.Builder> blockingQueue = errors;
            blockingQueue.put(genSDKError);
            Logger.Companion companion = Logger.Companion;
            companion.w(TAG, "Logging error: " + reason + " with message: " + str + ", mediation: " + genSDKError.getMediationName());
            if (blockingQueue.size() >= 20) {
                report();
            }
        } catch (Exception e) {
            Logger.Companion.e(TAG, "Cannot logError", e);
        }
    }

    public static /* synthetic */ void logErrorInSameThread$default(AnalyticsClient analyticsClient, Sdk.SDKError.Reason reason, String str, LogEntry logEntry, int i, Object obj) {
        if ((i & 4) != 0) {
            logEntry = null;
        }
        analyticsClient.logErrorInSameThread(reason, str, logEntry);
    }

    /* renamed from: logMetric$lambda-3 */
    public static final void m269logMetric$lambda3(Sdk.SDKMetric.SDKMetricType sDKMetricType, long j, LogEntry logEntry, String str) {
        INSTANCE.logMetricInSameThread(sDKMetricType, j, logEntry, str);
    }

    public static /* synthetic */ void logMetric$vungle_ads_release$default(AnalyticsClient analyticsClient, Sdk.SDKMetric.SDKMetricType sDKMetricType, long j, LogEntry logEntry, String str, int i, Object obj) {
        if ((i & 2) != 0) {
            j = 0;
        }
        analyticsClient.logMetric$vungle_ads_release(sDKMetricType, j, (i & 4) != 0 ? null : logEntry, (i & 8) != 0 ? null : str);
    }

    private final synchronized void logMetricInSameThread(Sdk.SDKMetric.SDKMetricType sDKMetricType, long j, LogEntry logEntry, String str) {
        String str2;
        try {
            try {
                if (!metricsEnabled) {
                    return;
                }
                try {
                    Sdk.SDKMetric.Builder genMetric = genMetric(sDKMetricType, j, logEntry, str);
                    try {
                        BlockingQueue<Sdk.SDKMetric.Builder> blockingQueue = metrics;
                        blockingQueue.put(genMetric);
                        Logger.Companion companion = Logger.Companion;
                        StringBuilder sb = new StringBuilder();
                        sb.append("Logging Metric ");
                        sb.append(sDKMetricType);
                        sb.append(" with value ");
                        sb.append(j);
                        sb.append(" for placement ");
                        if (logEntry != null) {
                            str2 = logEntry.getPlacementRefId$vungle_ads_release();
                        } else {
                            str2 = null;
                        }
                        sb.append(str2);
                        sb.append(" mediation:");
                        sb.append(genMetric.getMediationName());
                        companion.w(TAG, sb.toString());
                        if (blockingQueue.size() >= 20) {
                            report();
                        }
                    } catch (Exception e) {
                        e = e;
                        Logger.Companion.e(TAG, "Cannot logMetrics", e);
                    }
                } catch (Exception e2) {
                    e = e2;
                }
            } catch (Throwable th) {
                th = th;
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }

    public static /* synthetic */ void logMetricInSameThread$default(AnalyticsClient analyticsClient, Sdk.SDKMetric.SDKMetricType sDKMetricType, long j, LogEntry logEntry, String str, int i, Object obj) {
        LogEntry logEntry2;
        String str2;
        if ((i & 2) != 0) {
            j = 0;
        }
        long j2 = j;
        if ((i & 4) != 0) {
            logEntry2 = null;
        } else {
            logEntry2 = logEntry;
        }
        if ((i & 8) != 0) {
            str2 = null;
        } else {
            str2 = str;
        }
        analyticsClient.logMetricInSameThread(sDKMetricType, j2, logEntry2, str2);
    }

    private final synchronized void report() {
        try {
            if (logLevel != LogLevel.ERROR_LOG_LEVEL_OFF && errors.size() > 0) {
                flushErrors();
            }
            if (metricsEnabled && metrics.size() > 0) {
                flushMetrics();
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    @NotNull
    public final BlockingQueue<Sdk.SDKError.Builder> getErrors$vungle_ads_release() {
        return errors;
    }

    @Nullable
    public final VungleThreadPoolExecutor getExecutor$vungle_ads_release() {
        return executor;
    }

    @NotNull
    public final BlockingQueue<Sdk.SDKMetric.Builder> getMetrics$vungle_ads_release() {
        return metrics;
    }

    public final boolean getMetricsEnabled$vungle_ads_release() {
        return metricsEnabled;
    }

    @NotNull
    public final BlockingQueue<Sdk.SDKError.Builder> getPendingErrors$vungle_ads_release() {
        return pendingErrors;
    }

    @NotNull
    public final BlockingQueue<Sdk.SDKMetric.Builder> getPendingMetrics$vungle_ads_release() {
        return pendingMetrics;
    }

    public final boolean getRefreshEnabled$vungle_ads_release() {
        return refreshEnabled;
    }

    @Nullable
    public final VungleApiClient getVungleApiClient$vungle_ads_release() {
        return vungleApiClient;
    }

    public final synchronized void initOrUpdate$vungle_ads_release(@NotNull VungleApiClient vungleApiClient2, @NotNull final VungleThreadPoolExecutor vungleThreadPoolExecutor, int i, boolean z) {
        try {
            logLevel = LogLevel.Companion.fromValue(i);
            metricsEnabled = z;
            if (i == LogLevel.ERROR_LOG_LEVEL_DEBUG.getLevel()) {
                Logger.Companion.enable(true);
            } else if (i == LogLevel.ERROR_LOG_LEVEL_ERROR.getLevel()) {
                Logger.Companion.enable(false);
            } else if (i == LogLevel.ERROR_LOG_LEVEL_OFF.getLevel()) {
                Logger.Companion.enable(false);
            }
            if (isInitialized.getAndSet(true)) {
                Logger.Companion.d(TAG, "AnalyticsClient already initialized");
                return;
            }
            executor = vungleThreadPoolExecutor;
            vungleApiClient = vungleApiClient2;
            try {
                BlockingQueue<Sdk.SDKError.Builder> blockingQueue = pendingErrors;
                if (!blockingQueue.isEmpty()) {
                    blockingQueue.drainTo(errors);
                }
            } catch (Exception e) {
                Logger.Companion.e(TAG, "Failed to add pendingErrors to errors queue.", e);
            }
            try {
                BlockingQueue<Sdk.SDKMetric.Builder> blockingQueue2 = pendingMetrics;
                if (!blockingQueue2.isEmpty()) {
                    blockingQueue2.drainTo(metrics);
                }
            } catch (Exception e2) {
                Logger.Companion.e(TAG, "Failed to add pendingMetrics to metrics queue.", e2);
            }
            if (refreshEnabled) {
                Executors.newSingleThreadScheduledExecutor().scheduleWithFixedDelay(new Runnable() { // from class: com.vungle.ads.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww
                    @Override // java.lang.Runnable
                    public final void run() {
                        AnalyticsClient.m266initOrUpdate$lambda1(VungleThreadPoolExecutor.this);
                    }
                }, 5000L, 5000L, TimeUnit.MILLISECONDS);
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    @NotNull
    public final AtomicBoolean isInitialized$vungle_ads_release() {
        return isInitialized;
    }

    public final synchronized void logError$vungle_ads_release(@NotNull final Sdk.SDKError.Reason reason, @NotNull final String str, @Nullable final LogEntry logEntry) {
        VungleThreadPoolExecutor vungleThreadPoolExecutor;
        try {
            vungleThreadPoolExecutor = executor;
        } catch (Exception e) {
            Logger.Companion companion = Logger.Companion;
            companion.e(TAG, "Cannot logError " + reason + ", " + str + ", " + logEntry, e);
        }
        if (vungleThreadPoolExecutor == null) {
            pendingErrors.put(genSDKError(reason, str, logEntry));
            return;
        }
        if (vungleThreadPoolExecutor != null) {
            vungleThreadPoolExecutor.execute(new Runnable() { // from class: com.vungle.ads.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww
                @Override // java.lang.Runnable
                public final void run() {
                    AnalyticsClient.m268logError$lambda2(Sdk.SDKError.Reason.this, str, logEntry);
                }
            });
        }
    }

    public final synchronized void logMetric$vungle_ads_release(@NotNull Sdk.SDKMetric.SDKMetricType sDKMetricType, final long j, @Nullable final LogEntry logEntry, @Nullable final String str) {
        final Sdk.SDKMetric.SDKMetricType sDKMetricType2;
        VungleThreadPoolExecutor vungleThreadPoolExecutor;
        try {
            try {
                vungleThreadPoolExecutor = executor;
                try {
                } catch (Exception e) {
                    e = e;
                }
            } catch (Throwable th) {
                th = th;
                throw th;
            }
        } catch (Exception e2) {
            e = e2;
            sDKMetricType2 = sDKMetricType;
        } catch (Throwable th2) {
            th = th2;
            throw th;
        }
        if (vungleThreadPoolExecutor == null) {
            pendingMetrics.put(genMetric(sDKMetricType, j, logEntry, str));
            return;
        }
        sDKMetricType2 = sDKMetricType;
        if (vungleThreadPoolExecutor != null) {
            try {
                vungleThreadPoolExecutor.execute(new Runnable() { // from class: com.vungle.ads.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww
                    @Override // java.lang.Runnable
                    public final void run() {
                        AnalyticsClient.m269logMetric$lambda3(Sdk.SDKMetric.SDKMetricType.this, j, logEntry, str);
                    }
                });
            } catch (Exception e3) {
                e = e3;
                j = j;
                logEntry = logEntry;
                str = str;
                Logger.Companion companion = Logger.Companion;
                companion.e(TAG, "Cannot logMetric " + sDKMetricType2 + ", " + j + ", " + logEntry + ", " + str, e);
            }
        }
    }

    public final void setExecutor$vungle_ads_release(@Nullable VungleThreadPoolExecutor vungleThreadPoolExecutor) {
        executor = vungleThreadPoolExecutor;
    }

    public final void setMetricsEnabled$vungle_ads_release(boolean z) {
        metricsEnabled = z;
    }

    public final void setRefreshEnabled$vungle_ads_release(boolean z) {
        refreshEnabled = z;
    }

    public final void setVungleApiClient$vungle_ads_release(@Nullable VungleApiClient vungleApiClient2) {
        vungleApiClient = vungleApiClient2;
    }

    public static /* synthetic */ void logMetric$vungle_ads_release$default(AnalyticsClient analyticsClient, SingleValueMetric singleValueMetric, LogEntry logEntry, String str, int i, Object obj) {
        if ((i & 2) != 0) {
            logEntry = null;
        }
        if ((i & 4) != 0) {
            str = singleValueMetric.getMeta();
        }
        analyticsClient.logMetric$vungle_ads_release(singleValueMetric, logEntry, str);
    }

    public static /* synthetic */ void logMetric$vungle_ads_release$default(AnalyticsClient analyticsClient, TimeIntervalMetric timeIntervalMetric, LogEntry logEntry, String str, int i, Object obj) {
        if ((i & 2) != 0) {
            logEntry = null;
        }
        if ((i & 4) != 0) {
            str = timeIntervalMetric.getMeta();
        }
        analyticsClient.logMetric$vungle_ads_release(timeIntervalMetric, logEntry, str);
    }

    public static /* synthetic */ void logMetric$vungle_ads_release$default(AnalyticsClient analyticsClient, OneShotTimeIntervalMetric oneShotTimeIntervalMetric, LogEntry logEntry, String str, int i, Object obj) {
        if ((i & 2) != 0) {
            logEntry = null;
        }
        if ((i & 4) != 0) {
            str = oneShotTimeIntervalMetric.getMeta();
        }
        analyticsClient.logMetric$vungle_ads_release(oneShotTimeIntervalMetric, logEntry, str);
    }

    public final synchronized void logMetric$vungle_ads_release(@NotNull SingleValueMetric singleValueMetric, @Nullable LogEntry logEntry, @Nullable String str) {
        try {
            try {
                logMetric$vungle_ads_release(singleValueMetric.getMetricType(), singleValueMetric.getValue(), logEntry, str);
            } catch (Throwable th) {
                th = th;
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
            throw th;
        }
    }

    public final synchronized void logMetric$vungle_ads_release(@NotNull TimeIntervalMetric timeIntervalMetric, @Nullable LogEntry logEntry, @Nullable String str) {
        try {
            try {
                logMetric$vungle_ads_release(timeIntervalMetric.getMetricType(), timeIntervalMetric.getValue(), logEntry, str);
            } catch (Throwable th) {
                th = th;
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
            throw th;
        }
    }

    @VisibleForTesting
    public static /* synthetic */ void getErrors$vungle_ads_release$annotations() {
    }

    @VisibleForTesting
    public static /* synthetic */ void getExecutor$vungle_ads_release$annotations() {
    }

    @VisibleForTesting
    public static /* synthetic */ void getMetrics$vungle_ads_release$annotations() {
    }

    @VisibleForTesting
    public static /* synthetic */ void getMetricsEnabled$vungle_ads_release$annotations() {
    }

    @VisibleForTesting
    public static /* synthetic */ void getPendingErrors$vungle_ads_release$annotations() {
    }

    @VisibleForTesting
    public static /* synthetic */ void getPendingMetrics$vungle_ads_release$annotations() {
    }

    @VisibleForTesting
    public static /* synthetic */ void getRefreshEnabled$vungle_ads_release$annotations() {
    }

    @VisibleForTesting
    public static /* synthetic */ void getVungleApiClient$vungle_ads_release$annotations() {
    }

    @VisibleForTesting
    public static /* synthetic */ void isInitialized$vungle_ads_release$annotations() {
    }

    public final synchronized void logMetric$vungle_ads_release(@NotNull OneShotTimeIntervalMetric oneShotTimeIntervalMetric, @Nullable LogEntry logEntry, @Nullable String str) {
        if (!oneShotTimeIntervalMetric.isLogged()) {
            logMetric$vungle_ads_release((TimeIntervalMetric) oneShotTimeIntervalMetric, logEntry, str);
            oneShotTimeIntervalMetric.markLogged();
        }
    }
}
