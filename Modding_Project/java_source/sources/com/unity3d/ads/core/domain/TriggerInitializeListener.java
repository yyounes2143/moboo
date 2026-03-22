package com.unity3d.ads.core.domain;

import com.google.firebase.analytics.FirebaseAnalytics;
import com.unity3d.ads.UnityAds;
import kotlin.Metadata;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineDispatcher;
import kotlinx.coroutines.CoroutineScopeKt;
import org.jetbrains.annotations.NotNull;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\b\u0000\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u0016\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\nJ\u0006\u0010\u000b\u001a\u00020\u0006R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\f"}, d2 = {"Lcom/unity3d/ads/core/domain/TriggerInitializeListener;", "", "coroutineDispatcher", "Lkotlinx/coroutines/CoroutineDispatcher;", "(Lkotlinx/coroutines/CoroutineDispatcher;)V", "error", "", "unityAdsInitializationError", "Lcom/unity3d/ads/UnityAds$UnityAdsInitializationError;", "errorMsg", "", FirebaseAnalytics.Param.SUCCESS, "unity-ads_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes6.dex */
public final class TriggerInitializeListener {
    @NotNull
    private final CoroutineDispatcher coroutineDispatcher;

    public TriggerInitializeListener(@NotNull CoroutineDispatcher coroutineDispatcher) {
        this.coroutineDispatcher = coroutineDispatcher;
    }

    public final void error(@NotNull UnityAds.UnityAdsInitializationError unityAdsInitializationError, @NotNull String str) {
        BuildersKt__Builders_commonKt.launch$default(CoroutineScopeKt.CoroutineScope(this.coroutineDispatcher), null, null, new TriggerInitializeListener$error$1(unityAdsInitializationError, str, null), 3, null);
    }

    public final void success() {
        BuildersKt__Builders_commonKt.launch$default(CoroutineScopeKt.CoroutineScope(this.coroutineDispatcher), null, null, new TriggerInitializeListener$success$1(null), 3, null);
    }
}
