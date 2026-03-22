package com.facebook.internal;

import android.net.Uri;
import com.facebook.LoggingBehavior;
import com.facebook.internal.FileLruCache;
import java.io.IOException;
import java.io.OutputStream;
import kotlin.Metadata;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.text.Charsets;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0006\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u000f\u0010\u0005\u001a\u00020\u0004H\u0007¢\u0006\u0004\b\u0005\u0010\u0006J\u001b\u0010\t\u001a\u0004\u0018\u00010\u00072\b\u0010\b\u001a\u0004\u0018\u00010\u0007H\u0007¢\u0006\u0004\b\t\u0010\nJ#\u0010\u000e\u001a\u00020\r2\b\u0010\u000b\u001a\u0004\u0018\u00010\u00072\b\u0010\f\u001a\u0004\u0018\u00010\u0007H\u0007¢\u0006\u0004\b\u000e\u0010\u000fR\u0014\u0010\u0012\u001a\u00020\u00108\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000e\u0010\u0011R\u0014\u0010\u0013\u001a\u00020\u00108\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0005\u0010\u0011R\u0018\u0010\u0015\u001a\u0004\u0018\u00010\u00048\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\t\u0010\u0014¨\u0006\u0016"}, d2 = {"Lcom/facebook/internal/UrlRedirectCache;", "", "<init>", "()V", "Lcom/facebook/internal/FileLruCache;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "()Lcom/facebook/internal/FileLruCache;", "Landroid/net/Uri;", "uri", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Landroid/net/Uri;)Landroid/net/Uri;", "fromUri", "toUri", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Landroid/net/Uri;Landroid/net/Uri;)V", "", "Ljava/lang/String;", "tag", "redirectContentTag", "Lcom/facebook/internal/FileLruCache;", "urlRedirectFileLruCache", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes4.dex */
public final class UrlRedirectCache {
    @NotNull
    public static final UrlRedirectCache INSTANCE = new UrlRedirectCache();
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static FileLruCache f6801Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final String f6802Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final String f6803Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    static {
        String simpleName = Reflection.getOrCreateKotlinClass(UrlRedirectCache.class).getSimpleName();
        if (simpleName == null) {
            simpleName = "UrlRedirectCache";
        }
        f6803Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = simpleName;
        f6802Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = Intrinsics.stringPlus(simpleName, "_Redirect");
    }

