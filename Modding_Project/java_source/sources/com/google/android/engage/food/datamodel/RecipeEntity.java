package com.google.android.engage.food.datamodel;

import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.exifinterface.media.ExifInterface;
import com.google.android.engage.common.datamodel.Entity;
import com.google.android.engage.common.datamodel.Image;
import com.google.android.engage.common.datamodel.Rating;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.common.base.Optional;
import java.util.List;
/* compiled from: Proguard */
@KeepForSdk
/* loaded from: classes4.dex */
public final class RecipeEntity extends Entity {
    private final zzc zza;
    private final String zzb;
    private final String zzc;
    private final String zzd;
    private final String zze;
    private final String zzf;

    /* compiled from: Proguard */
    @KeepForSdk
    /* loaded from: classes4.dex */
    public static final class Builder {
        private final zza zza = new zza();
        private String zzb;
        private String zzc;
        private String zzd;
        private String zze;
        private String zzf;

        @NonNull
        public Builder addPosterImage(@NonNull Image image) {
            this.zza.zzd(image);
            return this;
        }

        @NonNull
        public Builder addPosterImages(@NonNull List<Image> list) {
            this.zza.zze(list);
            return this;
        }

        @NonNull
        public RecipeEntity build() {
            return new RecipeEntity(this, null);
        }

        @NonNull
        public Builder setActionLinkUri(@NonNull Uri uri) {
            this.zza.zzf(uri);
            return this;
        }

        @NonNull
        public Builder setAuthor(@NonNull String str) {
            this.zzb = str;
            return this;
        }

        @NonNull
        public Builder setCallout(@NonNull String str) {
            this.zzd = str;
            return this;
        }

        @NonNull
        public Builder setCategory(@NonNull String str) {
            this.zzc = str;
            return this;
        }

        @NonNull
        public Builder setCookTime(@NonNull String str) {
            this.zze = str;
            return this;
        }

        @NonNull
        public Builder setDescription(@NonNull String str) {
            this.zzf = str;
            return this;
        }

        @NonNull
        public Builder setEntityId(@NonNull String str) {
            this.zza.zzg(str);
            return this;
        }

        @NonNull
        public Builder setRating(@NonNull Rating rating) {
            this.zza.zzh(rating);
            return this;
        }

        @NonNull
        public Builder setTitle(@NonNull String str) {
            this.zza.zzi(str);
            return this;
        }
    }

    public /* synthetic */ RecipeEntity(Builder builder, zzh zzhVar) {
        super(20);
        this.zza = new zzc(builder.zza, null);
        this.zzb = builder.zzb;
        this.zzc = builder.zzc;
        this.zzd = builder.zzd;
        this.zze = builder.zze;
        this.zzf = builder.zzf;
    }

    @NonNull
    public Uri getActionLinkUri() {
        return this.zza.zza();
    }

    @NonNull
    public Optional<String> getAuthor() {
        String str = this.zzb;
        if (!TextUtils.isEmpty(str)) {
            return Optional.of(str);
        }
        return Optional.absent();
    }

    @NonNull
    public Optional<String> getCallout() {
        String str = this.zzd;
        if (!TextUtils.isEmpty(str)) {
            return Optional.of(str);
        }
        return Optional.absent();
    }

    @NonNull
    public Optional<String> getCategory() {
        String str = this.zzc;
        if (!TextUtils.isEmpty(str)) {
            return Optional.of(str);
        }
        return Optional.absent();
    }

    @NonNull
    public Optional<String> getCookTime() {
        String str = this.zze;
        if (!TextUtils.isEmpty(str)) {
            return Optional.of(str);
        }
        return Optional.absent();
    }

    @NonNull
    public Optional<String> getDescription() {
        String str = this.zzf;
        if (!TextUtils.isEmpty(str)) {
            return Optional.of(str);
        }
        return Optional.absent();
    }

    @NonNull
    public Optional<String> getEntityId() {
        return this.zza.zzc();
    }

    @NonNull
    public List<Image> getPosterImages() {
        return this.zza.zzf();
    }

    @NonNull
    public Optional<Rating> getRating() {
        return this.zza.zzd();
    }

    @NonNull
    public Optional<String> getTitle() {
        return this.zza.zze();
    }

    @Override // com.google.android.engage.common.datamodel.Entity
    @NonNull
    public final Bundle toBundle() {
        Bundle bundle = super.toBundle();
        bundle.putBundle(ExifInterface.GPS_MEASUREMENT_IN_PROGRESS, this.zza.zzb());
        String str = this.zzb;
        if (!TextUtils.isEmpty(str)) {
            bundle.putString("C", str);
        }
        String str2 = this.zzc;
        if (!TextUtils.isEmpty(str2)) {
            bundle.putString(ExifInterface.LONGITUDE_EAST, str2);
        }
        String str3 = this.zzd;
        if (!TextUtils.isEmpty(str3)) {
            bundle.putString("B", str3);
        }
        String str4 = this.zze;
        if (!TextUtils.isEmpty(str4)) {
            bundle.putString("D", str4);
        }
        String str5 = this.zzf;
        if (!TextUtils.isEmpty(str5)) {
            bundle.putString("F", str5);
        }
        return bundle;
    }
}
