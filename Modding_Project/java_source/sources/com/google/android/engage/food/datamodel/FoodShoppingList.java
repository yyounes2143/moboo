package com.google.android.engage.food.datamodel;

import android.net.Uri;
import android.os.Bundle;
import androidx.annotation.NonNull;
import androidx.exifinterface.media.ExifInterface;
import com.google.android.engage.common.datamodel.Image;
import com.google.android.engage.common.datamodel.zzj;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.common.base.Optional;
import java.util.List;
/* compiled from: Proguard */
@KeepForSdk
/* loaded from: classes4.dex */
public final class FoodShoppingList extends com.google.android.engage.common.datamodel.zzf {
    private final zzj zza;

    /* compiled from: Proguard */
    @KeepForSdk
    /* loaded from: classes4.dex */
    public static final class Builder {
        private final com.google.android.engage.common.datamodel.zzh zza = new com.google.android.engage.common.datamodel.zzh();

        @NonNull
        public Builder addItemLabel(@NonNull String str) {
            this.zza.zze(str);
            return this;
        }

        @NonNull
        public Builder addItemLabels(@NonNull List<String> list) {
            this.zza.zzf(list);
            return this;
        }

        @NonNull
        public Builder addPosterImage(@NonNull Image image) {
            this.zza.zzg(image);
            return this;
        }

        @NonNull
        public Builder addPosterImages(@NonNull List<Image> list) {
            this.zza.zzh(list);
            return this;
        }

        @NonNull
        public FoodShoppingList build() {
            return new FoodShoppingList(this, null);
        }

        @NonNull
        public Builder setActionLinkUri(@NonNull Uri uri) {
            this.zza.zzi(uri);
            return this;
        }

        @NonNull
        public Builder setActionText(@NonNull String str) {
            this.zza.zzj(str);
            return this;
        }

        @NonNull
        public Builder setLastUserInteractionTimestampMillis(long j) {
            this.zza.zzk(Long.valueOf(j));
            return this;
        }

        @NonNull
        public Builder setNumberOfItems(int i) {
            this.zza.zzl(i);
            return this;
        }

        @NonNull
        public Builder setTitle(@NonNull String str) {
            this.zza.zzm(str);
            return this;
        }
    }

    public /* synthetic */ FoodShoppingList(Builder builder, zzf zzfVar) {
        super(7);
        this.zza = builder.zza.zzn();
    }

    @NonNull
    public Uri getActionLinkUri() {
        return this.zza.zzb();
    }

    @NonNull
    public Optional<String> getActionText() {
        return this.zza.zzd();
    }

    @NonNull
    public List<String> getItemLabels() {
        return this.zza.zzh();
    }

    @NonNull
    public Optional<Long> getLastUserInteractionTimestampMillis() {
        return this.zza.zze();
    }

    public int getNumberOfItems() {
        return this.zza.zza();
    }

    @NonNull
    public List<Image> getPosterImages() {
        return this.zza.zzi();
    }

    @NonNull
    public Optional<String> getTitle() {
        return this.zza.zzf();
    }

    @Override // com.google.android.engage.common.datamodel.zzf
    @NonNull
    public final Bundle zza() {
        Bundle zza = super.zza();
        zza.putBundle(ExifInterface.GPS_MEASUREMENT_IN_PROGRESS, this.zza.zzc());
        return zza;
    }
}
