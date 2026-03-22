package com.google.android.engage.audio.datamodel;

import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.exifinterface.media.ExifInterface;
import com.google.android.engage.common.datamodel.Entity;
import com.google.android.engage.common.datamodel.Image;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.common.base.Optional;
import com.google.common.collect.ImmutableList;
import java.util.List;
/* compiled from: Proguard */
@KeepForSdk
/* loaded from: classes4.dex */
public final class LiveRadioStationEntity extends Entity {
    private final zzc zza;
    private final Uri zzb;
    private final Uri zzc;
    private final ImmutableList zzd;
    private final String zze;
    private final String zzf;

    /* compiled from: Proguard */
    @KeepForSdk
    /* loaded from: classes4.dex */
    public static final class Builder {
        String zza;
        private final zza zzb = new zza();
        private final ImmutableList.Builder zzc = ImmutableList.builder();
        private String zzd;
        private Uri zze;
        private Uri zzf;

        @NonNull
        public Builder addHost(@NonNull String str) {
            this.zzc.add((ImmutableList.Builder) str);
            return this;
        }

        @NonNull
        public Builder addHosts(@NonNull List<String> list) {
            this.zzc.addAll((Iterable) list);
            return this;
        }

        @NonNull
        public Builder addPosterImage(@NonNull Image image) {
            this.zzb.zza(image);
            return this;
        }

        @NonNull
        public Builder addPosterImages(@NonNull List<Image> list) {
            this.zzb.zzb(list);
            return this;
        }

        @NonNull
        public LiveRadioStationEntity build() {
            return new LiveRadioStationEntity(this, null);
        }

        @NonNull
        public Builder setDescription(@NonNull String str) {
            this.zzb.zzc(str);
            return this;
        }

        @NonNull
        public Builder setEntityId(@NonNull String str) {
            this.zzb.zzd(str);
            return this;
        }

        @NonNull
        public Builder setInfoPageUri(@NonNull Uri uri) {
            this.zzf = uri;
            return this;
        }

        @NonNull
        public Builder setLastEngagementTimeMillis(long j) {
            this.zzb.zze(j);
            return this;
        }

        @NonNull
        public Builder setName(@NonNull String str) {
            this.zzb.zzf(str);
            return this;
        }

        @NonNull
        public Builder setPlayBackUri(@NonNull Uri uri) {
            this.zze = uri;
            return this;
        }

        @NonNull
        public Builder setRadioFrequencyId(@NonNull String str) {
            this.zzd = str;
            return this;
        }

        @NonNull
        public Builder setShowTitle(@NonNull String str) {
            this.zza = str;
            return this;
        }
    }

    public /* synthetic */ LiveRadioStationEntity(Builder builder, zze zzeVar) {
        super(11);
        this.zza = new zzc(builder.zzb, null);
        this.zzd = builder.zzc.build();
        this.zzb = builder.zze;
        this.zzc = builder.zzf;
        this.zzf = builder.zza;
        this.zze = builder.zzd;
    }

    @NonNull
    public Optional<String> getDescription() {
        return this.zza.zzb();
    }

    @NonNull
    public Optional<String> getEntityId() {
        return this.zza.zzc();
    }

    @NonNull
    public List<String> getHosts() {
        return this.zzd;
    }

    @NonNull
    public Optional<Uri> getInfoPageUri() {
        return Optional.fromNullable(this.zzc);
    }

    @NonNull
    public Optional<Long> getLastEngagementTimeMillis() {
        return this.zza.zzd();
    }

    @NonNull
    public String getName() {
        return this.zza.zzf();
    }

    @NonNull
    public Uri getPlayBackUri() {
        return this.zzb;
    }

    @NonNull
    public List<Image> getPosterImages() {
        return this.zza.zzg();
    }

    @NonNull
    public Optional<String> getRadioFrequencyId() {
        return Optional.fromNullable(this.zze);
    }

    @NonNull
    public Optional<String> getShowTitle() {
        String str = this.zzf;
        if (!TextUtils.isEmpty(str)) {
            return Optional.of(str);
        }
        return Optional.absent();
    }

    @Override // com.google.android.engage.common.datamodel.Entity
    @NonNull
    public final Bundle toBundle() {
        Bundle bundle = super.toBundle();
        bundle.putBundle(ExifInterface.GPS_MEASUREMENT_IN_PROGRESS, this.zza.zza());
        ImmutableList immutableList = this.zzd;
        if (!immutableList.isEmpty()) {
            bundle.putStringArray("D", (String[]) immutableList.toArray(new String[0]));
        }
        Uri uri = this.zzb;
        if (uri != null) {
            bundle.putParcelable("B", uri);
        }
        Uri uri2 = this.zzc;
        if (uri2 != null) {
            bundle.putParcelable("C", uri2);
        }
        String str = this.zzf;
        if (!TextUtils.isEmpty(str)) {
            bundle.putString("F", str);
        }
        String str2 = this.zze;
        if (!TextUtils.isEmpty(str2)) {
            bundle.putString(ExifInterface.LONGITUDE_EAST, str2);
        }
        return bundle;
    }
}
