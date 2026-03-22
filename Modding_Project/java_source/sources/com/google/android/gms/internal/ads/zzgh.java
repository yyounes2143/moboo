package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;
import java.io.IOException;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public class zzgh extends IOException {
    public final int zza;

    public zzgh(int i) {
        this.zza = i;
    }

    public zzgh(@Nullable String str, int i) {
        super(str);
        this.zza = i;
    }

    public zzgh(@Nullable String str, @Nullable Throwable th, int i) {
        super(str, th);
        this.zza = i;
    }

    public zzgh(@Nullable Throwable th, int i) {
        super(th);
        this.zza = i;
    }
}
