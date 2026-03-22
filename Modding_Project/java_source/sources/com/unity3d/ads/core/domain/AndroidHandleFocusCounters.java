package com.unity3d.ads.core.domain;

import androidx.annotation.VisibleForTesting;
import com.unity3d.ads.core.data.repository.FocusRepository;
import com.unity3d.ads.core.data.repository.FocusState;
import com.unity3d.ads.core.data.repository.SessionRepository;
import j$.util.concurrent.ConcurrentHashMap;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.time.ComparableTimeMark;
import kotlin.time.Duration;
import kotlin.time.TimeSource;
import kotlinx.coroutines.CoroutineDispatcher;
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.coroutines.flow.FlowKt;
import kotlinx.coroutines.flow.MutableStateFlow;
import kotlinx.coroutines.flow.StateFlowKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000P\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0010\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u00020\u0001B1\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\b\u0012\b\b\u0002\u0010\u000b\u001a\u00020\n¢\u0006\u0004\b\f\u0010\rJ\u0017\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u000f\u001a\u00020\u000eH\u0002¢\u0006\u0004\b\u0011\u0010\u0012J\u0017\u0010\u0013\u001a\u00020\u00102\u0006\u0010\u000f\u001a\u00020\u000eH\u0002¢\u0006\u0004\b\u0013\u0010\u0012J\u0017\u0010\u0016\u001a\u00020\u00102\u0006\u0010\u0015\u001a\u00020\u0014H\u0002¢\u0006\u0004\b\u0016\u0010\u0017J\u0010\u0010\u0018\u001a\u00020\u0010H\u0086\u0002¢\u0006\u0004\b\u0018\u0010\u0019R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0003\u0010\u001aR\u0014\u0010\u0005\u001a\u00020\u00048\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0005\u0010\u001bR\u0014\u0010\u0007\u001a\u00020\u00068\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0007\u0010\u001cR\u0014\u0010\t\u001a\u00020\b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\t\u0010\u001dR\u0014\u0010\u000b\u001a\u00020\n8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000b\u0010\u001eR*\u0010\u001f\u001a\u0004\u0018\u00010\u000e8\u0006@\u0006X\u0087\u000e¢\u0006\u0018\n\u0004\b\u001f\u0010 \u0012\u0004\b$\u0010\u0019\u001a\u0004\b!\u0010\"\"\u0004\b#\u0010\u0012R \u0010'\u001a\u000e\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020&0%8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b'\u0010(R\u001c\u0010*\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00140)8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b*\u0010+¨\u0006,"}, d2 = {"Lcom/unity3d/ads/core/domain/AndroidHandleFocusCounters;", "", "Lcom/unity3d/ads/core/data/repository/SessionRepository;", "sessionRepository", "Lcom/unity3d/ads/core/data/repository/FocusRepository;", "focusRepository", "Lcom/unity3d/ads/core/domain/AndroidGetIsAdActivity;", "isAdActivity", "Lkotlinx/coroutines/CoroutineDispatcher;", "defaultDispatcher", "Lkotlin/time/TimeSource$WithComparableMarks;", "timeSource", "<init>", "(Lcom/unity3d/ads/core/data/repository/SessionRepository;Lcom/unity3d/ads/core/data/repository/FocusRepository;Lcom/unity3d/ads/core/domain/AndroidGetIsAdActivity;Lkotlinx/coroutines/CoroutineDispatcher;Lkotlin/time/TimeSource$WithComparableMarks;)V", "", "activityName", "", "onResume", "(Ljava/lang/String;)V", "onPause", "Lcom/unity3d/ads/core/data/repository/FocusState;", "newState", "onFocusStateChange", "(Lcom/unity3d/ads/core/data/repository/FocusState;)V", "invoke", "()V", "Lcom/unity3d/ads/core/data/repository/SessionRepository;", "Lcom/unity3d/ads/core/data/repository/FocusRepository;", "Lcom/unity3d/ads/core/domain/AndroidGetIsAdActivity;", "Lkotlinx/coroutines/CoroutineDispatcher;", "Lkotlin/time/TimeSource$WithComparableMarks;", "latestKnownActivityResumed", "Ljava/lang/String;", "getLatestKnownActivityResumed", "()Ljava/lang/String;", "setLatestKnownActivityResumed", "getLatestKnownActivityResumed$annotations", "j$/util/concurrent/ConcurrentHashMap", "Lkotlin/time/ComparableTimeMark;", "focusTimesPerActivity", "Lj$/util/concurrent/ConcurrentHashMap;", "Lkotlinx/coroutines/flow/MutableStateFlow;", "previousFocusState", "Lkotlinx/coroutines/flow/MutableStateFlow;", "unity-ads_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nAndroidHandleFocusCounters.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AndroidHandleFocusCounters.kt\ncom/unity3d/ads/core/domain/AndroidHandleFocusCounters\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 StateFlow.kt\nkotlinx/coroutines/flow/StateFlowKt\n*L\n1#1,67:1\n1#2:68\n214#3,5:69\n*S KotlinDebug\n*F\n+ 1 AndroidHandleFocusCounters.kt\ncom/unity3d/ads/core/domain/AndroidHandleFocusCounters\n*L\n46#1:69,5\n*E\n"})
/* loaded from: classes6.dex */
public final class AndroidHandleFocusCounters {
    @NotNull
    private final CoroutineDispatcher defaultDispatcher;
    @NotNull
    private final FocusRepository focusRepository;
    @NotNull
    private final ConcurrentHashMap<String, ComparableTimeMark> focusTimesPerActivity;
    @NotNull
    private final AndroidGetIsAdActivity isAdActivity;
    @Nullable
    private volatile String latestKnownActivityResumed;
    @NotNull
    private final MutableStateFlow<FocusState> previousFocusState;
    @NotNull
    private final SessionRepository sessionRepository;
    @NotNull
    private final TimeSource.WithComparableMarks timeSource;

