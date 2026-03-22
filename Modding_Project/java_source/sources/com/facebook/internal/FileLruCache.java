package com.facebook.internal;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.media3.exoplayer.rtsp.SessionDescription;
import com.facebook.FacebookSdk;
import com.facebook.LoggingBehavior;
import com.facebook.internal.FileLruCache;
import com.facebook.internal.Logger;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.FilenameFilter;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.Date;
import java.util.PriorityQueue;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.locks.Condition;
import java.util.concurrent.locks.ReentrantLock;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Charsets;
import kotlin.text.StringsKt;
import kotlinx.serialization.json.internal.AbstractJsonLexerKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.json.JSONException;
import org.json.JSONObject;
import org.json.JSONTokener;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000T\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\f\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u000b\u0018\u0000 52\u00020\u0001:\b67589:;<B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007J&\u0010\u000b\u001a\u0004\u0018\u00010\n2\u0006\u0010\b\u001a\u00020\u00022\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u0002H\u0087\u0002¢\u0006\u0004\b\u000b\u0010\fJ#\u0010\u000e\u001a\u00020\r2\u0006\u0010\b\u001a\u00020\u00022\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u0002H\u0007¢\u0006\u0004\b\u000e\u0010\u000fJ\u001d\u0010\u0011\u001a\u00020\n2\u0006\u0010\b\u001a\u00020\u00022\u0006\u0010\u0010\u001a\u00020\n¢\u0006\u0004\b\u0011\u0010\u0012J\u000f\u0010\u0013\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u0013\u0010\u0014J\u001f\u0010\u0018\u001a\u00020\u00172\u0006\u0010\b\u001a\u00020\u00022\u0006\u0010\u0016\u001a\u00020\u0015H\u0002¢\u0006\u0004\b\u0018\u0010\u0019J\u000f\u0010\u001a\u001a\u00020\u0017H\u0002¢\u0006\u0004\b\u001a\u0010\u001bJ\u000f\u0010\u001c\u001a\u00020\u0017H\u0002¢\u0006\u0004\b\u001c\u0010\u001bR\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001d\u0010\u001eR\u0014\u0010\u0005\u001a\u00020\u00048\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001f\u0010 R\u0014\u0010#\u001a\u00020\u00158\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b!\u0010\"R\u0016\u0010'\u001a\u00020$8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b%\u0010&R\u0016\u0010)\u001a\u00020$8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b(\u0010&R\u0014\u0010,\u001a\u00020*8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000b\u0010+R\u001c\u00101\u001a\n .*\u0004\u0018\u00010-0-8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b/\u00100R\u0014\u00104\u001a\u0002028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0011\u00103¨\u0006="}, d2 = {"Lcom/facebook/internal/FileLruCache;", "", "", "tag", "Lcom/facebook/internal/FileLruCache$Limits;", "limits", "<init>", "(Ljava/lang/String;Lcom/facebook/internal/FileLruCache$Limits;)V", "key", "contentTag", "Ljava/io/InputStream;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Ljava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;", "Ljava/io/OutputStream;", "Wwwwwwwwwwwwwwwwwwwwwwwwww", "(Ljava/lang/String;Ljava/lang/String;)Ljava/io/OutputStream;", "input", "Wwwwwwwwwwwwwwwwwwwwwwwwwww", "(Ljava/lang/String;Ljava/io/InputStream;)Ljava/io/InputStream;", "toString", "()Ljava/lang/String;", "Ljava/io/File;", "buffer", "", "Wwwwwwwwwwwwwwwwwwwwww", "(Ljava/lang/String;Ljava/io/File;)V", "Wwwwwwwwwwwwwwwwwwwwwwww", "()V", "Wwwwwwwwwwwwwwwwwwwww", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Ljava/lang/String;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Lcom/facebook/internal/FileLruCache$Limits;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Ljava/io/File;", "directory", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Z", "isTrimPending", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "isTrimInProgress", "Ljava/util/concurrent/locks/ReentrantLock;", "Ljava/util/concurrent/locks/ReentrantLock;", "lock", "Ljava/util/concurrent/locks/Condition;", "kotlin.jvm.PlatformType", "Wwwwwwwwwwwwwwwwwwwwwwwwwwww", "Ljava/util/concurrent/locks/Condition;", "condition", "Ljava/util/concurrent/atomic/AtomicLong;", "Ljava/util/concurrent/atomic/AtomicLong;", "lastClearCacheTime", "Companion", "BufferFile", "CloseCallbackOutputStream", "CopyingInputStream", "Limits", "ModifiedFile", "StreamCloseCallback", "StreamHeader", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes4.dex */
public final class FileLruCache {
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final AtomicLong f6706Wwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Condition f6707Wwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final ReentrantLock f6708Wwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public boolean f6709Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public boolean f6710Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final File f6711Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Limits f6712Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final String f6713Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @NotNull
    public static final Companion Companion = new Companion(null);

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final String f6705Wwwwwwwwwwwwwwwwwwwwwwwwww = FileLruCache.class.getSimpleName();
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final AtomicLong f6704Wwwwwwwwwwwwwwwwwwwwwwwww = new AtomicLong();

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u000b\bÂ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0015\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0007\u0010\bJ\r\u0010\n\u001a\u00020\t¢\u0006\u0004\b\n\u0010\u000bJ\r\u0010\f\u001a\u00020\t¢\u0006\u0004\b\f\u0010\u000bJ\u0017\u0010\r\u001a\u00020\u00042\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004¢\u0006\u0004\b\r\u0010\u000eR\u0014\u0010\u0011\u001a\u00020\t8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000f\u0010\u0010R\u0014\u0010\u0013\u001a\u00020\t8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0012\u0010\u0010¨\u0006\u0014"}, d2 = {"Lcom/facebook/internal/FileLruCache$BufferFile;", "", "<init>", "()V", "Ljava/io/File;", "root", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Ljava/io/File;)V", "Ljava/io/FilenameFilter;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "()Ljava/io/FilenameFilter;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Wwwwwwwwwwwwwwwwwwwwwwwwwww", "(Ljava/io/File;)Ljava/io/File;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Ljava/io/FilenameFilter;", "filterExcludeBufferFiles", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "filterExcludeNonBufferFiles", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes4.dex */
    public static final class BufferFile {
        @NotNull
        public static final BufferFile INSTANCE = new BufferFile();
        @NotNull

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public static final FilenameFilter f6715Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new FilenameFilter() { // from class: com.facebook.internal.Wwwwwwwwwwwwwwwwwwwwwwwww
            @Override // java.io.FilenameFilter
            public final boolean accept(File file, String str) {
                boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
                Wwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = FileLruCache.BufferFile.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(file, str);
                return Wwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
            }
        };
        @NotNull

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public static final FilenameFilter f6714Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new FilenameFilter() { // from class: com.facebook.internal.Wwwwwwwwwwwwwwwwwwwwwwww
            @Override // java.io.FilenameFilter
            public final boolean accept(File file, String str) {
                boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwww2;
                Wwwwwwwwwwwwwwwwwwwwwwwwwwww2 = FileLruCache.BufferFile.Wwwwwwwwwwwwwwwwwwwwwwwwwwww(file, str);
                return Wwwwwwwwwwwwwwwwwwwwwwwwwwww2;
            }
        };

