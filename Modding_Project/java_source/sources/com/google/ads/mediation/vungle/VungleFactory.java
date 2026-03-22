package com.google.ads.mediation.vungle;

import android.content.Context;
import com.unity3d.ads.core.domain.HandleInvocationsFromAdViewer;
import com.vungle.ads.AdConfig;
import com.vungle.ads.InterstitialAd;
import com.vungle.ads.NativeAd;
import com.vungle.ads.RewardedAd;
import com.vungle.ads.VungleAdSize;
import com.vungle.ads.VungleBannerView;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u001e\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bJ\u001e\u0010\f\u001a\u00020\r2\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\t2\u0006\u0010\u000e\u001a\u00020\u000fJ\u001e\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\t2\u0006\u0010\u000e\u001a\u00020\u000fJ\u0016\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\tJ\u0006\u0010\u0014\u001a\u00020\u000f¨\u0006\u0015"}, d2 = {"Lcom/google/ads/mediation/vungle/VungleFactory;", "", "<init>", "()V", "createBannerAd", "Lcom/vungle/ads/VungleBannerView;", "context", "Landroid/content/Context;", HandleInvocationsFromAdViewer.KEY_PLACEMENT_ID, "", "adSize", "Lcom/vungle/ads/VungleAdSize;", "createInterstitialAd", "Lcom/vungle/ads/InterstitialAd;", "adConfig", "Lcom/vungle/ads/AdConfig;", "createRewardedAd", "Lcom/vungle/ads/RewardedAd;", "createNativeAd", "Lcom/vungle/ads/NativeAd;", "createAdConfig", "liftoffmonetize_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
/* loaded from: classes4.dex */
public final class VungleFactory {
    @NotNull
    public final AdConfig createAdConfig() {
        return new AdConfig();
    }

    @NotNull
    public final VungleBannerView createBannerAd(@NotNull Context context, @NotNull String str, @NotNull VungleAdSize vungleAdSize) {
        return new VungleBannerView(context, str, vungleAdSize);
    }

    @NotNull
    public final InterstitialAd createInterstitialAd(@NotNull Context context, @NotNull String str, @NotNull AdConfig adConfig) {
        return new InterstitialAd(context, str, adConfig);
    }

    @NotNull
    public final NativeAd createNativeAd(@NotNull Context context, @NotNull String str) {
        return new NativeAd(context, str);
    }

    @NotNull
    public final RewardedAd createRewardedAd(@NotNull Context context, @NotNull String str, @NotNull AdConfig adConfig) {
        return new RewardedAd(context, str, adConfig);
    }
}
