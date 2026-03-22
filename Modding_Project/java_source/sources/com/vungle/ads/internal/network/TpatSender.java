package com.vungle.ads.internal.network;

import androidx.annotation.VisibleForTesting;
import com.vungle.ads.TpatError;
import com.vungle.ads.internal.Constants;
import com.vungle.ads.internal.model.ErrorInfo;
import com.vungle.ads.internal.network.TpatRequest;
import com.vungle.ads.internal.persistence.FilePreferences;
import com.vungle.ads.internal.protos.Sdk;
import com.vungle.ads.internal.signals.SignalManager;
import com.vungle.ads.internal.ui.AdActivity;
import com.vungle.ads.internal.util.Logger;
import com.vungle.ads.internal.util.PathProvider;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.concurrent.Executor;
import java.util.regex.Pattern;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KTypeProjection;
import kotlin.text.Regex;
import kotlinx.serialization.SerializersKt;
import kotlinx.serialization.json.Json;
import kotlinx.serialization.modules.SerializersModule;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000`\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010%\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\t\u0018\u0000 -2\u00020\u0001:\u0001-B1\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0007\u001a\u00020\b\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\n¢\u0006\u0002\u0010\u000bJ\u0014\u0010\u0015\u001a\u000e\u0012\u0004\u0012\u00020\u0017\u0012\u0004\u0012\u00020\u00180\u0016H\u0002J\u0010\u0010\u0019\u001a\u00020\u00172\u0006\u0010\u001a\u001a\u00020\u0017H\u0007J\u0012\u0010\u001b\u001a\u00020\u001c2\b\u0010\u001d\u001a\u0004\u0018\u00010\u0017H\u0002J(\u0010\u001e\u001a\u00020\u001f2\u0006\u0010 \u001a\u00020!2\u0006\u0010\u001a\u001a\u00020\u00172\u0006\u0010\"\u001a\u00020#2\u0006\u0010$\u001a\u00020%H\u0002J\u001a\u0010&\u001a\u0004\u0018\u00010#2\u0006\u0010 \u001a\u00020!2\u0006\u0010\u001a\u001a\u00020\u0017H\u0002J\r\u0010'\u001a\u00020\u001fH\u0000¢\u0006\u0002\b(J\u001c\u0010)\u001a\u00020\u001f2\u0012\u0010*\u001a\u000e\u0012\u0004\u0012\u00020\u0017\u0012\u0004\u0012\u00020\u00180\u0016H\u0002J\u0018\u0010+\u001a\u00020\u001f2\u0006\u0010 \u001a\u00020!2\b\b\u0002\u0010,\u001a\u00020\u001cR\u0011\u0010\u0006\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\rR\u0013\u0010\t\u001a\u0004\u0018\u00010\n¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u000fR\u000e\u0010\u0010\u001a\u00020\u0011X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0001X\u0082\u0004¢\u0006\u0002\n\u0000R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\u0014¨\u0006."}, d2 = {"Lcom/vungle/ads/internal/network/TpatSender;", "", "vungleApiClient", "Lcom/vungle/ads/internal/network/VungleApiClient;", "ioExecutor", "Ljava/util/concurrent/Executor;", "jobExecutor", "pathProvider", "Lcom/vungle/ads/internal/util/PathProvider;", "signalManager", "Lcom/vungle/ads/internal/signals/SignalManager;", "(Lcom/vungle/ads/internal/network/VungleApiClient;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Lcom/vungle/ads/internal/util/PathProvider;Lcom/vungle/ads/internal/signals/SignalManager;)V", "getJobExecutor", "()Ljava/util/concurrent/Executor;", "getSignalManager", "()Lcom/vungle/ads/internal/signals/SignalManager;", "tpatFilePreferences", "Lcom/vungle/ads/internal/persistence/FilePreferences;", "tpatLock", "getVungleApiClient", "()Lcom/vungle/ads/internal/network/VungleApiClient;", "getStoredTpats", "", "", "Lcom/vungle/ads/internal/network/FailedTpat;", "injectSessionIdToUrl", "url", "isPriorityTpat", "", "event", "logTpatError", "", AdActivity.REQUEST_KEY_EXTRA, "Lcom/vungle/ads/internal/network/TpatRequest;", "error", "Lcom/vungle/ads/internal/model/ErrorInfo;", "reason", "Lcom/vungle/ads/internal/protos/Sdk$SDKError$Reason;", "performPriorityRetry", "resendStoredTpats", "resendStoredTpats$vungle_ads_release", "saveStoredTpats", "tpats", "sendTpat", "fromFailedTpat", "Companion", "vungle-ads_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes6.dex */
public final class TpatSender {
    @NotNull
    public static final Companion Companion = new Companion(null);
    @NotNull
    private static final String FAILED_TPATS = "FAILED_TPATS";
    @NotNull
    private static final String TAG = "TpatSender";
    @NotNull
    private final Executor jobExecutor;
    @Nullable
    private final SignalManager signalManager;
    @NotNull
    private final FilePreferences tpatFilePreferences;
    @NotNull
    private final Object tpatLock;
    @NotNull
    private final VungleApiClient vungleApiClient;

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000¨\u0006\u0006"}, d2 = {"Lcom/vungle/ads/internal/network/TpatSender$Companion;", "", "()V", TpatSender.FAILED_TPATS, "", "TAG", "vungle-ads_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes6.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }

    public TpatSender(@NotNull VungleApiClient vungleApiClient, @NotNull Executor executor, @NotNull Executor executor2, @NotNull PathProvider pathProvider, @Nullable SignalManager signalManager) {
        this.vungleApiClient = vungleApiClient;
        this.jobExecutor = executor2;
        this.signalManager = signalManager;
        this.tpatFilePreferences = FilePreferences.Companion.get(executor, pathProvider, FilePreferences.TPAT_FAILED_FILENAME);
        this.tpatLock = new Object();
    }

    private final Map<String, FailedTpat> getStoredTpats() {
        Object m438constructorimpl;
        String string = this.tpatFilePreferences.getString(FAILED_TPATS);
        if (string != null) {
            try {
                Result.Companion companion = Result.Companion;
                Json.Default r1 = Json.Default;
                SerializersModule serializersModule = r1.getSerializersModule();
                KTypeProjection.Companion companion2 = KTypeProjection.Companion;
                m438constructorimpl = Result.m438constructorimpl((Map) r1.decodeFromString(SerializersKt.serializer(serializersModule, Reflection.mutableCollectionType(Reflection.typeOf(Map.class, companion2.invariant(Reflection.typeOf(String.class)), companion2.invariant(Reflection.typeOf(FailedTpat.class))))), string));
            } catch (Throwable th) {
                Result.Companion companion3 = Result.Companion;
                m438constructorimpl = Result.m438constructorimpl(ResultKt.createFailure(th));
            }
            Throwable m441exceptionOrNullimpl = Result.m441exceptionOrNullimpl(m438constructorimpl);
            if (m441exceptionOrNullimpl != null) {
                Logger.Companion companion4 = Logger.Companion;
                companion4.e(TAG, "Failed to decode stored tpats: " + m441exceptionOrNullimpl);
            }
            if (Result.m441exceptionOrNullimpl(m438constructorimpl) != null) {
                m438constructorimpl = new LinkedHashMap();
            }
            Map<String, FailedTpat> map = (Map) m438constructorimpl;
            if (map != null) {
                return map;
            }
        }
        return new LinkedHashMap();
    }

    private final boolean isPriorityTpat(String str) {
        if (!Intrinsics.areEqual(str, Constants.CHECKPOINT_0) && !Intrinsics.areEqual(str, Constants.CLICK_URL) && !Intrinsics.areEqual(str, "impression") && !Intrinsics.areEqual(str, Constants.LOAD_AD)) {
            return false;
        }
        return true;
    }

    private final void logTpatError(TpatRequest tpatRequest, String str, ErrorInfo errorInfo, Sdk.SDKError.Reason reason) {
        String str2 = "tpat key: " + tpatRequest.getTpatKey() + ", error: " + errorInfo.getDescription() + ", errorIsTerminal: " + errorInfo.getErrorIsTerminal() + " url: " + str;
        Logger.Companion.e(TAG, str2);
        new TpatError(reason, str2).setLogEntry$vungle_ads_release(tpatRequest.getLogEntry()).logErrorNoReturnValue$vungle_ads_release();
    }

    /* JADX WARN: Code restructure failed: missing block: B:54:0x0054, code lost:
        if (r2 < r11.getPriorityRetryCount()) goto L23;
     */
    /* JADX WARN: Code restructure failed: missing block: B:55:0x0056, code lost:
        r0 = com.vungle.ads.internal.protos.Sdk.SDKError.Reason.TPAT_RETRY_FAILED;
     */
    /* JADX WARN: Code restructure failed: missing block: B:56:0x0059, code lost:
        r0 = com.vungle.ads.internal.protos.Sdk.SDKError.Reason.TPAT_ERROR;
     */
    /* JADX WARN: Code restructure failed: missing block: B:57:0x005b, code lost:
        logTpatError(r11, r5, r12, r0);
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final com.vungle.ads.internal.model.ErrorInfo performPriorityRetry(com.vungle.ads.internal.network.TpatRequest r11, java.lang.String r12) {
        /*
            r10 = this;
            java.lang.Boolean r0 = r11.getPriorityRetry()
            if (r0 == 0) goto Lb
            boolean r0 = r0.booleanValue()
            goto L13
        Lb:
            java.lang.String r0 = r11.getTpatKey()
            boolean r0 = r10.isPriorityTpat(r0)
        L13:
            com.vungle.ads.internal.ConfigManager r1 = com.vungle.ads.internal.ConfigManager.INSTANCE
            boolean r1 = r1.retryPriorityTPATs()
            r2 = 0
            r3 = 1
            if (r1 == 0) goto L21
            if (r0 == 0) goto L21
            r0 = r3
            goto L22
        L21:
            r0 = r2
        L22:
            com.vungle.ads.internal.network.VungleApiClient r4 = r10.vungleApiClient
            java.util.Map r6 = r11.getHeaders()
            java.lang.String r7 = r11.getBody()
            com.vungle.ads.internal.network.HttpMethod r8 = r11.getMethod()
            com.vungle.ads.internal.util.LogEntry r9 = r11.getLogEntry()
            r5 = r12
            com.vungle.ads.internal.model.ErrorInfo r12 = r4.pingTPAT(r5, r6, r7, r8, r9)
            if (r0 == 0) goto L4e
            if (r12 == 0) goto L4e
            boolean r1 = r12.isRetryCode()
            if (r1 != r3) goto L4e
            int r2 = r2 + 1
            int r1 = r11.getPriorityRetryCount()
            if (r2 < r1) goto L4c
            goto L4e
        L4c:
            r12 = r5
            goto L22
        L4e:
            if (r12 == 0) goto L5e
            int r0 = r11.getPriorityRetryCount()
            if (r2 < r0) goto L59
            com.vungle.ads.internal.protos.Sdk$SDKError$Reason r0 = com.vungle.ads.internal.protos.Sdk.SDKError.Reason.TPAT_RETRY_FAILED
            goto L5b
        L59:
            com.vungle.ads.internal.protos.Sdk$SDKError$Reason r0 = com.vungle.ads.internal.protos.Sdk.SDKError.Reason.TPAT_ERROR
        L5b:
            r10.logTpatError(r11, r5, r12, r0)
        L5e:
            return r12
        */
        throw new UnsupportedOperationException("Method not decompiled: com.vungle.ads.internal.network.TpatSender.performPriorityRetry(com.vungle.ads.internal.network.TpatRequest, java.lang.String):com.vungle.ads.internal.model.ErrorInfo");
    }

    private final void saveStoredTpats(Map<String, FailedTpat> map) {
        Object m438constructorimpl;
        try {
            Result.Companion companion = Result.Companion;
            FilePreferences filePreferences = this.tpatFilePreferences;
            Json.Default r2 = Json.Default;
            SerializersModule serializersModule = r2.getSerializersModule();
            KTypeProjection.Companion companion2 = KTypeProjection.Companion;
            filePreferences.put(FAILED_TPATS, r2.encodeToString(SerializersKt.serializer(serializersModule, Reflection.mutableCollectionType(Reflection.typeOf(Map.class, companion2.invariant(Reflection.typeOf(String.class)), companion2.invariant(Reflection.typeOf(FailedTpat.class))))), map)).apply();
            m438constructorimpl = Result.m438constructorimpl(Unit.INSTANCE);
        } catch (Throwable th) {
            Result.Companion companion3 = Result.Companion;
            m438constructorimpl = Result.m438constructorimpl(ResultKt.createFailure(th));
        }
        if (Result.m441exceptionOrNullimpl(m438constructorimpl) != null) {
            Logger.Companion companion4 = Logger.Companion;
            companion4.e(TAG, "Failed to encode the about to storing tpats: " + map);
        }
    }

    public static /* synthetic */ void sendTpat$default(TpatSender tpatSender, TpatRequest tpatRequest, boolean z, int i, Object obj) {
        if ((i & 2) != 0) {
            z = false;
        }
        tpatSender.sendTpat(tpatRequest, z);
    }

    /* renamed from: sendTpat$lambda-1 */
    public static final void m328sendTpat$lambda1(TpatSender tpatSender, TpatRequest tpatRequest, String str, boolean z) {
        int i;
        FailedTpat failedTpat;
        ErrorInfo performPriorityRetry = tpatSender.performPriorityRetry(tpatRequest, str);
        if (tpatRequest.getRegularRetry()) {
            if (performPriorityRetry != null && performPriorityRetry.getErrorIsTerminal()) {
                return;
            }
            if (performPriorityRetry == null && !z) {
                return;
            }
            synchronized (tpatSender.tpatLock) {
                try {
                    Map<String, FailedTpat> storedTpats = tpatSender.getStoredTpats();
                    FailedTpat failedTpat2 = storedTpats.get(tpatRequest.getUrl());
                    if (failedTpat2 != null) {
                        i = failedTpat2.getRetryAttempt();
                    } else {
                        i = 0;
                    }
                    if (performPriorityRetry == null && i > 0) {
                        storedTpats.remove(tpatRequest.getUrl());
                        tpatSender.saveStoredTpats(storedTpats);
                    } else if (performPriorityRetry != null && i >= tpatRequest.getRegularRetryCount()) {
                        storedTpats.remove(tpatRequest.getUrl());
                        tpatSender.saveStoredTpats(storedTpats);
                        tpatSender.logTpatError(tpatRequest, str, performPriorityRetry, Sdk.SDKError.Reason.TPAT_RETRY_FAILED);
                    } else if (performPriorityRetry != null) {
                        FailedTpat failedTpat3 = storedTpats.get(tpatRequest.getUrl());
                        if (failedTpat3 == null || (failedTpat = FailedTpat.copy$default(failedTpat3, null, null, null, i + 1, 0, null, 55, null)) == null) {
                            failedTpat = new FailedTpat(tpatRequest.getMethod(), tpatRequest.getHeaders(), tpatRequest.getBody(), 1, tpatRequest.getRegularRetryCount(), tpatRequest.getTpatKey());
                        }
                        storedTpats.put(tpatRequest.getUrl(), failedTpat);
                        tpatSender.saveStoredTpats(storedTpats);
                    }
                    Unit unit = Unit.INSTANCE;
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    }

    @NotNull
    public final Executor getJobExecutor() {
        return this.jobExecutor;
    }

    @Nullable
    public final SignalManager getSignalManager() {
        return this.signalManager;
    }

    @NotNull
    public final VungleApiClient getVungleApiClient() {
        return this.vungleApiClient;
    }

    @VisibleForTesting
    @NotNull
    public final String injectSessionIdToUrl(@NotNull String str) {
        String str2;
        SignalManager signalManager = this.signalManager;
        if (signalManager != null) {
            str2 = signalManager.getUuid();
        } else {
            str2 = null;
        }
        if (str2 == null) {
            str2 = "";
        }
        if (str2.length() > 0) {
            return new Regex(Pattern.quote(Constants.SESSION_ID)).replace(str, str2);
        }
        return str;
    }

    public final void resendStoredTpats$vungle_ads_release() {
        for (Map.Entry<String, FailedTpat> entry : getStoredTpats().entrySet()) {
            FailedTpat value = entry.getValue();
            sendTpat(new TpatRequest.Builder(entry.getKey()).regularRetry(true).priorityRetry(false).headers(value.getHeaders()).body(value.getBody()).regularRetryCount(value.getRetryCount()).method(value.getMethod()).tpatKey(value.getTpatKey()).build(), true);
        }
    }

    public final void sendTpat(@NotNull final TpatRequest tpatRequest, final boolean z) {
        final String injectSessionIdToUrl = injectSessionIdToUrl(tpatRequest.getUrl());
        this.jobExecutor.execute(new Runnable() { // from class: com.vungle.ads.internal.network.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww
            @Override // java.lang.Runnable
            public final void run() {
                TpatSender.m328sendTpat$lambda1(TpatSender.this, tpatRequest, injectSessionIdToUrl, z);
            }
        });
    }

    public /* synthetic */ TpatSender(VungleApiClient vungleApiClient, Executor executor, Executor executor2, PathProvider pathProvider, SignalManager signalManager, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(vungleApiClient, executor, executor2, pathProvider, (i & 16) != 0 ? null : signalManager);
    }
}
