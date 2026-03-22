package com.vungle.ads.internal.util;

import android.os.Build;
import android.webkit.URLUtil;
import androidx.annotation.VisibleForTesting;
import com.vungle.ads.AssetFailedToDeleteError;
import com.vungle.ads.internal.util.Logger;
import java.io.Closeable;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.nio.file.Files;
import java.nio.file.Path;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.LinkedHashSet;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.io.FilesKt;
import kotlin.jvm.JvmStatic;
import kotlin.text.Charsets;
import okhttp3.HttpUrl;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000j\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\bÀ\u0002\u0018\u00002\u00020\u0001:\u00017B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0013\u001a\u00020\u00142\b\u0010\u0015\u001a\u0004\u0018\u00010\u0016J\u0012\u0010\u0017\u001a\u00020\u00142\b\u0010\u0018\u001a\u0004\u0018\u00010\u0019H\u0007J\u0010\u0010\u001a\u001a\u00020\u00142\u0006\u0010\u001b\u001a\u00020\u0019H\u0007J\u0010\u0010\u001c\u001a\u00020\u00142\u0006\u0010\u001d\u001a\u00020\u0019H\u0007J\u0010\u0010\u001e\u001a\u00020\u00042\u0006\u0010\u001f\u001a\u00020 H\u0002J\u001a\u0010!\u001a\u00020\u00042\u0006\u0010\"\u001a\u00020\u00042\n\b\u0002\u0010#\u001a\u0004\u0018\u00010\u0004J\u0010\u0010$\u001a\u00020%2\b\u0010&\u001a\u0004\u0018\u00010\u0004J\u0012\u0010'\u001a\u00020\u00142\b\u0010\u001d\u001a\u0004\u0018\u00010\u0019H\u0007J&\u0010'\u001a\u00020\u00142\b\u0010\u001d\u001a\u0004\u0018\u00010\u00192\u0006\u0010\u001f\u001a\u00020 2\n\u0010(\u001a\u00060)j\u0002`*H\u0002J$\u0010+\u001a\u00020\u00142\u0006\u0010\u001b\u001a\u00020\u00192\u0006\u0010\u001f\u001a\u00020 2\n\u0010(\u001a\u00060)j\u0002`*H\u0002J\u001d\u0010,\u001a\u0004\u0018\u0001H-\"\u0004\b\u0000\u0010-2\u0006\u0010\u001b\u001a\u00020\u0019H\u0007¢\u0006\u0002\u0010.J\u0010\u0010/\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u001b\u001a\u00020\u0019J\u0010\u00100\u001a\u0002012\b\u0010\u001b\u001a\u0004\u0018\u00010\u0019J\u001a\u00102\u001a\u00020\u00142\u0006\u0010\u001b\u001a\u00020\u00192\b\u00103\u001a\u0004\u0018\u000104H\u0007J\u0018\u00105\u001a\u00020\u00142\u0006\u0010\u001b\u001a\u00020\u00192\b\u00106\u001a\u0004\u0018\u00010\u0004R\u0016\u0010\u0003\u001a\n \u0005*\u0004\u0018\u00010\u00040\u0004X\u0082\u0004¢\u0006\u0002\n\u0000R&\u0010\u0006\u001a\f\u0012\b\u0012\u0006\u0012\u0002\b\u00030\b0\u00078\u0000X\u0081\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\t\u0010\u0002\u001a\u0004\b\n\u0010\u000bR&\u0010\u000e\u001a\u00020\r2\u0006\u0010\f\u001a\u00020\r8G@GX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000f\u0010\u0010\"\u0004\b\u0011\u0010\u0012¨\u00068"}, d2 = {"Lcom/vungle/ads/internal/util/FileUtility;", "", "()V", "TAG", "", "kotlin.jvm.PlatformType", "allowedClasses", "", "Ljava/lang/Class;", "getAllowedClasses$vungle_ads_release$annotations", "getAllowedClasses$vungle_ads_release", "()Ljava/util/List;", "<set-?>", "Lcom/vungle/ads/internal/util/FileUtility$ObjectInputStreamProvider;", "objectInputStreamProvider", "getObjectInputStreamProvider", "()Lcom/vungle/ads/internal/util/FileUtility$ObjectInputStreamProvider;", "setObjectInputStreamProvider", "(Lcom/vungle/ads/internal/util/FileUtility$ObjectInputStreamProvider;)V", "closeQuietly", "", "closeable", "Ljava/io/Closeable;", "delete", "f", "Ljava/io/File;", "deleteAndLogIfFailed", "file", "deleteContents", "folder", "getIndentString", "indent", "", "guessFileName", "url", "ext", "isValidUrl", "", "httpUrl", "printDirectoryTree", "sb", "Ljava/lang/StringBuilder;", "Lkotlin/text/StringBuilder;", "printFile", "readSerializable", "T", "(Ljava/io/File;)Ljava/lang/Object;", "readString", "size", "", "writeSerializable", "serializable", "Ljava/io/Serializable;", "writeString", "content", "ObjectInputStreamProvider", "vungle-ads_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes6.dex */
public final class FileUtility {
    @NotNull
    public static final FileUtility INSTANCE = new FileUtility();
    @NotNull
    private static ObjectInputStreamProvider objectInputStreamProvider = new ObjectInputStreamProvider() { // from class: com.vungle.ads.internal.util.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww
        @Override // com.vungle.ads.internal.util.FileUtility.ObjectInputStreamProvider
        public final ObjectInputStream provideObjectInputStream(InputStream inputStream) {
            ObjectInputStream m360objectInputStreamProvider$lambda0;
            m360objectInputStreamProvider$lambda0 = FileUtility.m360objectInputStreamProvider$lambda0(inputStream);
            return m360objectInputStreamProvider$lambda0;
        }
    };
    private static final String TAG = FileUtility.class.getSimpleName();
    @NotNull
    private static final List<Class<?>> allowedClasses = CollectionsKt.listOf((Object[]) new Class[]{LinkedHashSet.class, HashSet.class, HashMap.class, ArrayList.class, File.class});

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\bà\u0080\u0001\u0018\u00002\u00020\u0001J\u0012\u0010\u0002\u001a\u00020\u00032\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005H&¨\u0006\u0006"}, d2 = {"Lcom/vungle/ads/internal/util/FileUtility$ObjectInputStreamProvider;", "", "provideObjectInputStream", "Ljava/io/ObjectInputStream;", "inputStream", "Ljava/io/InputStream;", "vungle-ads_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes6.dex */
    public interface ObjectInputStreamProvider {
        @NotNull
        ObjectInputStream provideObjectInputStream(@Nullable InputStream inputStream) throws IOException, ClassNotFoundException;
    }

    private FileUtility() {
    }

    @JvmStatic
    public static final void delete(@Nullable File file) {
        if (file != null) {
            try {
                if (file.exists()) {
                    if (file.isDirectory()) {
                        deleteContents(file);
                    }
                    if (!file.delete()) {
                        Logger.Companion companion = Logger.Companion;
                        String str = TAG;
                        companion.d(str, "Failed to delete file: " + file);
                    }
                }
            } catch (Exception e) {
                Logger.Companion companion2 = Logger.Companion;
                String str2 = TAG;
                companion2.e(str2, "Failed to delete file: " + e.getLocalizedMessage());
            }
        }
    }

    @JvmStatic
    public static final void deleteAndLogIfFailed(@NotNull File file) {
        Path path;
        try {
            if (Build.VERSION.SDK_INT >= 26) {
                path = file.toPath();
                Files.delete(path);
            } else if (!file.delete()) {
                new AssetFailedToDeleteError("Cannot delete " + file.getName()).logErrorNoReturnValue$vungle_ads_release();
            }
        } catch (Exception e) {
            new AssetFailedToDeleteError("Failed to delete " + file.getName() + " with error :" + e.getMessage()).logErrorNoReturnValue$vungle_ads_release();
        }
    }

    @JvmStatic
    public static final void deleteContents(@NotNull File file) {
        File[] listFiles = file.listFiles();
        if (listFiles != null) {
            for (File file2 : listFiles) {
                delete(file2);
            }
        }
    }

    private final String getIndentString(int i) {
        StringBuilder sb = new StringBuilder();
        for (int i2 = 0; i2 < i; i2++) {
            sb.append("|  ");
        }
        return sb.toString();
    }

    public static /* synthetic */ String guessFileName$default(FileUtility fileUtility, String str, String str2, int i, Object obj) {
        if ((i & 2) != 0) {
            str2 = null;
        }
        return fileUtility.guessFileName(str, str2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: objectInputStreamProvider$lambda-0  reason: not valid java name */
    public static final ObjectInputStream m360objectInputStreamProvider$lambda0(InputStream inputStream) {
        return new SafeObjectInputStream(inputStream, allowedClasses);
    }

    @JvmStatic
    public static final void printDirectoryTree(@Nullable File file) {
    }

    private final void printFile(File file, int i, StringBuilder sb) {
        sb.append(getIndentString(i));
        sb.append("+--");
        sb.append(file.getName());
        sb.append('\n');
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Not initialized variable reg: 2, insn: 0x0021: MOVE  (r1 I:??[OBJECT, ARRAY]) = (r2 I:??[OBJECT, ARRAY]), block:B:11:0x0021 */
    /* JADX WARN: Type inference failed for: r0v0, types: [boolean] */
    /* JADX WARN: Type inference failed for: r0v1, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r0v10, types: [java.io.Closeable, java.io.FileInputStream, java.io.InputStream] */
    /* JADX WARN: Type inference failed for: r0v2 */
    /* JADX WARN: Type inference failed for: r0v3 */
    /* JADX WARN: Type inference failed for: r0v4 */
    /* JADX WARN: Type inference failed for: r0v5 */
    /* JADX WARN: Type inference failed for: r0v6 */
    /* JADX WARN: Type inference failed for: r0v7 */
    /* JADX WARN: Type inference failed for: r0v9 */
    /* JADX WARN: Type inference failed for: r1v3, types: [com.vungle.ads.internal.util.FileUtility] */
    /* JADX WARN: Type inference failed for: r2v1, types: [com.vungle.ads.internal.util.FileUtility] */
    /* JADX WARN: Type inference failed for: r2v12, types: [com.vungle.ads.internal.util.FileUtility$ObjectInputStreamProvider] */
    @JvmStatic
    @Nullable
    public static final <T> T readSerializable(@NotNull File file) {
        Closeable closeable;
        ObjectInputStream objectInputStream;
        Closeable closeable2;
        ?? exists = file.exists();
        Closeable closeable3 = null;
        try {
            if (exists == 0) {
                return null;
            }
            try {
                exists = new FileInputStream(file);
                try {
                    objectInputStream = objectInputStreamProvider.provideObjectInputStream(exists);
                    try {
                        T t = (T) objectInputStream.readObject();
                        ?? r1 = INSTANCE;
                        r1.closeQuietly(objectInputStream);
                        r1.closeQuietly(exists);
                        return t;
                    } catch (IOException e) {
                        e = e;
                        Logger.Companion.e(TAG, "IOException: " + e.getMessage());
                        closeable2 = exists;
                        FileUtility fileUtility = INSTANCE;
                        fileUtility.closeQuietly(objectInputStream);
                        fileUtility.closeQuietly(closeable2);
                        try {
                            delete(file);
                        } catch (IOException unused) {
                        }
                        return null;
                    } catch (ClassNotFoundException e2) {
                        e = e2;
                        Logger.Companion.e(TAG, "ClassNotFoundException: " + e.getMessage());
                        closeable2 = exists;
                        FileUtility fileUtility2 = INSTANCE;
                        fileUtility2.closeQuietly(objectInputStream);
                        fileUtility2.closeQuietly(closeable2);
                        delete(file);
                        return null;
                    } catch (Exception e3) {
                        e = e3;
                        Logger.Companion.e(TAG, "cannot read serializable " + e.getMessage());
                        closeable2 = exists;
                        FileUtility fileUtility22 = INSTANCE;
                        fileUtility22.closeQuietly(objectInputStream);
                        fileUtility22.closeQuietly(closeable2);
                        delete(file);
                        return null;
                    }
                } catch (IOException e4) {
                    e = e4;
                    objectInputStream = null;
                } catch (ClassNotFoundException e5) {
                    e = e5;
                    objectInputStream = null;
                } catch (Exception e6) {
                    e = e6;
                    objectInputStream = null;
                } catch (Throwable th) {
                    th = th;
                    ?? r2 = INSTANCE;
                    r2.closeQuietly(closeable3);
                    r2.closeQuietly(exists);
                    throw th;
                }
            } catch (IOException e7) {
                e = e7;
                exists = 0;
                objectInputStream = null;
            } catch (ClassNotFoundException e8) {
                e = e8;
                exists = 0;
                objectInputStream = null;
            } catch (Exception e9) {
                e = e9;
                exists = 0;
                objectInputStream = null;
            } catch (Throwable th2) {
                th = th2;
                exists = 0;
            }
        } catch (Throwable th3) {
            th = th3;
            closeable3 = closeable;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r3v1 */
    /* JADX WARN: Type inference failed for: r3v3 */
    /* JADX WARN: Type inference failed for: r3v4, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r3v5 */
    /* JADX WARN: Type inference failed for: r3v6 */
    /* JADX WARN: Type inference failed for: r3v7, types: [java.io.Closeable, java.io.ObjectOutputStream] */
    /* JADX WARN: Type inference failed for: r3v8 */
    /* JADX WARN: Type inference failed for: r4v15, types: [com.vungle.ads.internal.util.FileUtility] */
    /* JADX WARN: Type inference failed for: r4v9, types: [com.vungle.ads.internal.util.FileUtility] */
    @JvmStatic
    public static final void writeSerializable(@NotNull File file, @Nullable Serializable serializable) {
        FileOutputStream fileOutputStream;
        ?? r3;
        if (file.exists()) {
            deleteAndLogIfFailed(file);
        }
        if (serializable != null) {
            FileOutputStream fileOutputStream2 = null;
            try {
                fileOutputStream = new FileOutputStream(file);
            } catch (IOException e) {
                e = e;
                r3 = 0;
            } catch (Throwable th) {
                th = th;
                fileOutputStream = null;
            }
            try {
                r3 = new ObjectOutputStream(fileOutputStream);
                try {
                    r3.writeObject(serializable);
                    r3.reset();
                    ?? r4 = INSTANCE;
                    r4.closeQuietly(r3);
                    r4.closeQuietly(fileOutputStream);
                } catch (IOException e2) {
                    e = e2;
                    fileOutputStream2 = fileOutputStream;
                    r3 = r3;
                    try {
                        Logger.Companion.e(TAG, String.valueOf(e.getMessage()));
                        ?? r42 = INSTANCE;
                        r42.closeQuietly(r3);
                        r42.closeQuietly(fileOutputStream2);
                    } catch (Throwable th2) {
                        th = th2;
                        fileOutputStream = fileOutputStream2;
                        fileOutputStream2 = r3;
                        FileUtility fileUtility = INSTANCE;
                        fileUtility.closeQuietly(fileOutputStream2);
                        fileUtility.closeQuietly(fileOutputStream);
                        throw th;
                    }
                } catch (Throwable th3) {
                    th = th3;
                    fileOutputStream2 = r3;
                    FileUtility fileUtility2 = INSTANCE;
                    fileUtility2.closeQuietly(fileOutputStream2);
                    fileUtility2.closeQuietly(fileOutputStream);
                    throw th;
                }
            } catch (IOException e3) {
                e = e3;
                r3 = 0;
            } catch (Throwable th4) {
                th = th4;
                FileUtility fileUtility22 = INSTANCE;
                fileUtility22.closeQuietly(fileOutputStream2);
                fileUtility22.closeQuietly(fileOutputStream);
                throw th;
            }
        }
    }

    public final void closeQuietly(@Nullable Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (IOException unused) {
            }
        }
    }

    @NotNull
    public final List<Class<?>> getAllowedClasses$vungle_ads_release() {
        return allowedClasses;
    }

    @VisibleForTesting
    @NotNull
    public final ObjectInputStreamProvider getObjectInputStreamProvider() {
        return objectInputStreamProvider;
    }

    @NotNull
    public final String guessFileName(@NotNull String str, @Nullable String str2) {
        return URLUtil.guessFileName(str, null, str2);
    }

    public final boolean isValidUrl(@Nullable String str) {
        if (str != null && str.length() != 0 && HttpUrl.Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(str) != null) {
            return true;
        }
        return false;
    }

    @Nullable
    public final String readString(@NotNull File file) {
        if (!file.exists()) {
            return null;
        }
        try {
            return FilesKt.readText$default(file, null, 1, null);
        } catch (IOException e) {
            Logger.Companion companion = Logger.Companion;
            String str = TAG;
            companion.e(str, "IOException: " + e.getMessage());
            return null;
        } catch (Exception e2) {
            Logger.Companion companion2 = Logger.Companion;
            String str2 = TAG;
            companion2.e(str2, "cannot read string " + e2.getMessage());
            return null;
        }
    }

    @VisibleForTesting
    public final void setObjectInputStreamProvider(@NotNull ObjectInputStreamProvider objectInputStreamProvider2) {
        objectInputStreamProvider = objectInputStreamProvider2;
    }

    public final long size(@Nullable File file) {
        boolean z;
        long j = 0;
        if (file == null || !file.exists()) {
            return 0L;
        }
        if (file.isDirectory()) {
            File[] listFiles = file.listFiles();
            if (listFiles != null) {
                if (listFiles.length == 0) {
                    z = true;
                } else {
                    z = false;
                }
                if (!z) {
                    for (File file2 : listFiles) {
                        j += size(file2);
                    }
                }
            }
            return j;
        }
        return file.length();
    }

    public final void writeString(@NotNull File file, @Nullable String str) {
        if (str != null) {
            try {
                FilesKt.writeText(file, str, Charsets.UTF_8);
            } catch (IOException e) {
                Logger.Companion.e(TAG, String.valueOf(e.getMessage()));
            }
        }
    }

    private final void printDirectoryTree(File file, int i, StringBuilder sb) {
        if (file == null) {
            return;
        }
        if (file.isDirectory()) {
            sb.append(getIndentString(i));
            sb.append("+--");
            sb.append(file.getName());
            sb.append("/\n");
            File[] listFiles = file.listFiles();
            if (listFiles == null) {
                return;
            }
            for (File file2 : listFiles) {
                if (file2.isDirectory()) {
                    printDirectoryTree(file2, i + 1, sb);
                } else {
                    printFile(file2, i + 1, sb);
                }
            }
            return;
        }
        throw new IllegalArgumentException("folder is not a Directory");
    }

    @VisibleForTesting
    public static /* synthetic */ void getAllowedClasses$vungle_ads_release$annotations() {
    }
}
