package com.google.android.engage.video.datamodel;

import android.os.Bundle;
import androidx.annotation.NonNull;
import androidx.exifinterface.media.ExifInterface;
import com.google.android.engage.common.datamodel.RecommendationReason;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.common.base.Optional;
/* compiled from: Proguard */
@KeepForSdk
/* loaded from: classes4.dex */
public final class RecommendationReasonTopOnPartner extends RecommendationReason {
    private final Integer zza;

    /* compiled from: Proguard */
    @KeepForSdk
    /* loaded from: classes4.dex */
    public static final class Builder {
        private Integer zza;

        @NonNull
        public RecommendationReasonTopOnPartner build() {
            return new RecommendationReasonTopOnPartner(this, null);
        }

        @NonNull
        public Builder setNum(int i) {
            this.zza = Integer.valueOf(i);
            return this;
        }
    }

    public /* synthetic */ RecommendationReasonTopOnPartner(Builder builder, zzl zzlVar) {
        super(1);
        this.zza = builder.zza;
    }

    @NonNull
    public Optional<Integer> getNum() {
        return Optional.fromNullable(this.zza);
    }

    @Override // com.google.android.engage.common.datamodel.RecommendationReason
    @NonNull
    public final Bundle zza() {
        Integer num = this.zza;
        Bundle zza = super.zza();
        if (num != null) {
            zza.putInt(ExifInterface.GPS_MEASUREMENT_IN_PROGRESS, num.intValue());
        }
        return zza;
    }
}
