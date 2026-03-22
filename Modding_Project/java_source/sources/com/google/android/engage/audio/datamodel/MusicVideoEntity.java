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
public final class MusicVideoEntity extends Entity {
    private final zzc zza;
    private final Uri zzb;
    private final Uri zzc;
    private final Long zzd;
    private final String zze;
    private final ImmutableList zzf;
    private final ImmutableList zzg;
    private final boolean zzh;
    private final boolean zzi;

    /* compiled from: Proguard */
    @KeepForSdk
    /* loaded from: classes4.dex */
    public static final class Builder {
        private Uri zzb;
        private Long zzc;
        private Uri zzd;
        private String zze;
        private boolean zzh;
        private boolean zzi;
        private final zza zza = new zza();
        private final ImmutableList.Builder zzf = ImmutableList.builder();
        private final ImmutableList.Builder zzg = ImmutableList.builder();

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
        public Builder addContentRating(@NonNull String str) {
            this.zzg.add((ImmutableList.Builder) str);
            return this;
        }

        @NonNull
        public Builder addContentRatings(@NonNull List<String> list) {
            this.zzg.addAll((Iterable) list);
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
        public MusicVideoEntity build() {
            return new MusicVideoEntity(this, null);
        }

        @NonNull
        public Builder setDescription(@NonNull String str) {
            this.zza.zzc(str);
            return this;
        }

        @NonNull
        public Builder setDownloadedOnDevice(boolean z) {
            this.zzh = z;
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
            this.zzi = z;
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

        @NonNull
        public Builder setViewCount(@NonNull String str) {
            this.zze = str;
            return this;
        }
    }

    public /* synthetic */ MusicVideoEntity(Builder builder, zzi zziVar) {
        super(17);
        this.zza = new zzc(builder.zza, null);
        this.zzb = builder.zzb;
        this.zzd = builder.zzc;
        this.zzc = builder.zzd;
        this.zze = builder.zze;
        this.zzf = builder.zzf.build();
        this.zzg = builder.zzg.build();
        this.zzh = builder.zzh;
        this.zzi = builder.zzi;
    }

    @NonNull
    public List<String> getArtists() {
        return this.zzf;
    }

    @NonNull
    public List<String> getContentRatings() {
        return this.zzg;
    }

    @NonNull
    public Optional<String> getDescription() {
        return this.zza.zzb();
    }

    @NonNull
    public Optional<Long> getDurationMillis() {
        return Optional.fromNullable(this.zzd);
    }

    @NonNull
    public Optional<String> getEntityId() {
        return this.zza.zzc();
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
    public Optional<Integer> getProgressPercentComplete() {
        return this.zza.zze();
    }

    @NonNull
    public Optional<String> getViewCount() {
        String str = this.zze;
        if (!TextUtils.isEmpty(str)) {
            return Optional.of(str);
        }
        return Optional.absent();
    }

    public boolean isDownloadedOnDevice() {
        return this.zzh;
    }

    public boolean isExplicitContent() {
        return this.zzi;
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
        Uri uri2 = this.zzc;
        if (uri2 != null) {
            bundle.putParcelable("C", uri2);
        }
        ImmutableList immutableList = this.zzf;
        if (!immutableList.isEmpty()) {
            bundle.putStringArray("D", (String[]) immutableList.toArray(new String[0]));
        }
        Long l = this.zzd;
        if (l != null) {
            bundle.putLong(RequestConfiguration.MAX_AD_CONTENT_RATING_G, l.longValue());
        }
        String str = this.zze;
        if (!TextUtils.isEmpty(str)) {
            bundle.putString(ExifInterface.LONGITUDE_EAST, str);
        }
        ImmutableList immutableList2 = this.zzg;
        if (!immutableList2.isEmpty()) {
            bundle.putStringArray("F", (String[]) immutableList2.toArray(new String[0]));
        }
        bundle.putBoolean("H", this.zzi);
        bundle.putBoolean("I", this.zzh);
        return bundle;
    }
}
