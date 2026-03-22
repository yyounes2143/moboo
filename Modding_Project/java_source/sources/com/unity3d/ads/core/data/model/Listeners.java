package com.unity3d.ads.core.data.model;

import com.unity3d.ads.UnityAds;
import com.unity3d.ads.core.domain.HandleInvocationsFromAdViewer;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\bf\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0018\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0007\u001a\u00020\bH\u0016J \u0010\t\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\u0005H\u0016J\u0010\u0010\r\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0010\u0010\u000e\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016¨\u0006\u000f"}, d2 = {"Lcom/unity3d/ads/core/data/model/Listeners;", "", "onClick", "", HandleInvocationsFromAdViewer.KEY_PLACEMENT_ID, "", "onComplete", "state", "Lcom/unity3d/ads/UnityAds$UnityAdsShowCompletionState;", "onError", "error", "Lcom/unity3d/ads/UnityAds$UnityAdsShowError;", "message", "onLeftApplication", "onStart", "unity-ads_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes6.dex */
public interface Listeners {
    void onClick(@NotNull String str);

    void onComplete(@NotNull String str, @NotNull UnityAds.UnityAdsShowCompletionState unityAdsShowCompletionState);

    void onError(@NotNull String str, @NotNull UnityAds.UnityAdsShowError unityAdsShowError, @NotNull String str2);

    void onLeftApplication(@NotNull String str);

    void onStart(@NotNull String str);

    /* compiled from: Proguard */
    @Metadata(k = 3, mv = {1, 8, 0}, xi = 48)
    /* loaded from: classes6.dex */
    public static final class DefaultImpls {
        public static void onClick(@NotNull Listeners listeners, @NotNull String str) {
        }

        public static void onLeftApplication(@NotNull Listeners listeners, @NotNull String str) {
        }

        public static void onStart(@NotNull Listeners listeners, @NotNull String str) {
        }

        public static void onComplete(@NotNull Listeners listeners, @NotNull String str, @NotNull UnityAds.UnityAdsShowCompletionState unityAdsShowCompletionState) {
        }

        public static void onError(@NotNull Listeners listeners, @NotNull String str, @NotNull UnityAds.UnityAdsShowError unityAdsShowError, @NotNull String str2) {
        }
    }
}
