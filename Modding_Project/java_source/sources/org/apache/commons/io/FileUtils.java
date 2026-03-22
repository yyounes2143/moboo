package org.apache.commons.io;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.math.BigInteger;
import java.nio.file.Files;
import java.nio.file.Path;
import kotlinx.coroutines.internal.LockFreeTaskQueueCore;
/* compiled from: Proguard */
/* loaded from: classes7.dex */
public class FileUtils {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final File[] f13308Wwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final BigInteger f13309Wwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final BigInteger f13310Wwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final BigInteger f13311Wwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final BigInteger f13312Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final BigInteger f13313Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final BigInteger f13314Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final BigInteger f13315Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final BigInteger f13316Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    static {
        BigInteger valueOf = BigInteger.valueOf(1024L);
        f13316Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = valueOf;
        BigInteger multiply = valueOf.multiply(valueOf);
        f13315Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = multiply;
        BigInteger multiply2 = valueOf.multiply(multiply);
        f13314Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = multiply2;
        BigInteger multiply3 = valueOf.multiply(multiply2);
        f13313Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = multiply3;
        BigInteger multiply4 = valueOf.multiply(multiply3);
        f13312Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww = multiply4;
        f13311Wwwwwwwwwwwwwwwwwwwwwwwwwwwww = valueOf.multiply(multiply4);
        BigInteger multiply5 = BigInteger.valueOf(1024L).multiply(BigInteger.valueOf(LockFreeTaskQueueCore.FROZEN_MASK));
        f13310Wwwwwwwwwwwwwwwwwwwwwwwwwwww = multiply5;
        f13309Wwwwwwwwwwwwwwwwwwwwwwwwwww = valueOf.multiply(multiply5);
        f13308Wwwwwwwwwwwwwwwwwwwwwwwwww = new File[0];
    }

    public static File[] Wwwwwwwwwwwwwwwwwwwwwww(File file) throws IOException {
        if (file.exists()) {
            if (file.isDirectory()) {
                File[] listFiles = file.listFiles();
                if (listFiles != null) {
                    return listFiles;
                }
                throw new IOException("Failed to list contents of " + file);
            }
            throw new IllegalArgumentException(file + " is not a directory");
        }
        throw new IllegalArgumentException(file + " does not exist");
    }

    public static long Wwwwwwwwwwwwwwwwwwwwwwww(File file) {
        File[] listFiles = file.listFiles();
        if (listFiles == null) {
            return 0L;
        }
        long j = 0;
        for (File file2 : listFiles) {
            try {
                if (!Wwwwwwwwwwwwwwwwwwwwwwwwwww(file2)) {
                    j += Wwwwwwwwwwwwwwwwwwwwwwwwww(file2);
                    if (j < 0) {
                        break;
                    }
                } else {
                    continue;
                }
            } catch (IOException unused) {
            }
        }
        return j;
    }

    public static long Wwwwwwwwwwwwwwwwwwwwwwwww(File file) {
        Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(file);
        return Wwwwwwwwwwwwwwwwwwwwwwww(file);
    }

    public static long Wwwwwwwwwwwwwwwwwwwwwwwwww(File file) {
        if (file.isDirectory()) {
            return Wwwwwwwwwwwwwwwwwwwwwwww(file);
        }
        return file.length();
    }

    public static boolean Wwwwwwwwwwwwwwwwwwwwwwwwwww(File file) throws IOException {
        Path path;
        boolean isSymbolicLink;
        if (file != null) {
            path = file.toPath();
            isSymbolicLink = Files.isSymbolicLink(path);
            return isSymbolicLink;
        }
        throw new NullPointerException("File must not be null");
    }

    public static boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwww(File file, long j) {
        if (file != null) {
            if (!file.exists() || file.lastModified() <= j) {
                return false;
            }
            return true;
        }
        throw new IllegalArgumentException("No specified file");
    }

    public static void Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(File file) throws IOException {
        File parentFile = file.getParentFile();
        if (parentFile == null) {
            return;
        }
        Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(parentFile);
    }

    public static void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(File file) throws IOException {
        if (file.exists()) {
            if (!file.isDirectory()) {
                throw new IOException("File " + file + " exists and is not a directory. Unable to create directory.");
            }
        } else if (!file.mkdirs() && !file.isDirectory()) {
            throw new IOException("Unable to create directory " + file);
        }
    }

    public static void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(File file) throws IOException {
        if (file.isDirectory()) {
            Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(file);
            return;
        }
        boolean exists = file.exists();
        if (!file.delete()) {
            if (!exists) {
                throw new FileNotFoundException("File does not exist: " + file);
            }
            throw new IOException("Unable to delete file: " + file);
        }
    }

    public static void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(File file) throws IOException {
        if (file.exists()) {
            if (!Wwwwwwwwwwwwwwwwwwwwwwwwwww(file)) {
                Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(file);
            }
            if (file.delete()) {
                return;
            }
            throw new IOException("Unable to delete directory " + file + ".");
        }
    }

    public static void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(File file) throws IOException {
        IOException e = null;
        for (File file2 : Wwwwwwwwwwwwwwwwwwwwwww(file)) {
            try {
                Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(file2);
            } catch (IOException e2) {
                e = e2;
            }
        }
        if (e == null) {
            return;
        }
        throw e;
    }

    public static void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(File file) {
        if (file.exists()) {
            if (file.isDirectory()) {
                return;
            }
            throw new IllegalArgumentException(file + " is not a directory");
        }
        throw new IllegalArgumentException(file + " does not exist");
    }
}
