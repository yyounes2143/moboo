package com.google.android.engage.audio.datamodel;

import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.exifinterface.media.ExifInterface;
import com.google.android.engage.common.datamodel.Entity;
import com.google.android.engage.common.datamodel.Image;
import com.google.android.gms.ads.RequestConfiguration;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.common.base.Optional;
import com.google.common.collect.ImmutableList;
import java.util.List;
/* compiled from: Proguard */
@KeepForSdk
/* loaded from: classes4.dex */
public final class MusicTrackEntity extends Entity {
    private final zzc zza;
    private final Uri zzb;
    private final Long zzc;
    private final Uri zzd;
    private final String zze;
    private final ImmutableList zzf;
    private final boolean zzg;
    private final boolean zzh;

    /* compiled from: Proguard */
    @KeepForSdk
    /* loaded from: classes4.dex */
    public static final class Builder {
        private Uri zzb;
        private Long zzc;
        private Uri zzd;
        private String zze;
        private boolean zzg;
        private boolean zzh;
        private final zza zza = new zza();
        private final ImmutableList.Builder zzf = ImmutableList.builder();

        @NonNull
        public Builder addArtist(@NonNull String str) {
            this.zzf.add((ImmutableList.Builder) str);
            return this;
        }

        @NonNull
        public Builder addArtists(@NonNull List<String> list) {
            this.zzf.addAll((Iterable) list);
            return this;
        }

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
        public MusicTrackEntity build() {
            return new MusicTrackEntity(this, null);
        }

        @NonNull
        public Builder setAlbum(@NonNull String str) {
            this.zze = str;
            return this;
        }

        @NonNull
        public Builder setDescription(@NonNull String str) {
            this.zza.zzc(str);
            return this;
        }

        @NonNull
        public Builder setDownloadedOnDevice(boolean z) {
            this.zzg = z;
            return this;
        }

        @NonNull
        public Builder setDurationMillis(long j) {
            this.zzc = Long.valueOf(j);
            return this;
        }

        @NonNull
        public Builder setEntityId(@NonNull String str) {
            this.zza.zzd(str);
            return this;
        }

        @NonNull
        public Builder setExplicitContent(boolean z) {
            this.zzh = z;
            return this;
        }

        @NonNull
        public Builder setInfoPageUri(@NonNull Uri uri) {
            this.zzd = uri;
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
    }

    public /* synthetic */ MusicTrackEntity(Builder builder, zzh zzhVar) {
        super(18);
        this.zza = new zzc(builder.zza, null);
        this.zzb = builder.zzb;
        this.zzd = builder.zzd;
        this.zzf = builder.zzf.build();
        this.zzc = builder.zzc;
        this.zze = builder.zze;
        this.zzg = builder.zzg;
        this.zzh = builder.zzh;
    }

    @NonNull
    public Optional<String> getAlbum() {
        String str = this.zze;
        if (!TextUtils.isEmpty(str)) {
            return Optional.of(str);
        }
        return Optional.absent();
    }

    @NonNull
    public List<String> getArtists() {
        return this.zzf;
    }

    @NonNull
    public Optional<String> getDescription() {
        return this.zza.zzb();
    }

    @NonNull
    public Optional<Long> getDurationMillis() {
        Long l = this.zzc;
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
        return Optional.fromNullable(this.zzd);
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

    public boolean isDownloadedOnDevice() {
        return this.zzg;
    }

    public boolean isExplicitContent() {
        return this.zzh;
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
        Uri uri2 = this.zzd;
        if (uri2 != null) {
            bundle.putParcelable("C", uri2);
        }
        ImmutableList immutableList = this.zzf;
        if (!immutableList.isEmpty()) {
            bundle.putStringArray("D", (String[]) immutableList.toArray(new String[0]));
        }
        Long l = this.zzc;
        if (l != null) {
            bundle.putLong("F", l.longValue());
        }
        String str = this.zze;
        if (!TextUtils.isEmpty(str)) {
            bundle.putString(ExifInterface.LONGITUDE_EAST, str);
        }
        bundle.putBoolean(RequestConfiguration.MAX_AD_CONTENT_RATING_G, this.zzh);
        bundle.putBoolean("H", this.zzg);
        return bundle;
    }
}
