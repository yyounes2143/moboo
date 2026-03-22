package com.google.android.engage.audio.datamodel;

import android.net.Uri;
import android.os.Bundle;
import androidx.annotation.NonNull;
import androidx.exifinterface.media.ExifInterface;
import com.google.android.engage.common.datamodel.Entity;
import com.google.android.engage.common.datamodel.Image;
import com.google.android.gms.ads.RequestConfiguration;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.common.base.Optional;
import java.util.List;
/* compiled from: Proguard */
@KeepForSdk
/* loaded from: classes4.dex */
public final class PlaylistEntity extends Entity {
    private final zzc zza;
    private final Uri zzb;
    private final Integer zzc;
    private final Long zzd;
    private final Uri zze;
    private final boolean zzf;
    private final boolean zzg;

    /* compiled from: Proguard */
    @KeepForSdk
    /* loaded from: classes4.dex */
    public static final class Builder {
        private final zza zza = new zza();
        private Uri zzb;
        private Integer zzc;
        private Long zzd;
        private Uri zze;
        private boolean zzf;
        private boolean zzg;

        @NonNull
        public Builder addPosterImage(@NonNull Image image) {
            this.zza.zza(image);
            return this;
        }

        @NonNull
        public Builder addPosterImages(@NonNull List<Image> list) {
            this.zza.zzb(list);
            return this;
        }

        @NonNull
        public PlaylistEntity build() {
            return new PlaylistEntity(this, null);
        }

        @NonNull
        public Builder setDescription(@NonNull String str) {
            this.zza.zzc(str);
            return this;
        }

        @NonNull
        public Builder setDownloadedOnDevice(boolean z) {
            this.zzf = z;
            return this;
        }

        @NonNull
        public Builder setDurationMillis(long j) {
            this.zzd = Long.valueOf(j);
            return this;
        }

        @NonNull
        public Builder setEntityId(@NonNull String str) {
            this.zza.zzd(str);
            return this;
        }

        @NonNull
        public Builder setExplicitContent(boolean z) {
            this.zzg = z;
            return this;
        }

        @NonNull
        public Builder setInfoPageUri(@NonNull Uri uri) {
            this.zze = uri;
            return this;
        }

        @NonNull
        public Builder setLastEngagementTimeMillis(long j) {
            this.zza.zze(j);
            return this;
        }

        @NonNull
        public Builder setName(@NonNull String str) {
            this.zza.zzf(str);
            return this;
        }

        @NonNull
        public Builder setPlayBackUri(@NonNull Uri uri) {
            this.zzb = uri;
            return this;
        }

        @NonNull
        public Builder setProgressPercentComplete(int i) {
            this.zza.zzg(i);
            return this;
        }

        @NonNull
        public Builder setSongsCount(int i) {
            this.zzc = Integer.valueOf(i);
            return this;
        }
    }

    public /* synthetic */ PlaylistEntity(Builder builder, zzj zzjVar) {
        super(16);
        this.zza = new zzc(builder.zza, null);
        this.zzb = builder.zzb;
        this.zzc = builder.zzc;
        this.zzd = builder.zzd;
        this.zze = builder.zze;
        this.zzf = builder.zzf;
        this.zzg = builder.zzg;
    }

    @NonNull
    public Optional<String> getDescription() {
        return this.zza.zzb();
    }

    @NonNull
    public Optional<Long> getDurationMillis() {
        Long l = this.zzd;
        if (l != null && l.longValue() > 0) {
            return Optional.of(l);
        }
        return Optional.absent();
    }

    @NonNull
    public Optional<String> getEntityId() {
        return this.zza.zzc();
    }

    @NonNull
    public Optional<Uri> getInfoPageUri() {
        return Optional.fromNullable(this.zze);
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
    public Optional<Integer> getProgressPercentComplete() {
        return this.zza.zze();
    }

    @NonNull
    public Optional<Integer> getSongsCount() {
        Integer num = this.zzc;
        if (num != null && num.intValue() > 0) {
            return Optional.of(num);
        }
        return Optional.absent();
    }

    public boolean isDownloadedOnDevice() {
        return this.zzf;
    }

    public boolean isExplicitContent() {
        return this.zzg;
    }

    @Override // com.google.android.engage.common.datamodel.Entity
    @NonNull
    public final Bundle toBundle() {
        Bundle bundle = super.toBundle();
        bundle.putBundle(ExifInterface.GPS_MEASUREMENT_IN_PROGRESS, this.zza.zza());
        Uri uri = this.zzb;
        if (uri != null) {
            bundle.putParcelable("B", uri);
        }
        Uri uri2 = this.zze;
        if (uri2 != null) {
            bundle.putParcelable("C", uri2);
        }
        Integer num = this.zzc;
        if (num != null) {
            bundle.putInt("D", num.intValue());
        }
        Long l = this.zzd;
        if (l != null) {
            bundle.putLong(ExifInterface.LONGITUDE_EAST, l.longValue());
        }
        bundle.putBoolean("F", this.zzg);
        bundle.putBoolean(RequestConfiguration.MAX_AD_CONTENT_RATING_G, this.zzf);
        return bundle;
    }
}
