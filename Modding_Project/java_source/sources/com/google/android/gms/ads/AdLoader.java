package com.google.android.gms.ads;

import android.content.Context;
import android.os.RemoteException;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresPermission;
import com.google.android.gms.ads.admanager.AdManagerAdRequest;
import com.google.android.gms.ads.formats.AdManagerAdViewOptions;
import com.google.android.gms.ads.formats.OnAdManagerAdViewLoadedListener;
import com.google.android.gms.ads.internal.client.zzbb;
import com.google.android.gms.ads.internal.client.zzbd;
import com.google.android.gms.ads.internal.client.zzbq;
import com.google.android.gms.ads.internal.client.zzbt;
import com.google.android.gms.ads.internal.client.zzeh;
import com.google.android.gms.ads.internal.client.zzfe;
import com.google.android.gms.ads.internal.client.zzfw;
import com.google.android.gms.ads.internal.client.zzq;
import com.google.android.gms.ads.internal.client.zzr;
import com.google.android.gms.ads.internal.util.client.zzo;
import com.google.android.gms.ads.nativead.NativeAd;
import com.google.android.gms.ads.nativead.NativeAdOptions;
import com.google.android.gms.ads.nativead.NativeCustomFormatAd;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.internal.ads.zzbcv;
import com.google.android.gms.internal.ads.zzbet;
import com.google.android.gms.internal.ads.zzbfv;
import com.google.android.gms.internal.ads.zzbih;
import com.google.android.gms.internal.ads.zzbij;
import com.google.android.gms.internal.ads.zzbik;
import com.google.android.gms.internal.ads.zzbph;
import com.google.android.gms.internal.ads.zzbsy;
import com.google.android.gms.internal.ads.zzbta;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public class AdLoader {
    private final zzq zza;
    private final Context zzb;
    private final zzbq zzc;

    /* compiled from: Proguard */
    /* loaded from: classes4.dex */
    public static class Builder {
        private final Context zza;
        private final zzbt zzb;

        public Builder(@NonNull Context context, @NonNull String str) {
            zzbt zzd = zzbb.zza().zzd(context, str, new zzbph());
            this.zza = (Context) Preconditions.checkNotNull(context, "context cannot be null");
            this.zzb = zzd;
        }

        @NonNull
        public AdLoader build() {
            try {
                return new AdLoader(this.zza, this.zzb.zze(), zzq.zza);
            } catch (RemoteException e) {
                zzo.zzh("Failed to build AdLoader.", e);
                return new AdLoader(this.zza, new zzfe().zzc(), zzq.zza);
            }
        }

        @NonNull
        public Builder forAdManagerAdView(@NonNull OnAdManagerAdViewLoadedListener onAdManagerAdViewLoadedListener, @NonNull AdSize... adSizeArr) {
            if (adSizeArr != null && adSizeArr.length > 0) {
                try {
                    this.zzb.zzj(new zzbij(onAdManagerAdViewLoadedListener), new zzr(this.zza, adSizeArr));
                    return this;
                } catch (RemoteException e) {
                    zzo.zzk("Failed to add Google Ad Manager banner ad listener", e);
                    return this;
                }
            }
            throw new IllegalArgumentException("The supported ad sizes must contain at least one valid ad size.");
        }

        @NonNull
        public Builder forCustomFormatAd(@NonNull String str, @NonNull NativeCustomFormatAd.OnCustomFormatAdLoadedListener onCustomFormatAdLoadedListener, @Nullable NativeCustomFormatAd.OnCustomClickListener onCustomClickListener) {
            zzbsy zzbsyVar = new zzbsy(onCustomFormatAdLoadedListener, onCustomClickListener);
            try {
                this.zzb.zzh(str, zzbsyVar.zzb(), zzbsyVar.zza());
                return this;
            } catch (RemoteException e) {
                zzo.zzk("Failed to add custom format ad listener", e);
                return this;
            }
        }

        @NonNull
        public Builder forNativeAd(@NonNull NativeAd.OnNativeAdLoadedListener onNativeAdLoadedListener) {
            try {
                this.zzb.zzk(new zzbta(onNativeAdLoadedListener));
                return this;
            } catch (RemoteException e) {
                zzo.zzk("Failed to add google native ad listener", e);
                return this;
            }
        }

        @NonNull
        public Builder withAdListener(@NonNull AdListener adListener) {
            try {
                this.zzb.zzl(new com.google.android.gms.ads.internal.client.zzg(adListener));
                return this;
            } catch (RemoteException e) {
                zzo.zzk("Failed to set AdListener.", e);
                return this;
            }
        }

        @NonNull
        public Builder withAdManagerAdViewOptions(@NonNull AdManagerAdViewOptions adManagerAdViewOptions) {
            try {
                this.zzb.zzm(adManagerAdViewOptions);
                return this;
            } catch (RemoteException e) {
                zzo.zzk("Failed to specify Ad Manager banner ad options", e);
                return this;
            }
        }

        @NonNull
        public Builder withNativeAdOptions(@NonNull NativeAdOptions nativeAdOptions) {
            zzfw zzfwVar;
            try {
                zzbt zzbtVar = this.zzb;
                boolean shouldReturnUrlsForImageAssets = nativeAdOptions.shouldReturnUrlsForImageAssets();
                boolean shouldRequestMultipleImages = nativeAdOptions.shouldRequestMultipleImages();
                int adChoicesPlacement = nativeAdOptions.getAdChoicesPlacement();
                if (nativeAdOptions.getVideoOptions() != null) {
                    zzfwVar = new zzfw(nativeAdOptions.getVideoOptions());
                } else {
                    zzfwVar = null;
                }
                zzbtVar.zzo(new zzbfv(4, shouldReturnUrlsForImageAssets, -1, shouldRequestMultipleImages, adChoicesPlacement, zzfwVar, nativeAdOptions.zzc(), nativeAdOptions.getMediaAspectRatio(), nativeAdOptions.zza(), nativeAdOptions.zzb(), nativeAdOptions.zzd() - 1));
                return this;
            } catch (RemoteException e) {
                zzo.zzk("Failed to specify native ad options", e);
                return this;
            }
        }

        @Deprecated
        public final Builder zza(String str, com.google.android.gms.ads.formats.zzg zzgVar, @Nullable com.google.android.gms.ads.formats.zzf zzfVar) {
            zzbih zzbihVar = new zzbih(zzgVar, zzfVar);
            try {
                this.zzb.zzh(str, zzbihVar.zzd(), zzbihVar.zzc());
                return this;
            } catch (RemoteException e) {
                zzo.zzk("Failed to add custom template ad listener", e);
                return this;
            }
        }

        @Deprecated
        public final Builder zzb(com.google.android.gms.ads.formats.zzi zziVar) {
            try {
                this.zzb.zzk(new zzbik(zziVar));
                return this;
            } catch (RemoteException e) {
                zzo.zzk("Failed to add google native ad listener", e);
                return this;
            }
        }

        @NonNull
        @Deprecated
        public final Builder zzc(@NonNull com.google.android.gms.ads.formats.NativeAdOptions nativeAdOptions) {
            try {
                this.zzb.zzo(new zzbfv(nativeAdOptions));
                return this;
            } catch (RemoteException e) {
                zzo.zzk("Failed to specify native ad options", e);
                return this;
            }
        }
    }

    public AdLoader(Context context, zzbq zzbqVar, zzq zzqVar) {
        this.zzb = context;
        this.zzc = zzbqVar;
        this.zza = zzqVar;
    }

    public static /* synthetic */ void zza(AdLoader adLoader, zzeh zzehVar) {
        try {
            adLoader.zzc.zzg(adLoader.zza.zza(adLoader.zzb, zzehVar));
        } catch (RemoteException e) {
            zzo.zzh("Failed to load ad.", e);
        }
    }

    private final void zzb(final zzeh zzehVar) {
        Context context = this.zzb;
        zzbcv.zza(context);
        if (((Boolean) zzbet.zzc.zze()).booleanValue()) {
            if (((Boolean) zzbd.zzc().zzb(zzbcv.zzlw)).booleanValue()) {
                com.google.android.gms.ads.internal.util.client.zzb.zzb.execute(new Runnable() { // from class: com.google.android.gms.ads.zza
                    @Override // java.lang.Runnable
                    public final void run() {
                        AdLoader.zza(AdLoader.this, zzehVar);
                    }
                });
                return;
            }
        }
        try {
            this.zzc.zzg(this.zza.zza(context, zzehVar));
        } catch (RemoteException e) {
            zzo.zzh("Failed to load ad.", e);
        }
    }

    public boolean isLoading() {
        try {
            return this.zzc.zzi();
        } catch (RemoteException e) {
            zzo.zzk("Failed to check if ad is loading.", e);
            return false;
        }
    }

    @RequiresPermission("android.permission.INTERNET")
    public void loadAd(@NonNull AdRequest adRequest) {
        zzb(adRequest.zza);
    }

    @RequiresPermission("android.permission.INTERNET")
    public void loadAds(@NonNull AdRequest adRequest, int i) {
        try {
            this.zzc.zzh(this.zza.zza(this.zzb, adRequest.zza), i);
        } catch (RemoteException e) {
            zzo.zzh("Failed to load ads.", e);
        }
    }

    public void loadAd(@NonNull AdManagerAdRequest adManagerAdRequest) {
        zzb(adManagerAdRequest.zza);
    }
}
