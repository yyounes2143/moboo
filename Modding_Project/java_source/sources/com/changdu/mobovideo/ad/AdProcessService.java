package com.changdu.mobovideo.ad;

import android.app.Service;
import android.content.Intent;
import android.os.IBinder;
import com.applovin.mediation.MaxAd;
import com.applovin.mediation.MaxError;
import com.applovin.mediation.MaxReward;
import com.applovin.mediation.MaxRewardedAdListener;
import com.applovin.mediation.ads.MaxRewardedAd;
import com.applovin.sdk.AppLovinMediationProvider;
import com.applovin.sdk.AppLovinSdk;
import com.applovin.sdk.AppLovinSdkConfiguration;
import com.applovin.sdk.AppLovinSdkInitializationConfiguration;
import com.changdu.mobovideo.VideoApplication;
import com.changdu.mobovideo.ad.AdProcessService;
import com.google.firebase.remoteconfig.FirebaseRemoteConfig;
import com.jeremyliao.liveeventbus.LiveEventBus;
import com.sensorsdata.analytics.android.sdk.aop.push.PushAutoTrackHelper;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.text.StringsKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u0000 \u00192\u00020\u0001:\u0001\u0019B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J)\u0010\t\u001a\u00020\u00062\b\u0010\u0005\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\b\u001a\u00020\u0006H\u0016¢\u0006\u0004\b\t\u0010\nJ\u001b\u0010\f\u001a\u0004\u0018\u00010\u000b2\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0016¢\u0006\u0004\b\f\u0010\rJ\u0019\u0010\u0011\u001a\u00020\u00102\b\u0010\u000f\u001a\u0004\u0018\u00010\u000eH\u0002¢\u0006\u0004\b\u0011\u0010\u0012J\u0019\u0010\u0014\u001a\u00020\u00102\b\u0010\u0013\u001a\u0004\u0018\u00010\u000eH\u0002¢\u0006\u0004\b\u0014\u0010\u0012R\u0018\u0010\u0018\u001a\u0004\u0018\u00010\u00158\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0016\u0010\u0017¨\u0006\u001a"}, d2 = {"Lcom/changdu/mobovideo/ad/AdProcessService;", "Landroid/app/Service;", "<init>", "()V", "Landroid/content/Intent;", "intent", "", "flags", "startId", "onStartCommand", "(Landroid/content/Intent;II)I", "Landroid/os/IBinder;", "onBind", "(Landroid/content/Intent;)Landroid/os/IBinder;", "", "platformKey", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Ljava/lang/String;)V", "adId", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Lcom/applovin/mediation/ads/MaxRewardedAd;", "Wwwwwwwwwwwwwwwwwwwwwwwww", "Lcom/applovin/mediation/ads/MaxRewardedAd;", "rewardedAd", "Companion", "app_outsideRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class AdProcessService extends Service {
    @NotNull
    public static final Companion Companion = new Companion(null);
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public MaxRewardedAd f5451Wwwwwwwwwwwwwwwwwwwwwwwww;

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003R\u000e\u0010\u0004\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000¨\u0006\b"}, d2 = {"Lcom/changdu/mobovideo/ad/AdProcessService$Companion;", "", "<init>", "()V", "ACTION_INIT", "", "ACTION_LOAD", "ACTION_STOP", "app_outsideRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public Companion() {
        }
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(String str) {
        if (str != null && !StringsKt.isBlank(str)) {
            if (this.f5451Wwwwwwwwwwwwwwwwwwwwwwwww == null) {
                MaxRewardedAd maxRewardedAd = MaxRewardedAd.getInstance(str, VideoApplication.Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
                this.f5451Wwwwwwwwwwwwwwwwwwwwwwwww = maxRewardedAd;
                if (maxRewardedAd != null) {
                    maxRewardedAd.setListener(new MaxRewardedAdListener() { // from class: com.changdu.mobovideo.ad.AdProcessService$loadAd$1
                        @Override // com.applovin.mediation.MaxAdListener
                        public void onAdLoadFailed(String str2, MaxError maxError) {
                            LiveEventBus.get("ecpmReport").postAcrossProcess(new EcpmEntity(false, str2, "", FirebaseRemoteConfig.DEFAULT_VALUE_FOR_DOUBLE, ""));
                        }

                        @Override // com.applovin.mediation.MaxAdListener
                        public void onAdLoaded(MaxAd maxAd) {
                            LiveEventBus.get("ecpmReport").postAcrossProcess(new EcpmEntity(true, maxAd.getAdUnitId(), maxAd.getRevenuePrecision(), maxAd.getRevenue(), maxAd.getNetworkName()));
                        }

                        @Override // com.applovin.mediation.MaxAdListener
                        public void onAdClicked(MaxAd maxAd) {
                        }

                        @Override // com.applovin.mediation.MaxAdListener
                        public void onAdDisplayed(MaxAd maxAd) {
                        }

                        @Override // com.applovin.mediation.MaxAdListener
                        public void onAdHidden(MaxAd maxAd) {
                        }

                        @Override // com.applovin.mediation.MaxAdListener
                        public void onAdDisplayFailed(MaxAd maxAd, MaxError maxError) {
                        }

                        @Override // com.applovin.mediation.MaxRewardedAdListener
                        public void onUserRewarded(MaxAd maxAd, MaxReward maxReward) {
                        }
                    });
                }
            }
            MaxRewardedAd maxRewardedAd2 = this.f5451Wwwwwwwwwwwwwwwwwwwwwwwww;
            if (maxRewardedAd2 != null) {
                maxRewardedAd2.loadAd();
            }
        }
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(String str) {
        VideoApplication.Companion companion = VideoApplication.Companion;
        if (!AppLovinSdk.getInstance(companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()).isInitialized() && str != null && !StringsKt.isBlank(str)) {
            AppLovinSdk.getInstance(companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()).initialize(AppLovinSdkInitializationConfiguration.builder(str, companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()).setMediationProvider(AppLovinMediationProvider.MAX).build(), new AppLovinSdk.SdkInitializationListener() { // from class: Wwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww
                @Override // com.applovin.sdk.AppLovinSdk.SdkInitializationListener
                public final void onSdkInitialized(AppLovinSdkConfiguration appLovinSdkConfiguration) {
                    AdProcessService.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(appLovinSdkConfiguration);
                }
            });
        }
    }

    @Override // android.app.Service
    @Nullable
    public IBinder onBind(@Nullable Intent intent) {
        return null;
    }

    @Override // android.app.Service
    public int onStartCommand(@Nullable Intent intent, int i, int i2) {
        String str;
        PushAutoTrackHelper.onServiceStartCommand(this, intent, i, i2);
        if (intent != null) {
            str = intent.getAction();
        } else {
            str = null;
        }
        if (str != null) {
            int hashCode = str.hashCode();
            if (hashCode != 3237136) {
                if (hashCode != 3327206) {
                    if (hashCode == 3540994 && str.equals("stop")) {
                        stopSelf();
                    }
                } else if (str.equals("load")) {
                    Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(intent.getStringExtra("adId"));
                }
            } else if (str.equals("init")) {
                Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(intent.getStringExtra("platformKey"));
            }
        }
        return super.onStartCommand(intent, i, i2);
    }

    public static final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(AppLovinSdkConfiguration appLovinSdkConfiguration) {
    }
}
