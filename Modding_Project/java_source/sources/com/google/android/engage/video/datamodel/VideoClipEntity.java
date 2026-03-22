package com.google.android.engage.video.datamodel;

import android.net.Uri;
import android.os.Bundle;
import android.os.Parcelable;
import androidx.annotation.NonNull;
import androidx.exifinterface.media.ExifInterface;
import com.google.android.engage.common.datamodel.DisplayTimeWindow;
import com.google.android.engage.common.datamodel.Entity;
import com.google.android.engage.common.datamodel.Image;
import com.google.android.engage.common.datamodel.PlatformSpecificUri;
import com.google.android.gms.ads.RequestConfiguration;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.common.base.Optional;
import com.google.common.collect.ImmutableList;
import java.util.ArrayList;
import java.util.List;
/* compiled from: Proguard */
@KeepForSdk
/* loaded from: classes4.dex */
public final class VideoClipEntity extends Entity {
    private final zzv zza;
    private final Uri zzb;
    private final long zzc;
    private final long zzd;
    private final String zze;
    private final String zzf;
    private final boolean zzg;
    private final Image zzh;
    private final ImmutableList zzi;

    /* compiled from: Proguard */
    @KeepForSdk
    /* loaded from: classes4.dex */
    public static final class Builder {
        private Uri zzb;
        private String zze;
        private String zzf;
        private boolean zzg;
        private Image zzi;
        private final zzt zza = new zzt();
        private long zzc = Long.MIN_VALUE;
        private long zzd = -1;
        private final ImmutableList.Builder zzh = ImmutableList.builder();

        @NonNull
        public Builder addAllAvailabilityTimeWindows(@NonNull List<DisplayTimeWindow> list) {
            this.zza.zzd(list);
            return this;
        }

        @NonNull
        public Builder addAvailabilityTimeWindow(@NonNull DisplayTimeWindow displayTimeWindow) {
            this.zza.zze(displayTimeWindow);
            return this;
        }

        @NonNull
        public Builder addPlatformSpecificPlaybackUri(@NonNull PlatformSpecificUri platformSpecificUri) {
            this.zzh.add((ImmutableList.Builder) platformSpecificUri);
            return this;
        }

        @NonNull
        public Builder addPlatformSpecificPlaybackUris(@NonNull List<PlatformSpecificUri> list) {
            this.zzh.addAll((Iterable) list);
            return this;
        }

        @NonNull
        public Builder addPosterImage(@NonNull Image image) {
            this.zza.zzf(image);
            return this;
        }

        @NonNull
        public Builder addPosterImages(@NonNull List<Image> list) {
            this.zza.zzg(list);
            return this;
        }

        @NonNull
        public VideoClipEntity build() {
            return new VideoClipEntity(this, null);
        }

        @NonNull
        public Builder setCreatedTimeEpochMillis(long j) {
            this.zzc = j;
            return this;
        }

        @NonNull
        public Builder setCreator(@NonNull String str) {
            this.zze = str;
            return this;
        }

        @NonNull
        public Builder setCreatorImage(@NonNull Image image) {
            this.zzi = image;
            return this;
        }

        @NonNull
        public Builder setDownloadedOnDevice(boolean z) {
            this.zzg = z;
            return this;
        }

        @NonNull
        public Builder setDurationMillis(long j) {
            this.zzd = j;
            return this;
        }

        @NonNull
        public Builder setEntityId(@NonNull String str) {
            this.zza.zzi(str);
            return this;
        }

        @NonNull
        public Builder setLastEngagementTimeMillis(long j) {
            this.zza.zzj(j);
            return this;
        }

        @NonNull
        public Builder setLastPlayBackPositionTimeMillis(long j) {
            this.zza.zzk(j);
            return this;
        }

        @NonNull
        public Builder setName(@NonNull String str) {
            this.zza.zzl(str);
            return this;
        }

        @NonNull
        public Builder setPlayBackUri(@NonNull Uri uri) {
            this.zzb = uri;
            return this;
        }

        @NonNull
        public Builder setViewCount(@NonNull String str) {
            this.zzf = str;
            return this;
        }

        @NonNull
        public Builder setWatchNextType(int i) {
            this.zza.zzn(i);
            return this;
        }
    }

    public /* synthetic */ VideoClipEntity(Builder builder, zzs zzsVar) {
        super(6);
        this.zza = new zzv(builder.zza, null);
        this.zzb = builder.zzb;
        this.zzc = builder.zzc;
        this.zzd = builder.zzd;
        this.zze = builder.zze;
        this.zzf = builder.zzf;
        this.zzg = builder.zzg;
        this.zzh = builder.zzi;
        this.zzi = builder.zzh.build();
    }

    @NonNull
    public List<DisplayTimeWindow> getAvailabilityTimeWindows() {
        return this.zza.zzi();
    }

    public long getCreatedTimeEpochMillis() {
        return this.zzc;
    }

    @NonNull
    public String getCreator() {
        return this.zze;
    }

    @NonNull
    public Optional<Image> getCreatorImage() {
        return Optional.fromNullable(this.zzh);
    }

    public long getDurationMillis() {
        return this.zzd;
    }

    @NonNull
    public Optional<String> getEntityId() {
        return this.zza.zzc();
    }

    @NonNull
    public Optional<Long> getLastEngagementTimeMillis() {
        return this.zza.zzd();
    }

    @NonNull
    public Optional<Long> getLastPlayBackPositionTimeMillis() {
        return this.zza.zze();
    }

    @NonNull
    public String getName() {
        return this.zza.zzh();
    }

    @NonNull
    public List<PlatformSpecificUri> getPlatformSpecificPlaybackUris() {
        return this.zzi;
    }

    @NonNull
    public Uri getPlayBackUri() {
        return this.zzb;
    }

    @NonNull
    public List<Image> getPosterImages() {
        return this.zza.zzj();
    }

    @NonNull
    public Optional<String> getViewCount() {
        return Optional.fromNullable(this.zzf);
    }

    @NonNull
    public Optional<Integer> getWatchNextType() {
        return this.zza.zzg();
    }

    public boolean isDownloadedOnDevice() {
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
        long j = this.zzc;
        if (j != Long.MIN_VALUE) {
            bundle.putLong("C", j);
        }
        long j2 = this.zzd;
        if (j2 != -1) {
            bundle.putLong("D", j2);
        }
        String str = this.zze;
        if (str != null) {
            bundle.putString(ExifInterface.LONGITUDE_EAST, str);
        }
        String str2 = this.zzf;
        if (str2 != null) {
            bundle.putString("F", str2);
        }
        bundle.putBoolean(RequestConfiguration.MAX_AD_CONTENT_RATING_G, this.zzg);
        Image image = this.zzh;
        if (image != null) {
            bundle.putBundle("H", image.zza());
        }
        ImmutableList immutableList = this.zzi;
        if (!immutableList.isEmpty()) {
            ArrayList<? extends Parcelable> arrayList = new ArrayList<>();
            int size = immutableList.size();
            for (int i = 0; i < size; i++) {
                arrayList.add(((PlatformSpecificUri) immutableList.get(i)).zza());
            }
            bundle.putParcelableArrayList("I", arrayList);
        }
        return bundle;
    }
}
