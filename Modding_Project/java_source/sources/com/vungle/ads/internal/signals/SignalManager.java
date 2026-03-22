package com.vungle.ads.internal.signals;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import androidx.annotation.VisibleForTesting;
import com.unity3d.ads.core.domain.HandleInvocationsFromAdViewer;
import com.vungle.ads.ServiceLocator;
import com.vungle.ads.internal.ConfigManager;
import com.vungle.ads.internal.executor.Executors;
import com.vungle.ads.internal.model.UnclosedAd;
import com.vungle.ads.internal.persistence.FilePreferences;
import com.vungle.ads.internal.session.UnclosedAdDetector;
import com.vungle.ads.internal.util.ActivityManager;
import com.vungle.ads.internal.util.Logger;
import com.vungle.ads.internal.util.PathProvider;
import j$.util.concurrent.ConcurrentHashMap;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Reflection;
import kotlinx.serialization.SerializersKt;
import kotlinx.serialization.json.Json;
import kotlinx.serialization.json.JsonBuilder;
import kotlinx.serialization.json.JsonKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000p\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0015\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u0000 Y2\u00020\u0001:\u0001YB\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005J\u000f\u0010\u0007\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\u0007\u0010\bJ\u000f\u0010\t\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\t\u0010\bJ\u000f\u0010\n\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\n\u0010\bJ\r\u0010\u000b\u001a\u00020\u0006¢\u0006\u0004\b\u000b\u0010\bJ\u0015\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\r\u001a\u00020\f¢\u0006\u0004\b\u000f\u0010\u0010J\r\u0010\u0011\u001a\u00020\u0006¢\u0006\u0004\b\u0011\u0010\bJ\u0015\u0010\u0014\u001a\u00020\u00062\u0006\u0010\u0013\u001a\u00020\u0012¢\u0006\u0004\b\u0014\u0010\u0015J\u0015\u0010\u0016\u001a\u00020\u00062\u0006\u0010\u0013\u001a\u00020\u0012¢\u0006\u0004\b\u0016\u0010\u0015J\u001f\u0010\u0018\u001a\u00020\u00062\b\u0010\u0003\u001a\u0004\u0018\u00010\u00022\u0006\u0010\u0017\u001a\u00020\u000e¢\u0006\u0004\b\u0018\u0010\u0019J\u0017\u0010\u001b\u001a\u00020\u00062\b\u0010\u001a\u001a\u0004\u0018\u00010\f¢\u0006\u0004\b\u001b\u0010\u001cJ\u000f\u0010\u001d\u001a\u0004\u0018\u00010\f¢\u0006\u0004\b\u001d\u0010\u001eJ\u0017\u0010!\u001a\u00020 2\b\u0010\u001f\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b!\u0010\"R\u0017\u0010\u0003\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010#\u001a\u0004\b$\u0010%R\u0014\u0010'\u001a\u00020&8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b'\u0010(R\"\u0010*\u001a\u00020)8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b*\u0010+\u001a\u0004\b,\u0010-\"\u0004\b.\u0010/R\"\u00100\u001a\u00020)8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b0\u0010+\u001a\u0004\b1\u0010-\"\u0004\b2\u0010/R\"\u00103\u001a\u00020)8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b3\u0010+\u001a\u0004\b4\u0010-\"\u0004\b5\u0010/R\"\u00106\u001a\u00020 8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b6\u00107\u001a\u0004\b8\u00109\"\u0004\b:\u0010;R\"\u0010<\u001a\u00020)8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b<\u0010+\u001a\u0004\b=\u0010-\"\u0004\b>\u0010/R(\u0010@\u001a\u00020?8\u0000@\u0000X\u0081\u000e¢\u0006\u0018\n\u0004\b@\u0010A\u0012\u0004\bF\u0010\b\u001a\u0004\bB\u0010C\"\u0004\bD\u0010ER.\u0010H\u001a\u000e\u0012\u0004\u0012\u00020\f\u0012\u0004\u0012\u00020)0G8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bH\u0010I\u001a\u0004\bJ\u0010K\"\u0004\bL\u0010MR\u001b\u0010S\u001a\u00020N8FX\u0086\u0084\u0002¢\u0006\f\n\u0004\bO\u0010P\u001a\u0004\bQ\u0010RR\u0016\u0010U\u001a\u00020T8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bU\u0010VR\u0011\u0010X\u001a\u00020\f8F¢\u0006\u0006\u001a\u0004\bW\u0010\u001e¨\u0006^²\u0006\f\u0010[\u001a\u00020Z8\nX\u008a\u0084\u0002²\u0006\f\u0010]\u001a\u00020\\8\nX\u008a\u0084\u0002"}, d2 = {"Lcom/vungle/ads/internal/signals/SignalManager;", "", "Landroid/content/Context;", "context", "<init>", "(Landroid/content/Context;)V", "", "updateSessionCount", "()V", "registerNotifications", "updateSessionDuration", "createNewSessionData", "", HandleInvocationsFromAdViewer.KEY_PLACEMENT_ID, "Lcom/vungle/ads/internal/signals/SignaledAd;", "getSignaledAd", "(Ljava/lang/String;)Lcom/vungle/ads/internal/signals/SignaledAd;", "increaseSessionDepthCounter", "Lcom/vungle/ads/internal/model/UnclosedAd;", "unclosedAd", "recordUnclosedAd", "(Lcom/vungle/ads/internal/model/UnclosedAd;)V", "removeUnclosedAd", "signaledAd", "registerSignaledAd", "(Landroid/content/Context;Lcom/vungle/ads/internal/signals/SignaledAd;)V", "signals", "updateTemplateSignals", "(Ljava/lang/String;)V", "generateSignals", "()Ljava/lang/String;", "ctx", "", "screenOrientation", "(Landroid/content/Context;)I", "Landroid/content/Context;", "getContext", "()Landroid/content/Context;", "Lkotlinx/serialization/json/Json;", "json", "Lkotlinx/serialization/json/Json;", "", "enterBackgroundTime", "J", "getEnterBackgroundTime", "()J", "setEnterBackgroundTime", "(J)V", "enterForegroundTime", "getEnterForegroundTime", "setEnterForegroundTime", "sessionDuration", "getSessionDuration", "setSessionDuration", "sessionCount", "I", "getSessionCount", "()I", "setSessionCount", "(I)V", "sessionSeriesCreatedTime", "getSessionSeriesCreatedTime", "setSessionSeriesCreatedTime", "Lcom/vungle/ads/internal/signals/SessionData;", "currentSession", "Lcom/vungle/ads/internal/signals/SessionData;", "getCurrentSession$vungle_ads_release", "()Lcom/vungle/ads/internal/signals/SessionData;", "setCurrentSession$vungle_ads_release", "(Lcom/vungle/ads/internal/signals/SessionData;)V", "getCurrentSession$vungle_ads_release$annotations", "j$/util/concurrent/ConcurrentHashMap", "mapOfLastLoadTimes", "Lj$/util/concurrent/ConcurrentHashMap;", "getMapOfLastLoadTimes", "()Lj$/util/concurrent/ConcurrentHashMap;", "setMapOfLastLoadTimes", "(Lj$/util/concurrent/ConcurrentHashMap;)V", "Lcom/vungle/ads/internal/persistence/FilePreferences;", "filePreferences$delegate", "Lkotlin/Lazy;", "getFilePreferences", "()Lcom/vungle/ads/internal/persistence/FilePreferences;", "filePreferences", "Lcom/vungle/ads/internal/session/UnclosedAdDetector;", "unclosedAdDetector", "Lcom/vungle/ads/internal/session/UnclosedAdDetector;", "getUuid", "uuid", "Companion", "Lcom/vungle/ads/internal/executor/Executors;", "executors", "Lcom/vungle/ads/internal/util/PathProvider;", "pathProvider", "vungle-ads_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes6.dex */
public final class SignalManager {
    @NotNull
    public static final Companion Companion = new Companion(null);
    @NotNull
    public static final String SESSION_COUNT_KEY = "vungle_signal_session_count";
    private static final int SESSION_COUNT_NOT_SET = -1;
    @NotNull
    public static final String SESSION_TIME_KEY = "vungle_signal_session_creation_time";
    public static final int SIGNAL_VERSION = 1;
    @NotNull
    private static final String TAG = "SignalManager";
    public static final long TWENTY_FOUR_HOURS_MILLIS = 86400000;
    @NotNull
    private final Context context;
    @NotNull
    private SessionData currentSession;
    private long enterBackgroundTime;
    @NotNull
    private final Lazy filePreferences$delegate;
    private long sessionDuration;
    private long sessionSeriesCreatedTime;
    @NotNull
    private UnclosedAdDetector unclosedAdDetector;
    @NotNull
    private final Json json = JsonKt.Json$default(null, new Function1<JsonBuilder, Unit>() { // from class: com.vungle.ads.internal.signals.SignalManager$json$1
        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Unit invoke(JsonBuilder jsonBuilder) {
            invoke2(jsonBuilder);
            return Unit.INSTANCE;
        }

        /* renamed from: invoke  reason: avoid collision after fix types in other method */
        public final void invoke2(@NotNull JsonBuilder jsonBuilder) {
            jsonBuilder.setIgnoreUnknownKeys(true);
            jsonBuilder.setEncodeDefaults(true);
            jsonBuilder.setExplicitNulls(false);
        }
    }, 1, null);
    private long enterForegroundTime = System.currentTimeMillis();
    private int sessionCount = -1;
    @NotNull
    private ConcurrentHashMap<String, Long> mapOfLastLoadTimes = new ConcurrentHashMap<>();

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0010\t\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\u0006X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0086T¢\u0006\u0002\n\u0000¨\u0006\f"}, d2 = {"Lcom/vungle/ads/internal/signals/SignalManager$Companion;", "", "()V", "SESSION_COUNT_KEY", "", "SESSION_COUNT_NOT_SET", "", "SESSION_TIME_KEY", "SIGNAL_VERSION", "TAG", "TWENTY_FOUR_HOURS_MILLIS", "", "vungle-ads_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes6.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }

    public SignalManager(@NotNull final Context context) {
        this.context = context;
        ServiceLocator.Companion companion = ServiceLocator.Companion;
        LazyThreadSafetyMode lazyThreadSafetyMode = LazyThreadSafetyMode.SYNCHRONIZED;
        this.filePreferences$delegate = LazyKt.lazy(lazyThreadSafetyMode, (Function0) new Function0<FilePreferences>() { // from class: com.vungle.ads.internal.signals.SignalManager$special$$inlined$inject$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Type inference failed for: r0v2, types: [com.vungle.ads.internal.persistence.FilePreferences, java.lang.Object] */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final FilePreferences invoke() {
                return ServiceLocator.Companion.getInstance(context).getService(FilePreferences.class);
            }
        });
        registerNotifications();
        this.sessionSeriesCreatedTime = getFilePreferences().getLong(SESSION_TIME_KEY, -1L);
        updateSessionCount();
        this.currentSession = new SessionData(this.sessionCount);
        UnclosedAdDetector unclosedAdDetector = new UnclosedAdDetector(context, this.currentSession.getSessionId(), m345_init_$lambda0(LazyKt.lazy(lazyThreadSafetyMode, (Function0) new Function0<Executors>() { // from class: com.vungle.ads.internal.signals.SignalManager$special$$inlined$inject$2
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
        })), m346_init_$lambda1(LazyKt.lazy(lazyThreadSafetyMode, (Function0) new Function0<PathProvider>() { // from class: com.vungle.ads.internal.signals.SignalManager$special$$inlined$inject$3
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Type inference failed for: r0v2, types: [java.lang.Object, com.vungle.ads.internal.util.PathProvider] */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final PathProvider invoke() {
                return ServiceLocator.Companion.getInstance(context).getService(PathProvider.class);
            }
        })));
        this.unclosedAdDetector = unclosedAdDetector;
        this.currentSession.setUnclosedAd(unclosedAdDetector.retrieveUnclosedAd());
    }

    /* renamed from: _init_$lambda-0  reason: not valid java name */
    private static final Executors m345_init_$lambda0(Lazy<? extends Executors> lazy) {
        return lazy.getValue();
    }

    /* renamed from: _init_$lambda-1  reason: not valid java name */
    private static final PathProvider m346_init_$lambda1(Lazy<PathProvider> lazy) {
        return lazy.getValue();
    }

    private final void registerNotifications() {
        ActivityManager.Companion.addLifecycleListener(new ActivityManager.LifeCycleCallback() { // from class: com.vungle.ads.internal.signals.SignalManager$registerNotifications$1
            @Override // com.vungle.ads.internal.util.ActivityManager.LifeCycleCallback
            public void onBackground() {
                Logger.Companion.d("SignalManager", "SignalManager#onBackground()");
                SignalManager.this.setEnterBackgroundTime(System.currentTimeMillis());
                SignalManager signalManager = SignalManager.this;
                signalManager.setSessionDuration(signalManager.getSessionDuration() + (SignalManager.this.getEnterBackgroundTime() - SignalManager.this.getEnterForegroundTime()));
            }

            @Override // com.vungle.ads.internal.util.ActivityManager.LifeCycleCallback
            public void onForeground() {
                Logger.Companion.d("SignalManager", "SignalManager#onForeground()");
                long currentTimeMillis = System.currentTimeMillis();
                if (currentTimeMillis - SignalManager.this.getEnterBackgroundTime() > ConfigManager.INSTANCE.getSignalsSessionTimeout()) {
                    SignalManager.this.createNewSessionData();
                }
                SignalManager.this.setEnterForegroundTime(currentTimeMillis);
                SignalManager.this.setEnterBackgroundTime(0L);
            }
        });
    }

    private final void updateSessionCount() {
        if (this.sessionCount == -1) {
            this.sessionCount = getFilePreferences().getInt(SESSION_COUNT_KEY, 0);
        }
        long currentTimeMillis = System.currentTimeMillis();
        long j = this.sessionSeriesCreatedTime;
        long j2 = currentTimeMillis - j;
        if (j >= 0 && j2 < TWENTY_FOUR_HOURS_MILLIS) {
            this.sessionCount++;
        } else {
            this.sessionCount = 1;
            getFilePreferences().put(SESSION_TIME_KEY, currentTimeMillis);
            this.sessionSeriesCreatedTime = currentTimeMillis;
        }
        getFilePreferences().put(SESSION_COUNT_KEY, this.sessionCount);
        getFilePreferences().apply();
    }

    private final void updateSessionDuration() {
        this.currentSession.setSessionDuration((this.sessionDuration + System.currentTimeMillis()) - this.enterForegroundTime);
    }

    public final void createNewSessionData() {
        updateSessionCount();
        this.currentSession = new SessionData(this.sessionCount);
    }

    @Nullable
    public final String generateSignals() {
        updateSessionDuration();
        try {
            StringBuilder sb = new StringBuilder();
            sb.append("1:");
            Json json = this.json;
            sb.append(json.encodeToString(SerializersKt.serializer(json.getSerializersModule(), Reflection.typeOf(SessionData.class)), this.currentSession));
            return sb.toString();
        } catch (Error | Exception unused) {
            return null;
        }
    }

    @NotNull
    public final Context getContext() {
        return this.context;
    }

    @NotNull
    public final SessionData getCurrentSession$vungle_ads_release() {
        return this.currentSession;
    }

    public final long getEnterBackgroundTime() {
        return this.enterBackgroundTime;
    }

    public final long getEnterForegroundTime() {
        return this.enterForegroundTime;
    }

    @NotNull
    public final FilePreferences getFilePreferences() {
        return (FilePreferences) this.filePreferences$delegate.getValue();
    }

    @NotNull
    public final ConcurrentHashMap<String, Long> getMapOfLastLoadTimes() {
        return this.mapOfLastLoadTimes;
    }

    public final int getSessionCount() {
        return this.sessionCount;
    }

    public final long getSessionDuration() {
        return this.sessionDuration;
    }

    public final long getSessionSeriesCreatedTime() {
        return this.sessionSeriesCreatedTime;
    }

    @NotNull
    public final synchronized SignaledAd getSignaledAd(@NotNull String str) {
        long currentTimeMillis;
        Long l;
        try {
            currentTimeMillis = System.currentTimeMillis();
            if (this.mapOfLastLoadTimes.containsKey(str)) {
                l = this.mapOfLastLoadTimes.get(str);
            } else {
                l = null;
            }
            this.mapOfLastLoadTimes.put(str, Long.valueOf(currentTimeMillis));
        } catch (Throwable th) {
            throw th;
        }
        return new SignaledAd(l, currentTimeMillis);
    }

    @NotNull
    public final String getUuid() {
        return this.currentSession.getSessionId();
    }

    public final synchronized void increaseSessionDepthCounter() {
        SessionData sessionData = this.currentSession;
        sessionData.setSessionDepthCounter(sessionData.getSessionDepthCounter() + 1);
    }

    public final void recordUnclosedAd(@NotNull UnclosedAd unclosedAd) {
        if (ConfigManager.INSTANCE.signalsDisabled()) {
            return;
        }
        this.unclosedAdDetector.addUnclosedAd(unclosedAd);
    }

    public final void registerSignaledAd(@Nullable Context context, @NotNull SignaledAd signaledAd) {
        this.currentSession.getSignaledAd().clear();
        this.currentSession.getSignaledAd().add(signaledAd);
        this.currentSession.getSignaledAd().get(0).setScreenOrientation(screenOrientation(context));
    }

    public final void removeUnclosedAd(@NotNull UnclosedAd unclosedAd) {
        if (ConfigManager.INSTANCE.signalsDisabled()) {
            return;
        }
        this.unclosedAdDetector.removeUnclosedAd(unclosedAd);
    }

    public final int screenOrientation(@Nullable Context context) {
        Integer num;
        Configuration configuration;
        if (context == null) {
            context = this.context;
        }
        Resources resources = context.getResources();
        if (resources != null && (configuration = resources.getConfiguration()) != null) {
            num = Integer.valueOf(configuration.orientation);
        } else {
            num = null;
        }
        if (num != null && num.intValue() == 2) {
            return 2;
        }
        if (num != null && num.intValue() == 1) {
            return 1;
        }
        if (num != null && num.intValue() == 0) {
            return 0;
        }
        return -1;
    }

    public final void setCurrentSession$vungle_ads_release(@NotNull SessionData sessionData) {
        this.currentSession = sessionData;
    }

    public final void setEnterBackgroundTime(long j) {
        this.enterBackgroundTime = j;
    }

    public final void setEnterForegroundTime(long j) {
        this.enterForegroundTime = j;
    }

    public final void setMapOfLastLoadTimes(@NotNull ConcurrentHashMap<String, Long> concurrentHashMap) {
        this.mapOfLastLoadTimes = concurrentHashMap;
    }

    public final void setSessionCount(int i) {
        this.sessionCount = i;
    }

    public final void setSessionDuration(long j) {
        this.sessionDuration = j;
    }

    public final void setSessionSeriesCreatedTime(long j) {
        this.sessionSeriesCreatedTime = j;
    }

    public final void updateTemplateSignals(@Nullable String str) {
        if (str != null && str.length() != 0 && !this.currentSession.getSignaledAd().isEmpty()) {
            this.currentSession.getSignaledAd().get(0).setTemplateSignals(str);
        }
    }

    @VisibleForTesting(otherwise = 2)
    public static /* synthetic */ void getCurrentSession$vungle_ads_release$annotations() {
    }
}
