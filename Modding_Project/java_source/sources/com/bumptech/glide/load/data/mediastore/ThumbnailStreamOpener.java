package com.bumptech.glide.load.data.mediastore;

import android.content.ContentResolver;
import android.net.Uri;
import android.text.TextUtils;
import android.util.Log;
import com.bumptech.glide.load.ImageHeaderParser;
import com.bumptech.glide.load.ImageHeaderParserUtils;
import com.bumptech.glide.load.engine.bitmap_recycle.ArrayPool;
import j$.util.Objects;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.util.List;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
class ThumbnailStreamOpener {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final FileService f4225Wwwwwwwwwwwwwwwwwwwwwwwwwwwww = new FileService();

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final List<ImageHeaderParser> f4226Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final ContentResolver f4227Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final ArrayPool f4228Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final ThumbnailQuery f4229Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final FileService f4230Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    public ThumbnailStreamOpener(List<ImageHeaderParser> list, ThumbnailQuery thumbnailQuery, ArrayPool arrayPool, ContentResolver contentResolver) {
        this(list, f4225Wwwwwwwwwwwwwwwwwwwwwwwwwwwww, thumbnailQuery, arrayPool, contentResolver);
    }

    public InputStream Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Uri uri) throws FileNotFoundException {
        String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(uri);
        if (TextUtils.isEmpty(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2)) {
            return null;
        }
        File Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3 = this.f4230Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2);
        if (!Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3)) {
            return null;
        }
        Uri fromFile = Uri.fromFile(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3);
        try {
            return this.f4227Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.openInputStream(fromFile);
        } catch (NullPointerException e) {
            throw ((FileNotFoundException) new FileNotFoundException("NPE opening uri: " + uri + " -> " + fromFile).initCause(e));
        }
    }

    public final boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(File file) {
        if (this.f4230Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(file) && 0 < this.f4230Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(file)) {
            return true;
        }
        return false;
    }

    /* JADX WARN: Removed duplicated region for block: B:25:0x0038  */
    @androidx.annotation.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@androidx.annotation.NonNull android.net.Uri r5) {
        /*
            r4 = this;
            r0 = 0
            com.bumptech.glide.load.data.mediastore.ThumbnailQuery r1 = r4.f4229Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww     // Catch: java.lang.Throwable -> L21 java.lang.SecurityException -> L23
            android.database.Cursor r1 = r1.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(r5)     // Catch: java.lang.Throwable -> L21 java.lang.SecurityException -> L23
            if (r1 == 0) goto L1b
            boolean r2 = r1.moveToFirst()     // Catch: java.lang.Throwable -> L18 java.lang.SecurityException -> L24
            if (r2 == 0) goto L1b
            r2 = 0
            java.lang.String r5 = r1.getString(r2)     // Catch: java.lang.Throwable -> L18 java.lang.SecurityException -> L24
            r1.close()
            return r5
        L18:
            r5 = move-exception
            r0 = r1
            goto L36
        L1b:
            if (r1 == 0) goto L20
            r1.close()
        L20:
            return r0
        L21:
            r5 = move-exception
            goto L36
        L23:
            r1 = r0
        L24:
            java.lang.String r2 = "ThumbStreamOpener"
            r3 = 3
            boolean r2 = android.util.Log.isLoggable(r2, r3)     // Catch: java.lang.Throwable -> L18
            if (r2 == 0) goto L30
            j$.util.Objects.toString(r5)     // Catch: java.lang.Throwable -> L18
        L30:
            if (r1 == 0) goto L35
            r1.close()
        L35:
            return r0
        L36:
            if (r0 == 0) goto L3b
            r0.close()
        L3b:
            throw r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bumptech.glide.load.data.mediastore.ThumbnailStreamOpener.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(android.net.Uri):java.lang.String");
    }

    public int Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Uri uri) {
        InputStream inputStream = null;
        try {
            try {
                inputStream = this.f4227Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.openInputStream(uri);
                int Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = ImageHeaderParserUtils.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.f4226Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww, inputStream, this.f4228Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
                if (inputStream != null) {
                    try {
                        inputStream.close();
                    } catch (IOException unused) {
                    }
                }
                return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
            } catch (IOException | NullPointerException unused2) {
                if (Log.isLoggable("ThumbStreamOpener", 3)) {
                    Objects.toString(uri);
                }
                if (inputStream != null) {
                    try {
                        inputStream.close();
                        return -1;
                    } catch (IOException unused3) {
                        return -1;
                    }
                }
                return -1;
            }
        } catch (Throwable th) {
            if (inputStream != null) {
                try {
                    inputStream.close();
                } catch (IOException unused4) {
                }
            }
            throw th;
        }
    }

    public ThumbnailStreamOpener(List<ImageHeaderParser> list, FileService fileService, ThumbnailQuery thumbnailQuery, ArrayPool arrayPool, ContentResolver contentResolver) {
        this.f4230Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = fileService;
        this.f4229Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = thumbnailQuery;
        this.f4228Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = arrayPool;
        this.f4227Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = contentResolver;
        this.f4226Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww = list;
    }
}
