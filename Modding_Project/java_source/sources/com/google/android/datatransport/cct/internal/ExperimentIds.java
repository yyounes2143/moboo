package com.google.android.datatransport.cct.internal;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.datatransport.cct.internal.AutoValue_ExperimentIds;
import com.google.auto.value.AutoValue;
/* compiled from: Proguard */
@AutoValue
/* loaded from: classes4.dex */
public abstract class ExperimentIds {

    /* compiled from: Proguard */
    @AutoValue.Builder
    /* loaded from: classes4.dex */
    public static abstract class Builder {
        @NonNull
        public abstract ExperimentIds build();

        @NonNull
        public abstract Builder setClearBlob(@Nullable byte[] bArr);

        @NonNull
        public abstract Builder setEncryptedBlob(@Nullable byte[] bArr);
    }

    @NonNull
    public static Builder builder() {
        return new AutoValue_ExperimentIds.Builder();
    }

    @Nullable
    public abstract byte[] getClearBlob();

    @Nullable
    public abstract byte[] getEncryptedBlob();
}
