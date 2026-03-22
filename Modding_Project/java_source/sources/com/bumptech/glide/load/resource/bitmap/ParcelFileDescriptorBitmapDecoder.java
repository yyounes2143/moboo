package com.bumptech.glide.load.resource.bitmap;

import android.graphics.Bitmap;
import android.os.Build;
import android.os.ParcelFileDescriptor;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import com.bumptech.glide.load.Options;
import com.bumptech.glide.load.ResourceDecoder;
import com.bumptech.glide.load.engine.Resource;
import java.io.IOException;
/* compiled from: Proguard */
@RequiresApi(21)
/* loaded from: classes3.dex */
public final class ParcelFileDescriptorBitmapDecoder implements ResourceDecoder<ParcelFileDescriptor, Bitmap> {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Downsampler f4809Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    public ParcelFileDescriptorBitmapDecoder(Downsampler downsampler) {
        this.f4809Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = downsampler;
    }

    public final boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NonNull ParcelFileDescriptor parcelFileDescriptor) {
        String str = Build.MANUFACTURER;
        if ((!"HUAWEI".equalsIgnoreCase(str) && !"HONOR".equalsIgnoreCase(str)) || parcelFileDescriptor.getStatSize() <= 536870912) {
            return true;
        }
        return false;
    }

    @Override // com.bumptech.glide.load.ResourceDecoder
    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww */
    public boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NonNull ParcelFileDescriptor parcelFileDescriptor, @NonNull Options options) {
        if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(parcelFileDescriptor) && this.f4809Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwww(parcelFileDescriptor)) {
            return true;
        }
        return false;
    }

    @Override // com.bumptech.glide.load.ResourceDecoder
    @Nullable
    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww */
    public Resource<Bitmap> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NonNull ParcelFileDescriptor parcelFileDescriptor, int i, int i2, @NonNull Options options) throws IOException {
        return this.f4809Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(parcelFileDescriptor, i, i2, options);
    }
}
