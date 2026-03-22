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
import com.google.common.collect.ImmutableList;
import java.util.List;
/* compiled from: Proguard */
@KeepForSdk
/* loaded from: classes4.dex */
public final class MusicAlbumEntity extends Entity {
    private final zzc zza;
    private final Uri zzb;
    private final Uri zzc;
    private final ImmutableList zzd;
    private final Integer zze;
    private final ImmutableList zzf;
    private final ImmutableList zzg;
    private final Long zzh;
    private final Long zzi;
    private final boolean zzj;
    private final int zzk;
    private final boolean zzl;

    /* compiled from: Proguard */
    @KeepForSdk
    /* loaded from: classes4.dex */
    public static final class Builder {
        private final zza zza = new zza();
        private final ImmutableList.Builder zzb = ImmutableList.builder();
        private final ImmutableList.Builder zzc = ImmutableList.builder();
        private final ImmutableList.Builder zzd = ImmutableList.builder();
        private Integer zze;
        private Long zzf;
        private Long zzg;
        private Uri zzh;
        private Uri zzi;
        private boolean zzj;
        private boolean zzk;
        private int zzl;

        @NonNull
        public Builder addArtist(@NonNull String str) {
            this.zzb.add((ImmutableList.Builder) str);
            return this;
        }

        @NonNull
        public Builder addArtists(@NonNull List<String> list) {
            this.zzb.addAll((Iterable) list);
            return this;
        }

        @NonNull
        public Builder addGenre(@NonNull String str) {
            this.zzc.add((ImmutableList.Builder) str);
            return this;
        }

        @NonNull
        public Builder addGenres(@NonNull List<String> list) {
            this.zzc.addAll((Iterable) list);
            return this;
        }

        @NonNull
        public Builder addMusicLabel(@NonNull String str) {
            this.zzd.add((ImmutableList.Builder) str);
            return this;
        }

        @NonNull
        public Builder addMusicLabels(@NonNull List<String> list) {
            this.zzd.addAll((Iterable) list);
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
        public MusicAlbumEntity build() {
            return new MusicAlbumEntity(this, null);
        }

        @NonNull
        public Builder setDescription(@NonNull String str) {
            this.zza.zzc(str);
            return this;
        }

        @NonNull
        public Builder setDownloadedOnDevice(boolean z) {
            this.zzj = z;
            return this;
        }

        @NonNull
        public Builder setDurationMillis(long j) {
            this.zzg = Long.valueOf(j);
            return this;
        }

        @NonNull
        public Builder setEntityId(@NonNull String str) {
            this.zza.zzd(str);
            return this;
        }

        @NonNull
        public Builder setExplicitContent(boolean z) {
            this.zzk = z;
            return this;
        }

        @NonNull
        public Builder setInfoPageUri(@NonNull Uri uri) {
            this.zzh = uri;
            return this;
        }

        @NonNull
        public Builder setLastEngagementTimeMillis(long j) {
            this.zza.zze(j);
            return this;
        }

        @NonNull
        public Builder setMusicAlbumType(int i) {
            this.zzl = i;
            return this;
        }

        @NonNull
        public Builder setName(@NonNull String str) {
            this.zza.zzf(str);
            return this;
        }

        @NonNull
        public Builder setPlayBackUri(@NonNull Uri uri) {
            this.zzi = uri;
            return this;
        }

        @NonNull
        public Builder setProgressPercentComplete(int i) {
            this.zza.zzg(i);
            return this;
        }

        @NonNull
        public Builder setReleaseDateEpochMillis(long j) {
            this.zzf = Long.valueOf(j);
            return this;
        }

        @NonNull
        public Builder setSongsCount(int i) {
            this.zze = Integer.valueOf(i);
            return this;
        }
    }

    public /* synthetic */ MusicAlbumEntity(Builder builder, zzf zzfVar) {
        super(12);
        this.zza = new zzc(builder.zza, null);
        this.zzb = builder.zzh;
        this.zzc = builder.zzi;
        this.zze = builder.zze;
        this.zzd = builder.zzb.build();
        this.zzf = builder.zzc.build();
        this.zzg = builder.zzd.build();
        this.zzh = builder.zzf;
        this.zzi = builder.zzg;
        this.zzj = builder.zzj;
        this.zzk = builder.zzl;
        this.zzl = builder.zzk;
    }

    @NonNull
    public List<String> getArtists() {
        return this.zzd;
    }

    @NonNull
    public Optional<String> getDescription() {
        return this.zza.zzb();
    }

    @NonNull
    public Optional<Long> getDurationMillis() {
        return Optional.fromNullable(this.zzi);
    }

    @NonNull
    public Optional<String> getEntityId() {
        return this.zza.zzc();
    }

    @NonNull
    public List<String> getGenres() {
        return this.zzf;
    }

    @NonNull
    public Uri getInfoPageUri() {
        return this.zzb;
    }

    @NonNull
    public Optional<Long> getLastEngagementTimeMillis() {
        return this.zza.zzd();
    }

    @NonNull
    public Optional<Integer> getMusicAlbumType() {
        int i = this.zzk;
        if (i > 0) {
            return Optional.of(Integer.valueOf(i));
        }
        return Optional.absent();
    }

    @NonNull
    public List<String> getMusicLabels() {
        return this.zzg;
    }

    @NonNull
    public String getName() {
        return this.zza.zzf();
    }

    @NonNull
    public Optional<Uri> getPlayBackUri() {
        return Optional.fromNullable(this.zzc);
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
    public Optional<Long> getReleaseDateEpochMillis() {
        return Optional.fromNullable(this.zzh);
    }

    @NonNull
    public Optional<Integer> getSongsCount() {
        return Optional.fromNullable(this.zze);
    }

    public boolean isDownloadedOnDevice() {
        return this.zzj;
    }

    public boolean isExplicitContent() {
        return this.zzl;
    }

    @Override // com.google.android.engage.common.datamodel.Entity
    @NonNull
    public final Bundle toBundle() {
        Bundle bundle = super.toBundle();
        bundle.putBundle(ExifInterface.GPS_MEASUREMENT_IN_PROGRESS, this.zza.zza());
        Uri uri = this.zzc;
        if (uri != null) {
            bundle.putParcelable("B", uri);
        }
        Uri uri2 = this.zzb;
        if (uri2 != null) {
            bundle.putParcelable("C", uri2);
        }
        Integer num = this.zze;
        if (num != null) {
            bundle.putInt(ExifInterface.LONGITUDE_EAST, num.intValue());
        }
        ImmutableList immutableList = this.zzd;
        if (!immutableList.isEmpty()) {
            bundle.putStringArray("D", (String[]) immutableList.toArray(new String[0]));
        }
        ImmutableList immutableList2 = this.zzf;
        if (!immutableList2.isEmpty()) {
            bundle.putStringArray("F", (String[]) immutableList2.toArray(new String[0]));
        }
        ImmutableList immutableList3 = this.zzg;
        if (!immutableList3.isEmpty()) {
            bundle.putStringArray(RequestConfiguration.MAX_AD_CONTENT_RATING_G, (String[]) immutableList3.toArray(new String[0]));
        }
        Long l = this.zzh;
        if (l != null) {
            bundle.putLong("H", l.longValue());
        }
        Long l2 = this.zzi;
        if (l2 != null) {
            bundle.putLong("I", l2.longValue());
        }
        bundle.putBoolean("K", this.zzl);
        bundle.putInt("J", this.zzk);
        bundle.putBoolean("L", this.zzj);
        return bundle;
    }
}
