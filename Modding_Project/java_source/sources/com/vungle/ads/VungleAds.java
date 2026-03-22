package com.vungle.ads;

import android.app.Application;
import android.content.Context;
import com.google.firebase.remoteconfig.RemoteConfigConstants;
import com.unity3d.ads.core.domain.HandleInvocationsFromAdViewer;
import com.vungle.ads.fpd.FirstPartyData;
import com.vungle.ads.internal.ConfigManager;
import com.vungle.ads.internal.VungleInitializer;
import com.vungle.ads.internal.VungleInternal;
import com.vungle.ads.internal.model.Placement;
import kotlin.Deprecated;
import kotlin.Metadata;
import kotlin.jvm.JvmField;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\u0018\u0000 \u00032\u00020\u0001:\u0001\u0003B\u0005¢\u0006\u0002\u0010\u0002¨\u0006\u0004"}, d2 = {"Lcom/vungle/ads/VungleAds;", "", "()V", "Companion", "vungle-ads_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes6.dex */
public final class VungleAds {
    @NotNull
    public static final String TAG = "VungleAds";
    @NotNull
    public static final Companion Companion = new Companion(null);
    @NotNull
    private static VungleInternal vungleInternal = new VungleInternal();
    @NotNull
    private static VungleInitializer initializer = new VungleInitializer();
    @JvmField
    @NotNull
    public static final FirstPartyData firstPartyData = new FirstPartyData();

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000P\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u000eH\u0007J\u0012\u0010\u000f\u001a\u0004\u0018\u00010\u00042\u0006\u0010\r\u001a\u00020\u000eH\u0007J\u0018\u0010\u000f\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u0010\u001a\u00020\u0011H\u0007J\b\u0010\u0012\u001a\u00020\u0004H\u0007J \u0010\u0013\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u0014\u001a\u00020\u00042\u0006\u0010\u0010\u001a\u00020\u0015H\u0007J\b\u0010\u0016\u001a\u00020\u0017H\u0007J\u0010\u0010\u0018\u001a\u00020\u00172\u0006\u0010\u0019\u001a\u00020\u0004H\u0007J\u0018\u0010\u001a\u001a\u00020\f2\u0006\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u0004H\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u00020\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\bX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u001e"}, d2 = {"Lcom/vungle/ads/VungleAds$Companion;", "", "()V", "TAG", "", "firstPartyData", "Lcom/vungle/ads/fpd/FirstPartyData;", "initializer", "Lcom/vungle/ads/internal/VungleInitializer;", "vungleInternal", "Lcom/vungle/ads/internal/VungleInternal;", "deInit", "", "context", "Landroid/content/Context;", "getBiddingToken", "callback", "Lcom/vungle/ads/BidTokenCallback;", "getSdkVersion", "init", RemoteConfigConstants.RequestFieldKey.APP_ID, "Lcom/vungle/ads/InitializationListener;", "isInitialized", "", "isInline", HandleInvocationsFromAdViewer.KEY_PLACEMENT_ID, "setIntegrationName", "wrapperFramework", "Lcom/vungle/ads/VungleWrapperFramework;", "wrapperFrameworkVersion", "vungle-ads_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes6.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @JvmStatic
        public final void deInit(@NotNull Context context) {
            VungleAds.initializer.deInit$vungle_ads_release();
        }

        @Deprecated(message = "Replaced with getBiddingToken(Context, BidTokenCallback) method.")
        @JvmStatic
        @Nullable
        public final String getBiddingToken(@NotNull Context context) {
            return VungleAds.vungleInternal.getAvailableBidTokens(context);
        }

        @JvmStatic
        @NotNull
        public final String getSdkVersion() {
            return VungleAds.vungleInternal.getSdkVersion();
        }

        @JvmStatic
        public final void init(@NotNull Context context, @NotNull String str, @NotNull InitializationListener initializationListener) {
            if (!(context instanceof Application)) {
                context = context.getApplicationContext();
            }
            VungleAds.initializer.init(str, context, initializationListener);
        }

        @JvmStatic
        public final boolean isInitialized() {
            return VungleAds.initializer.isInitialized();
        }

        @JvmStatic
        public final boolean isInline(@NotNull String str) {
            Placement placement = ConfigManager.INSTANCE.getPlacement(str);
            if (placement != null) {
                return placement.isInline();
            }
            return false;
        }

        @JvmStatic
        public final void setIntegrationName(@NotNull VungleWrapperFramework vungleWrapperFramework, @NotNull String str) {
            VungleAds.initializer.setIntegrationName(vungleWrapperFramework, str);
        }

        private Companion() {
        }

        @JvmStatic
        public final void getBiddingToken(@NotNull Context context, @NotNull BidTokenCallback bidTokenCallback) {
            VungleAds.vungleInternal.getAvailableBidTokensAsync(context, bidTokenCallback);
        }
    }

    @JvmStatic
    public static final void deInit(@NotNull Context context) {
        Companion.deInit(context);
    }

    @Deprecated(message = "Replaced with getBiddingToken(Context, BidTokenCallback) method.")
    @JvmStatic
    @Nullable
    public static final String getBiddingToken(@NotNull Context context) {
        return Companion.getBiddingToken(context);
    }

    @JvmStatic
    @NotNull
    public static final String getSdkVersion() {
        return Companion.getSdkVersion();
    }

    @JvmStatic
    public static final void init(@NotNull Context context, @NotNull String str, @NotNull InitializationListener initializationListener) {
        Companion.init(context, str, initializationListener);
    }

    @JvmStatic
    public static final boolean isInitialized() {
        return Companion.isInitialized();
    }

    @JvmStatic
    public static final boolean isInline(@NotNull String str) {
        return Companion.isInline(str);
    }

    @JvmStatic
    public static final void setIntegrationName(@NotNull VungleWrapperFramework vungleWrapperFramework, @NotNull String str) {
        Companion.setIntegrationName(vungleWrapperFramework, str);
    }

    @JvmStatic
    public static final void getBiddingToken(@NotNull Context context, @NotNull BidTokenCallback bidTokenCallback) {
        Companion.getBiddingToken(context, bidTokenCallback);
    }
}
