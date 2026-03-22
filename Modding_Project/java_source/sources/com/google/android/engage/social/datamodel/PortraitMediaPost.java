package com.google.android.engage.social.datamodel;

import android.os.Bundle;
import android.os.Parcelable;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.exifinterface.media.ExifInterface;
import com.google.android.engage.common.datamodel.Image;
import com.google.android.engage.common.datamodel.VideoPreview;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.common.base.Optional;
import com.google.common.collect.ImmutableList;
import java.util.ArrayList;
import java.util.List;
/* compiled from: Proguard */
@KeepForSdk
/* loaded from: classes4.dex */
public final class PortraitMediaPost {
    private final Long zza;
    private final String zzb;
    private final ImmutableList zzc;
    private final boolean zzd;
    private final Long zze;

    /* compiled from: Proguard */
    @KeepForSdk
    /* loaded from: classes4.dex */
    public static final class Builder {
        private String zza;
        private final ImmutableList.Builder zzb = ImmutableList.builder();
        private Long zzc;
        private boolean zzd;
        private Long zze;

        @NonNull
        public Builder addVisualContent(@NonNull Image image) {
            this.zzb.add((ImmutableList.Builder) image);
            return this;
        }

        @NonNull
        public Builder addVisualContents(@NonNull List<Image> list) {
            this.zzb.addAll((Iterable) list);
            return this;
        }

        @NonNull
        public PortraitMediaPost build() {
            return new PortraitMediaPost(this, null);
        }

        @NonNull
        public Builder setIsVideoContent(boolean z) {
            this.zzd = z;
            return this;
        }

        @NonNull
        public Builder setTextContent(@NonNull String str) {
            this.zza = str;
            return this;
        }

        @NonNull
        public Builder setTimestamp(long j) {
            this.zzc = Long.valueOf(j);
            return this;
        }

        @NonNull
        public Builder setVideoDurationMillis(long j) {
            this.zze = Long.valueOf(j);
            return this;
        }
    }

    public /* synthetic */ PortraitMediaPost(Builder builder, zzf zzfVar) {
        this.zza = builder.zzc;
        this.zzb = builder.zza;
        this.zzc = builder.zzb.build();
        this.zzd = builder.zzd;
        this.zze = builder.zze;
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
    public Optional<Long> getVideoDurationMillis() {
        return Optional.fromNullable(this.zze);
    }

    @NonNull
    public List<Image> getVisualContent() {
        return this.zzc;
    }

    public boolean isVideoContent() {
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
        ImmutableList immutableList = this.zzc;
        if (!immutableList.isEmpty()) {
            ArrayList<? extends Parcelable> arrayList = new ArrayList<>();
            int size = immutableList.size();
            for (int i = 0; i < size; i++) {
                arrayList.add(((Image) immutableList.get(i)).zza());
            }
            bundle.putParcelableArrayList("C", arrayList);
        }
        if (this.zzd) {
            VideoPreview.Builder builder = new VideoPreview.Builder();
            Long l2 = this.zze;
            if (l2 != null) {
                builder.setDurationMillis(l2.longValue());
            }
            bundle.putBundle("D", builder.build().zza());
        }
        return bundle;
    }
}