    public AndroidHandleFocusCounters(@NotNull SessionRepository sessionRepository, @NotNull FocusRepository focusRepository, @NotNull AndroidGetIsAdActivity androidGetIsAdActivity, @NotNull CoroutineDispatcher coroutineDispatcher, @NotNull TimeSource.WithComparableMarks withComparableMarks) {
        this.sessionRepository = sessionRepository;
        this.focusRepository = focusRepository;
        this.isAdActivity = androidGetIsAdActivity;
        this.defaultDispatcher = coroutineDispatcher;
        this.timeSource = withComparableMarks;
        this.focusTimesPerActivity = new ConcurrentHashMap<>();
        this.previousFocusState = StateFlowKt.MutableStateFlow(null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void onFocusStateChange(FocusState focusState) {
        FocusState value;
        FocusState focusState2;
        MutableStateFlow<FocusState> mutableStateFlow = this.previousFocusState;
        do {
            value = mutableStateFlow.getValue();
            focusState2 = value;
        } while (!mutableStateFlow.compareAndSet(value, focusState));
        if (focusState2 != null && focusState.getClass() != focusState2.getClass()) {
            this.sessionRepository.incrementFocusChangeCount();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void onPause(String str) {
        String str2 = this.latestKnownActivityResumed;
        if (str2 != null && !Intrinsics.areEqual(str2, str)) {
            return;
        }
        ComparableTimeMark remove = this.focusTimesPerActivity.remove(str);
        if (remove == null) {
            remove = this.timeSource.markNow();
        }
        this.sessionRepository.addTimeToGlobalAdsFocusTime((int) Duration.m1773getInWholeMillisecondsimpl(remove.mo1752elapsedNowUwyO8pc()));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void onResume(String str) {
        this.latestKnownActivityResumed = str;
        this.focusTimesPerActivity.put(str, this.timeSource.markNow());
    }

    @Nullable
    public final String getLatestKnownActivityResumed() {
        return this.latestKnownActivityResumed;
    }

    public final void invoke() {
        FlowKt.launchIn(FlowKt.onEach(this.focusRepository.getFocusState(), new AndroidHandleFocusCounters$invoke$1(this, null)), CoroutineScopeKt.CoroutineScope(this.defaultDispatcher));
    }

    public final void setLatestKnownActivityResumed(@Nullable String str) {
        this.latestKnownActivityResumed = str;
    }

    public /* synthetic */ AndroidHandleFocusCounters(SessionRepository sessionRepository, FocusRepository focusRepository, AndroidGetIsAdActivity androidGetIsAdActivity, CoroutineDispatcher coroutineDispatcher, TimeSource.WithComparableMarks withComparableMarks, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(sessionRepository, focusRepository, androidGetIsAdActivity, coroutineDispatcher, (i & 16) != 0 ? TimeSource.Monotonic.INSTANCE : withComparableMarks);
    }

    @VisibleForTesting
    public static /* synthetic */ void getLatestKnownActivityResumed$annotations() {
    }
}
