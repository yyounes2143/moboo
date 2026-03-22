package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;
import java.io.IOException;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public class zzaz extends IOException {
    public final boolean zza;
    public final int zzb;

    public zzaz(@Nullable String str, @Nullable Throwable th, boolean z, int i) {
        super(str, th);
        this.zza = z;
        this.zzb = i;
    }

    public static zzaz zza(@Nullable String str, @Nullable Throwable th) {
        return new zzaz(str, th, true, 1);
    }

    public static zzaz zzb(@Nullable String str, @Nullable Throwable th) {
        return new zzaz(str, th, true, 0);
    }

    public static zzaz zzc(@Nullable String str) {
        return new zzaz(str, null, false, 1);
    }

    @Override // java.lang.Throwable
    public final String getMessage() {
        String str;
        String message = super.getMessage();
        if (message != null) {
            str = message.concat(" ");
        } else {
            str = "";
        }
        boolean z = this.zza;
        int i = this.zzb;
        return str + "{contentIsMalformed=" + z + ", dataType=" + i + "}";
    }
}
