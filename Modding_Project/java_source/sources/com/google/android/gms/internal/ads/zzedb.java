package com.google.android.gms.internal.ads;

import android.content.Context;
import android.net.Uri;
import android.view.InputEvent;
import androidx.annotation.Nullable;
import androidx.privacysandbox.ads.adservices.java.measurement.MeasurementManagerFutures;
import com.google.common.util.concurrent.ListenableFuture;
import j$.util.Objects;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzedb {
    @Nullable
    private MeasurementManagerFutures zza;
    private final Context zzb;

    public zzedb(Context context) {
        this.zzb = context;
    }

    public final ListenableFuture zza() {
        try {
            MeasurementManagerFutures from = MeasurementManagerFutures.from(this.zzb);
            this.zza = from;
            if (from == null) {
                return zzgcy.zzg(new IllegalStateException("MeasurementManagerFutures is null"));
            }
            return from.getMeasurementApiStatusAsync();
        } catch (Exception e) {
            return zzgcy.zzg(e);
        }
    }

    public final ListenableFuture zzb(Uri uri, InputEvent inputEvent) {
        try {
            MeasurementManagerFutures measurementManagerFutures = this.zza;
            Objects.requireNonNull(measurementManagerFutures);
            return measurementManagerFutures.registerSourceAsync(uri, inputEvent);
        } catch (Exception e) {
            return zzgcy.zzg(e);
        }
    }
}
