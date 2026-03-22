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
public final class PodcastEpisodeEntity extends Entity {
    private final zzc zza;
    private final int zzb;
    private final Uri zzc;
    private final Uri zzd;
    private final String zze;
    private final String zzf;
    private final long zzg;
    private final Integer zzh;
    private final ImmutableList zzi;
    private final ImmutableList zzj;
    private final boolean zzk;
    private final long zzl;
    private final boolean zzm;
    private final boolean zzn;

    /* compiled from: Proguard */
    @KeepForSdk
    /* loaded from: classes4.dex */
    public static final class Builder {
        public int listenNextType;
        private Uri zzb;
        private Uri zzc;
        private Integer zzd;
        private String zze;
        private String zzf;
        private boolean zzg;
        private long zzi;
        private boolean zzl;
        private boolean zzm;
        private final zza zza = new zza();
        private long zzh = Long.MIN_VALUE;
        private final ImmutableList.Builder zzj = ImmutableList.builder();
        private final ImmutableList.Builder zzk = ImmutableList.builder();

        @NonNull
        public Builder addGenre(@NonNull String str) {
            this.zzj.add((ImmutableList.Builder) str);
            return this;
        }

        @NonNull
        public Builder addGenres(@NonNull List<String> list) {
            this.zzj.addAll((Iterable) list);
            return this;
        }

        @NonNull
        public Builder addHost(@NonNull String str) {
            this.zzk.add((ImmutableList.Builder) str);
            return this;
        }

        @NonNull
        public Builder addHosts(@NonNull List<String> list) {
            this.zzk.addAll((Iterable) list);
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
        public PodcastEpisodeEntity build() {
            return new PodcastEpisodeEntity(this, null);
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
            this.zzh = j;
            return this;
        }

        @NonNull
        public Builder setEntityId(@NonNull String str) {
            this.zza.zzd(str);
            return this;
        }

        @NonNull
        public Builder setEpisodeIndex(int i) {
            this.zzd = Integer.valueOf(i);
            return this;
        }

        @NonNull
        public Builder setExplicitContent(boolean z) {
            this.zzl = z;
            return this;
        }

        @NonNull
        public Builder setInfoPageUri(@NonNull Uri uri) {
            this.zzc = uri;
            return this;
        }

        @NonNull
        public Builder setLastEngagementTimeMillis(long j) {
            this.zza.zze(j);
            return this;
        }

        @NonNull
        public Builder setListenNextType(int i) {
            this.listenNextType = i;
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
        public Builder setPodcastSeriesTitle(@NonNull String str) {
            this.zze = str;
            return this;
        }

        @NonNull
        public Builder setProductionName(@NonNull String str) {
            this.zzf = str;
            return this;
        }

        @NonNull
        public Builder setProgressPercentComplete(int i) {
            this.zza.zzg(i);
            return this;
        }

        @NonNull
        public Builder setPublishDateEpochMillis(long j) {
            this.zzi = j;
            return this;
        }

        @NonNull
        public Builder setVideoPodcast(boolean z) {
            this.zzm = z;
            return this;
        }
    }

    public /* synthetic */ PodcastEpisodeEntity(Builder builder, zzk zzkVar) {
        super(15);
        this.zza = new zzc(builder.zza, null);
        this.zzc = builder.zzb;
        this.zzd = builder.zzc;
        this.zze = builder.zze;
        this.zzf = builder.zzf;
        this.zzg = builder.zzh;
        this.zzb = builder.listenNextType;
        this.zzh = builder.zzd;
        this.zzi = builder.zzk.build();
        this.zzj = builder.zzj.build();
        this.zzk = builder.zzg;
        this.zzl = builder.zzi;
        this.zzm = builder.zzl;
        this.zzn = builder.zzm;
    }

    @NonNull
    public Optional<String> getDescription() {
        return this.zza.zzb();
    }

    public long getDurationMillis() {
        return this.zzg;
    }

    @NonNull
    public Optional<String> getEntityId() {
        return this.zza.zzc();
    }

    @NonNull
    public Optional<Integer> getEpisodeIndex() {
        return Optional.fromNullable(this.zzh);
    }

    @NonNull
    public List<String> getGenres() {
        return this.zzj;
    }

    @NonNull
    public List<String> getHosts() {
        return this.zzi;
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
    public Optional<Integer> getListenNextType() {
        int i = this.zzb;
        if (i > 0) {
            return Optional.of(Integer.valueOf(i));
        }
        return Optional.absent();
    }

    @NonNull
    public String getName() {
        return this.zza.zzf();
    }

    @NonNull
    public Uri getPlayBackUri() {
        return this.zzc;
    }

    @NonNull
    public String getPodcastSeriesTitle() {
        return this.zze;
    }

    @NonNull
    public List<Image> getPosterImages() {
        return this.zza.zzg();
    }

    @NonNull
    public Optional<String> getProductionName() {
        String str = this.zzf;
        if (!TextUtils.isEmpty(str)) {
            return Optional.of(str);
        }
        return Optional.absent();
    }

    @NonNull
    public Optional<Integer> getProgressPercentComplete() {
        return this.zza.zze();
    }

    public long getPublishDateEpochMillis() {
        return this.zzl;
    }

    public boolean isDownloadedOnDevice() {
        return this.zzk;
    }

    public boolean isExplicitContent() {
        return this.zzm;
    }

    public boolean isVideoPodcast() {
        return this.zzn;
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
        Uri uri2 = this.zzd;
        if (uri2 != null) {
            bundle.putParcelable("C", uri2);
        }
        String str = this.zze;
        if (!TextUtils.isEmpty(str)) {
            bundle.putString("D", str);
        }
        String str2 = this.zzf;
        if (!TextUtils.isEmpty(str2)) {
            bundle.putString(ExifInterface.LONGITUDE_EAST, str2);
        }
        bundle.putLong("F", this.zzg);
        bundle.putInt("N", this.zzb);
        ImmutableList immutableList = this.zzi;
        if (!immutableList.isEmpty()) {
            bundle.putStringArray("H", (String[]) immutableList.toArray(new String[0]));
        }
        ImmutableList immutableList2 = this.zzj;
        if (!immutableList2.isEmpty()) {
            bundle.putStringArray("I", (String[]) immutableList2.toArray(new String[0]));
        }
        Integer num = this.zzh;
        if (num != null) {
            bundle.putInt(RequestConfiguration.MAX_AD_CONTENT_RATING_G, num.intValue());
        }
        bundle.putLong("J", this.zzl);
        bundle.putBoolean("M", this.zzn);
        bundle.putBoolean("K", this.zzm);
        bundle.putBoolean("L", this.zzk);
        return bundle;
    }
}
