package com.google.android.engage.shopping.datamodel;

import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.exifinterface.media.ExifInterface;
import com.google.android.engage.common.datamodel.Image;
import com.google.android.engage.common.datamodel.OrderReadyTimeWindow;
import com.google.android.engage.common.datamodel.Price;
import com.google.android.engage.common.datamodel.zzab;
import com.google.android.engage.common.datamodel.zzad;
import com.google.android.engage.common.datamodel.zzf;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.common.base.Optional;
import java.util.List;
/* compiled from: Proguard */
@KeepForSdk
/* loaded from: classes4.dex */
public final class ShoppingOrderTrackingCluster extends zzf {
    private final zzad zza;
    private final int zzb;
    private final String zzc;

    /* compiled from: Proguard */
    @KeepForSdk
    /* loaded from: classes4.dex */
    public static final class Builder {
        private final zzab zza = new zzab();
        private int zzb;
        private String zzc;

        @NonNull
        public Builder addPosterImage(@NonNull Image image) {
            this.zza.zzc(image);
            return this;
        }

        @NonNull
        public Builder addPosterImages(@NonNull List<Image> list) {
            this.zza.zzd(list);
            return this;
        }

        @NonNull
        public Builder addSubtitle(@NonNull String str) {
            this.zza.zze(str);
            return this;
        }

        @NonNull
        public Builder addSubtitles(@NonNull List<String> list) {
            this.zza.zzf(list);
            return this;
        }

        @NonNull
        public ShoppingOrderTrackingCluster build() {
            return new ShoppingOrderTrackingCluster(this, null);
        }

        @NonNull
        public Builder setActionLinkUri(@NonNull Uri uri) {
            this.zza.zzg(uri);
            return this;
        }

        @NonNull
        public Builder setNumberOfItems(@NonNull Integer num) {
            this.zza.zzh(num);
            return this;
        }

        @NonNull
        public Builder setOrderDescription(@NonNull String str) {
            this.zza.zzi(str);
            return this;
        }

        @NonNull
        public Builder setOrderReadyTimeWindow(@NonNull OrderReadyTimeWindow orderReadyTimeWindow) {
            this.zza.zzj(orderReadyTimeWindow);
            return this;
        }

        @NonNull
        public Builder setOrderTime(long j) {
            this.zza.zzk(j);
            return this;
        }

        @NonNull
        public Builder setOrderValue(@NonNull Price price) {
            this.zza.zzl(price);
            return this;
        }

        @NonNull
        public Builder setShoppingOrderType(int i) {
            this.zzb = i;
            return this;
        }

        @NonNull
        public Builder setStatus(@NonNull String str) {
            this.zza.zzm(str);
            return this;
        }

        @NonNull
        public Builder setTitle(@NonNull String str) {
            this.zza.zzn(str);
            return this;
        }

        @NonNull
        public Builder setTrackingId(@NonNull String str) {
            this.zzc = str;
            return this;
        }
    }

    public /* synthetic */ ShoppingOrderTrackingCluster(Builder builder, zzd zzdVar) {
        super(11);
        this.zza = builder.zza.zzo();
        this.zzb = builder.zzb;
        this.zzc = builder.zzc;
    }

    @NonNull
    public Uri getActionLinkUri() {
        return this.zza.zza();
    }

    @NonNull
    public Optional<Integer> getNumberOfItems() {
        return this.zza.zzc();
    }

    @NonNull
    public Optional<String> getOrderDescription() {
        return this.zza.zzd();
    }

    @NonNull
    public Optional<OrderReadyTimeWindow> getOrderReadyTimeWindow() {
        return this.zza.zze();
    }

    @NonNull
    public Long getOrderTime() {
        return this.zza.zzg();
    }

    @NonNull
    public Optional<Price> getOrderValue() {
        return this.zza.zzf();
    }

    @NonNull
    public List<Image> getPosterImages() {
        return this.zza.zzj();
    }

    public int getShoppingOrderType() {
        return this.zzb;
    }

    @NonNull
    public String getStatus() {
        return this.zza.zzh();
    }

    @NonNull
    public List<String> getSubtitleList() {
        return this.zza.zzk();
    }

    @NonNull
    public String getTitle() {
        return this.zza.zzi();
    }

    @NonNull
    public Optional<String> getTrackingId() {
        String str = this.zzc;
        if (!TextUtils.isEmpty(str)) {
            return Optional.of(str);
        }
        return Optional.absent();
    }

    @Override // com.google.android.engage.common.datamodel.zzf
    @NonNull
    public final Bundle zza() {
        Bundle zza = super.zza();
        zza.putBundle(ExifInterface.GPS_MEASUREMENT_IN_PROGRESS, this.zza.zzb());
        zza.putInt("B", this.zzb);
        String str = this.zzc;
        if (!TextUtils.isEmpty(str)) {
            zza.putString("C", str);
        }
        return zza;
    }
}
