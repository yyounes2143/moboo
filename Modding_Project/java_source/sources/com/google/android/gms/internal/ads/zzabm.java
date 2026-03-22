package com.google.android.gms.internal.ads;

import android.view.Surface;
import androidx.annotation.RequiresApi;
/* compiled from: Proguard */
@RequiresApi(30)
/* loaded from: classes4.dex */
final class zzabm {
    public static void zza(Surface surface, float f) {
        int i;
        if (f == 0.0f) {
            i = 0;
        } else {
            i = 1;
        }
        try {
            surface.setFrameRate(f, i);
        } catch (IllegalStateException e) {
            zzdx.zzd("VideoFrameReleaseHelper", "Failed to call Surface.setFrameRate", e);
        }
    }
}
