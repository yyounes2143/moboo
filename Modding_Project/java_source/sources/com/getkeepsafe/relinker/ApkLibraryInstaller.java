package com.getkeepsafe.relinker;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import com.getkeepsafe.relinker.ReLinker;
import com.sensorsdata.analytics.android.sdk.plugin.property.beans.SAPropertyFilter;
import java.io.Closeable;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.Enumeration;
import java.util.HashSet;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import java.util.zip.ZipEntry;
import java.util.zip.ZipFile;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public class ApkLibraryInstaller implements ReLinker.LibraryInstaller {

    /* compiled from: Proguard */
    /* loaded from: classes4.dex */
    public static class ZipFileInZipEntry {

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public ZipEntry f7494Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public ZipFile f7495Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        public ZipFileInZipEntry(ZipFile zipFile, ZipEntry zipEntry) {
            this.f7495Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = zipFile;
            this.f7494Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = zipEntry;
        }
    }

    public final String[] Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(Context context) {
        ApplicationInfo applicationInfo = context.getApplicationInfo();
        String[] strArr = applicationInfo.splitSourceDirs;
        if (strArr != null && strArr.length != 0) {
            String[] strArr2 = new String[strArr.length + 1];
            strArr2[0] = applicationInfo.sourceDir;
            System.arraycopy(strArr, 0, strArr2, 1, strArr.length);
            return strArr2;
        }
        return new String[]{applicationInfo.sourceDir};
    }

    public final String[] Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Context context, String str) {
        StringBuilder sb = new StringBuilder();
        sb.append(SAPropertyFilter.LIB);
        char c = File.separatorChar;
        sb.append(c);
        sb.append("([^\\");
        sb.append(c);
        sb.append("]*)");
        sb.append(c);
        sb.append(str);
        Pattern compile = Pattern.compile(sb.toString());
        HashSet hashSet = new HashSet();
        for (String str2 : Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(context)) {
            try {
                Enumeration<? extends ZipEntry> entries = new ZipFile(new File(str2), 1).entries();
                while (entries.hasMoreElements()) {
                    Matcher matcher = compile.matcher(entries.nextElement().getName());
                    if (matcher.matches()) {
                        hashSet.add(matcher.group(1));
                    }
                }
            } catch (IOException unused) {
            }
        }
        return (String[]) hashSet.toArray(new String[hashSet.size()]);
    }

    public final ZipFileInZipEntry Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Context context, String[] strArr, String str, ReLinkerInstance reLinkerInstance) {
        int i;
        int i2 = 1;
        String[] Wwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(context);
        int length = Wwwwwwwwwwwwwwwwwwwwwwwwwwwww2.length;
        int i3 = 0;
        while (true) {
            ZipFile zipFile = null;
            if (i3 >= length) {
                return null;
            }
            String str2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwww2[i3];
            int i4 = 0;
            while (true) {
                int i5 = i4 + 1;
                if (i4 >= 5) {
                    break;
                }
                try {
                    zipFile = new ZipFile(new File(str2), i2);
                    break;
                } catch (IOException unused) {
                    i4 = i5;
                }
            }
            if (zipFile == null) {
                i = i2;
            } else {
                int i6 = 0;
                while (true) {
                    int i7 = i6 + 1;
                    if (i6 < 5) {
                        int length2 = strArr.length;
                        int i8 = 0;
                        while (i8 < length2) {
                            String str3 = strArr[i8];
                            StringBuilder sb = new StringBuilder();
                            sb.append(SAPropertyFilter.LIB);
                            char c = File.separatorChar;
                            sb.append(c);
                            sb.append(str3);
                            sb.append(c);
                            sb.append(str);
                            String sb2 = sb.toString();
                            Object[] objArr = new Object[2];
                            objArr[0] = sb2;
                            objArr[i2] = str2;
                            int i9 = i2;
                            reLinkerInstance.Wwwwwwwwwwwwwwwwwwwwwwwwww("Looking for %s in APK %s...", objArr);
                            ZipEntry entry = zipFile.getEntry(sb2);
                            if (entry != null) {
                                return new ZipFileInZipEntry(zipFile, entry);
                            }
                            i8++;
                            i2 = i9;
                        }
                        i6 = i7;
                        i2 = i2;
                    } else {
                        i = i2;
                        try {
                            zipFile.close();
                            break;
                        } catch (IOException unused2) {
                        }
                    }
                }
            }
            i3++;
            i2 = i;
        }
    }

    public final long Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(InputStream inputStream, OutputStream outputStream) throws IOException {
        byte[] bArr = new byte[4096];
        long j = 0;
        while (true) {
            int read = inputStream.read(bArr);
            if (read == -1) {
                outputStream.flush();
                return j;
            }
            outputStream.write(bArr, 0, read);
            j += read;
        }
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (IOException unused) {
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:26:0x0064, code lost:
        r10.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:87:?, code lost:
        return;
     */
    @Override // com.getkeepsafe.relinker.ReLinker.LibraryInstaller
    @android.annotation.SuppressLint({"SetWorldReadable"})
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(android.content.Context r10, java.lang.String[] r11, java.lang.String r12, java.io.File r13, com.getkeepsafe.relinker.ReLinkerInstance r14) {
        /*
            r9 = this;
            r0 = 0
            r1 = 1
            r2 = 0
            com.getkeepsafe.relinker.ApkLibraryInstaller$ZipFileInZipEntry r3 = r9.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(r10, r11, r12, r14)     // Catch: java.lang.Throwable -> Lac
            if (r3 == 0) goto L98
            r10 = r0
        La:
            int r11 = r10 + 1
            r4 = 5
            if (r10 >= r4) goto L8d
            java.lang.String r10 = "Found %s! Extracting..."
            java.lang.Object[] r4 = new java.lang.Object[r1]     // Catch: java.lang.Throwable -> L26
            r4[r0] = r12     // Catch: java.lang.Throwable -> L26
            r14.Wwwwwwwwwwwwwwwwwwwwwwwwww(r10, r4)     // Catch: java.lang.Throwable -> L26
            boolean r10 = r13.exists()     // Catch: java.lang.Throwable -> L26 java.io.IOException -> L8a
            if (r10 != 0) goto L2a
            boolean r10 = r13.createNewFile()     // Catch: java.lang.Throwable -> L26 java.io.IOException -> L8a
            if (r10 != 0) goto L2a
            goto L8a
        L26:
            r10 = move-exception
            r2 = r3
            goto Lad
        L2a:
            java.util.zip.ZipFile r10 = r3.f7495Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww     // Catch: java.lang.Throwable -> L72 java.io.IOException -> L75 java.io.FileNotFoundException -> L78
            java.util.zip.ZipEntry r4 = r3.f7494Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww     // Catch: java.lang.Throwable -> L72 java.io.IOException -> L75 java.io.FileNotFoundException -> L78
            java.io.InputStream r10 = r10.getInputStream(r4)     // Catch: java.lang.Throwable -> L72 java.io.IOException -> L75 java.io.FileNotFoundException -> L78
            java.io.FileOutputStream r4 = new java.io.FileOutputStream     // Catch: java.lang.Throwable -> L6b java.io.IOException -> L6e java.io.FileNotFoundException -> L70
            r4.<init>(r13)     // Catch: java.lang.Throwable -> L6b java.io.IOException -> L6e java.io.FileNotFoundException -> L70
            long r5 = r9.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(r10, r4)     // Catch: java.lang.Throwable -> L68 java.io.IOException -> L82 java.io.FileNotFoundException -> L86
            java.io.FileDescriptor r7 = r4.getFD()     // Catch: java.lang.Throwable -> L68 java.io.IOException -> L82 java.io.FileNotFoundException -> L86
            r7.sync()     // Catch: java.lang.Throwable -> L68 java.io.IOException -> L82 java.io.FileNotFoundException -> L86
            long r7 = r13.length()     // Catch: java.lang.Throwable -> L68 java.io.IOException -> L82 java.io.FileNotFoundException -> L86
            int r5 = (r5 > r7 ? 1 : (r5 == r7 ? 0 : -1))
            if (r5 == 0) goto L51
            r9.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(r10)     // Catch: java.lang.Throwable -> L26
        L4d:
            r9.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(r4)     // Catch: java.lang.Throwable -> L26
            goto L8a
        L51:
            r9.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(r10)     // Catch: java.lang.Throwable -> L26
            r9.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(r4)     // Catch: java.lang.Throwable -> L26
            r13.setReadable(r1, r0)     // Catch: java.lang.Throwable -> L26
            r13.setExecutable(r1, r0)     // Catch: java.lang.Throwable -> L26
            r13.setWritable(r1)     // Catch: java.lang.Throwable -> L26
            java.util.zip.ZipFile r10 = r3.f7495Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww     // Catch: java.io.IOException -> L97
            if (r10 == 0) goto L97
        L64:
            r10.close()     // Catch: java.io.IOException -> L97
            goto L97
        L68:
            r11 = move-exception
        L69:
            r2 = r10
            goto L7b
        L6b:
            r11 = move-exception
            r4 = r2
            goto L69
        L6e:
            r4 = r2
            goto L82
        L70:
            r4 = r2
            goto L86
        L72:
            r11 = move-exception
            r4 = r2
            goto L7b
        L75:
            r10 = r2
            r4 = r10
            goto L82
        L78:
            r10 = r2
            r4 = r10
            goto L86
        L7b:
            r9.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(r2)     // Catch: java.lang.Throwable -> L26
            r9.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(r4)     // Catch: java.lang.Throwable -> L26
            throw r11     // Catch: java.lang.Throwable -> L26
        L82:
            r9.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(r10)     // Catch: java.lang.Throwable -> L26
            goto L4d
        L86:
            r9.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(r10)     // Catch: java.lang.Throwable -> L26
            goto L4d
        L8a:
            r10 = r11
            goto La
        L8d:
            java.lang.String r10 = "FATAL! Couldn't extract the library from the APK!"
            r14.Wwwwwwwwwwwwwwwwwwwwwwwwwww(r10)     // Catch: java.lang.Throwable -> L26
            java.util.zip.ZipFile r10 = r3.f7495Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww     // Catch: java.io.IOException -> L97
            if (r10 == 0) goto L97
            goto L64
        L97:
            return
        L98:
            java.lang.String[] r10 = r9.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(r10, r12)     // Catch: java.lang.Throwable -> L26 java.lang.Exception -> L9d
            goto La6
        L9d:
            r10 = move-exception
            java.lang.String r10 = r10.toString()     // Catch: java.lang.Throwable -> L26
            java.lang.String[] r10 = new java.lang.String[]{r10}     // Catch: java.lang.Throwable -> L26
        La6:
            com.getkeepsafe.relinker.MissingLibraryException r13 = new com.getkeepsafe.relinker.MissingLibraryException     // Catch: java.lang.Throwable -> L26
            r13.<init>(r12, r11, r10)     // Catch: java.lang.Throwable -> L26
            throw r13     // Catch: java.lang.Throwable -> L26
        Lac:
            r10 = move-exception
        Lad:
            if (r2 == 0) goto Lb6
            java.util.zip.ZipFile r11 = r2.f7495Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww     // Catch: java.io.IOException -> Lb6
            if (r11 == 0) goto Lb6
            r11.close()     // Catch: java.io.IOException -> Lb6
        Lb6:
            throw r10
        */
        throw new UnsupportedOperationException("Method not decompiled: com.getkeepsafe.relinker.ApkLibraryInstaller.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(android.content.Context, java.lang.String[], java.lang.String, java.io.File, com.getkeepsafe.relinker.ReLinkerInstance):void");
    }
}
