package com.google.android.engage.video.datamodel;

import android.os.Bundle;
import androidx.annotation.NonNull;
import androidx.exifinterface.media.ExifInterface;
import com.google.android.engage.common.datamodel.RecommendationReason;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.common.collect.ImmutableList;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
/* compiled from: Proguard */
@KeepForSdk
/* loaded from: classes4.dex */
public final class RecommendationReasonWatchedSimilarTitles extends RecommendationReason {
    private final ImmutableList zza;

    /* compiled from: Proguard */
    @KeepForSdk
    /* loaded from: classes4.dex */
    public static final class Builder {
        private final List zza = new ArrayList();

        @NonNull
        public Builder addSimilarWatchedTitleName(@NonNull String str) {
            this.zza.add(str);
            return this;
        }

        @NonNull
        public Builder addSimilarWatchedTitleNames(@NonNull List<String> list) {
            this.zza.addAll(list);
            return this;
        }

        @NonNull
        public RecommendationReasonWatchedSimilarTitles build() {
            return new RecommendationReasonWatchedSimilarTitles(this, null);
        }
    }

    public /* synthetic */ RecommendationReasonWatchedSimilarTitles(Builder builder, zzo zzoVar) {
        super(4);
        this.zza = ImmutableList.copyOf((Collection) builder.zza);
    }

    @NonNull
    public ImmutableList<String> getSimilarTitles() {
        return this.zza;
    }

    @Override // com.google.android.engage.common.datamodel.RecommendationReason
    @NonNull
    public final Bundle zza() {
        ImmutableList immutableList = this.zza;
        Bundle zza = super.zza();
        if (!immutableList.isEmpty()) {
            zza.putStringArrayList(ExifInterface.GPS_MEASUREMENT_IN_PROGRESS, new ArrayList<>(immutableList));
        }
        return zza;
    }
}
