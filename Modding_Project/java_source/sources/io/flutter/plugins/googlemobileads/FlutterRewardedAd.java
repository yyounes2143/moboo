package io.flutter.plugins.googlemobileads;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.ads.LoadAdError;
import com.google.android.gms.ads.OnUserEarnedRewardListener;
import com.google.android.gms.ads.rewarded.OnAdMetadataChangedListener;
import com.google.android.gms.ads.rewarded.RewardItem;
import com.google.android.gms.ads.rewarded.RewardedAd;
import com.google.android.gms.ads.rewarded.RewardedAdLoadCallback;
import io.flutter.plugins.googlemobileads.FlutterAd;
import java.lang.ref.WeakReference;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Proguard */
/* loaded from: classes6.dex */
public class FlutterRewardedAd extends FlutterAd.FlutterOverlayAd {
    private static final String TAG = "FlutterRewardedAd";
    @Nullable
    private final FlutterAdManagerAdRequest adManagerRequest;
    @NonNull
    private final String adUnitId;
    @NonNull
    private final FlutterAdLoader flutterAdLoader;
    @NonNull
    private final AdInstanceManager manager;
    @Nullable
    private final FlutterAdRequest request;
    @Nullable
    RewardedAd rewardedAd;

    /* compiled from: Proguard */
    /* loaded from: classes6.dex */
    public static final class DelegatingRewardedCallback extends RewardedAdLoadCallback implements OnAdMetadataChangedListener, OnUserEarnedRewardListener {
        private final WeakReference<FlutterRewardedAd> delegate;

        public DelegatingRewardedCallback(FlutterRewardedAd flutterRewardedAd) {
            this.delegate = new WeakReference<>(flutterRewardedAd);
        }

        @Override // com.google.android.gms.ads.AdLoadCallback
        public void onAdFailedToLoad(@NonNull LoadAdError loadAdError) {
            if (this.delegate.get() != null) {
                this.delegate.get().onAdFailedToLoad(loadAdError);
            }
        }

        @Override // com.google.android.gms.ads.rewarded.OnAdMetadataChangedListener
        public void onAdMetadataChanged() {
            if (this.delegate.get() != null) {
                this.delegate.get().onAdMetadataChanged();
            }
        }

        @Override // com.google.android.gms.ads.OnUserEarnedRewardListener
        public void onUserEarnedReward(@NonNull RewardItem rewardItem) {
            if (this.delegate.get() != null) {
                this.delegate.get().onUserEarnedReward(rewardItem);
            }
        }

        @Override // com.google.android.gms.ads.AdLoadCallback
        public void onAdLoaded(@NonNull RewardedAd rewardedAd) {
            if (this.delegate.get() != null) {
                this.delegate.get().onAdLoaded(rewardedAd);
            }
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes6.dex */
    public static class FlutterRewardItem {
        @NonNull
        final Integer amount;
        @NonNull
        final String type;

        public FlutterRewardItem(@NonNull Integer num, @NonNull String str) {
            this.amount = num;
            this.type = str;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof FlutterRewardItem)) {
                return false;
            }
            FlutterRewardItem flutterRewardItem = (FlutterRewardItem) obj;
            if (!this.amount.equals(flutterRewardItem.amount)) {
                return false;
            }
            return this.type.equals(flutterRewardItem.type);
        }

        public int hashCode() {
            return (this.amount.hashCode() * 31) + this.type.hashCode();
        }
    }

    public FlutterRewardedAd(int i, @NonNull AdInstanceManager adInstanceManager, @NonNull String str, @NonNull FlutterAdRequest flutterAdRequest, @NonNull FlutterAdLoader flutterAdLoader) {
        super(i);
        this.manager = adInstanceManager;
        this.adUnitId = str;
        this.request = flutterAdRequest;
        this.adManagerRequest = null;
        this.flutterAdLoader = flutterAdLoader;
    }

    @Override // io.flutter.plugins.googlemobileads.FlutterAd
    public void dispose() {
        this.rewardedAd = null;
    }

    @Override // io.flutter.plugins.googlemobileads.FlutterAd
    public void load() {
        DelegatingRewardedCallback delegatingRewardedCallback = new DelegatingRewardedCallback(this);
        FlutterAdRequest flutterAdRequest = this.request;
        if (flutterAdRequest != null) {
            FlutterAdLoader flutterAdLoader = this.flutterAdLoader;
            String str = this.adUnitId;
            flutterAdLoader.loadRewarded(str, flutterAdRequest.asAdRequest(str), delegatingRewardedCallback);
            return;
        }
        FlutterAdManagerAdRequest flutterAdManagerAdRequest = this.adManagerRequest;
        if (flutterAdManagerAdRequest != null) {
            FlutterAdLoader flutterAdLoader2 = this.flutterAdLoader;
            String str2 = this.adUnitId;
            flutterAdLoader2.loadAdManagerRewarded(str2, flutterAdManagerAdRequest.asAdManagerAdRequest(str2), delegatingRewardedCallback);
        }
    }

    public void onAdFailedToLoad(@NonNull LoadAdError loadAdError) {
        this.manager.onAdFailedToLoad(this.adId, new FlutterAd.FlutterLoadAdError(loadAdError));
    }

    public void onAdLoaded(@NonNull RewardedAd rewardedAd) {
        this.rewardedAd = rewardedAd;
        rewardedAd.setOnPaidEventListener(new FlutterPaidEventListener(this.manager, this));
        this.manager.onAdLoaded(this.adId, rewardedAd.getResponseInfo());
    }

    public void onAdMetadataChanged() {
        this.manager.onAdMetadataChanged(this.adId);
    }

    public void onUserEarnedReward(@NonNull RewardItem rewardItem) {
        this.manager.onRewardedAdUserEarnedReward(this.adId, new FlutterRewardItem(Integer.valueOf(rewardItem.getAmount()), rewardItem.getType()));
    }

    @Override // io.flutter.plugins.googlemobileads.FlutterAd.FlutterOverlayAd
    public void setImmersiveMode(boolean z) {
        RewardedAd rewardedAd = this.rewardedAd;
        if (rewardedAd == null) {
            return;
        }
        rewardedAd.setImmersiveMode(z);
    }

    public void setServerSideVerificationOptions(FlutterServerSideVerificationOptions flutterServerSideVerificationOptions) {
        RewardedAd rewardedAd = this.rewardedAd;
        if (rewardedAd != null) {
            rewardedAd.setServerSideVerificationOptions(flutterServerSideVerificationOptions.asServerSideVerificationOptions());
        }
    }

    @Override // io.flutter.plugins.googlemobileads.FlutterAd.FlutterOverlayAd
    public void show() {
        if (this.rewardedAd == null || this.manager.getActivity() == null) {
            return;
        }
        this.rewardedAd.setFullScreenContentCallback(new FlutterFullScreenContentCallback(this.manager, this.adId));
        this.rewardedAd.setOnAdMetadataChangedListener(new DelegatingRewardedCallback(this));
        this.rewardedAd.show(this.manager.getActivity(), new DelegatingRewardedCallback(this));
    }

    public FlutterRewardedAd(int i, @NonNull AdInstanceManager adInstanceManager, @NonNull String str, @NonNull FlutterAdManagerAdRequest flutterAdManagerAdRequest, @NonNull FlutterAdLoader flutterAdLoader) {
        super(i);
        this.manager = adInstanceManager;
        this.adUnitId = str;
        this.adManagerRequest = flutterAdManagerAdRequest;
        this.request = null;
        this.flutterAdLoader = flutterAdLoader;
    }
}
