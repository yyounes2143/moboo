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
public final class PodcastSeriesEntity extends Entity {
    private final zzc zza;
    private final Uri zzb;
    private final Uri zzc;
    private final Integer zzd;
    private final String zze;
    private final ImmutableList zzf;
    private final ImmutableList zzg;
    private final boolean zzh;
    private final boolean zzi;

    /* compiled from: Proguard */
    @KeepForSdk
    /* loaded from: classes4.dex */
    public static final class Builder {
        private Integer zzb;
        private String zzc;
        private boolean zzd;
        private Uri zzg;
        private Uri zzh;
        private boolean zzi;
        private final zza zza = new zza();
        private final ImmutableList.Builder zze = ImmutableList.builder();
        private final ImmutableList.Builder zzf = ImmutableList.builder();

        @NonNull
        public Builder addGenre(@NonNull String str) {
            this.zze.add((ImmutableList.Builder) str);
            return this;
        }

        @NonNull
        public Builder addGenres(@NonNull List<String> list) {
            this.zze.addAll((Iterable) list);
            return this;
        }

        @NonNull
        public Builder addHost(@NonNull String str) {
            this.zzf.add((ImmutableList.Builder) str);
            return this;
        }

        @NonNull
        public Builder addHosts(@NonNull List<String> list) {
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
        public PodcastSeriesEntity build() {
            return new PodcastSeriesEntity(this, null);
        }

        @NonNull
        public Builder setDescription(@NonNull String str) {
            this.zza.zzc(str);
            return this;
        }

        @NonNull
        public Builder setDownloadedOnDevice(boolean z) {
            this.zzd = z;
            return this;
        }

        @NonNull
        public Builder setEntityId(@NonNull String str) {
            this.zza.zzd(str);
            return this;
        }

        @NonNull
        public Builder setEpisodeCount(int i) {
            this.zzb = Integer.valueOf(i);
            return this;
        }

        @NonNull
        public Builder setExplicitContent(boolean z) {
            this.zzi = z;
            return this;
        }

        @NonNull
        public Builder setInfoPageUri(@NonNull Uri uri) {
            this.zzg = uri;
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
            this.zzh = uri;
            return this;
        }

        @NonNull
        public Builder setProductionName(@NonNull String str) {
            this.zzc = str;
            return this;
        }
    }

    public /* synthetic */ PodcastSeriesEntity(Builder builder, zzl zzlVar) {
        super(14);
        this.zza = new zzc(builder.zza, null);
        this.zzb = builder.zzg;
        this.zzc = builder.zzh;
        this.zzd = builder.zzb;
        this.zze = builder.zzc;
        this.zzf = builder.zzf.build();
        this.zzg = builder.zze.build();
        this.zzh = builder.zzd;
        this.zzi = builder.zzi;
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
    public Optional<Integer> getEpisodeCount() {
        return Optional.fromNullable(this.zzd);
    }

    @NonNull
    public List<String> getGenres() {
        return this.zzg;
    }

    @NonNull
    public List<String> getHosts() {
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
    public Optional<String> getProductionName() {
        String str = this.zze;
        if (TextUtils.isEmpty(str)) {
            return Optional.absent();
        }
        return Optional.fromNullable(str);
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
        Uri uri = this.zzc;
        if (uri != null) {
            bundle.putParcelable("B", uri);
        }
        Uri uri2 = this.zzb;
        if (uri2 != null) {
            bundle.putParcelable("C", uri2);
        }
        Integer num = this.zzd;
        if (num != null) {
            bundle.putInt("D", num.intValue());
        }
        String str = this.zze;
        if (!TextUtils.isEmpty(str)) {
            bundle.putString(ExifInterface.LONGITUDE_EAST, str);
        }
        ImmutableList immutableList = this.zzf;
        if (!immutableList.isEmpty()) {
            bundle.putStringArray("F", (String[]) immutableList.toArray(new String[0]));
        }
        ImmutableList immutableList2 = this.zzg;
        if (!immutableList2.isEmpty()) {
            bundle.putStringArray(RequestConfiguration.MAX_AD_CONTENT_RATING_G, (String[]) immutableList2.toArray(new String[0]));
        }
        bundle.putBoolean("H", this.zzi);
        bundle.putBoolean("I", this.zzh);
        return bundle;
    }
}
