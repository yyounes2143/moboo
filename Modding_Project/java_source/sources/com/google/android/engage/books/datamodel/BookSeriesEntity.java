package com.google.android.engage.books.datamodel;

import android.net.Uri;
import android.os.Bundle;
import androidx.annotation.NonNull;
import androidx.exifinterface.media.ExifInterface;
import com.google.android.engage.common.datamodel.DisplayTimeWindow;
import com.google.android.engage.common.datamodel.Entity;
import com.google.android.engage.common.datamodel.Image;
import com.google.android.engage.common.datamodel.Rating;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.common.base.Optional;
import com.google.common.collect.ImmutableList;
import java.util.List;
/* compiled from: Proguard */
@KeepForSdk
/* loaded from: classes4.dex */
public final class BookSeriesEntity extends Entity {
    private final zzd zza;
    private final ImmutableList zzb;
    private final int zzc;

    /* compiled from: Proguard */
    @KeepForSdk
    /* loaded from: classes4.dex */
    public static final class Builder {
        private int zzb;
        private final ImmutableList.Builder zza = ImmutableList.builder();
        private final zzb zzc = new zzb();

        @NonNull
        public Builder addAllDisplayTimeWindow(@NonNull List<DisplayTimeWindow> list) {
            this.zzc.zza.addAll((Iterable) list);
            return this;
        }

        @NonNull
        public Builder addAuthor(@NonNull String str) {
            this.zza.add((ImmutableList.Builder) str);
            return this;
        }

        @NonNull
        public Builder addAuthors(@NonNull List<String> list) {
            this.zza.addAll((Iterable) list);
            return this;
        }

        @NonNull
        public Builder addDisplayTimeWindow(@NonNull DisplayTimeWindow displayTimeWindow) {
            this.zzc.zza.add((ImmutableList.Builder) displayTimeWindow);
            return this;
        }

        @NonNull
        public Builder addGenre(@NonNull String str) {
            this.zzc.zzd(str);
            return this;
        }

        @NonNull
        public Builder addGenres(@NonNull List<String> list) {
            this.zzc.zze(list);
            return this;
        }

        @NonNull
        public Builder addPosterImage(@NonNull Image image) {
            this.zzc.zzf(image);
            return this;
        }

        @NonNull
        public Builder addPosterImages(@NonNull List<Image> list) {
            this.zzc.zzg(list);
            return this;
        }

        @NonNull
        public BookSeriesEntity build() {
            return new BookSeriesEntity(this, null);
        }

        @NonNull
        public Builder setActionLinkUri(@NonNull Uri uri) {
            this.zzc.zzh(uri);
            return this;
        }

        @NonNull
        public Builder setAvailability(int i) {
            this.zzc.zzi(i);
            return this;
        }

        @NonNull
        public Builder setBookCount(int i) {
            this.zzb = i;
            return this;
        }

        @NonNull
        public Builder setContinueBookType(int i) {
            this.zzc.zzj(i);
            return this;
        }

        @NonNull
        public Builder setDescription(@NonNull String str) {
            this.zzc.zzk(str);
            return this;
        }

        @NonNull
        public Builder setDownloadedOnDevice(boolean z) {
            this.zzc.zzl(z);
            return this;
        }

        @NonNull
        public Builder setEntityId(@NonNull String str) {
            this.zzc.zzm(str);
            return this;
        }

        @NonNull
        public Builder setLastEngagementTimeMillis(long j) {
            this.zzc.zzn(j);
            return this;
        }

        @NonNull
        public Builder setName(@NonNull String str) {
            this.zzc.zzo(str);
            return this;
        }

        @NonNull
        public Builder setProgressPercentComplete(int i) {
            this.zzc.zzp(i);
            return this;
        }

        @NonNull
        public Builder setRating(@NonNull Rating rating) {
            this.zzc.zzq(rating);
            return this;
        }
    }

    public /* synthetic */ BookSeriesEntity(Builder builder, zze zzeVar) {
        super(10);
        this.zza = new zzd(builder.zzc, null);
        this.zzb = builder.zza.build();
        this.zzc = builder.zzb;
    }

    @NonNull
    public Uri getActionLinkUri() {
        return this.zza.zzb();
    }

    @NonNull
    public List<String> getAuthors() {
        return this.zzb;
    }

    public int getAvailability() {
        return this.zza.zza();
    }

    public int getBookCount() {
        return this.zzc;
    }

    @NonNull
    public Optional<Integer> getContinueBookType() {
        return this.zza.zzd();
    }

    @NonNull
    public Optional<String> getDescription() {
        return this.zza.zze();
    }

    @NonNull
    public List<DisplayTimeWindow> getDisplayTimeWindows() {
        return this.zza.zzk();
    }

    @NonNull
    public Optional<String> getEntityId() {
        return this.zza.zzf();
    }

    @NonNull
    public List<String> getGenres() {
        return this.zza.zzl();
    }

    @NonNull
    public Optional<Long> getLastEngagementTimeMillis() {
        return this.zza.zzg();
    }

    @NonNull
    public String getName() {
        return this.zza.zzj();
    }

    @NonNull
    public List<Image> getPosterImages() {
        return this.zza.zzm();
    }

    @NonNull
    public Optional<Integer> getProgressPercentComplete() {
        return this.zza.zzh();
    }

    @NonNull
    public Optional<Rating> getRating() {
        return this.zza.zzi();
    }

    public boolean isDownloadedOnDevice() {
        return this.zza.zzn();
    }

    @Override // com.google.android.engage.common.datamodel.Entity
    @NonNull
    public final Bundle toBundle() {
        Bundle bundle = super.toBundle();
        bundle.putBundle(ExifInterface.GPS_MEASUREMENT_IN_PROGRESS, this.zza.zzc());
        ImmutableList immutableList = this.zzb;
        if (!immutableList.isEmpty()) {
            bundle.putStringArray("B", (String[]) immutableList.toArray(new String[0]));
        }
        bundle.putInt("C", this.zzc);
        return bundle;
    }
}