        public static final boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwww(File file, String str) {
            return StringsKt.startsWith$default(str, "buffer", false, 2, (Object) null);
        }

        public static final boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(File file, String str) {
            return !StringsKt.startsWith$default(str, "buffer", false, 2, (Object) null);
        }

        @NotNull
        public final File Wwwwwwwwwwwwwwwwwwwwwwwwwww(@Nullable File file) {
            return new File(file, Intrinsics.stringPlus("buffer", Long.valueOf(FileLruCache.f6704Wwwwwwwwwwwwwwwwwwwwwwwww.incrementAndGet())));
        }

        @NotNull
        public final FilenameFilter Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            return f6714Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        }

        @NotNull
        public final FilenameFilter Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            return f6715Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        }

        public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull File file) {
            File[] listFiles = file.listFiles(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
            if (listFiles != null) {
                int length = listFiles.length;
                int i = 0;
                while (i < length) {
                    File file2 = listFiles[i];
                    i++;
                    file2.delete();
                }
            }
        }
    }

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010\u0012\n\u0000\n\u0002\u0010\b\n\u0002\b\u0010\b\u0002\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0001\u0012\u0006\u0010\u0004\u001a\u00020\u0003¢\u0006\u0004\b\u0005\u0010\u0006J\u000f\u0010\b\u001a\u00020\u0007H\u0016¢\u0006\u0004\b\b\u0010\tJ\u000f\u0010\n\u001a\u00020\u0007H\u0016¢\u0006\u0004\b\n\u0010\tJ'\u0010\u0010\u001a\u00020\u00072\u0006\u0010\f\u001a\u00020\u000b2\u0006\u0010\u000e\u001a\u00020\r2\u0006\u0010\u000f\u001a\u00020\rH\u0016¢\u0006\u0004\b\u0010\u0010\u0011J\u0017\u0010\u0010\u001a\u00020\u00072\u0006\u0010\f\u001a\u00020\u000bH\u0016¢\u0006\u0004\b\u0010\u0010\u0012J\u0017\u0010\u0010\u001a\u00020\u00072\u0006\u0010\u0013\u001a\u00020\rH\u0016¢\u0006\u0004\b\u0010\u0010\u0014R\u0017\u0010\u0002\u001a\u00020\u00018\u0006¢\u0006\f\n\u0004\b\u0015\u0010\u0016\u001a\u0004\b\u0017\u0010\u0018R\u0017\u0010\u0004\u001a\u00020\u00038\u0006¢\u0006\f\n\u0004\b\u0019\u0010\u001a\u001a\u0004\b\u001b\u0010\u001c¨\u0006\u001d"}, d2 = {"Lcom/facebook/internal/FileLruCache$CloseCallbackOutputStream;", "Ljava/io/OutputStream;", "innerStream", "Lcom/facebook/internal/FileLruCache$StreamCloseCallback;", "callback", "<init>", "(Ljava/io/OutputStream;Lcom/facebook/internal/FileLruCache$StreamCloseCallback;)V", "", "close", "()V", "flush", "", "buffer", "", TypedValues.CycleType.S_WAVE_OFFSET, "count", "write", "([BII)V", "([B)V", "oneByte", "(I)V", "Wwwwwwwwwwwwwwwwwwwwwwwww", "Ljava/io/OutputStream;", "getInnerStream", "()Ljava/io/OutputStream;", "Wwwwwwwwwwwwwwwwwwwwwwww", "Lcom/facebook/internal/FileLruCache$StreamCloseCallback;", "getCallback", "()Lcom/facebook/internal/FileLruCache$StreamCloseCallback;", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes4.dex */
    public static final class CloseCallbackOutputStream extends OutputStream implements AutoCloseable {
        @NotNull

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final StreamCloseCallback f6716Wwwwwwwwwwwwwwwwwwwwwwww;
        @NotNull

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final OutputStream f6717Wwwwwwwwwwwwwwwwwwwwwwwww;

        public CloseCallbackOutputStream(@NotNull OutputStream outputStream, @NotNull StreamCloseCallback streamCloseCallback) {
            this.f6717Wwwwwwwwwwwwwwwwwwwwwwwww = outputStream;
            this.f6716Wwwwwwwwwwwwwwwwwwwwwwww = streamCloseCallback;
        }

        @Override // java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            try {
                this.f6717Wwwwwwwwwwwwwwwwwwwwwwwww.close();
            } finally {
                this.f6716Wwwwwwwwwwwwwwwwwwwwwwww.onClose();
            }
        }

        @Override // java.io.OutputStream, java.io.Flushable
        public void flush() throws IOException {
            this.f6717Wwwwwwwwwwwwwwwwwwwwwwwww.flush();
        }

        @Override // java.io.OutputStream
        public void write(@NotNull byte[] bArr, int i, int i2) throws IOException {
            this.f6717Wwwwwwwwwwwwwwwwwwwwwwwww.write(bArr, i, i2);
        }

        @Override // java.io.OutputStream
        public void write(@NotNull byte[] bArr) throws IOException {
            this.f6717Wwwwwwwwwwwwwwwwwwwwwwwww.write(bArr);
        }

        @Override // java.io.OutputStream
        public void write(int i) throws IOException {
            this.f6717Wwwwwwwwwwwwwwwwwwwwwwwww.write(i);
        }
    }

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003R\u001f\u0010\u0006\u001a\n \u0005*\u0004\u0018\u00010\u00040\u00048\u0006¢\u0006\f\n\u0004\b\u0006\u0010\u0007\u001a\u0004\b\b\u0010\tR\u0014\u0010\n\u001a\u00020\u00048\u0002X\u0082T¢\u0006\u0006\n\u0004\b\n\u0010\u0007R\u0014\u0010\u000b\u001a\u00020\u00048\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u000b\u0010\u0007R\u0014\u0010\r\u001a\u00020\f8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\r\u0010\u000e¨\u0006\u000f"}, d2 = {"Lcom/facebook/internal/FileLruCache$Companion;", "", "<init>", "()V", "", "kotlin.jvm.PlatformType", "TAG", "Ljava/lang/String;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "()Ljava/lang/String;", "HEADER_CACHEKEY_KEY", "HEADER_CACHE_CONTENT_TAG_KEY", "Ljava/util/concurrent/atomic/AtomicLong;", "bufferIndex", "Ljava/util/concurrent/atomic/AtomicLong;", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes4.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            return FileLruCache.f6705Wwwwwwwwwwwwwwwwwwwwwwwwww;
        }

        public Companion() {
        }
    }

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u000b\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003R*\u0010\u000b\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00048\u0006@FX\u0086\u000e¢\u0006\u0012\n\u0004\b\u0006\u0010\u0007\u001a\u0004\b\u0006\u0010\b\"\u0004\b\t\u0010\nR*\u0010\u000e\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00048\u0006@FX\u0086\u000e¢\u0006\u0012\n\u0004\b\f\u0010\u0007\u001a\u0004\b\f\u0010\b\"\u0004\b\r\u0010\n¨\u0006\u000f"}, d2 = {"Lcom/facebook/internal/FileLruCache$Limits;", "", "<init>", "()V", "", "value", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "I", "()I", "setByteCount", "(I)V", "byteCount", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "setFileCount", "fileCount", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes4.dex */
    public static final class Limits {

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public int f6721Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = 1048576;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public int f6720Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = 1024;

        public final int Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            return this.f6720Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        }

        public final int Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            return this.f6721Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        }
    }

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u000f\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000b\n\u0002\b\b\n\u0002\u0010\t\n\u0002\b\u0007\b\u0002\u0018\u0000 \u001a2\b\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\u001aB\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005J\u0018\u0010\b\u001a\u00020\u00072\u0006\u0010\u0006\u001a\u00020\u0000H\u0096\u0002¢\u0006\u0004\b\b\u0010\tJ\u001a\u0010\f\u001a\u00020\u000b2\b\u0010\u0006\u001a\u0004\u0018\u00010\nH\u0096\u0002¢\u0006\u0004\b\f\u0010\rJ\u000f\u0010\u000e\u001a\u00020\u0007H\u0016¢\u0006\u0004\b\u000e\u0010\u000fR\u0017\u0010\u0003\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0010\u0010\u0011\u001a\u0004\b\u0012\u0010\u0013R\u0017\u0010\u0019\u001a\u00020\u00148\u0006¢\u0006\f\n\u0004\b\u0015\u0010\u0016\u001a\u0004\b\u0017\u0010\u0018¨\u0006\u001b"}, d2 = {"Lcom/facebook/internal/FileLruCache$ModifiedFile;", "", "Ljava/io/File;", "file", "<init>", "(Ljava/io/File;)V", "another", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lcom/facebook/internal/FileLruCache$ModifiedFile;)I", "", "", "equals", "(Ljava/lang/Object;)Z", "hashCode", "()I", "Wwwwwwwwwwwwwwwwwwwwwwwww", "Ljava/io/File;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "()Ljava/io/File;", "", "Wwwwwwwwwwwwwwwwwwwwwwww", "J", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "()J", "modified", "Companion", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes4.dex */
    public static final class ModifiedFile implements Comparable<ModifiedFile> {
        @NotNull
        public static final Companion Companion = new Companion(null);

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final long f6722Wwwwwwwwwwwwwwwwwwwwwwww;
        @NotNull

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final File f6723Wwwwwwwwwwwwwwwwwwwwwwwww;

        /* compiled from: Proguard */
        @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000¨\u0006\u0006"}, d2 = {"Lcom/facebook/internal/FileLruCache$ModifiedFile$Companion;", "", "()V", "HASH_MULTIPLIER", "", "HASH_SEED", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
        /* loaded from: classes4.dex */
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            public Companion() {
            }
        }

        public ModifiedFile(@NotNull File file) {
            this.f6723Wwwwwwwwwwwwwwwwwwwwwwwww = file;
            this.f6722Wwwwwwwwwwwwwwwwwwwwwwww = file.lastModified();
        }

        public final long Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            return this.f6722Wwwwwwwwwwwwwwwwwwwwwwww;
        }

        @NotNull
        public final File Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            return this.f6723Wwwwwwwwwwwwwwwwwwwwwwwww;
        }

        @Override // java.lang.Comparable
        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww */
        public int compareTo(@NotNull ModifiedFile modifiedFile) {
            long j = this.f6722Wwwwwwwwwwwwwwwwwwwwwwww;
            long j2 = modifiedFile.f6722Wwwwwwwwwwwwwwwwwwwwwwww;
            if (j < j2) {
                return -1;
            }
            if (j > j2) {
                return 1;
            }
            return this.f6723Wwwwwwwwwwwwwwwwwwwwwwwww.compareTo(modifiedFile.f6723Wwwwwwwwwwwwwwwwwwwwwwwww);
        }

        public boolean equals(@Nullable Object obj) {
            if ((obj instanceof ModifiedFile) && compareTo((ModifiedFile) obj) == 0) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            return ((1073 + this.f6723Wwwwwwwwwwwwwwwwwwwwwwwww.hashCode()) * 37) + ((int) (this.f6722Wwwwwwwwwwwwwwwwwwwwwwww % Integer.MAX_VALUE));
        }
    }

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\bâ\u0080\u0001\u0018\u00002\u00020\u0001J\b\u0010\u0002\u001a\u00020\u0003H&¨\u0006\u0004"}, d2 = {"Lcom/facebook/internal/FileLruCache$StreamCloseCallback;", "", "onClose", "", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes4.dex */
    public interface StreamCloseCallback {
        void onClose();
    }

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÂ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u001d\u0010\t\u001a\u00020\b2\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\t\u0010\nJ\u0017\u0010\f\u001a\u0004\u0018\u00010\u00062\u0006\u0010\u0005\u001a\u00020\u000b¢\u0006\u0004\b\f\u0010\r¨\u0006\u000e"}, d2 = {"Lcom/facebook/internal/FileLruCache$StreamHeader;", "", "<init>", "()V", "Ljava/io/OutputStream;", "stream", "Lorg/json/JSONObject;", "header", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Ljava/io/OutputStream;Lorg/json/JSONObject;)V", "Ljava/io/InputStream;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Ljava/io/InputStream;)Lorg/json/JSONObject;", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes4.dex */
    public static final class StreamHeader {
        @NotNull
        public static final StreamHeader INSTANCE = new StreamHeader();

        public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull OutputStream outputStream, @NotNull JSONObject jSONObject) throws IOException {
            byte[] bytes = jSONObject.toString().getBytes(Charsets.UTF_8);
            outputStream.write(0);
            outputStream.write((bytes.length >> 16) & 255);
            outputStream.write((bytes.length >> 8) & 255);
            outputStream.write(bytes.length & 255);
            outputStream.write(bytes);
        }

        @Nullable
        public final JSONObject Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull InputStream inputStream) throws IOException {
            if (inputStream.read() != 0) {
                return null;
            }
            int i = 0;
            int i2 = 0;
            for (int i3 = 0; i3 < 3; i3++) {
                int read = inputStream.read();
                if (read == -1) {
                    Logger.Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(LoggingBehavior.CACHE, FileLruCache.Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(), "readHeader: stream.read returned -1 while reading header size");
                    return null;
                }
                i2 = (i2 << 8) + (read & 255);
            }
            byte[] bArr = new byte[i2];
            while (i < i2) {
                int read2 = inputStream.read(bArr, i, i2 - i);
                if (read2 < 1) {
                    Logger.Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(LoggingBehavior.CACHE, FileLruCache.Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(), "readHeader: stream.read stopped at " + Integer.valueOf(i) + " when expected " + i2);
                    return null;
                }
                i += read2;
            }
            try {
                Object nextValue = new JSONTokener(new String(bArr, Charsets.UTF_8)).nextValue();
                if (!(nextValue instanceof JSONObject)) {
                    Logger.Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(LoggingBehavior.CACHE, FileLruCache.Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(), Intrinsics.stringPlus("readHeader: expected JSONObject, got ", nextValue.getClass().getCanonicalName()));
                    return null;
                }
                return (JSONObject) nextValue;
            } catch (JSONException e) {
                throw new IOException(e.getMessage());
            }
        }
    }

    public FileLruCache(@NotNull String str, @NotNull Limits limits) {
        this.f6713Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = str;
        this.f6712Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = limits;
        File file = new File(FacebookSdk.Wwwwwwwwwwwwwwwwww(), str);
        this.f6711Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = file;
        ReentrantLock reentrantLock = new ReentrantLock();
        this.f6708Wwwwwwwwwwwwwwwwwwwwwwwwwwwww = reentrantLock;
        this.f6707Wwwwwwwwwwwwwwwwwwwwwwwwwwww = reentrantLock.newCondition();
        this.f6706Wwwwwwwwwwwwwwwwwwwwwwwwwww = new AtomicLong(0L);
        if (!file.mkdirs() && !file.isDirectory()) {
            return;
        }
        BufferFile.INSTANCE.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(file);
    }

    public static final void Wwwwwwwwwwwwwwwwwwwwwww(FileLruCache fileLruCache) {
        fileLruCache.Wwwwwwwwwwwwwwwwwwwww();
    }

    public static /* synthetic */ OutputStream Wwwwwwwwwwwwwwwwwwwwwwwww(FileLruCache fileLruCache, String str, String str2, int i, Object obj) throws IOException {
        if ((i & 2) != 0) {
            str2 = null;
        }
        return fileLruCache.Wwwwwwwwwwwwwwwwwwwwwwwwww(str, str2);
    }

    public static /* synthetic */ InputStream Wwwwwwwwwwwwwwwwwwwwwwwwwwww(FileLruCache fileLruCache, String str, String str2, int i, Object obj) throws IOException {
        if ((i & 2) != 0) {
            str2 = null;
        }
        return fileLruCache.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(str, str2);
    }

    public final void Wwwwwwwwwwwwwwwwwwwww() {
        long j;
        ModifiedFile modifiedFile;
        int i = 1;
        ReentrantLock reentrantLock = this.f6708Wwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        reentrantLock.lock();
        try {
            this.f6710Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = false;
            this.f6709Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww = true;
            Unit unit = Unit.INSTANCE;
            reentrantLock.unlock();
            try {
                Logger.Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(LoggingBehavior.CACHE, f6705Wwwwwwwwwwwwwwwwwwwwwwwwww, "trim started");
                PriorityQueue priorityQueue = new PriorityQueue();
                File[] listFiles = this.f6711Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.listFiles(BufferFile.INSTANCE.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
                long j2 = 0;
                if (listFiles != null) {
                    int length = listFiles.length;
                    int i2 = 0;
                    j = 0;
                    while (i2 < length) {
                        File file = listFiles[i2];
                        i2 += i;
                        priorityQueue.add(new ModifiedFile(file));
                        Logger.Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(LoggingBehavior.CACHE, f6705Wwwwwwwwwwwwwwwwwwwwwwwwww, "  trim considering time=" + Long.valueOf(modifiedFile.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()) + " name=" + ((Object) modifiedFile.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().getName()));
                        j2 += file.length();
                        j++;
                        i = 1;
                    }
                } else {
                    j = 0;
                }
                while (true) {
                    if (j2 <= this.f6712Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() && j <= this.f6712Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()) {
                        this.f6708Wwwwwwwwwwwwwwwwwwwwwwwwwwwww.lock();
                        try {
                            this.f6709Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww = false;
                            this.f6707Wwwwwwwwwwwwwwwwwwwwwwwwwwww.signalAll();
                            Unit unit2 = Unit.INSTANCE;
                            return;
                        } finally {
                        }
                    }
                    File Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = ((ModifiedFile) priorityQueue.remove()).Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
                    Logger.Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(LoggingBehavior.CACHE, f6705Wwwwwwwwwwwwwwwwwwwwwwwwww, Intrinsics.stringPlus("  trim removing ", Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.getName()));
                    j2 -= Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.length();
                    j--;
                    Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.delete();
                }
            } catch (Throwable th) {
                this.f6708Wwwwwwwwwwwwwwwwwwwwwwwwwwwww.lock();
                try {
                    this.f6709Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww = false;
                    this.f6707Wwwwwwwwwwwwwwwwwwwwwwwwwwww.signalAll();
                    Unit unit3 = Unit.INSTANCE;
                    throw th;
                } finally {
                }
            }
        } finally {
        }
    }

    public final void Wwwwwwwwwwwwwwwwwwwwww(String str, File file) {
        if (!file.renameTo(new File(this.f6711Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, Utility.Illlllllllllllllllll(str)))) {
            file.delete();
        }
        Wwwwwwwwwwwwwwwwwwwwwwww();
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwww() {
        ReentrantLock reentrantLock = this.f6708Wwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        reentrantLock.lock();
        try {
            if (!this.f6710Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww) {
                this.f6710Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = true;
                FacebookSdk.Wwwwwwwwwwwwww().execute(new Runnable() { // from class: com.facebook.internal.Wwwwwwwwwwwwwwwwwwwwwwwwww
                    @Override // java.lang.Runnable
                    public final void run() {
                        FileLruCache.Wwwwwwwwwwwwwwwwwwwwwww(FileLruCache.this);
                    }
                });
            }
            Unit unit = Unit.INSTANCE;
            reentrantLock.unlock();
        } catch (Throwable th) {
            reentrantLock.unlock();
            throw th;
        }
    }

    @JvmOverloads
    @NotNull
    public final OutputStream Wwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull final String str, @Nullable String str2) throws IOException {
        final File Wwwwwwwwwwwwwwwwwwwwwwwwwww2 = BufferFile.INSTANCE.Wwwwwwwwwwwwwwwwwwwwwwwwwww(this.f6711Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
        Wwwwwwwwwwwwwwwwwwwwwwwwwww2.delete();
        if (Wwwwwwwwwwwwwwwwwwwwwwwwwww2.createNewFile()) {
            try {
                FileOutputStream fileOutputStream = new FileOutputStream(Wwwwwwwwwwwwwwwwwwwwwwwwwww2);
                final long currentTimeMillis = System.currentTimeMillis();
                BufferedOutputStream bufferedOutputStream = new BufferedOutputStream(new CloseCallbackOutputStream(fileOutputStream, new StreamCloseCallback() { // from class: com.facebook.internal.FileLruCache$openPutStream$renameToTargetCallback$1
                    @Override // com.facebook.internal.FileLruCache.StreamCloseCallback
                    public void onClose() {
                        AtomicLong atomicLong;
                        long j = currentTimeMillis;
                        atomicLong = this.f6706Wwwwwwwwwwwwwwwwwwwwwwwwwww;
                        if (j >= atomicLong.get()) {
                            this.Wwwwwwwwwwwwwwwwwwwwww(str, Wwwwwwwwwwwwwwwwwwwwwwwwwww2);
                        } else {
                            Wwwwwwwwwwwwwwwwwwwwwwwwwww2.delete();
                        }
                    }
                }), 8192);
                try {
                    try {
                        JSONObject jSONObject = new JSONObject();
                        jSONObject.put("key", str);
                        if (!Utility.Kk(str2)) {
                            jSONObject.put("tag", str2);
                        }
                        StreamHeader.INSTANCE.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(bufferedOutputStream, jSONObject);
                        return bufferedOutputStream;
                    } catch (JSONException e) {
                        Logger.Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(LoggingBehavior.CACHE, 5, f6705Wwwwwwwwwwwwwwwwwwwwwwwwww, Intrinsics.stringPlus("Error creating JSON header for cache file: ", e));
                        throw new IOException(e.getMessage());
                    }
                } catch (Throwable th) {
                    bufferedOutputStream.close();
                    throw th;
                }
            } catch (FileNotFoundException e2) {
                Logger.Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(LoggingBehavior.CACHE, 5, f6705Wwwwwwwwwwwwwwwwwwwwwwwwww, Intrinsics.stringPlus("Error creating buffer output stream: ", e2));
                throw new IOException(e2.getMessage());
            }
        }
        throw new IOException(Intrinsics.stringPlus("Could not create file at ", Wwwwwwwwwwwwwwwwwwwwwwwwwww2.getAbsolutePath()));
    }

    @NotNull
    public final InputStream Wwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull String str, @NotNull InputStream inputStream) throws IOException {
        return new CopyingInputStream(inputStream, Wwwwwwwwwwwwwwwwwwwwwwwww(this, str, null, 2, null));
    }

    @JvmOverloads
    @Nullable
    public final InputStream Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull String str, @Nullable String str2) throws IOException {
        File file = new File(this.f6711Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, Utility.Illlllllllllllllllll(str));
        try {
            BufferedInputStream bufferedInputStream = new BufferedInputStream(new FileInputStream(file), 8192);
            try {
                JSONObject Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = StreamHeader.INSTANCE.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(bufferedInputStream);
                if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 == null) {
                    return null;
                }
                if (!Intrinsics.areEqual(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.optString("key"), str)) {
                    return null;
                }
                String optString = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.optString("tag", null);
                if (str2 == null && !Intrinsics.areEqual(str2, optString)) {
                    return null;
                }
                long time = new Date().getTime();
                Logger.Companion companion = Logger.Companion;
                LoggingBehavior loggingBehavior = LoggingBehavior.CACHE;
                String str3 = f6705Wwwwwwwwwwwwwwwwwwwwwwwwww;
                companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(loggingBehavior, str3, "Setting lastModified to " + Long.valueOf(time) + " for " + ((Object) file.getName()));
                file.setLastModified(time);
                return bufferedInputStream;
            } finally {
                bufferedInputStream.close();
            }
        } catch (IOException unused) {
            return null;
        }
    }

    @NotNull
    public String toString() {
        return "{FileLruCache: tag:" + this.f6713Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww + " file:" + ((Object) this.f6711Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.getName()) + AbstractJsonLexerKt.END_OBJ;
    }

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u0012\n\u0002\b\u0007\n\u0002\u0010\t\n\u0002\b\f\b\u0002\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0001\u0012\u0006\u0010\u0004\u001a\u00020\u0003¢\u0006\u0004\b\u0005\u0010\u0006J\u000f\u0010\b\u001a\u00020\u0007H\u0016¢\u0006\u0004\b\b\u0010\tJ\u000f\u0010\u000b\u001a\u00020\nH\u0016¢\u0006\u0004\b\u000b\u0010\fJ\u0017\u0010\u000e\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\u0007H\u0016¢\u0006\u0004\b\u000e\u0010\u000fJ\u000f\u0010\u0011\u001a\u00020\u0010H\u0016¢\u0006\u0004\b\u0011\u0010\u0012J\u0017\u0010\u0015\u001a\u00020\u00072\u0006\u0010\u0014\u001a\u00020\u0013H\u0016¢\u0006\u0004\b\u0015\u0010\u0016J\u000f\u0010\u0015\u001a\u00020\u0007H\u0016¢\u0006\u0004\b\u0015\u0010\tJ'\u0010\u0015\u001a\u00020\u00072\u0006\u0010\u0014\u001a\u00020\u00132\u0006\u0010\u0017\u001a\u00020\u00072\u0006\u0010\u0018\u001a\u00020\u0007H\u0016¢\u0006\u0004\b\u0015\u0010\u0019J\u000f\u0010\u001a\u001a\u00020\nH\u0016¢\u0006\u0004\b\u001a\u0010\fJ\u0017\u0010\u001d\u001a\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\u001bH\u0016¢\u0006\u0004\b\u001d\u0010\u001eR\u0017\u0010\u0002\u001a\u00020\u00018\u0006¢\u0006\f\n\u0004\b\u001f\u0010 \u001a\u0004\b!\u0010\"R\u0017\u0010\u0004\u001a\u00020\u00038\u0006¢\u0006\f\n\u0004\b#\u0010$\u001a\u0004\b%\u0010&¨\u0006'"}, d2 = {"Lcom/facebook/internal/FileLruCache$CopyingInputStream;", "Ljava/io/InputStream;", "input", "Ljava/io/OutputStream;", "output", "<init>", "(Ljava/io/InputStream;Ljava/io/OutputStream;)V", "", "available", "()I", "", "close", "()V", "readlimit", "mark", "(I)V", "", "markSupported", "()Z", "", "buffer", "read", "([B)I", TypedValues.CycleType.S_WAVE_OFFSET, SessionDescription.ATTR_LENGTH, "([BII)I", "reset", "", "byteCount", "skip", "(J)J", "Wwwwwwwwwwwwwwwwwwwwwwwww", "Ljava/io/InputStream;", "getInput", "()Ljava/io/InputStream;", "Wwwwwwwwwwwwwwwwwwwwwwww", "Ljava/io/OutputStream;", "getOutput", "()Ljava/io/OutputStream;", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes4.dex */
    public static final class CopyingInputStream extends InputStream implements AutoCloseable {
        @NotNull

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final OutputStream f6718Wwwwwwwwwwwwwwwwwwwwwwww;
        @NotNull

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final InputStream f6719Wwwwwwwwwwwwwwwwwwwwwwwww;

        public CopyingInputStream(@NotNull InputStream inputStream, @NotNull OutputStream outputStream) {
            this.f6719Wwwwwwwwwwwwwwwwwwwwwwwww = inputStream;
            this.f6718Wwwwwwwwwwwwwwwwwwwwwwww = outputStream;
        }

        @Override // java.io.InputStream
        public int available() throws IOException {
            return this.f6719Wwwwwwwwwwwwwwwwwwwwwwwww.available();
        }

        @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            try {
                this.f6719Wwwwwwwwwwwwwwwwwwwwwwwww.close();
            } finally {
                this.f6718Wwwwwwwwwwwwwwwwwwwwwwww.close();
            }
        }

        @Override // java.io.InputStream
        public void mark(int i) {
            throw new UnsupportedOperationException();
        }

        @Override // java.io.InputStream
        public boolean markSupported() {
            return false;
        }

        @Override // java.io.InputStream
        public int read(@NotNull byte[] bArr) throws IOException {
            int read = this.f6719Wwwwwwwwwwwwwwwwwwwwwwwww.read(bArr);
            if (read > 0) {
                this.f6718Wwwwwwwwwwwwwwwwwwwwwwww.write(bArr, 0, read);
            }
            return read;
        }

        @Override // java.io.InputStream
        public synchronized void reset() {
            throw new UnsupportedOperationException();
        }

        @Override // java.io.InputStream
        public long skip(long j) throws IOException {
            int read;
            byte[] bArr = new byte[1024];
            long j2 = 0;
            while (j2 < j && (read = read(bArr, 0, (int) Math.min(j - j2, 1024))) >= 0) {
                j2 += read;
            }
            return j2;
        }

        @Override // java.io.InputStream
        public int read() throws IOException {
            int read = this.f6719Wwwwwwwwwwwwwwwwwwwwwwwww.read();
            if (read >= 0) {
                this.f6718Wwwwwwwwwwwwwwwwwwwwwwww.write(read);
            }
            return read;
        }

        @Override // java.io.InputStream
        public int read(@NotNull byte[] bArr, int i, int i2) throws IOException {
            int read = this.f6719Wwwwwwwwwwwwwwwwwwwwwwwww.read(bArr, i, i2);
            if (read > 0) {
                this.f6718Wwwwwwwwwwwwwwwwwwwwwwww.write(bArr, i, read);
            }
            return read;
        }
    }
}
