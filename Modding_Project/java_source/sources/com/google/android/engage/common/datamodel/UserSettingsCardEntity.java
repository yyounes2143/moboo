package com.google.android.engage.common.datamodel;

import android.net.Uri;
import android.os.Bundle;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.exifinterface.media.ExifInterface;
import com.google.android.engage.common.datamodel.EngagementEntityCommonMetadata;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.common.base.Optional;
import java.util.List;
/* compiled from: Proguard */
@KeepForSdk
/* loaded from: classes4.dex */
public final class UserSettingsCardEntity extends Entity {
    private final EngagementEntityCommonMetadata zza;

    /* compiled from: Proguard */
    /* loaded from: classes4.dex */
    public static final class Builder {
        private final EngagementEntityCommonMetadata.Builder zza = new EngagementEntityCommonMetadata.Builder();

        @NonNull
        public Builder addPosterImage(@NonNull Image image) {
            this.zza.zzb(image);
            return this;
        }

        @NonNull
        public Builder addPosterImages(@NonNull List<Image> list) {
            this.zza.zzc(list);
            return this;
        }

        @NonNull
        public UserSettingsCardEntity build() {
            return new UserSettingsCardEntity(this, null);
        }

        @NonNull
        public Builder setActionText(@NonNull String str) {
            this.zza.zzd(str);
            return this;
        }

        @NonNull
        public Builder setActionUri(@NonNull Uri uri) {
            this.zza.zze(uri);
            return this;
        }

        @NonNull
        public Builder setEntityId(@NonNull String str) {
            this.zza.zzf(str);
            return this;
        }

        @NonNull
        public Builder setSubtitle(@NonNull String str) {
            this.zza.zzg(str);
            return this;
        }

        @NonNull
        public Builder setTitle(@NonNull String str) {
            this.zza.zzh(str);
            return this;
        }
    }

    public /* synthetic */ UserSettingsCardEntity(Builder builder, zzaq zzaqVar) {
        super(26);
        this.zza = new EngagementEntityCommonMetadata(builder.zza, null);
    }

    @Nullable
    public String getActionText() {
        return this.zza.zzf();
    }

    @NonNull
    public Uri getActionUri() {
        return this.zza.zza();
    }

    @NonNull
    public Optional<String> getEntityId() {
        return this.zza.zzc();
    }

    @NonNull
    public List<Image> getPosterImages() {
        return this.zza.zzg();
    }

    @NonNull
    public Optional<String> getSubtitle() {
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
        return bundle;
    }
}
