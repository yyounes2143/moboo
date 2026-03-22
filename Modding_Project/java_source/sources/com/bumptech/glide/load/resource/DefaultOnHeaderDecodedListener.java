package com.bumptech.glide.load.resource;

import android.graphics.ColorSpace;
import android.graphics.ImageDecoder;
import android.graphics.ImageDecoder$OnHeaderDecodedListener;
import android.graphics.ImageDecoder$OnPartialImageListener;
import android.os.Build;
import android.util.Log;
import android.util.Size;
import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;
import com.bumptech.glide.load.DecodeFormat;
import com.bumptech.glide.load.Option;
import com.bumptech.glide.load.Options;
import com.bumptech.glide.load.PreferredColorSpace;
import com.bumptech.glide.load.resource.bitmap.DownsampleStrategy;
import com.bumptech.glide.load.resource.bitmap.Downsampler;
import com.bumptech.glide.load.resource.bitmap.HardwareConfigState;
/* compiled from: Proguard */
@RequiresApi(api = 28)
/* loaded from: classes3.dex */
public final class DefaultOnHeaderDecodedListener implements ImageDecoder$OnHeaderDecodedListener {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final PreferredColorSpace f4716Wwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final boolean f4717Wwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final DownsampleStrategy f4718Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final DecodeFormat f4719Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final int f4720Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final int f4721Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final HardwareConfigState f4722Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = HardwareConfigState.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();

    public DefaultOnHeaderDecodedListener(int i, int i2, @NonNull Options options) {
        boolean z;
        this.f4721Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = i;
        this.f4720Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = i2;
        this.f4719Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = (DecodeFormat) options.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Downsampler.f4765Wwwwwwwwwwwwwwwwwwwwwwwwwwwww);
        this.f4718Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww = (DownsampleStrategy) options.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(DownsampleStrategy.f4749Wwwwwwwwwwwwwwwwwwwwwwwwwww);
        Option<Boolean> option = Downsampler.f4761Wwwwwwwwwwwwwwwwwwwwwwwww;
        if (options.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(option) != null && ((Boolean) options.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(option)).booleanValue()) {
            z = true;
        } else {
            z = false;
        }
        this.f4717Wwwwwwwwwwwwwwwwwwwwwwwwwwwww = z;
        this.f4716Wwwwwwwwwwwwwwwwwwwwwwwwwwww = (PreferredColorSpace) options.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Downsampler.f4764Wwwwwwwwwwwwwwwwwwwwwwwwwwww);
    }

    public void onHeaderDecoded(@NonNull ImageDecoder imageDecoder, @NonNull ImageDecoder.ImageInfo imageInfo, @NonNull ImageDecoder.Source source) {
        Size size;
        ColorSpace.Named named;
        ColorSpace colorSpace;
        ColorSpace.Named named2;
        ColorSpace colorSpace2;
        ColorSpace colorSpace3;
        ColorSpace colorSpace4;
        boolean isWideGamut;
        if (this.f4722Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.f4721Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, this.f4720Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, this.f4717Wwwwwwwwwwwwwwwwwwwwwwwwwwwww, false)) {
            imageDecoder.setAllocator(3);
        } else {
            imageDecoder.setAllocator(1);
        }
        if (this.f4719Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww == DecodeFormat.PREFER_RGB_565) {
            imageDecoder.setMemorySizePolicy(0);
        }
        imageDecoder.setOnPartialImageListener(new ImageDecoder$OnPartialImageListener() { // from class: com.bumptech.glide.load.resource.DefaultOnHeaderDecodedListener.1
            public boolean onPartialImage(@NonNull ImageDecoder.DecodeException decodeException) {
                return false;
            }
        });
        size = imageInfo.getSize();
        int i = this.f4721Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        if (i == Integer.MIN_VALUE) {
            i = size.getWidth();
        }
        int i2 = this.f4720Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        if (i2 == Integer.MIN_VALUE) {
            i2 = size.getHeight();
        }
        float Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = this.f4718Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(size.getWidth(), size.getHeight(), i, i2);
        int round = Math.round(size.getWidth() * Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2);
        int round2 = Math.round(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 * size.getHeight());
        if (Log.isLoggable("ImageDecoder", 2)) {
            size.getWidth();
            size.getHeight();
        }
        imageDecoder.setTargetSize(round, round2);
        PreferredColorSpace preferredColorSpace = this.f4716Wwwwwwwwwwwwwwwwwwwwwwwwwwww;
        if (preferredColorSpace != null) {
            int i3 = Build.VERSION.SDK_INT;
            if (i3 >= 28) {
                if (preferredColorSpace == PreferredColorSpace.DISPLAY_P3) {
                    colorSpace3 = imageInfo.getColorSpace();
                    if (colorSpace3 != null) {
                        colorSpace4 = imageInfo.getColorSpace();
                        isWideGamut = colorSpace4.isWideGamut();
                        if (isWideGamut) {
                            named2 = ColorSpace.Named.DISPLAY_P3;
                            colorSpace2 = ColorSpace.get(named2);
                            imageDecoder.setTargetColorSpace(colorSpace2);
                        }
                    }
                }
                named2 = ColorSpace.Named.SRGB;
                colorSpace2 = ColorSpace.get(named2);
                imageDecoder.setTargetColorSpace(colorSpace2);
            } else if (i3 >= 26) {
                named = ColorSpace.Named.SRGB;
                colorSpace = ColorSpace.get(named);
                imageDecoder.setTargetColorSpace(colorSpace);
            }
        }
    }
}
