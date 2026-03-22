package com.google.android.engage.common.datamodel;

import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import androidx.annotation.Nullable;
import androidx.exifinterface.media.ExifInterface;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.common.base.Optional;
import java.util.List;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class EngagementEntityCommonMetadata {
    private final zzu zza;
    private final String zzb;
    private final Uri zzc;
    private final String zzd;
    private final String zze;

    /* compiled from: Proguard */
    @KeepForSdk
    /* loaded from: classes4.dex */
    public static final class Builder {
        private final zzs zza = new zzs();
        private String zzb;
        private Uri zzc;
        private String zzd;
        private String zze;

        public final Builder zzb(Image image) {
            this.zza.zza(image);
            return this;
        }

        public final Builder zzc(List list) {
            this.zza.zzb(list);
            return this;
        }

        public final Builder zzd(String str) {
            this.zzb = str;
            return this;
        }

        public final Builder zze(Uri uri) {
            this.zzc = uri;
            return this;
        }

        public final Builder zzf(String str) {
            this.zza.zzc(str);
            return this;
        }

        public final Builder zzg(String str) {
            this.zze = str;
            return this;
        }

        public final Builder zzh(String str) {
            this.zzd = str;
            return this;
        }
    }

    public /* synthetic */ EngagementEntityCommonMetadata(Builder builder, zzr zzrVar) {
        this.zza = new zzu(builder.zza, null);
        this.zzb = builder.zzb;
        this.zzc = builder.zzc;
        this.zzd = builder.zzd;
        this.zze = builder.zze;
    }

    public final Uri zza() {
        return this.zzc;
    }

    public final Bundle zzb() {
        Bundle bundle = new Bundle();
        bundle.putBundle(ExifInterface.GPS_MEASUREMENT_IN_PROGRESS, this.zza.zza());
        String str = this.zzb;
        if (!TextUtils.isEmpty(str)) {
            bundle.putString("B", str);
        }
        Uri uri = this.zzc;
        if (uri != null) {
            bundle.putParcelable("C", uri);
        }
        String str2 = this.zzd;
        if (!TextUtils.isEmpty(str2)) {
            bundle.putString("D", str2);
        }
        String str3 = this.zze;
        if (!TextUtils.isEmpty(str3)) {
            bundle.putString(ExifInterface.LONGITUDE_EAST, str3);
        }
        return bundle;
    }

    public final Optional zzc() {
        return this.zza.zzb();
    }

    public final Optional zzd() {
        String str = this.zze;
        if (TextUtils.isEmpty(str)) {
            return Optional.absent();
        }
        return Optional.of(str);
    }

    public final Optional zze() {
        String str = this.zzd;
        if (TextUtils.isEmpty(str)) {
            return Optional.absent();
        }
        return Optional.of(str);
    }

    @Nullable
    public final String zzf() {
        return this.zzb;
    }

    public final List zzg() {
        return this.zza.zzc();
    }
}
