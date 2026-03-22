package com.google.ads.mediation.mintegral;

import android.content.Context;
import android.view.ViewGroup;
import com.mbridge.msdk.newinterstitial.out.MBBidNewInterstitialHandler;
import com.mbridge.msdk.newinterstitial.out.MBNewInterstitialHandler;
import com.mbridge.msdk.newinterstitial.out.NewInterstitialWithCodeListener;
import com.mbridge.msdk.out.MBSplashHandler;
import com.mbridge.msdk.out.MBSplashLoadWithCodeListener;
import com.mbridge.msdk.out.MBSplashShowListener;
import kotlin.Metadata;
import kotlin.jvm.JvmStatic;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.json.JSONObject;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\b\u0010\u0003\u001a\u00020\u0004H\u0007J\b\u0010\u0005\u001a\u00020\u0006H\u0007J\b\u0010\u0007\u001a\u00020\bH\u0007¨\u0006\t"}, d2 = {"Lcom/google/ads/mediation/mintegral/MintegralFactory;", "", "()V", "createBidInterstitialHandler", "Lcom/google/ads/mediation/mintegral/MintegralBidNewInterstitialAdWrapper;", "createInterstitialHandler", "Lcom/google/ads/mediation/mintegral/MintegralNewInterstitialAdWrapper;", "createSplashAdWrapper", "Lcom/google/ads/mediation/mintegral/MintegralSplashAdWrapper;", "mintegral_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes4.dex */
public final class MintegralFactory {
    @NotNull
    public static final MintegralFactory INSTANCE = new MintegralFactory();

    private MintegralFactory() {
    }

    @JvmStatic
    @NotNull
    public static final MintegralBidNewInterstitialAdWrapper createBidInterstitialHandler() {
        return new MintegralBidNewInterstitialAdWrapper() { // from class: com.google.ads.mediation.mintegral.MintegralFactory$createBidInterstitialHandler$1
            @Nullable
            private MBBidNewInterstitialHandler instance;

            @Override // com.google.ads.mediation.mintegral.MintegralBidNewInterstitialAdWrapper
            public void createAd(@NotNull Context context, @NotNull String str, @NotNull String str2) {
                this.instance = new MBBidNewInterstitialHandler(context, str, str2);
            }

            @Override // com.google.ads.mediation.mintegral.MintegralBidNewInterstitialAdWrapper
            public void loadFromBid(@NotNull String str) {
                MBBidNewInterstitialHandler mBBidNewInterstitialHandler = this.instance;
                if (mBBidNewInterstitialHandler != null) {
                    mBBidNewInterstitialHandler.loadFromBid(str);
                }
            }

            @Override // com.google.ads.mediation.mintegral.MintegralBidNewInterstitialAdWrapper
            public void playVideoMute(int i) {
                MBBidNewInterstitialHandler mBBidNewInterstitialHandler = this.instance;
                if (mBBidNewInterstitialHandler != null) {
                    mBBidNewInterstitialHandler.playVideoMute(i);
                }
            }

            @Override // com.google.ads.mediation.mintegral.MintegralBidNewInterstitialAdWrapper
            public void setExtraInfo(@NotNull JSONObject jSONObject) {
                MBBidNewInterstitialHandler mBBidNewInterstitialHandler = this.instance;
                if (mBBidNewInterstitialHandler != null) {
                    mBBidNewInterstitialHandler.setExtraInfo(jSONObject);
                }
            }

            @Override // com.google.ads.mediation.mintegral.MintegralBidNewInterstitialAdWrapper
            public void setInterstitialVideoListener(@NotNull NewInterstitialWithCodeListener newInterstitialWithCodeListener) {
                MBBidNewInterstitialHandler mBBidNewInterstitialHandler = this.instance;
                if (mBBidNewInterstitialHandler != null) {
                    mBBidNewInterstitialHandler.setInterstitialVideoListener(newInterstitialWithCodeListener);
                }
            }

            @Override // com.google.ads.mediation.mintegral.MintegralBidNewInterstitialAdWrapper
            public void showFromBid() {
                MBBidNewInterstitialHandler mBBidNewInterstitialHandler = this.instance;
                if (mBBidNewInterstitialHandler != null) {
                    mBBidNewInterstitialHandler.showFromBid();
                }
            }
        };
    }

