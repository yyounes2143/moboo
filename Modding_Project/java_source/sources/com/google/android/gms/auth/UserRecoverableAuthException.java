package com.google.android.gms.auth;

import android.app.PendingIntent;
import android.content.Intent;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.common.annotation.KeepName;
import com.google.android.gms.common.internal.Preconditions;
/* compiled from: Proguard */
@KeepName
/* loaded from: classes4.dex */
public class UserRecoverableAuthException extends GoogleAuthException {
    @Nullable
    private final Intent zza;
    @Nullable
    private final PendingIntent zzb;
    private final zzn zzc;

    public UserRecoverableAuthException(@Nullable String str, @Nullable Intent intent) {
        this(str, intent, null, zzn.LEGACY);
    }

    @NonNull
    public static UserRecoverableAuthException zza(@Nullable String str, @NonNull Intent intent, @NonNull PendingIntent pendingIntent) {
        Preconditions.checkNotNull(intent);
        Preconditions.checkNotNull(pendingIntent);
        return new UserRecoverableAuthException(str, intent, pendingIntent, zzn.AUTH_INSTANTIATION);
    }

    @Nullable
    public Intent getIntent() {
        Intent intent = this.zza;
        if (intent == null) {
            this.zzc.ordinal();
            return null;
        }
        return new Intent(intent);
    }

    private UserRecoverableAuthException(@Nullable String str, @Nullable Intent intent, @Nullable PendingIntent pendingIntent, zzn zznVar) {
        super(str);
        this.zzb = pendingIntent;
        this.zza = intent;
        this.zzc = (zzn) Preconditions.checkNotNull(zznVar);
    }
}
