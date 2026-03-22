package com.vungle.ads.internal.util;

import androidx.annotation.VisibleForTesting;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Enumeration;
import java.util.List;
import java.util.zip.ZipEntry;
import java.util.zip.ZipFile;
import kotlin.Metadata;
import kotlin.jvm.JvmOverloads;
import kotlin.text.StringsKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\bÆ\u0002\u0018\u00002\u00020\u0001:\u0002\u0017\u0018B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u001a\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\b\u0010\f\u001a\u0004\u0018\u00010\u0006H\u0007J,\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u000f0\u000e2\b\u0010\u0010\u001a\u0004\u0018\u00010\u00062\u0006\u0010\u0011\u001a\u00020\u00062\n\b\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u0013H\u0007J\u0018\u0010\u0014\u001a\u00020\u00062\u0006\u0010\u0015\u001a\u00020\u00062\u0006\u0010\u0016\u001a\u00020\u0006H\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u0016\u0010\u0005\u001a\n \u0007*\u0004\u0018\u00010\u00060\u0006X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0019"}, d2 = {"Lcom/vungle/ads/internal/util/UnzipUtility;", "", "()V", "BUFFER_SIZE", "", "TAG", "", "kotlin.jvm.PlatformType", "extractFile", "", "zipIn", "Ljava/io/InputStream;", "filePath", "unzip", "", "Ljava/io/File;", "zipFilePath", "destDirectory", "filter", "Lcom/vungle/ads/internal/util/UnzipUtility$Filter;", "validateFilename", "filename", "intendedDir", "Filter", "ZipSecurityException", "vungle-ads_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes6.dex */
public final class UnzipUtility {
    private static final int BUFFER_SIZE = 4096;
    @NotNull
    public static final UnzipUtility INSTANCE = new UnzipUtility();
    private static final String TAG = UnzipUtility.class.getCanonicalName();

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0000\bf\u0018\u00002\u00020\u0001J\u0012\u0010\u0002\u001a\u00020\u00032\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005H&¨\u0006\u0006"}, d2 = {"Lcom/vungle/ads/internal/util/UnzipUtility$Filter;", "", "matches", "", "extractPath", "", "vungle-ads_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes6.dex */
    public interface Filter {
        boolean matches(@Nullable String str);
    }

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\b\u0000\u0018\u00002\u00020\u0001B\u000f\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\u0002\u0010\u0004¨\u0006\u0005"}, d2 = {"Lcom/vungle/ads/internal/util/UnzipUtility$ZipSecurityException;", "Ljava/io/IOException;", "message", "", "(Ljava/lang/String;)V", "vungle-ads_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes6.dex */
    public static final class ZipSecurityException extends IOException {
        public ZipSecurityException(@Nullable String str) {
            super(str);
        }
    }

    private UnzipUtility() {
    }

    public static /* synthetic */ List unzip$default(UnzipUtility unzipUtility, String str, String str2, Filter filter, int i, Object obj) throws IOException {
        if ((i & 4) != 0) {
            filter = null;
        }
        return unzipUtility.unzip(str, str2, filter);
    }

    private final String validateFilename(String str, String str2) throws IOException {
        String canonicalPath = new File(str).getCanonicalPath();
        if (StringsKt.startsWith$default(canonicalPath, new File(str2).getCanonicalPath(), false, 2, (Object) null)) {
            return canonicalPath;
        }
        Logger.Companion.e(TAG, "File is outside extraction target directory.");
        throw new ZipSecurityException("File is outside extraction target directory.");
    }

    @VisibleForTesting
    public final void extractFile(@NotNull InputStream inputStream, @Nullable String str) throws IOException {
        FileOutputStream fileOutputStream;
        Throwable th;
        BufferedOutputStream bufferedOutputStream;
        File file = new File(str);
        FileUtility.delete(file);
        File parentFile = file.getParentFile();
        if (parentFile != null && !parentFile.exists()) {
            parentFile.mkdirs();
        }
        try {
            fileOutputStream = new FileOutputStream(str);
            try {
                bufferedOutputStream = new BufferedOutputStream(fileOutputStream);
            } catch (Throwable th2) {
                th = th2;
                bufferedOutputStream = null;
            }
            try {
                byte[] bArr = new byte[4096];
                while (true) {
                    int read = inputStream.read(bArr);
                    if (read != -1) {
                        bufferedOutputStream.write(bArr, 0, read);
                    } else {
                        FileUtility fileUtility = FileUtility.INSTANCE;
                        fileUtility.closeQuietly(inputStream);
                        fileUtility.closeQuietly(bufferedOutputStream);
                        fileUtility.closeQuietly(fileOutputStream);
                        return;
                    }
                }
            } catch (Throwable th3) {
                th = th3;
                FileUtility fileUtility2 = FileUtility.INSTANCE;
                fileUtility2.closeQuietly(inputStream);
                fileUtility2.closeQuietly(bufferedOutputStream);
                fileUtility2.closeQuietly(fileOutputStream);
                throw th;
            }
        } catch (Throwable th4) {
            fileOutputStream = null;
            th = th4;
            bufferedOutputStream = null;
        }
    }

    @JvmOverloads
    @NotNull
    public final List<File> unzip(@Nullable String str, @NotNull String str2) throws IOException {
        return unzip$default(this, str, str2, null, 4, null);
    }

    @JvmOverloads
    @NotNull
    public final List<File> unzip(@Nullable String str, @NotNull String str2, @Nullable Filter filter) throws IOException {
        ZipFile zipFile;
        if (str != null && str.length() != 0) {
            File file = new File(str);
            if (file.exists()) {
                File file2 = new File(str2);
                if (!file2.exists()) {
                    file2.mkdirs();
                }
                ArrayList arrayList = new ArrayList();
                ZipFile zipFile2 = null;
                try {
                    zipFile = new ZipFile(file);
                } catch (Throwable th) {
                    th = th;
                }
                try {
                    Enumeration<? extends ZipEntry> entries = zipFile.entries();
                    while (entries.hasMoreElements()) {
                        ZipEntry nextElement = entries.nextElement();
                        String str3 = str2 + File.separator + nextElement.getName();
                        if (filter != null && !filter.matches(str3)) {
                        }
                        validateFilename(str3, str2);
                        if (nextElement.isDirectory()) {
                            File file3 = new File(str3);
                            if (!file3.exists()) {
                                file3.mkdirs();
                            }
                        } else {
                            extractFile(zipFile.getInputStream(nextElement), str3);
                            arrayList.add(new File(str3));
                        }
                    }
                    try {
                        zipFile.close();
                    } catch (IOException unused) {
                    }
                    return arrayList;
                } catch (Throwable th2) {
                    th = th2;
                    zipFile2 = zipFile;
                    if (zipFile2 != null) {
                        try {
                            zipFile2.close();
                        } catch (IOException unused2) {
                        }
                    }
                    throw th;
                }
            }
            throw new IOException("File does not exist");
        }
        throw new IOException("Path is empty");
    }
}
