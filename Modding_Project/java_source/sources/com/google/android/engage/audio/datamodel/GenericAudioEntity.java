package com.google.android.engage.audio.datamodel;

import android.net.Uri;
import android.os.Bundle;
import android.os.Parcelable;
import androidx.annotation.NonNull;
import androidx.exifinterface.media.ExifInterface;
import com.google.android.engage.common.datamodel.DisplayTimeWindow;
import com.google.android.engage.common.datamodel.Entity;
import com.google.android.engage.common.datamodel.Image;
import com.google.android.engage.common.datamodel.Price;
import com.google.android.engage.common.datamodel.Rating;
import com.google.android.gms.ads.RequestConfiguration;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.common.base.Optional;
import com.google.common.collect.ImmutableList;
import java.util.ArrayList;
import java.util.List;
/* compiled from: Proguard */
@KeepForSdk
/* loaded from: classes4.dex */
public final class GenericAudioEntity extends Entity {
    private final zzc zza;
    private final Uri zzb;
    private final Boolean zzc;
    private final Boolean zzd;
    private final int zze;
    private final Price zzf;
    private final Rating zzg;
    private final String zzh;
    private final String zzi;
    private final ImmutableList zzj;
    private final Boolean zzk;
    private final Boolean zzl;
    private final Boolean zzm;
    private final Boolean zzn;
    private final ImmutableList zzo;

    /* compiled from: Proguard */
    @KeepForSdk
    /* loaded from: classes4.dex */
    public static class Builder {
        private Uri zzb;
        private Boolean zzc;
        private Boolean zzd;
        private int zze;
        private Price zzf;
        private Rating zzg;
        private String zzh;
        private String zzi;
        private Boolean zzk;
        private Boolean zzl;
        private Boolean zzm;
        private Boolean zzn;
        private final zza zza = new zza();
        private final ImmutableList.Builder zzj = ImmutableList.builder();
        private final ImmutableList.Builder zzo = ImmutableList.builder();

        @NonNull
        public Builder addAllDisplayTimeWindow(@NonNull List<DisplayTimeWindow> list) {
            this.zzj.addAll((Iterable) list);
            return this;
        }

        @NonNull
        public Builder addDisplayTimeWindow(@NonNull DisplayTimeWindow displayTimeWindow) {
            this.zzj.add((ImmutableList.Builder) displayTimeWindow);
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
        public Builder addSubtitle(@NonNull String str) {
            this.zzo.add((ImmutableList.Builder) str);
            return this;
        }

        @NonNull
        public Builder addSubtitles(@NonNull List<String> list) {
            this.zzo.addAll((Iterable) list);
            return this;
        }

        @NonNull
        public GenericAudioEntity build() {
            return new GenericAudioEntity(this, null);
        }

        @NonNull
        public Builder setActionUri(@NonNull Uri uri) {
            this.zzb = uri;
            return this;
        }

        @NonNull
        public Builder setCallout(@NonNull String str) {
            this.zzh = str;
            return this;
        }

        @NonNull
        public Builder setCalloutFinePrint(@NonNull String str) {
            this.zzi = str;
            return this;
        }

        @NonNull
        public Builder setDownloadedOnDevice(boolean z) {
            this.zzc = Boolean.valueOf(z);
            return this;
        }

        @NonNull
        public Builder setEntityId(@NonNull String str) {
            this.zza.zzd(str);
            return this;
        }

        @NonNull
        public Builder setExplicitContent(boolean z) {
            this.zzd = Boolean.valueOf(z);
            return this;
        }

        @NonNull
        public Builder setIsArtist(@NonNull Boolean bool) {
            this.zzn = bool;
            return this;
        }

        @NonNull
        public Builder setIsBook(boolean z) {
            this.zzk = Boolean.valueOf(z);
            return this;
        }

        @NonNull
        public Builder setIsTalk(@NonNull Boolean bool) {
            this.zzl = bool;
            return this;
        }

        @NonNull
        public Builder setIsVideoSupported(@NonNull Boolean bool) {
            this.zzm = bool;
            return this;
        }

        @NonNull
        public Builder setLastEngagementTimeMillis(long j) {
            this.zza.zze(j);
            return this;
        }

        @NonNull
        public Builder setListenNextType(int i) {
            this.zze = i;
            return this;
        }

        @NonNull
        public Builder setName(@NonNull String str) {
            this.zza.zzf(str);
            return this;
        }

        @NonNull
        public Builder setPrice(@NonNull Price price) {
            this.zzf = price;
            return this;
        }

        @NonNull
        public Builder setProgressPercentComplete(int i) {
            this.zza.zzg(i);
            return this;
        }

        @NonNull
        public Builder setRating(@NonNull Rating rating) {
            this.zzg = rating;
            return this;
        }
    }