    /* JADX WARN: Code restructure failed: missing block: B:21:0x0054, code lost:
        if (kotlin.jvm.internal.Intrinsics.areEqual(r3, r9) == false) goto L33;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x0056, code lost:
        r5 = r6;
        r6 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x0059, code lost:
        com.facebook.internal.Logger.Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(com.facebook.LoggingBehavior.CACHE, 6, com.facebook.internal.UrlRedirectCache.f6803Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, "A loop detected in UrlRedirectCache");
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x0065, code lost:
        com.facebook.internal.Utility.Wwwwwwwwwwwwwwwwwwwwwwwww(r6);
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x0068, code lost:
        return null;
     */
    /* JADX WARN: Not initialized variable reg: 5, insn: 0x0079: MOVE  (r0 I:??[OBJECT, ARRAY]) = (r5 I:??[OBJECT, ARRAY]), block:B:29:0x0079 */
    @kotlin.jvm.JvmStatic
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final android.net.Uri Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@org.jetbrains.annotations.Nullable android.net.Uri r9) {
        /*
            r0 = 0
            if (r9 != 0) goto L4
            return r0
        L4:
            java.lang.String r9 = r9.toString()
            java.util.HashSet r1 = new java.util.HashSet
            r1.<init>()
            r1.add(r9)
            com.facebook.internal.FileLruCache r2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()     // Catch: java.lang.Throwable -> L8b java.io.IOException -> L8d
            java.lang.String r3 = com.facebook.internal.UrlRedirectCache.f6802Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww     // Catch: java.lang.Throwable -> L8b java.io.IOException -> L8d
            java.io.InputStream r3 = r2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(r9, r3)     // Catch: java.lang.Throwable -> L8b java.io.IOException -> L8d
            r4 = 0
            r5 = r0
            r6 = r4
        L1d:
            if (r3 == 0) goto L7d
            java.io.InputStreamReader r6 = new java.io.InputStreamReader     // Catch: java.lang.Throwable -> L78 java.io.IOException -> L7b
            r6.<init>(r3)     // Catch: java.lang.Throwable -> L78 java.io.IOException -> L7b
            r3 = 128(0x80, float:1.794E-43)
            char[] r5 = new char[r3]     // Catch: java.lang.Throwable -> L3b java.io.IOException -> L3f
            java.lang.StringBuilder r7 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L3b java.io.IOException -> L3f
            r7.<init>()     // Catch: java.lang.Throwable -> L3b java.io.IOException -> L3f
            int r8 = r6.read(r5, r4, r3)     // Catch: java.lang.Throwable -> L3b java.io.IOException -> L3f
        L31:
            if (r8 <= 0) goto L42
            r7.append(r5, r4, r8)     // Catch: java.lang.Throwable -> L3b java.io.IOException -> L3f
            int r8 = r6.read(r5, r4, r3)     // Catch: java.lang.Throwable -> L3b java.io.IOException -> L3f
            goto L31
        L3b:
            r9 = move-exception
            r0 = r6
            goto La5
        L3f:
            r9 = move-exception
            r5 = r6
            goto L8f
        L42:
            com.facebook.internal.Utility.Wwwwwwwwwwwwwwwwwwwwwwwww(r6)     // Catch: java.lang.Throwable -> L3b java.io.IOException -> L3f
            java.lang.String r3 = r7.toString()     // Catch: java.lang.Throwable -> L3b java.io.IOException -> L3f
            boolean r5 = r1.contains(r3)     // Catch: java.lang.Throwable -> L3b java.io.IOException -> L3f
            r7 = 1
            if (r5 == 0) goto L69
            boolean r1 = kotlin.jvm.internal.Intrinsics.areEqual(r3, r9)     // Catch: java.lang.Throwable -> L3b java.io.IOException -> L3f
            if (r1 == 0) goto L59
            r5 = r6
            r6 = r7
            goto L7d
        L59:
            com.facebook.internal.Logger$Companion r9 = com.facebook.internal.Logger.Companion     // Catch: java.lang.Throwable -> L3b java.io.IOException -> L3f
            com.facebook.LoggingBehavior r1 = com.facebook.LoggingBehavior.CACHE     // Catch: java.lang.Throwable -> L3b java.io.IOException -> L3f
            java.lang.String r2 = com.facebook.internal.UrlRedirectCache.f6803Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww     // Catch: java.lang.Throwable -> L3b java.io.IOException -> L3f
            java.lang.String r3 = "A loop detected in UrlRedirectCache"
            r4 = 6
            r9.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(r1, r4, r2, r3)     // Catch: java.lang.Throwable -> L3b java.io.IOException -> L3f
            com.facebook.internal.Utility.Wwwwwwwwwwwwwwwwwwwwwwwww(r6)
            return r0
        L69:
            r1.add(r3)     // Catch: java.lang.Throwable -> L3b java.io.IOException -> L3f
            java.lang.String r9 = com.facebook.internal.UrlRedirectCache.f6802Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww     // Catch: java.lang.Throwable -> L3b java.io.IOException -> L3f
            java.io.InputStream r9 = r2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(r3, r9)     // Catch: java.lang.Throwable -> L3b java.io.IOException -> L3f
            r5 = r3
            r3 = r9
            r9 = r5
            r5 = r6
            r6 = r7
            goto L1d
        L78:
            r9 = move-exception
            r0 = r5
            goto La5
        L7b:
            r9 = move-exception
            goto L8f
        L7d:
            if (r6 == 0) goto L87
            android.net.Uri r9 = android.net.Uri.parse(r9)     // Catch: java.lang.Throwable -> L78 java.io.IOException -> L7b
            com.facebook.internal.Utility.Wwwwwwwwwwwwwwwwwwwwwwwww(r5)
            return r9
        L87:
            com.facebook.internal.Utility.Wwwwwwwwwwwwwwwwwwwwwwwww(r5)
            goto La4
        L8b:
            r9 = move-exception
            goto La5
        L8d:
            r9 = move-exception
            r5 = r0
        L8f:
            com.facebook.internal.Logger$Companion r1 = com.facebook.internal.Logger.Companion     // Catch: java.lang.Throwable -> L78
            com.facebook.LoggingBehavior r2 = com.facebook.LoggingBehavior.CACHE     // Catch: java.lang.Throwable -> L78
            java.lang.String r3 = com.facebook.internal.UrlRedirectCache.f6803Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww     // Catch: java.lang.Throwable -> L78
            java.lang.String r4 = "IOException when accessing cache: "
            java.lang.String r9 = r9.getMessage()     // Catch: java.lang.Throwable -> L78
            java.lang.String r9 = kotlin.jvm.internal.Intrinsics.stringPlus(r4, r9)     // Catch: java.lang.Throwable -> L78
            r4 = 4
            r1.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(r2, r4, r3, r9)     // Catch: java.lang.Throwable -> L78
            goto L87
        La4:
            return r0
        La5:
            com.facebook.internal.Utility.Wwwwwwwwwwwwwwwwwwwwwwwww(r0)
            throw r9
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.internal.UrlRedirectCache.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(android.net.Uri):android.net.Uri");
    }

    @JvmStatic
    @NotNull
    public static final synchronized FileLruCache Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() throws IOException {
        FileLruCache fileLruCache;
        synchronized (UrlRedirectCache.class) {
            try {
                fileLruCache = f6801Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
                if (fileLruCache == null) {
                    fileLruCache = new FileLruCache(f6803Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, new FileLruCache.Limits());
                }
                f6801Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = fileLruCache;
            } catch (Throwable th) {
                throw th;
            }
        }
        return fileLruCache;
    }

    @JvmStatic
    public static final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@Nullable Uri uri, @Nullable Uri uri2) {
        if (uri != null && uri2 != null) {
            OutputStream outputStream = null;
            try {
                outputStream = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwwwwww(uri.toString(), f6802Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
                outputStream.write(uri2.toString().getBytes(Charsets.UTF_8));
            } catch (IOException e) {
                Logger.Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(LoggingBehavior.CACHE, 4, f6803Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, Intrinsics.stringPlus("IOException when accessing cache: ", e.getMessage()));
            } finally {
                Utility.Wwwwwwwwwwwwwwwwwwwwwwwww(outputStream);
            }
        }
    }
}
