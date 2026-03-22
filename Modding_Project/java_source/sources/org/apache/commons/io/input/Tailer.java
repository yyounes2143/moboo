package org.apache.commons.io.input;

import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.nio.charset.Charset;
import org.apache.commons.io.FileUtils;
/* compiled from: Proguard */
/* loaded from: classes7.dex */
public class Tailer implements Runnable {

    /* renamed from: Wwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final Charset f13389Wwwwwwwwwwwwwwwww = Charset.defaultCharset();

    /* renamed from: Wwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public volatile boolean f13390Wwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final boolean f13391Wwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final TailerListener f13392Wwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final boolean f13393Wwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final long f13394Wwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Charset f13395Wwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final File f13396Wwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final byte[] f13397Wwwwwwwwwwwwwwwwwwwwwwwww;

    public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        this.f13390Wwwwwwwwwwwwwwwwww = false;
    }

    public final long Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(RandomAccessFile randomAccessFile) throws IOException {
        int read;
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(64);
        try {
            long filePointer = randomAccessFile.getFilePointer();
            long j = filePointer;
            boolean z = false;
            while (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() && (read = randomAccessFile.read(this.f13397Wwwwwwwwwwwwwwwwwwwwwwwww)) != -1) {
                for (int i = 0; i < read; i++) {
                    byte b = this.f13397Wwwwwwwwwwwwwwwwwwwwwwwww[i];
                    if (b != 10) {
                        if (b != 13) {
                            if (z) {
                                this.f13392Wwwwwwwwwwwwwwwwwwww.handle(new String(byteArrayOutputStream.toByteArray(), this.f13395Wwwwwwwwwwwwwwwwwwwwwww));
                                byteArrayOutputStream.reset();
                                filePointer = i + j + 1;
                                z = false;
                            }
                            byteArrayOutputStream.write(b);
                        } else {
                            if (z) {
                                byteArrayOutputStream.write(13);
                            }
                            z = true;
                        }
                    } else {
                        this.f13392Wwwwwwwwwwwwwwwwwwww.handle(new String(byteArrayOutputStream.toByteArray(), this.f13395Wwwwwwwwwwwwwwwwwwwwwww));
                        byteArrayOutputStream.reset();
                        filePointer = i + j + 1;
                        z = false;
                    }
                }
                j = randomAccessFile.getFilePointer();
            }
            randomAccessFile.seek(filePointer);
            TailerListener tailerListener = this.f13392Wwwwwwwwwwwwwwwwwwww;
            if (tailerListener instanceof TailerListenerAdapter) {
                ((TailerListenerAdapter) tailerListener).Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
            }
            byteArrayOutputStream.close();
            return filePointer;
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                try {
                    byteArrayOutputStream.close();
                } catch (Throwable th3) {
                    th.addSuppressed(th3);
                }
                throw th2;
            }
        }
    }

    public boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f13390Wwwwwwwwwwwwwwwwww;
    }

    @Override // java.lang.Runnable
    public void run() {
        RandomAccessFile randomAccessFile;
        long Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
        long lastModified;
        RandomAccessFile randomAccessFile2 = null;
        long j = 0;
        long j2 = 0;
        while (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() && randomAccessFile2 == null) {
            try {
                try {
                    try {
                        randomAccessFile2 = new RandomAccessFile(this.f13396Wwwwwwwwwwwwwwwwwwwwwwww, "r");
                    } catch (FileNotFoundException unused) {
                        this.f13392Wwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
                    }
                    if (randomAccessFile2 == null) {
                        Thread.sleep(this.f13394Wwwwwwwwwwwwwwwwwwwwww);
                    } else {
                        if (this.f13393Wwwwwwwwwwwwwwwwwwwww) {
                            j2 = this.f13396Wwwwwwwwwwwwwwwwwwwwwwww.length();
                        } else {
                            j2 = 0;
                        }
                        j = this.f13396Wwwwwwwwwwwwwwwwwwwwwwww.lastModified();
                        randomAccessFile2.seek(j2);
                    }
                } catch (Throwable th) {
                    th = th;
                }
            } catch (InterruptedException e) {
                e = e;
            } catch (Exception e2) {
                e = e2;
            }
        }
        while (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()) {
            boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwww2 = FileUtils.Wwwwwwwwwwwwwwwwwwwwwwwwwwww(this.f13396Wwwwwwwwwwwwwwwwwwwwwwww, j);
            int i = (this.f13396Wwwwwwwwwwwwwwwwwwwwwwww.length() > j2 ? 1 : (this.f13396Wwwwwwwwwwwwwwwwwwwwwwww.length() == j2 ? 0 : -1));
            if (i < 0) {
                this.f13392Wwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
                try {
                    randomAccessFile = new RandomAccessFile(this.f13396Wwwwwwwwwwwwwwwwwwwwwwww, "r");
                    try {
                        try {
                            Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(randomAccessFile2);
                        } catch (Throwable th2) {
                            th = th2;
                            try {
                                throw th;
                            } catch (Throwable th3) {
                                if (randomAccessFile2 != null) {
                                    try {
                                        randomAccessFile2.close();
                                    } catch (Throwable th4) {
                                        try {
                                            th.addSuppressed(th4);
                                        } catch (FileNotFoundException unused2) {
                                            randomAccessFile2 = randomAccessFile;
                                            this.f13392Wwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
                                            Thread.sleep(this.f13394Wwwwwwwwwwwwwwwwwwwwww);
                                        }
                                    }
                                }
                                throw th3;
                                break;
                            }
                        }
                    } catch (IOException e3) {
                        this.f13392Wwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(e3);
                    }
                    if (randomAccessFile2 != null) {
                        try {
                            try {
                                randomAccessFile2.close();
                            } catch (FileNotFoundException unused3) {
                                j2 = 0;
                                randomAccessFile2 = randomAccessFile;
                                this.f13392Wwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
                                Thread.sleep(this.f13394Wwwwwwwwwwwwwwwwwwwwww);
                            }
                        } catch (InterruptedException e4) {
                            e = e4;
                            randomAccessFile2 = randomAccessFile;
                            Thread.currentThread().interrupt();
                            this.f13392Wwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(e);
                            if (randomAccessFile2 != null) {
                                try {
                                    randomAccessFile2.close();
                                } catch (IOException e5) {
                                    e = e5;
                                    this.f13392Wwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(e);
                                    Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
                                }
                            }
                            Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
                        } catch (Exception e6) {
                            e = e6;
                            randomAccessFile2 = randomAccessFile;
                            this.f13392Wwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(e);
                            if (randomAccessFile2 != null) {
                                try {
                                    randomAccessFile2.close();
                                } catch (IOException e7) {
                                    e = e7;
                                    this.f13392Wwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(e);
                                    Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
                                }
                            }
                            Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
                        } catch (Throwable th5) {
                            th = th5;
                            randomAccessFile2 = randomAccessFile;
                            if (randomAccessFile2 != null) {
                                try {
                                    randomAccessFile2.close();
                                } catch (IOException e8) {
                                    this.f13392Wwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(e8);
                                }
                            }
                            Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
                            throw th;
                        }
                    }
                    j2 = 0;
                    randomAccessFile2 = randomAccessFile;
                } catch (Throwable th6) {
                    th = th6;
                    randomAccessFile = randomAccessFile2;
                }
            } else {
                if (i > 0) {
                    Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(randomAccessFile2);
                    lastModified = this.f13396Wwwwwwwwwwwwwwwwwwwwwwww.lastModified();
                } else {
                    if (Wwwwwwwwwwwwwwwwwwwwwwwwwwww2) {
                        randomAccessFile2.seek(0L);
                        Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(randomAccessFile2);
                        lastModified = this.f13396Wwwwwwwwwwwwwwwwwwwwwwww.lastModified();
                    }
                    if (this.f13391Wwwwwwwwwwwwwwwwwww && randomAccessFile2 != null) {
                        randomAccessFile2.close();
                    }
                    Thread.sleep(this.f13394Wwwwwwwwwwwwwwwwwwwwww);
                    if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() && this.f13391Wwwwwwwwwwwwwwwwwww) {
                        randomAccessFile = new RandomAccessFile(this.f13396Wwwwwwwwwwwwwwwwwwwwwwww, "r");
                        randomAccessFile.seek(j2);
                        randomAccessFile2 = randomAccessFile;
                    }
                }
                long j3 = lastModified;
                j2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
                j = j3;
                if (this.f13391Wwwwwwwwwwwwwwwwwww) {
                    randomAccessFile2.close();
                }
                Thread.sleep(this.f13394Wwwwwwwwwwwwwwwwwwwwww);
                if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()) {
                    randomAccessFile = new RandomAccessFile(this.f13396Wwwwwwwwwwwwwwwwwwwwwwww, "r");
                    randomAccessFile.seek(j2);
                    randomAccessFile2 = randomAccessFile;
                }
            }
        }
        if (randomAccessFile2 != null) {
            try {
                randomAccessFile2.close();
            } catch (IOException e9) {
                e = e9;
                this.f13392Wwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(e);
                Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
            }
        }
        Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
    }
}