    public /* synthetic */ GenericAudioEntity(Builder builder, zzd zzdVar) {
        super(40);
        this.zza = new zzc(builder.zza, null);
        this.zzb = builder.zzb;
        this.zzc = builder.zzc;
        this.zzd = builder.zzd;
        this.zze = builder.zze;
        this.zzf = builder.zzf;
        this.zzg = builder.zzg;
        this.zzh = builder.zzh;
        this.zzi = builder.zzi;
        this.zzj = builder.zzj.build();
        this.zzk = builder.zzk;
        this.zzl = builder.zzl;
        this.zzm = builder.zzm;
        this.zzn = builder.zzn;
        this.zzo = builder.zzo.build();
    }

    @NonNull
    public Uri getActionUri() {
        return this.zzb;
    }

    @NonNull
    public Optional<String> getCallout() {
        return Optional.fromNullable(this.zzh);
    }

    @NonNull
    public Optional<String> getCalloutFinePrint() {
        return Optional.fromNullable(this.zzi);
    }

    @NonNull
    public ImmutableList<DisplayTimeWindow> getDisplayTimeWindows() {
        return this.zzj;
    }

    @NonNull
    public Optional<String> getEntityId() {
        return this.zza.zzc();
    }

    @NonNull
    public Optional<Long> getLastEngagementTimeMillis() {
        return this.zza.zzd();
    }

    public int getListenNextType() {
        return this.zze;
    }

    @NonNull
    public String getName() {
        return this.zza.zzf();
    }

    @NonNull
    public List<Image> getPosterImages() {
        return this.zza.zzg();
    }

    @NonNull
    public Optional<Price> getPrice() {
        return Optional.fromNullable(this.zzf);
    }

    @NonNull
    public Optional<Integer> getProgressPercentComplete() {
        return this.zza.zze();
    }

    @NonNull
    public Optional<Rating> getRating() {
        return Optional.fromNullable(this.zzg);
    }

    @NonNull
    public ImmutableList<String> getSubtitleList() {
        return this.zzo;
    }

    @NonNull
    public Optional<Boolean> isArtist() {
        return Optional.fromNullable(this.zzn);
    }

    @NonNull
    public Optional<Boolean> isBook() {
        return Optional.fromNullable(this.zzk);
    }

    @NonNull
    public Optional<Boolean> isDownloadedOnDevice() {
        return Optional.fromNullable(this.zzc);
    }

    @NonNull
    public Optional<Boolean> isExplicitContent() {
        return Optional.fromNullable(this.zzd);
    }

    @NonNull
    public Optional<Boolean> isTalk() {
        return Optional.fromNullable(this.zzl);
    }

    @NonNull
    public Optional<Boolean> isVideoSupported() {
        return Optional.fromNullable(this.zzm);
    }

    @Override // com.google.android.engage.common.datamodel.Entity
    @NonNull
    public Bundle toBundle() {
        Bundle bundle = super.toBundle();
        bundle.putBundle(ExifInterface.GPS_MEASUREMENT_IN_PROGRESS, this.zza.zza());
        Uri uri = this.zzb;
        if (uri != null) {
            bundle.putParcelable("B", uri);
        }
        Boolean bool = this.zzc;
        if (bool != null) {
            bundle.putBoolean("C", bool.booleanValue());
        }
        Boolean bool2 = this.zzd;
        if (bool2 != null) {
            bundle.putBoolean("D", bool2.booleanValue());
        }
        bundle.putInt(RequestConfiguration.MAX_AD_CONTENT_RATING_G, this.zze);
        Price price = this.zzf;
        if (price != null) {
            bundle.putBundle("H", price.zza());
        }
        Rating rating = this.zzg;
        if (rating != null) {
            bundle.putBundle("I", rating.zza());
        }
        String str = this.zzh;
        if (str != null) {
            bundle.putString("J", str);
        }
        String str2 = this.zzi;
        if (str2 != null) {
            bundle.putString("K", str2);
        }
        ImmutableList immutableList = this.zzj;
        if (!immutableList.isEmpty()) {
            ArrayList<? extends Parcelable> arrayList = new ArrayList<>();
            int size = immutableList.size();
            for (int i = 0; i < size; i++) {
                arrayList.add(((DisplayTimeWindow) immutableList.get(i)).zza());
            }
            bundle.putParcelableArrayList("L", arrayList);
        }
        Boolean bool3 = this.zzk;
        if (bool3 != null) {
            bundle.putBoolean("M", bool3.booleanValue());
        }
        Boolean bool4 = this.zzl;
        if (bool4 != null) {
            bundle.putBoolean("N", bool4.booleanValue());
        }
        Boolean bool5 = this.zzm;
        if (bool5 != null) {
            bundle.putBoolean("F", bool5.booleanValue());
        }
        Boolean bool6 = this.zzn;
        if (bool6 != null) {
            bundle.putBoolean("O", bool6.booleanValue());
        }
        ImmutableList immutableList2 = this.zzo;
        if (!immutableList2.isEmpty()) {
            bundle.putStringArray(ExifInterface.LONGITUDE_EAST, (String[]) immutableList2.toArray(new String[0]));
        }
        return bundle;
    }
}
