package com.vungle.ads.internal;

import android.content.Context;
import com.appsflyer.AdRevenueScheme;
import com.vungle.ads.VungleAdSize;
import com.vungle.ads.VungleError;
import com.vungle.ads.internal.AdInternal;
import com.vungle.ads.internal.model.AdPayload;
import com.vungle.ads.internal.model.Placement;
import com.vungle.ads.internal.presenter.AdPlayCallback;
import com.vungle.ads.internal.presenter.AdPlayCallbackWrapper;
import com.vungle.ads.internal.util.ViewUtility;
import kotlin.Metadata;
import kotlin.Pair;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0000\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\u0015\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000fH\u0010¢\u0006\u0002\b\u0010J\b\u0010\u0011\u001a\u00020\u0005H\u0016J\u0012\u0010\u0012\u001a\u00020\u00132\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\u0016J\u0010\u0010\u0014\u001a\u00020\u00132\u0006\u0010\u0015\u001a\u00020\u0016H\u0016J\u0015\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u001aH\u0000¢\u0006\u0002\b\u001bR\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u001c\u0010\u0007\u001a\u0004\u0018\u00010\u0005X\u0080\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\b\u0010\t\"\u0004\b\n\u0010\u000b¨\u0006\u001c"}, d2 = {"Lcom/vungle/ads/internal/BannerAdInternal;", "Lcom/vungle/ads/internal/AdInternal;", "context", "Landroid/content/Context;", "adSize", "Lcom/vungle/ads/VungleAdSize;", "(Landroid/content/Context;Lcom/vungle/ads/VungleAdSize;)V", "updatedAdSize", "getUpdatedAdSize$vungle_ads_release", "()Lcom/vungle/ads/VungleAdSize;", "setUpdatedAdSize$vungle_ads_release", "(Lcom/vungle/ads/VungleAdSize;)V", "adLoadedAndUpdateConfigure", "", "advertisement", "Lcom/vungle/ads/internal/model/AdPayload;", "adLoadedAndUpdateConfigure$vungle_ads_release", "getAdSizeForAdRequest", "isValidAdSize", "", "isValidAdTypeForPlacement", AdRevenueScheme.PLACEMENT, "Lcom/vungle/ads/internal/model/Placement;", "wrapCallback", "Lcom/vungle/ads/internal/presenter/AdPlayCallbackWrapper;", "adPlayCallback", "Lcom/vungle/ads/internal/presenter/AdPlayCallback;", "wrapCallback$vungle_ads_release", "vungle-ads_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes6.dex */
public final class BannerAdInternal extends AdInternal {
    @NotNull
    private final VungleAdSize adSize;
    @Nullable
    private VungleAdSize updatedAdSize;

    public BannerAdInternal(@NotNull Context context, @NotNull VungleAdSize vungleAdSize) {
        super(context);
        this.adSize = vungleAdSize;
    }

    @Override // com.vungle.ads.internal.AdInternal
    public void adLoadedAndUpdateConfigure$vungle_ads_release(@NotNull AdPayload adPayload) {
        int width;
        int height;
        super.adLoadedAndUpdateConfigure$vungle_ads_release(adPayload);
        if (!this.adSize.isAdaptiveWidth$vungle_ads_release() && !this.adSize.isAdaptiveHeight$vungle_ads_release()) {
            return;
        }
        Pair<Integer, Integer> deviceWidthAndHeightWithOrientation = ViewUtility.INSTANCE.getDeviceWidthAndHeightWithOrientation(getContext(), 0);
        int intValue = deviceWidthAndHeightWithOrientation.component1().intValue();
        int intValue2 = deviceWidthAndHeightWithOrientation.component2().intValue();
        if (this.adSize.isAdaptiveWidth$vungle_ads_release()) {
            width = adPayload.adWidth();
        } else {
            width = this.adSize.getWidth();
        }
        if (this.adSize.isAdaptiveHeight$vungle_ads_release()) {
            height = adPayload.adHeight();
        } else {
            height = this.adSize.getHeight();
        }
        int min = Math.min(intValue, width);
        int min2 = Math.min(intValue2, height);
        if (this.adSize.isAdaptiveHeight$vungle_ads_release() && this.adSize.getHeight() > 0) {
            min2 = Math.min(this.adSize.getHeight(), min2);
        }
        this.updatedAdSize = new VungleAdSize(min, min2);
    }

    @Override // com.vungle.ads.internal.AdInternal
    @NotNull
    public VungleAdSize getAdSizeForAdRequest() {
        return this.adSize;
    }

    @Nullable
    public final VungleAdSize getUpdatedAdSize$vungle_ads_release() {
        return this.updatedAdSize;
    }

    @Override // com.vungle.ads.internal.AdInternal
    public boolean isValidAdSize(@Nullable VungleAdSize vungleAdSize) {
        if (vungleAdSize != null) {
            return vungleAdSize.isValidSize$vungle_ads_release();
        }
        return false;
    }

    @Override // com.vungle.ads.internal.AdInternal
    public boolean isValidAdTypeForPlacement(@NotNull Placement placement) {
        if (!placement.isBanner() && !placement.isMREC() && !placement.isInline()) {
            return false;
        }
        return true;
    }

    public final void setUpdatedAdSize$vungle_ads_release(@Nullable VungleAdSize vungleAdSize) {
        this.updatedAdSize = vungleAdSize;
    }

    @NotNull
    public final AdPlayCallbackWrapper wrapCallback$vungle_ads_release(@NotNull final AdPlayCallback adPlayCallback) {
        return new AdPlayCallbackWrapper(adPlayCallback) { // from class: com.vungle.ads.internal.BannerAdInternal$wrapCallback$1
            @Override // com.vungle.ads.internal.presenter.AdPlayCallbackWrapper, com.vungle.ads.internal.presenter.AdPlayCallback
            public void onAdEnd(@Nullable String str) {
                this.setAdState(AdInternal.AdState.FINISHED);
                super.onAdEnd(str);
            }

            @Override // com.vungle.ads.internal.presenter.AdPlayCallbackWrapper, com.vungle.ads.internal.presenter.AdPlayCallback
            public void onAdStart(@Nullable String str) {
                this.setAdState(AdInternal.AdState.PLAYING);
                super.onAdStart(str);
            }

            @Override // com.vungle.ads.internal.presenter.AdPlayCallbackWrapper, com.vungle.ads.internal.presenter.AdPlayCallback
            public void onFailure(@NotNull VungleError vungleError) {
                this.setAdState(AdInternal.AdState.ERROR);
                super.onFailure(vungleError);
            }
        };
    }
}
