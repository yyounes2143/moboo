package com.facebook.internal;

import android.net.Uri;
import com.facebook.LoggingBehavior;
import com.facebook.internal.FileLruCache;
import java.io.BufferedInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;
import kotlin.Metadata;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\t\bÆ\u0002\u0018\u00002\u00020\u0001:\u0001\u001bB\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u000f\u0010\u0005\u001a\u00020\u0004H\u0007¢\u0006\u0004\b\u0005\u0010\u0006J\u001b\u0010\n\u001a\u0004\u0018\u00010\t2\b\u0010\b\u001a\u0004\u0018\u00010\u0007H\u0007¢\u0006\u0004\b\n\u0010\u000bJ\u0019\u0010\u000e\u001a\u0004\u0018\u00010\t2\u0006\u0010\r\u001a\u00020\fH\u0007¢\u0006\u0004\b\u000e\u0010\u000fJ\u0019\u0010\u0011\u001a\u00020\u00102\b\u0010\b\u001a\u0004\u0018\u00010\u0007H\u0002¢\u0006\u0004\b\u0011\u0010\u0012R\u001f\u0010\u0018\u001a\n \u0014*\u0004\u0018\u00010\u00130\u00138\u0006¢\u0006\f\n\u0004\b\u0005\u0010\u0015\u001a\u0004\b\u0016\u0010\u0017R\u0016\u0010\u001a\u001a\u00020\u00048\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b\n\u0010\u0019¨\u0006\u001c"}, d2 = {"Lcom/facebook/internal/ImageResponseCache;", "", "<init>", "()V", "Lcom/facebook/internal/FileLruCache;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "()Lcom/facebook/internal/FileLruCache;", "Landroid/net/Uri;", "uri", "Ljava/io/InputStream;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Landroid/net/Uri;)Ljava/io/InputStream;", "Ljava/net/HttpURLConnection;", "connection", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Ljava/net/HttpURLConnection;)Ljava/io/InputStream;", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Landroid/net/Uri;)Z", "", "kotlin.jvm.PlatformType", "Ljava/lang/String;", "getTAG", "()Ljava/lang/String;", "TAG", "Lcom/facebook/internal/FileLruCache;", "imageCache", "BufferedHttpInputStream", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes4.dex */
public final class ImageResponseCache {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static FileLruCache f6756Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @NotNull
    public static final ImageResponseCache INSTANCE = new ImageResponseCache();

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final String f6757Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = ImageResponseCache.class.getSimpleName();

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\t\b\u0002\u0018\u00002\u00020\u0001B\u001b\b\u0000\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007J\u000f\u0010\t\u001a\u00020\bH\u0016¢\u0006\u0004\b\t\u0010\nR\"\u0010\u0005\u001a\u00020\u00048\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u000b\u0010\f\u001a\u0004\b\r\u0010\u000e\"\u0004\b\u000f\u0010\u0010¨\u0006\u0011"}, d2 = {"Lcom/facebook/internal/ImageResponseCache$BufferedHttpInputStream;", "Ljava/io/BufferedInputStream;", "Ljava/io/InputStream;", "stream", "Ljava/net/HttpURLConnection;", "connection", "<init>", "(Ljava/io/InputStream;Ljava/net/HttpURLConnection;)V", "", "close", "()V", "Wwwwwwwwwwwwwwwwwwwwwwwww", "Ljava/net/HttpURLConnection;", "getConnection", "()Ljava/net/HttpURLConnection;", "setConnection", "(Ljava/net/HttpURLConnection;)V", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes4.dex */
    public static final class BufferedHttpInputStream extends BufferedInputStream implements AutoCloseable {
        @NotNull

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public HttpURLConnection f6758Wwwwwwwwwwwwwwwwwwwwwwwww;

        public BufferedHttpInputStream(@Nullable InputStream inputStream, @NotNull HttpURLConnection httpURLConnection) {
            super(inputStream, 8192);
            this.f6758Wwwwwwwwwwwwwwwwwwwwwwwww = httpURLConnection;
        }

        @Override // java.io.BufferedInputStream, java.io.FilterInputStream, java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            super.close();
            Utility utility = Utility.INSTANCE;
            Utility.Wwwwwwwwwwwwwwwww(this.f6758Wwwwwwwwwwwwwwwwwwwwwwwww);
        }
    }

    @JvmStatic
    @Nullable
    public static final InputStream Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull HttpURLConnection httpURLConnection) throws IOException {
        if (httpURLConnection.getResponseCode() == 200) {
            Uri parse = Uri.parse(httpURLConnection.getURL().toString());
            InputStream inputStream = httpURLConnection.getInputStream();
            try {
                if (INSTANCE.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(parse)) {
                    return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwwwwwww(parse.toString(), new BufferedHttpInputStream(inputStream, httpURLConnection));
                }
            } catch (IOException unused) {
            }
            return inputStream;
        }
        return null;
    }

    @JvmStatic
    @Nullable
    public static final InputStream Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@Nullable Uri uri) {
        if (uri != null && INSTANCE.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(uri)) {
            try {
                return FileLruCache.Wwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(), uri.toString(), null, 2, null);
            } catch (IOException e) {
                Logger.Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(LoggingBehavior.CACHE, 5, f6757Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, e.toString());
            }
        }
        return null;
    }

    @JvmStatic
    @NotNull
    public static final synchronized FileLruCache Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() throws IOException {
        FileLruCache fileLruCache;
        synchronized (ImageResponseCache.class) {
            try {
                if (f6756Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww == null) {
                    f6756Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new FileLruCache(f6757Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, new FileLruCache.Limits());
                }
                fileLruCache = f6756Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
                if (fileLruCache == null) {
                    throw null;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return fileLruCache;
    }

    public final boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Uri uri) {
        String host;
        if (uri == null || (host = uri.getHost()) == null || (!Intrinsics.areEqual(host, "fbcdn.net") && !StringsKt.endsWith$default(host, ".fbcdn.net", false, 2, (Object) null) && (!StringsKt.startsWith$default(host, "fbcdn", false, 2, (Object) null) || !StringsKt.endsWith$default(host, ".akamaihd.net", false, 2, (Object) null)))) {
            return false;
        }
        return true;
    }
}
