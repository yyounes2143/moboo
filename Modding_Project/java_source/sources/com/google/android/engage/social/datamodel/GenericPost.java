package com.google.android.engage.social.datamodel;

import android.os.Bundle;
import android.os.Parcelable;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.exifinterface.media.ExifInterface;
import com.google.android.engage.common.datamodel.Image;
import com.google.android.engage.common.datamodel.LinkPreview;
import com.google.android.engage.common.datamodel.VideoPreview;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.common.base.Optional;
import com.google.common.collect.ImmutableList;
import java.util.ArrayList;
import java.util.List;
/* compiled from: Proguard */
@KeepForSdk
/* loaded from: classes4.dex */
public final class GenericPost {
    private final Long zza;
    private final String zzb;
    private final LinkPreview zzc;
    private final ImmutableList zzd;
    private final VideoPreview zze;

    /* compiled from: Proguard */
    @KeepForSdk
    /* loaded from: classes4.dex */
    public static final class Builder {
        private String zza;
        private LinkPreview zzb;
        private final ImmutableList.Builder zzc = ImmutableList.builder();
        private Long zzd;
        private VideoPreview zze;

        @NonNull
        public Builder addVisualContent(@NonNull Image image) {
            this.zzc.add((ImmutableList.Builder) image);
            return this;
        }

        @NonNull
        public Builder addVisualContents(@NonNull List<Image> list) {
            this.zzc.addAll((Iterable) list);
            return this;
        }

        @NonNull
        public GenericPost build() {
            return new GenericPost(this, null);
        }

        @NonNull
        public Builder setLinkPreviewContent(@NonNull LinkPreview linkPreview) {
            this.zzb = linkPreview;
            return this;
        }

        @NonNull
        public Builder setTextContent(@NonNull String str) {
            this.zza = str;
            return this;
        }

        @NonNull
        public Builder setTimestamp(long j) {
            this.zzd = Long.valueOf(j);
            return this;
        }

        @NonNull
        public Builder setVideoContent(@NonNull VideoPreview videoPreview) {
            this.zze = videoPreview;
            return this;
        }
    }

    public /* synthetic */ GenericPost(Builder builder, zza zzaVar) {
        this.zza = builder.zzd;
        this.zzb = builder.zza;
        this.zzc = builder.zzb;
        this.zzd = builder.zzc.build();
        this.zze = builder.zze;
    }

    @NonNull
    public Optional<LinkPreview> getLinkPreview() {
        return Optional.fromNullable(this.zzc);
    }

    @NonNull
    public Optional<String> getTextContent() {
        return Optional.fromNullable(this.zzb);
    }

    @NonNull
    public Optional<Long> getTimestamp() {
        return Optional.fromNullable(this.zza);
    }

    @NonNull
    public Optional<VideoPreview> getVideoContent() {
        return Optional.fromNullable(this.zze);
    }

    @NonNull
    public List<Image> getVisualContent() {
        return this.zzd;
    }

    @NonNull
    public final Bundle zza() {
        Bundle bundle = new Bundle();
        Long l = this.zza;
        if (l != null) {
            bundle.putLong(ExifInterface.GPS_MEASUREMENT_IN_PROGRESS, l.longValue());
        }
        String str = this.zzb;
        if (!TextUtils.isEmpty(str)) {
            bundle.putString("B", str);
        }
        ImmutableList immutableList = this.zzd;
        if (!immutableList.isEmpty()) {
            ArrayList<? extends Parcelable> arrayList = new ArrayList<>();
            int size = immutableList.size();
            for (int i = 0; i < size; i++) {
                arrayList.add(((Image) immutableList.get(i)).zza());
            }
            bundle.putParcelableArrayList("D", arrayList);
        }
        LinkPreview linkPreview = this.zzc;
        if (linkPreview != null) {
            bundle.putBundle("C", linkPreview.zza());
        }
        VideoPreview videoPreview = this.zze;
        if (videoPreview != null) {
            bundle.putBundle(ExifInterface.LONGITUDE_EAST, videoPreview.zza());
        }
        return bundle;
    }
}
