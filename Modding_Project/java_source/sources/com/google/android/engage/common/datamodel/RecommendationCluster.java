package com.google.android.engage.common.datamodel;

import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.exifinterface.media.ExifInterface;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.common.base.Optional;
import com.google.common.collect.ImmutableList;
import java.util.List;
/* compiled from: Proguard */
@KeepForSdk
/* loaded from: classes4.dex */
public final class RecommendationCluster extends zzf {
    private final zzm zza;
    private final String zzb;
    private final String zzc;
    private final String zzd;
    private final Uri zze;
    private final int zzf;

    /* compiled from: Proguard */
    @KeepForSdk
    /* loaded from: classes4.dex */
    public static final class Builder {
        private String zza;
        private String zzb;
        private String zzc;
        private Uri zzd;
        private int zze = 0;
        private final zzk zzf = new zzk();

        @NonNull
        public Builder addAllDisplayTimeWindow(@NonNull List<DisplayTimeWindow> list) {
            this.zzf.zzb(list);
            return this;
        }

        @NonNull
        public Builder addDisplayTimeWindow(@NonNull DisplayTimeWindow displayTimeWindow) {
            this.zzf.zzc(displayTimeWindow);
            return this;
        }

        @NonNull
        public Builder addEntity(@NonNull Entity entity) {
            this.zzf.zzd(entity);
            return this;
        }

        @NonNull
        public RecommendationCluster build() {
            return new RecommendationCluster(this, null);
        }

        @NonNull
        public Builder setActionText(@NonNull String str) {
            this.zzc = str;
            return this;
        }

        @NonNull
        public Builder setActionUri(@NonNull Uri uri) {
            this.zzd = uri;
            return this;
        }

        @NonNull
        public Builder setRecommendationClusterType(int i) {
            this.zze = i;
            return this;
        }

        @NonNull
        public Builder setSubtitle(@NonNull String str) {
            this.zzb = str;
            return this;
        }

        @NonNull
        public Builder setTitle(@NonNull String str) {
            this.zza = str;
            return this;
        }
    }

    public /* synthetic */ RecommendationCluster(Builder builder, zzah zzahVar) {
        super(1);
        this.zza = new zzm(builder.zzf, null);
        this.zzb = builder.zza;
        this.zzc = builder.zzb;
        this.zzd = builder.zzc;
        this.zze = builder.zzd;
        this.zzf = builder.zze;
    }

    @NonNull
    public Optional<String> getActionText() {
        String str = this.zzd;
        if (!TextUtils.isEmpty(str)) {
            return Optional.of(str);
        }
        return Optional.absent();
    }

    @NonNull
    public Optional<Uri> getActionUri() {
        return Optional.fromNullable(this.zze);
    }

    @NonNull
    public ImmutableList<DisplayTimeWindow> getDisplayTimeWindows() {
        return this.zza.zzc();
    }

    @NonNull
    public List<Entity> getEntities() {
        return this.zza.zzd();
    }

    public int getRecommendationClusterType() {
        return this.zzf;
    }

    @NonNull
    public Optional<String> getSubtitle() {
        String str = this.zzc;
        if (!TextUtils.isEmpty(str)) {
            return Optional.of(str);
        }
        return Optional.absent();
    }

    @NonNull
    public String getTitle() {
        return this.zzb;
    }

    @Override // com.google.android.engage.common.datamodel.zzf
    @NonNull
    public final Bundle zza() {
        Bundle zza = super.zza();
        zza.putBundle(ExifInterface.GPS_MEASUREMENT_IN_PROGRESS, this.zza.zza());
        String str = this.zzb;
        if (!TextUtils.isEmpty(str)) {
            zza.putString("B", str);
        }
        String str2 = this.zzc;
        if (!TextUtils.isEmpty(str2)) {
            zza.putString("C", str2);
        }
        String str3 = this.zzd;
        if (!TextUtils.isEmpty(str3)) {
            zza.putString(ExifInterface.LONGITUDE_EAST, str3);
        }
        Uri uri = this.zze;
        if (uri != null) {
            zza.putParcelable("D", uri);
        }
        int i = this.zzf;
        if (i != 0) {
            zza.putInt("F", i);
        }
        return zza;
    }
}
