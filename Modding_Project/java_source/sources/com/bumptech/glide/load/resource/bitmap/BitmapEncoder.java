package com.bumptech.glide.load.resource.bitmap;

import android.graphics.Bitmap;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.bumptech.glide.load.EncodeStrategy;
import com.bumptech.glide.load.Option;
import com.bumptech.glide.load.Options;
import com.bumptech.glide.load.ResourceEncoder;
import com.bumptech.glide.load.engine.bitmap_recycle.ArrayPool;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public class BitmapEncoder implements ResourceEncoder<Bitmap> {
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final ArrayPool f4734Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final Option<Integer> f4733Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = Option.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww("com.bumptech.glide.load.resource.bitmap.BitmapEncoder.CompressionQuality", 90);

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final Option<Bitmap.CompressFormat> f4732Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = Option.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww("com.bumptech.glide.load.resource.bitmap.BitmapEncoder.CompressionFormat");

    public BitmapEncoder(@NonNull ArrayPool arrayPool) {
        this.f4734Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = arrayPool;
    }

    public final Bitmap.CompressFormat Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Bitmap bitmap, Options options) {
        Bitmap.CompressFormat compressFormat = (Bitmap.CompressFormat) options.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(f4732Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
        if (compressFormat != null) {
            return compressFormat;
        }
        if (bitmap.hasAlpha()) {
            return Bitmap.CompressFormat.PNG;
        }
        return Bitmap.CompressFormat.JPEG;
    }

    /* JADX WARN: Removed duplicated region for block: B:29:0x006c A[Catch: all -> 0x0052, TRY_LEAVE, TryCatch #1 {all -> 0x0052, blocks: (B:3:0x001f, B:15:0x004e, B:27:0x0063, B:29:0x006c, B:22:0x0059, B:23:0x005c, B:25:0x005f), top: B:38:0x001f }] */
    @Override // com.bumptech.glide.load.Encoder
    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@androidx.annotation.NonNull com.bumptech.glide.load.engine.Resource<android.graphics.Bitmap> r7, @androidx.annotation.NonNull java.io.File r8, @androidx.annotation.NonNull com.bumptech.glide.load.Options r9) {
        /*
            r6 = this;
            java.lang.Object r7 = r7.get()
            android.graphics.Bitmap r7 = (android.graphics.Bitmap) r7
            android.graphics.Bitmap$CompressFormat r0 = r6.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(r7, r9)
            int r1 = r7.getWidth()
            java.lang.Integer r1 = java.lang.Integer.valueOf(r1)
            int r2 = r7.getHeight()
            java.lang.Integer r2 = java.lang.Integer.valueOf(r2)
            java.lang.String r3 = "encode: [%dx%d] %s"
            com.bumptech.glide.util.pool.GlideTrace.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(r3, r1, r2, r0)
            long r1 = com.bumptech.glide.util.LogTime.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()     // Catch: java.lang.Throwable -> L52
            com.bumptech.glide.load.Option<java.lang.Integer> r3 = com.bumptech.glide.load.resource.bitmap.BitmapEncoder.f4733Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww     // Catch: java.lang.Throwable -> L52
            java.lang.Object r3 = r9.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(r3)     // Catch: java.lang.Throwable -> L52
            java.lang.Integer r3 = (java.lang.Integer) r3     // Catch: java.lang.Throwable -> L52
            int r3 = r3.intValue()     // Catch: java.lang.Throwable -> L52
            r4 = 0
            java.io.FileOutputStream r5 = new java.io.FileOutputStream     // Catch: java.lang.Throwable -> L56 java.io.IOException -> L5d
            r5.<init>(r8)     // Catch: java.lang.Throwable -> L56 java.io.IOException -> L5d
            com.bumptech.glide.load.engine.bitmap_recycle.ArrayPool r8 = r6.f4734Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww     // Catch: java.lang.Throwable -> L42 java.io.IOException -> L45
            if (r8 == 0) goto L47
            com.bumptech.glide.load.data.BufferedOutputStream r8 = new com.bumptech.glide.load.data.BufferedOutputStream     // Catch: java.lang.Throwable -> L42 java.io.IOException -> L45
            com.bumptech.glide.load.engine.bitmap_recycle.ArrayPool r4 = r6.f4734Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww     // Catch: java.lang.Throwable -> L42 java.io.IOException -> L45
            r8.<init>(r5, r4)     // Catch: java.lang.Throwable -> L42 java.io.IOException -> L45
            r4 = r8
            goto L48
        L42:
            r7 = move-exception
            r4 = r5
            goto L57
        L45:
            r4 = r5
            goto L5d
        L47:
            r4 = r5
        L48:
            r7.compress(r0, r3, r4)     // Catch: java.lang.Throwable -> L56 java.io.IOException -> L5d
            r4.close()     // Catch: java.lang.Throwable -> L56 java.io.IOException -> L5d
            r4.close()     // Catch: java.lang.Throwable -> L52 java.io.IOException -> L54
            goto L54
        L52:
            r7 = move-exception
            goto L85
        L54:
            r8 = 1
            goto L63
        L56:
            r7 = move-exception
        L57:
            if (r4 == 0) goto L5c
            r4.close()     // Catch: java.lang.Throwable -> L52 java.io.IOException -> L5c
        L5c:
            throw r7     // Catch: java.lang.Throwable -> L52
        L5d:
            if (r4 == 0) goto L62
            r4.close()     // Catch: java.lang.Throwable -> L52 java.io.IOException -> L62
        L62:
            r8 = 0
        L63:
            java.lang.String r3 = "BitmapEncoder"
            r4 = 2
            boolean r3 = android.util.Log.isLoggable(r3, r4)     // Catch: java.lang.Throwable -> L52
            if (r3 == 0) goto L81
            j$.util.Objects.toString(r0)     // Catch: java.lang.Throwable -> L52
            com.bumptech.glide.util.Util.Wwwwwwwwwwwwwwwwwwwwwwwwwww(r7)     // Catch: java.lang.Throwable -> L52
            com.bumptech.glide.util.LogTime.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(r1)     // Catch: java.lang.Throwable -> L52
            com.bumptech.glide.load.Option<android.graphics.Bitmap$CompressFormat> r0 = com.bumptech.glide.load.resource.bitmap.BitmapEncoder.f4732Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww     // Catch: java.lang.Throwable -> L52
            java.lang.Object r9 = r9.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(r0)     // Catch: java.lang.Throwable -> L52
            j$.util.Objects.toString(r9)     // Catch: java.lang.Throwable -> L52
            r7.hasAlpha()     // Catch: java.lang.Throwable -> L52
        L81:
            com.bumptech.glide.util.pool.GlideTrace.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww()
            return r8
        L85:
            com.bumptech.glide.util.pool.GlideTrace.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww()
            throw r7
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bumptech.glide.load.resource.bitmap.BitmapEncoder.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(com.bumptech.glide.load.engine.Resource, java.io.File, com.bumptech.glide.load.Options):boolean");
    }

    @Override // com.bumptech.glide.load.ResourceEncoder
    @NonNull
    public EncodeStrategy Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NonNull Options options) {
        return EncodeStrategy.TRANSFORMED;
    }

    @Deprecated
    public BitmapEncoder() {
        this.f4734Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = null;
    }
}