    @JvmStatic
    @NotNull
    public static final MintegralNewInterstitialAdWrapper createInterstitialHandler() {
        return new MintegralNewInterstitialAdWrapper() { // from class: com.google.ads.mediation.mintegral.MintegralFactory$createInterstitialHandler$1
            @Nullable
            private MBNewInterstitialHandler instance;

            @Override // com.google.ads.mediation.mintegral.MintegralNewInterstitialAdWrapper
            public void createAd(@NotNull Context context, @NotNull String str, @NotNull String str2) {
                this.instance = new MBNewInterstitialHandler(context, str, str2);
            }

            @Override // com.google.ads.mediation.mintegral.MintegralNewInterstitialAdWrapper
            public void load() {
                MBNewInterstitialHandler mBNewInterstitialHandler = this.instance;
                if (mBNewInterstitialHandler != null) {
                    mBNewInterstitialHandler.load();
                }
            }

            @Override // com.google.ads.mediation.mintegral.MintegralNewInterstitialAdWrapper
            public void playVideoMute(int i) {
                MBNewInterstitialHandler mBNewInterstitialHandler = this.instance;
                if (mBNewInterstitialHandler != null) {
                    mBNewInterstitialHandler.playVideoMute(i);
                }
            }

            @Override // com.google.ads.mediation.mintegral.MintegralNewInterstitialAdWrapper
            public void setInterstitialVideoListener(@NotNull NewInterstitialWithCodeListener newInterstitialWithCodeListener) {
                MBNewInterstitialHandler mBNewInterstitialHandler = this.instance;
                if (mBNewInterstitialHandler != null) {
                    mBNewInterstitialHandler.setInterstitialVideoListener(newInterstitialWithCodeListener);
                }
            }

            @Override // com.google.ads.mediation.mintegral.MintegralNewInterstitialAdWrapper
            public void show() {
                MBNewInterstitialHandler mBNewInterstitialHandler = this.instance;
                if (mBNewInterstitialHandler != null) {
                    mBNewInterstitialHandler.show();
                }
            }
        };
    }

    @JvmStatic
    @NotNull
    public static final MintegralSplashAdWrapper createSplashAdWrapper() {
        return new MintegralSplashAdWrapper() { // from class: com.google.ads.mediation.mintegral.MintegralFactory$createSplashAdWrapper$1
            @Nullable
            private MBSplashHandler instance;

            @Override // com.google.ads.mediation.mintegral.MintegralSplashAdWrapper
            public void createAd(@NotNull String str, @NotNull String str2) {
                this.instance = new MBSplashHandler(str, str2, true, 5);
            }

            @Override // com.google.ads.mediation.mintegral.MintegralSplashAdWrapper
            public void onDestroy() {
                MBSplashHandler mBSplashHandler = this.instance;
                if (mBSplashHandler != null) {
                    mBSplashHandler.onDestroy();
                }
            }

            @Override // com.google.ads.mediation.mintegral.MintegralSplashAdWrapper
            public void preLoad() {
                MBSplashHandler mBSplashHandler = this.instance;
                if (mBSplashHandler != null) {
                    mBSplashHandler.preLoad();
                }
            }

            @Override // com.google.ads.mediation.mintegral.MintegralSplashAdWrapper
            public void preLoadByToken(@NotNull String str) {
                MBSplashHandler mBSplashHandler = this.instance;
                if (mBSplashHandler != null) {
                    mBSplashHandler.preLoadByToken(str);
                }
            }

            @Override // com.google.ads.mediation.mintegral.MintegralSplashAdWrapper
            public void setExtraInfo(@NotNull JSONObject jSONObject) {
                MBSplashHandler mBSplashHandler = this.instance;
                if (mBSplashHandler != null) {
                    mBSplashHandler.setExtraInfo(jSONObject);
                }
            }

            @Override // com.google.ads.mediation.mintegral.MintegralSplashAdWrapper
            public void setSplashLoadListener(@NotNull MBSplashLoadWithCodeListener mBSplashLoadWithCodeListener) {
                MBSplashHandler mBSplashHandler = this.instance;
                if (mBSplashHandler != null) {
                    mBSplashHandler.setSplashLoadListener(mBSplashLoadWithCodeListener);
                }
            }

            @Override // com.google.ads.mediation.mintegral.MintegralSplashAdWrapper
            public void setSplashShowListener(@NotNull MBSplashShowListener mBSplashShowListener) {
                MBSplashHandler mBSplashHandler = this.instance;
                if (mBSplashHandler != null) {
                    mBSplashHandler.setSplashShowListener(mBSplashShowListener);
                }
            }

            @Override // com.google.ads.mediation.mintegral.MintegralSplashAdWrapper
            public void show(@NotNull ViewGroup viewGroup) {
                MBSplashHandler mBSplashHandler = this.instance;
                if (mBSplashHandler != null) {
                    mBSplashHandler.show(viewGroup);
                }
            }

            @Override // com.google.ads.mediation.mintegral.MintegralSplashAdWrapper
            public void show(@NotNull ViewGroup viewGroup, @NotNull String str) {
                MBSplashHandler mBSplashHandler = this.instance;
                if (mBSplashHandler != null) {
                    mBSplashHandler.show(viewGroup, str);
                }
            }
        };
    }
}
