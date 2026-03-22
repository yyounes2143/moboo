package com.google.ads.mediation.vungle;

import android.content.Context;
import com.vungle.ads.InitializationListener;
import com.vungle.ads.VungleAds;
import kotlin.Metadata;
import kotlin.jvm.JvmField;
import org.jetbrains.annotations.NotNull;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003R\u0012\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\u0006"}, d2 = {"Lcom/google/ads/mediation/vungle/VungleSdkWrapper;", "", "<init>", "()V", "delegate", "Lcom/google/ads/mediation/vungle/SdkWrapper;", "liftoffmonetize_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
/* loaded from: classes4.dex */
public final class VungleSdkWrapper {
    @NotNull
    public static final VungleSdkWrapper INSTANCE = new VungleSdkWrapper();
    @JvmField
    @NotNull
    public static SdkWrapper delegate = new SdkWrapper() { // from class: com.google.ads.mediation.vungle.VungleSdkWrapper$delegate$1
        @Override // com.google.ads.mediation.vungle.SdkWrapper
        public String getBiddingToken(Context context) {
            return VungleAds.Companion.getBiddingToken(context);
        }

        @Override // com.google.ads.mediation.vungle.SdkWrapper
        public String getSdkVersion() {
            return VungleAds.Companion.getSdkVersion();
        }

        @Override // com.google.ads.mediation.vungle.SdkWrapper
        public void init(Context context, String str, InitializationListener initializationListener) {
            VungleAds.Companion.init(context, str, initializationListener);
        }

        @Override // com.google.ads.mediation.vungle.SdkWrapper
        public boolean isInitialized() {
            return VungleAds.Companion.isInitialized();
        }
    };

    private VungleSdkWrapper() {
    }
}
