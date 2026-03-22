package com.bumptech.glide.load.resource.gif;

import androidx.annotation.NonNull;
import com.bumptech.glide.load.ImageHeaderParser;
import com.bumptech.glide.load.ImageHeaderParserUtils;
import com.bumptech.glide.load.Options;
import com.bumptech.glide.load.ResourceDecoder;
import com.bumptech.glide.load.engine.Resource;
import com.bumptech.glide.load.engine.bitmap_recycle.ArrayPool;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.List;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public class StreamGifDecoder implements ResourceDecoder<InputStream, GifDrawable> {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final ArrayPool f4914Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final ResourceDecoder<ByteBuffer, GifDrawable> f4915Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final List<ImageHeaderParser> f4916Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    public StreamGifDecoder(List<ImageHeaderParser> list, ResourceDecoder<ByteBuffer, GifDrawable> resourceDecoder, ArrayPool arrayPool) {
        this.f4916Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = list;
        this.f4915Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = resourceDecoder;
        this.f4914Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = arrayPool;
    }

    public static byte[] Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(InputStream inputStream) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(16384);
        try {
            byte[] bArr = new byte[16384];
            while (true) {
                int read = inputStream.read(bArr);
                if (read != -1) {
                    byteArrayOutputStream.write(bArr, 0, read);
                } else {
                    byteArrayOutputStream.flush();
                    return byteArrayOutputStream.toByteArray();
                }
            }
        } catch (IOException unused) {
            return null;
        }
    }

    @Override // com.bumptech.glide.load.ResourceDecoder
    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww */
    public boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NonNull InputStream inputStream, @NonNull Options options) throws IOException {
        if (!((Boolean) options.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(GifOptions.f4912Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww)).booleanValue() && ImageHeaderParserUtils.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.f4916Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, inputStream, this.f4914Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww) == ImageHeaderParser.ImageType.GIF) {
            return true;
        }
        return false;
    }

    @Override // com.bumptech.glide.load.ResourceDecoder
    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww */
    public Resource<GifDrawable> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NonNull InputStream inputStream, int i, int i2, @NonNull Options options) throws IOException {
        byte[] Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(inputStream);
        if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 == null) {
            return null;
        }
        return this.f4915Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(ByteBuffer.wrap(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2), i, i2, options);
    }
}
