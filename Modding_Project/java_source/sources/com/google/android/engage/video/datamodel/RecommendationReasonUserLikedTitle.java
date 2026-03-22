package com.google.android.engage.video.datamodel;

import android.os.Bundle;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.exifinterface.media.ExifInterface;
import com.google.android.engage.common.datamodel.RecommendationReason;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.common.base.Optional;
/* compiled from: Proguard */
@KeepForSdk
/* loaded from: classes4.dex */
public final class RecommendationReasonUserLikedTitle extends RecommendationReason {
    private final String zza;

    /* compiled from: Proguard */
    @KeepForSdk
    /* loaded from: classes4.dex */
    public static final class Builder {
        private String zza;

        @NonNull
        public RecommendationReasonUserLikedTitle build() {
            return new RecommendationReasonUserLikedTitle(this, null);
        }

        @NonNull
        public Builder setLikedTitleName(@NonNull String str) {
            this.zza = str;
            return this;
        }
    }

    public /* synthetic */ RecommendationReasonUserLikedTitle(Builder builder, zzm zzmVar) {
        super(8);
        this.zza = builder.zza;
    }

    @NonNull
    public Optional<String> getTitleName() {
        return Optional.fromNullable(this.zza);
    }

    @Override // com.google.android.engage.common.datamodel.RecommendationReason
    @NonNull
    public final Bundle zza() {
        String str = this.zza;
        Bundle zza = super.zza();
        if (!TextUtils.isEmpty(str)) {
            zza.putString(ExifInterface.GPS_MEASUREMENT_IN_PROGRESS, str);
        }
        return zza;
    }
}
