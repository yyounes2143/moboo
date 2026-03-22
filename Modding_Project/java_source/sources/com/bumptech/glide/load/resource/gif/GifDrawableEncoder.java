package com.bumptech.glide.load.resource.gif;

import androidx.annotation.NonNull;
import com.bumptech.glide.load.EncodeStrategy;
import com.bumptech.glide.load.Options;
import com.bumptech.glide.load.ResourceEncoder;
import com.bumptech.glide.load.engine.Resource;
import com.bumptech.glide.util.ByteBufferUtil;
import java.io.File;
import java.io.IOException;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public class GifDrawableEncoder implements ResourceEncoder<GifDrawable> {
    @Override // com.bumptech.glide.load.Encoder
    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww */
    public boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NonNull Resource<GifDrawable> resource, @NonNull File file, @NonNull Options options) {
        try {
            ByteBufferUtil.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(resource.get().Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(), file);
            return true;
        } catch (IOException unused) {
            return false;
        }
    }

    @Override // com.bumptech.glide.load.ResourceEncoder
    @NonNull
    public EncodeStrategy Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NonNull Options options) {
        return EncodeStrategy.SOURCE;
    }
}
