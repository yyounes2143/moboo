package com.vungle.ads.internal;

import android.content.Context;
import com.appsflyer.AdRevenueScheme;
import com.google.ads.mediation.vungle.VungleConstants;
import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import com.vungle.ads.internal.model.AdPayload;
import com.vungle.ads.internal.model.Placement;
import com.vungle.ads.internal.presenter.AdPlayCallback;
import com.vungle.ads.internal.presenter.PresenterDelegate;
import com.vungle.ads.internal.ui.AdActivity;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0016\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0000\u0018\u00002\u00020\u00012\u00020\u0002B\r\u0012\u0006\u0010\u0003\u001a\u00020\u0004¢\u0006\u0002\u0010\u0005J\n\u0010\u0018\u001a\u0004\u0018\u00010\u0007H\u0016J\n\u0010\u0019\u001a\u0004\u0018\u00010\u0007H\u0016J\n\u0010\u001a\u001a\u0004\u0018\u00010\u0007H\u0016J\n\u0010\u001b\u001a\u0004\u0018\u00010\u0007H\u0016J\n\u0010\u001c\u001a\u0004\u0018\u00010\u0007H\u0016J\u0010\u0010\u001d\u001a\u00020\u001e2\u0006\u0010\u001f\u001a\u00020 H\u0016J\u001f\u0010!\u001a\u00020\"2\b\u0010#\u001a\u0004\u0018\u00010$2\u0006\u0010%\u001a\u00020&H\u0010¢\u0006\u0002\b'R\u001c\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0080\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\b\u0010\t\"\u0004\b\n\u0010\u000bR\u001c\u0010\f\u001a\u0004\u0018\u00010\u0007X\u0080\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\r\u0010\t\"\u0004\b\u000e\u0010\u000bR\u001c\u0010\u000f\u001a\u0004\u0018\u00010\u0007X\u0080\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0010\u0010\t\"\u0004\b\u0011\u0010\u000bR\u001c\u0010\u0012\u001a\u0004\u0018\u00010\u0007X\u0080\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0013\u0010\t\"\u0004\b\u0014\u0010\u000bR\u001c\u0010\u0015\u001a\u0004\u0018\u00010\u0007X\u0080\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0016\u0010\t\"\u0004\b\u0017\u0010\u000b¨\u0006("}, d2 = {"Lcom/vungle/ads/internal/RewardedAdInternal;", "Lcom/vungle/ads/internal/FullscreenAdInternal;", "Lcom/vungle/ads/internal/presenter/PresenterDelegate;", "context", "Landroid/content/Context;", "(Landroid/content/Context;)V", "alertBodyText", "", "getAlertBodyText$vungle_ads_release", "()Ljava/lang/String;", "setAlertBodyText$vungle_ads_release", "(Ljava/lang/String;)V", "alertCloseButtonText", "getAlertCloseButtonText$vungle_ads_release", "setAlertCloseButtonText$vungle_ads_release", "alertContinueButtonText", "getAlertContinueButtonText$vungle_ads_release", "setAlertContinueButtonText$vungle_ads_release", "alertTitleText", "getAlertTitleText$vungle_ads_release", "setAlertTitleText$vungle_ads_release", VungleConstants.KEY_USER_ID, "getUserId$vungle_ads_release", "setUserId$vungle_ads_release", "getAlertBodyText", "getAlertCloseButtonText", "getAlertContinueButtonText", "getAlertTitleText", "getUserId", "isValidAdTypeForPlacement", "", AdRevenueScheme.PLACEMENT, "Lcom/vungle/ads/internal/model/Placement;", "renderAd", "", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, "Lcom/vungle/ads/internal/presenter/AdPlayCallback;", "advertisement", "Lcom/vungle/ads/internal/model/AdPayload;", "renderAd$vungle_ads_release", "vungle-ads_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes6.dex */
public final class RewardedAdInternal extends FullscreenAdInternal implements PresenterDelegate {
    @Nullable
    private String alertBodyText;
    @Nullable
    private String alertCloseButtonText;
    @Nullable
    private String alertContinueButtonText;
    @Nullable
    private String alertTitleText;
    @Nullable
    private String userId;

    public RewardedAdInternal(@NotNull Context context) {
        super(context);
    }

    @Override // com.vungle.ads.internal.presenter.PresenterDelegate
    @Nullable
    public String getAlertBodyText() {
        return this.alertBodyText;
    }

    @Nullable
    public final String getAlertBodyText$vungle_ads_release() {
        return this.alertBodyText;
    }

    @Override // com.vungle.ads.internal.presenter.PresenterDelegate
    @Nullable
    public String getAlertCloseButtonText() {
        return this.alertCloseButtonText;
    }

    @Nullable
    public final String getAlertCloseButtonText$vungle_ads_release() {
        return this.alertCloseButtonText;
    }

    @Override // com.vungle.ads.internal.presenter.PresenterDelegate
    @Nullable
    public String getAlertContinueButtonText() {
        return this.alertContinueButtonText;
    }

    @Nullable
    public final String getAlertContinueButtonText$vungle_ads_release() {
        return this.alertContinueButtonText;
    }

    @Override // com.vungle.ads.internal.presenter.PresenterDelegate
    @Nullable
    public String getAlertTitleText() {
        return this.alertTitleText;
    }

    @Nullable
    public final String getAlertTitleText$vungle_ads_release() {
        return this.alertTitleText;
    }

    @Override // com.vungle.ads.internal.presenter.PresenterDelegate
    @Nullable
    public String getUserId() {
        return this.userId;
    }

    @Nullable
    public final String getUserId$vungle_ads_release() {
        return this.userId;
    }

    @Override // com.vungle.ads.internal.AdInternal
    public boolean isValidAdTypeForPlacement(@NotNull Placement placement) {
        return placement.isRewardedVideo();
    }

    @Override // com.vungle.ads.internal.AdInternal
    public void renderAd$vungle_ads_release(@Nullable AdPlayCallback adPlayCallback, @NotNull AdPayload adPayload) {
        AdActivity.Companion.setPresenterDelegate$vungle_ads_release(this);
        super.renderAd$vungle_ads_release(adPlayCallback, adPayload);
    }

    public final void setAlertBodyText$vungle_ads_release(@Nullable String str) {
        this.alertBodyText = str;
    }

    public final void setAlertCloseButtonText$vungle_ads_release(@Nullable String str) {
        this.alertCloseButtonText = str;
    }

    public final void setAlertContinueButtonText$vungle_ads_release(@Nullable String str) {
        this.alertContinueButtonText = str;
    }

    public final void setAlertTitleText$vungle_ads_release(@Nullable String str) {
        this.alertTitleText = str;
    }

    public final void setUserId$vungle_ads_release(@Nullable String str) {
        this.userId = str;
    }
}
