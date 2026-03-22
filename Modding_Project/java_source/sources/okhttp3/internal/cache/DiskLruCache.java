package okhttp3.internal.cache;

import com.google.firebase.analytics.FirebaseAnalytics;
import com.google.firebase.remoteconfig.RemoteConfigConstants;
import com.unity3d.services.core.network.core.OkHttp3Client;
import java.io.Closeable;
import java.io.EOFException;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.Flushable;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import kotlin.KotlinNothingValueException;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.io.CloseableKt;
import kotlin.jvm.JvmField;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Regex;
import kotlin.text.StringsKt;
import kotlinx.serialization.json.internal.AbstractJsonLexerKt;
import okhttp3.internal.Util;
import okhttp3.internal.cache.DiskLruCache;
import okhttp3.internal.concurrent.Task;
import okhttp3.internal.concurrent.TaskQueue;
import okhttp3.internal.concurrent.TaskRunner;
import okhttp3.internal.io.FileSystem;
import okhttp3.internal.platform.Platform;
import okio.BufferedSink;
import okio.BufferedSource;
import okio.ForwardingSource;
import okio.Okio;
import okio.Sink;
import okio.Source;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000}\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b&\n\u0002\u0018\u0002\n\u0002\b\u0019\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\b\t*\u0001v\u0018\u0000 z2\u00020\u00012\u00020\u0002:\u0004z{|}B9\b\u0000\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\b\u001a\u00020\u0007\u0012\u0006\u0010\t\u001a\u00020\u0007\u0012\u0006\u0010\u000b\u001a\u00020\n\u0012\u0006\u0010\r\u001a\u00020\f¢\u0006\u0004\b\u000e\u0010\u000fJ\u000f\u0010\u0011\u001a\u00020\u0010H\u0002¢\u0006\u0004\b\u0011\u0010\u0012J\u000f\u0010\u0014\u001a\u00020\u0013H\u0002¢\u0006\u0004\b\u0014\u0010\u0015J\u0017\u0010\u0018\u001a\u00020\u00102\u0006\u0010\u0017\u001a\u00020\u0016H\u0002¢\u0006\u0004\b\u0018\u0010\u0019J\u000f\u0010\u001a\u001a\u00020\u0010H\u0002¢\u0006\u0004\b\u001a\u0010\u0012J\u000f\u0010\u001c\u001a\u00020\u001bH\u0002¢\u0006\u0004\b\u001c\u0010\u001dJ\u000f\u0010\u001e\u001a\u00020\u0010H\u0002¢\u0006\u0004\b\u001e\u0010\u0012J\u000f\u0010\u001f\u001a\u00020\u001bH\u0002¢\u0006\u0004\b\u001f\u0010\u001dJ\u0017\u0010!\u001a\u00020\u00102\u0006\u0010 \u001a\u00020\u0016H\u0002¢\u0006\u0004\b!\u0010\u0019J\r\u0010\"\u001a\u00020\u0010¢\u0006\u0004\b\"\u0010\u0012J\u000f\u0010#\u001a\u00020\u0010H\u0000¢\u0006\u0004\b#\u0010\u0012J\u001e\u0010%\u001a\b\u0018\u00010$R\u00020\u00002\u0006\u0010 \u001a\u00020\u0016H\u0086\u0002¢\u0006\u0004\b%\u0010&J'\u0010)\u001a\b\u0018\u00010(R\u00020\u00002\u0006\u0010 \u001a\u00020\u00162\b\b\u0002\u0010'\u001a\u00020\nH\u0007¢\u0006\u0004\b)\u0010*J#\u0010-\u001a\u00020\u00102\n\u0010+\u001a\u00060(R\u00020\u00002\u0006\u0010,\u001a\u00020\u001bH\u0000¢\u0006\u0004\b-\u0010.J\u0015\u0010/\u001a\u00020\u001b2\u0006\u0010 \u001a\u00020\u0016¢\u0006\u0004\b/\u00100J\u001b\u00103\u001a\u00020\u001b2\n\u00102\u001a\u000601R\u00020\u0000H\u0000¢\u0006\u0004\b3\u00104J\u000f\u00105\u001a\u00020\u0010H\u0016¢\u0006\u0004\b5\u0010\u0012J\u000f\u00106\u001a\u00020\u0010H\u0016¢\u0006\u0004\b6\u0010\u0012J\r\u00107\u001a\u00020\u0010¢\u0006\u0004\b7\u0010\u0012J\r\u00108\u001a\u00020\u0010¢\u0006\u0004\b8\u0010\u0012R\u001a\u0010\u0004\u001a\u00020\u00038\u0000X\u0080\u0004¢\u0006\f\n\u0004\b9\u0010:\u001a\u0004\b;\u0010<R\u0017\u0010\u0006\u001a\u00020\u00058\u0006¢\u0006\f\n\u0004\b=\u0010>\u001a\u0004\b?\u0010@R\u0014\u0010\b\u001a\u00020\u00078\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bA\u0010BR\u001a\u0010\t\u001a\u00020\u00078\u0000X\u0080\u0004¢\u0006\f\n\u0004\bC\u0010B\u001a\u0004\bD\u0010ER*\u0010\u000b\u001a\u00020\n2\u0006\u0010F\u001a\u00020\n8F@FX\u0086\u000e¢\u0006\u0012\n\u0004\bG\u0010H\u001a\u0004\bI\u0010J\"\u0004\bK\u0010LR\u0014\u0010N\u001a\u00020\u00058\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bM\u0010>R\u0014\u0010P\u001a\u00020\u00058\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bO\u0010>R\u0014\u0010R\u001a\u00020\u00058\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bQ\u0010>R\u0016\u0010T\u001a\u00020\n8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bS\u0010HR\u0018\u0010W\u001a\u0004\u0018\u00010\u00138\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bU\u0010VR*\u0010]\u001a\u0012\u0012\u0004\u0012\u00020\u0016\u0012\b\u0012\u000601R\u00020\u00000X8\u0000X\u0080\u0004¢\u0006\f\n\u0004\bY\u0010Z\u001a\u0004\b[\u0010\\R\u0016\u0010_\u001a\u00020\u00078\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b^\u0010BR\u0016\u0010b\u001a\u00020\u001b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b`\u0010aR\u0016\u0010d\u001a\u00020\u001b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bc\u0010aR\u0016\u0010f\u001a\u00020\u001b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\be\u0010aR\"\u0010k\u001a\u00020\u001b8\u0000@\u0000X\u0080\u000e¢\u0006\u0012\n\u0004\bg\u0010a\u001a\u0004\bh\u0010\u001d\"\u0004\bi\u0010jR\u0016\u0010m\u001a\u00020\u001b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bl\u0010aR\u0016\u0010o\u001a\u00020\u001b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bn\u0010aR\u0016\u0010q\u001a\u00020\n8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bp\u0010HR\u0014\u0010u\u001a\u00020r8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bs\u0010tR\u0014\u0010y\u001a\u00020v8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bw\u0010x¨\u0006~"}, d2 = {"Lokhttp3/internal/cache/DiskLruCache;", "Ljava/io/Closeable;", "Ljava/io/Flushable;", "Lokhttp3/internal/io/FileSystem;", "fileSystem", "Ljava/io/File;", "directory", "", RemoteConfigConstants.RequestFieldKey.APP_VERSION, "valueCount", "", "maxSize", "Lokhttp3/internal/concurrent/TaskRunner;", "taskRunner", "<init>", "(Lokhttp3/internal/io/FileSystem;Ljava/io/File;IIJLokhttp3/internal/concurrent/TaskRunner;)V", "", "Kkk", "()V", "Lokio/BufferedSink;", "Kkkkk", "()Lokio/BufferedSink;", "", "line", "Kk", "(Ljava/lang/String;)V", "Kkkk", "", "Kkkkkk", "()Z", "Kkkkkkkkkkkkkkkkkk", "Illlllllllllllllllllllllll", "key", "Illlllllllllllllllllllll", "Kkkkkkk", "Illllllllllllllllllllllllllll", "Lokhttp3/internal/cache/DiskLruCache$Snapshot;", "Kkkkkkkkkkkkk", "(Ljava/lang/String;)Lokhttp3/internal/cache/DiskLruCache$Snapshot;", "expectedSequenceNumber", "Lokhttp3/internal/cache/DiskLruCache$Editor;", "Kkkkkkkkkkkkkkk", "(Ljava/lang/String;J)Lokhttp3/internal/cache/DiskLruCache$Editor;", "editor", FirebaseAnalytics.Param.SUCCESS, "Kkkkkkkkkkkkkkkkk", "(Lokhttp3/internal/cache/DiskLruCache$Editor;Z)V", "Illlllllllllllllllllllllllll", "(Ljava/lang/String;)Z", "Lokhttp3/internal/cache/DiskLruCache$Entry;", "entry", "Illllllllllllllllllllllllll", "(Lokhttp3/internal/cache/DiskLruCache$Entry;)Z", "flush", "close", "Illllllllllllllllllllllll", "Kkkkkkkkkkkkkkkk", "Wwwwwwwwwwwwwwwwwwwwwwwww", "Lokhttp3/internal/io/FileSystem;", "Kkkkkkkkkk", "()Lokhttp3/internal/io/FileSystem;", "Wwwwwwwwwwwwwwwwwwwwwwww", "Ljava/io/File;", "Kkkkkkkkkkk", "()Ljava/io/File;", "Wwwwwwwwwwwwwwwwwwwwwww", "I", "Wwwwwwwwwwwwwwwwwwwwww", "Kkkkkkkk", "()I", "value", "Wwwwwwwwwwwwwwwwwwwww", "J", "getMaxSize", "()J", "setMaxSize", "(J)V", "Wwwwwwwwwwwwwwwwwwww", "journalFile", "Wwwwwwwwwwwwwwwwwww", "journalFileTmp", "Wwwwwwwwwwwwwwwwww", "journalFileBackup", "Wwwwwwwwwwwwwwwww", "size", "Wwwwwwwwwwwwwwww", "Lokio/BufferedSink;", "journalWriter", "Ljava/util/LinkedHashMap;", "Wwwwwwwwwwwwwww", "Ljava/util/LinkedHashMap;", "Kkkkkkkkk", "()Ljava/util/LinkedHashMap;", "lruEntries", "Wwwwwwwwwwwwww", "redundantOpCount", "Wwwwwwwwwwwww", "Z", "hasJournalErrors", "Wwwwwwwwwwww", "civilizedFileSystem", "Wwwwwwwwwww", "initialized", "Wwwwwwwwww", "Kkkkkkkkkkkk", "setClosed$okhttp", "(Z)V", "closed", "Wwwwwwwww", "mostRecentTrimFailed", "Wwwwwwww", "mostRecentRebuildFailed", "Wwwwwww", "nextSequenceNumber", "Lokhttp3/internal/concurrent/TaskQueue;", "Wwwwww", "Lokhttp3/internal/concurrent/TaskQueue;", "cleanupQueue", "okhttp3/internal/cache/DiskLruCache$cleanupTask$1", "Wwwww", "Lokhttp3/internal/cache/DiskLruCache$cleanupTask$1;", "cleanupTask", "Companion", "Editor", "Entry", "Snapshot", OkHttp3Client.NETWORK_CLIENT_OKHTTP}, k = 1, mv = {1, 6, 0}, xi = 48)
/* loaded from: classes7.dex */
public final class DiskLruCache implements Closeable, Flushable, AutoCloseable {
    @NotNull

    /* renamed from: Wwwwww */
    public final TaskQueue f12528Wwwwww;

    /* renamed from: Wwwwwww */
    public long f12529Wwwwwww;

    /* renamed from: Wwwwwwww */
    public boolean f12530Wwwwwwww;

    /* renamed from: Wwwwwwwww */
    public boolean f12531Wwwwwwwww;

    /* renamed from: Wwwwwwwwww */
    public boolean f12532Wwwwwwwwww;

    /* renamed from: Wwwwwwwwwww */
    public boolean f12533Wwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwww */
    public boolean f12534Wwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwww */
    public boolean f12535Wwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwww */
    public int f12536Wwwwwwwwwwwwww;
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwww */
    public BufferedSink f12538Wwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwww */
    public long f12539Wwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwww */
    public final File f12540Wwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwww */
    public final File f12541Wwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwww */
    public final File f12542Wwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwww */
    public long f12543Wwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwww */
    public final int f12544Wwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwww */
    public final int f12545Wwwwwwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwww */
    public final File f12546Wwwwwwwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww */
    public final FileSystem f12547Wwwwwwwwwwwwwwwwwwwwwwwww;
    @NotNull
    public static final Companion Companion = new Companion(null);
    @JvmField
    @NotNull

    /* renamed from: Wwww */
    public static final String f12526Wwww = "journal";
    @JvmField
    @NotNull

    /* renamed from: Www */
    public static final String f12525Www = "journal.tmp";
    @JvmField
    @NotNull

    /* renamed from: Kkkkkkkkkkkkkkkkkkkkkkkkkk */
    public static final String f12524Kkkkkkkkkkkkkkkkkkkkkkkkkk = "journal.bkp";
    @JvmField
    @NotNull

    /* renamed from: Kkkkkkkkkkkkkkkkkkkkkkkkk */
    public static final String f12523Kkkkkkkkkkkkkkkkkkkkkkkkk = "libcore.io.DiskLruCache";
    @JvmField
    @NotNull

    /* renamed from: Kkkkkkkkkkkkkkkkkkkkkkkk */
    public static final String f12522Kkkkkkkkkkkkkkkkkkkkkkkk = "1";
    @JvmField

    /* renamed from: Kkkkkkkkkkkkkkkkkkkkkkk */
    public static final long f12521Kkkkkkkkkkkkkkkkkkkkkkk = -1;
    @JvmField
    @NotNull

    /* renamed from: Kkkkkkkkkkkkkkkkkkkkkk */
    public static final Regex f12520Kkkkkkkkkkkkkkkkkkkkkk = new Regex("[a-z0-9_-]{1,120}");
    @JvmField
    @NotNull

    /* renamed from: Kkkkkkkkkkkkkkkkkkkkk */
    public static final String f12519Kkkkkkkkkkkkkkkkkkkkk = "CLEAN";
    @JvmField
    @NotNull

    /* renamed from: Kkkkkkkkkkkkkkkkkkkk */
    public static final String f12518Kkkkkkkkkkkkkkkkkkkk = "DIRTY";
    @JvmField
    @NotNull

    /* renamed from: Kkkkkkkkkkkkkkkkkkk */
    public static final String f12517Kkkkkkkkkkkkkkkkkkk = "REMOVE";
    @JvmField
    @NotNull

    /* renamed from: Kkkkkkkkkkkkkkkkkk */
    public static final String f12516Kkkkkkkkkkkkkkkkkk = "READ";
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwww */
    public final LinkedHashMap<String, Entry> f12537Wwwwwwwwwwwwwww = new LinkedHashMap<>(0, 0.75f, true);
    @NotNull

    /* renamed from: Wwwww */
    public final DiskLruCache$cleanupTask$1 f12527Wwwww = new Task(Intrinsics.stringPlus(Util.f12487Wwwwwwwwwwwwwwwwwwwwwwwwww, " Cache")) { // from class: okhttp3.internal.cache.DiskLruCache$cleanupTask$1
        @Override // okhttp3.internal.concurrent.Task
        public long Wwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            boolean z;
            boolean Kkkkkk;
            DiskLruCache diskLruCache = DiskLruCache.this;
            synchronized (diskLruCache) {
                z = diskLruCache.f12533Wwwwwwwwwww;
                if (!z || diskLruCache.Kkkkkkkkkkkk()) {
                    return -1L;
                }
                try {
                    diskLruCache.Illllllllllllllllllllllll();
                } catch (IOException unused) {
                    diskLruCache.f12531Wwwwwwwww = true;
                }
                try {
                    Kkkkkk = diskLruCache.Kkkkkk();
                    if (Kkkkkk) {
                        diskLruCache.Illllllllllllllllllllllllllll();
                        diskLruCache.f12536Wwwwwwwwwwwwww = 0;
                    }
                } catch (IOException unused2) {
                    diskLruCache.f12530Wwwwwwww = true;
                    diskLruCache.f12538Wwwwwwwwwwwwwwww = Okio.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Okio.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
                }
                return -1L;
            }
        }
    };

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u0010\u0010\u0003\u001a\u00020\u00048\u0006X\u0087D¢\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u00020\u00068\u0006X\u0087D¢\u0006\u0002\n\u0000R\u0010\u0010\u0007\u001a\u00020\u00068\u0006X\u0087D¢\u0006\u0002\n\u0000R\u0010\u0010\b\u001a\u00020\u00068\u0006X\u0087D¢\u0006\u0002\n\u0000R\u0010\u0010\t\u001a\u00020\u00068\u0006X\u0087D¢\u0006\u0002\n\u0000R\u0010\u0010\n\u001a\u00020\u00068\u0006X\u0087D¢\u0006\u0002\n\u0000R\u0010\u0010\u000b\u001a\u00020\f8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\r\u001a\u00020\u00068\u0006X\u0087D¢\u0006\u0002\n\u0000R\u0010\u0010\u000e\u001a\u00020\u00068\u0006X\u0087D¢\u0006\u0002\n\u0000R\u0010\u0010\u000f\u001a\u00020\u00068\u0006X\u0087D¢\u0006\u0002\n\u0000R\u0010\u0010\u0010\u001a\u00020\u00068\u0006X\u0087D¢\u0006\u0002\n\u0000¨\u0006\u0011"}, d2 = {"Lokhttp3/internal/cache/DiskLruCache$Companion;", "", "()V", "ANY_SEQUENCE_NUMBER", "", "CLEAN", "", "DIRTY", "JOURNAL_FILE", "JOURNAL_FILE_BACKUP", "JOURNAL_FILE_TEMP", "LEGAL_KEY_PATTERN", "Lkotlin/text/Regex;", "MAGIC", "READ", "REMOVE", "VERSION_1", OkHttp3Client.NETWORK_CLIENT_OKHTTP}, k = 1, mv = {1, 6, 0}, xi = 48)
    /* loaded from: classes7.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public Companion() {
        }
    }

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u0018\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0003\b\u0086\u0004\u0018\u00002\u00020\u0001B\u0015\b\u0000\u0012\n\u0010\u0004\u001a\u00060\u0002R\u00020\u0003¢\u0006\u0004\b\u0005\u0010\u0006J\u000f\u0010\b\u001a\u00020\u0007H\u0000¢\u0006\u0004\b\b\u0010\tJ\u0015\u0010\r\u001a\u00020\f2\u0006\u0010\u000b\u001a\u00020\n¢\u0006\u0004\b\r\u0010\u000eJ\r\u0010\u000f\u001a\u00020\u0007¢\u0006\u0004\b\u000f\u0010\tJ\r\u0010\u0010\u001a\u00020\u0007¢\u0006\u0004\b\u0010\u0010\tR\u001e\u0010\u0004\u001a\u00060\u0002R\u00020\u00038\u0000X\u0080\u0004¢\u0006\f\n\u0004\b\u0010\u0010\u0011\u001a\u0004\b\u0012\u0010\u0013R\u001c\u0010\u0018\u001a\u0004\u0018\u00010\u00148\u0000X\u0080\u0004¢\u0006\f\n\u0004\b\u000f\u0010\u0015\u001a\u0004\b\u0016\u0010\u0017R\u0016\u0010\u001b\u001a\u00020\u00198\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\b\u0010\u001a¨\u0006\u001c"}, d2 = {"Lokhttp3/internal/cache/DiskLruCache$Editor;", "", "Lokhttp3/internal/cache/DiskLruCache$Entry;", "Lokhttp3/internal/cache/DiskLruCache;", "entry", "<init>", "(Lokhttp3/internal/cache/DiskLruCache;Lokhttp3/internal/cache/DiskLruCache$Entry;)V", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "()V", "", FirebaseAnalytics.Param.INDEX, "Lokio/Sink;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(I)Lokio/Sink;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Lokhttp3/internal/cache/DiskLruCache$Entry;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "()Lokhttp3/internal/cache/DiskLruCache$Entry;", "", "[Z", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "()[Z", "written", "", "Z", "done", OkHttp3Client.NETWORK_CLIENT_OKHTTP}, k = 1, mv = {1, 6, 0}, xi = 48)
    /* loaded from: classes7.dex */
    public final class Editor {

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww */
        public boolean f12549Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        @Nullable

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww */
        public final boolean[] f12550Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        @NotNull

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww */
        public final Entry f12551Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        public Editor(@NotNull Entry entry) {
            boolean[] zArr;
            DiskLruCache.this = r1;
            this.f12551Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = entry;
            if (entry.Wwwwwwwwwwwwwwwwwwwwwwwwwwww()) {
                zArr = null;
            } else {
                zArr = new boolean[r1.Kkkkkkkk()];
            }
            this.f12550Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = zArr;
        }

        @NotNull
        public final Sink Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(int i) {
            final DiskLruCache diskLruCache = DiskLruCache.this;
            synchronized (diskLruCache) {
                if (!this.f12549Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww) {
                    if (!Intrinsics.areEqual(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(), this)) {
                        return Okio.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
                    }
                    if (!Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwwwwwwww()) {
                        Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww()[i] = true;
                    }
                    try {
                        return new FaultHidingSink(diskLruCache.Kkkkkkkkkk().Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().get(i)), new Function1<IOException, Unit>() { // from class: okhttp3.internal.cache.DiskLruCache$Editor$newSink$1$1
                            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                            {
                                super(1);
                            }

                            @Override // kotlin.jvm.functions.Function1
                            public /* bridge */ /* synthetic */ Unit invoke(IOException iOException) {
                                invoke2(iOException);
                                return Unit.INSTANCE;
                            }

                            /* renamed from: invoke  reason: avoid collision after fix types in other method */
                            public final void invoke2(@NotNull IOException iOException) {
                                DiskLruCache diskLruCache2 = DiskLruCache.this;
                                DiskLruCache.Editor editor = this;
                                synchronized (diskLruCache2) {
                                    editor.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
                                    Unit unit = Unit.INSTANCE;
                                }
                            }
                        });
                    } catch (FileNotFoundException unused) {
                        return Okio.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
                    }
                }
                throw new IllegalStateException("Check failed.");
            }
        }

        @Nullable
        public final boolean[] Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            return this.f12550Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        }

        @NotNull
        public final Entry Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            return this.f12551Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        }

        public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            if (Intrinsics.areEqual(this.f12551Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(), this)) {
                if (DiskLruCache.this.f12534Wwwwwwwwwwww) {
                    DiskLruCache.this.Kkkkkkkkkkkkkkkkk(this, false);
                } else {
                    this.f12551Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwww(true);
                }
            }
        }

        public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() throws IOException {
            DiskLruCache diskLruCache = DiskLruCache.this;
            synchronized (diskLruCache) {
                try {
                    if (!this.f12549Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww) {
                        if (Intrinsics.areEqual(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(), this)) {
                            diskLruCache.Kkkkkkkkkkkkkkkkk(this, true);
                        }
                        this.f12549Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = true;
                        Unit unit = Unit.INSTANCE;
                    } else {
                        throw new IllegalStateException("Check failed.");
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }

        public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() throws IOException {
            DiskLruCache diskLruCache = DiskLruCache.this;
            synchronized (diskLruCache) {
                try {
                    if (!this.f12549Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww) {
                        if (Intrinsics.areEqual(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(), this)) {
                            diskLruCache.Kkkkkkkkkkkkkkkkk(this, false);
                        }
                        this.f12549Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = true;
                        Unit unit = Unit.INSTANCE;
                    } else {
                        throw new IllegalStateException("Check failed.");
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    }

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000t\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010 \n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0001\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u0016\n\u0002\b\u0005\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0010\t\n\u0002\b\u0006\b\u0080\u0004\u0018\u00002\u00020\u0001B\u0011\b\u0000\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005J\u001d\u0010\t\u001a\u00020\b2\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00020\u0006H\u0000¢\u0006\u0004\b\t\u0010\nJ\u0017\u0010\r\u001a\u00020\b2\u0006\u0010\f\u001a\u00020\u000bH\u0000¢\u0006\u0004\b\r\u0010\u000eJ\u0015\u0010\u0011\u001a\b\u0018\u00010\u000fR\u00020\u0010H\u0000¢\u0006\u0004\b\u0011\u0010\u0012J\u001d\u0010\u0014\u001a\u00020\u00132\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00020\u0006H\u0002¢\u0006\u0004\b\u0014\u0010\u0015J\u0017\u0010\u0019\u001a\u00020\u00182\u0006\u0010\u0017\u001a\u00020\u0016H\u0002¢\u0006\u0004\b\u0019\u0010\u001aR\u001a\u0010\u0003\u001a\u00020\u00028\u0000X\u0080\u0004¢\u0006\f\n\u0004\b\u001b\u0010\u001c\u001a\u0004\b\u001d\u0010\u001eR\u001a\u0010$\u001a\u00020\u001f8\u0000X\u0080\u0004¢\u0006\f\n\u0004\b \u0010!\u001a\u0004\b\"\u0010#R \u0010*\u001a\b\u0012\u0004\u0012\u00020&0%8\u0000X\u0080\u0004¢\u0006\f\n\u0004\b'\u0010(\u001a\u0004\b\u001b\u0010)R \u0010+\u001a\b\u0012\u0004\u0012\u00020&0%8\u0000X\u0080\u0004¢\u0006\f\n\u0004\b\u001d\u0010(\u001a\u0004\b'\u0010)R\"\u00102\u001a\u00020,8\u0000@\u0000X\u0080\u000e¢\u0006\u0012\n\u0004\b\"\u0010-\u001a\u0004\b.\u0010/\"\u0004\b0\u00101R\"\u00106\u001a\u00020,8\u0000@\u0000X\u0080\u000e¢\u0006\u0012\n\u0004\b3\u0010-\u001a\u0004\b4\u0010/\"\u0004\b5\u00101R(\u0010<\u001a\b\u0018\u000107R\u00020\u00108\u0000@\u0000X\u0080\u000e¢\u0006\u0012\n\u0004\b.\u00108\u001a\u0004\b \u00109\"\u0004\b:\u0010;R\"\u0010B\u001a\u00020\u00168\u0000@\u0000X\u0080\u000e¢\u0006\u0012\n\u0004\b=\u0010>\u001a\u0004\b3\u0010?\"\u0004\b@\u0010AR\"\u0010H\u001a\u00020C8\u0000@\u0000X\u0080\u000e¢\u0006\u0012\n\u0004\b4\u0010D\u001a\u0004\b=\u0010E\"\u0004\bF\u0010G¨\u0006I"}, d2 = {"Lokhttp3/internal/cache/DiskLruCache$Entry;", "", "", "key", "<init>", "(Lokhttp3/internal/cache/DiskLruCache;Ljava/lang/String;)V", "", "strings", "", "Wwwwwwwwwwwwwwwwwwwwww", "(Ljava/util/List;)V", "Lokio/BufferedSink;", "writer", "Wwwwwwwwwwwwwwww", "(Lokio/BufferedSink;)V", "Lokhttp3/internal/cache/DiskLruCache$Snapshot;", "Lokhttp3/internal/cache/DiskLruCache;", "Wwwwwwwwwwwwwwwww", "()Lokhttp3/internal/cache/DiskLruCache$Snapshot;", "", "Wwwwwwwwwwwwwwwwwwwwwwwww", "(Ljava/util/List;)Ljava/lang/Void;", "", FirebaseAnalytics.Param.INDEX, "Lokio/Source;", "Wwwwwwwwwwwwwwwwwwwwwwww", "(I)Lokio/Source;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Ljava/lang/String;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "()Ljava/lang/String;", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "[J", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "()[J", "lengths", "", "Ljava/io/File;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Ljava/util/List;", "()Ljava/util/List;", "cleanFiles", "dirtyFiles", "", "Z", "Wwwwwwwwwwwwwwwwwwwwwwwwwwww", "()Z", "Wwwwwwwwwwwwwwwwwwww", "(Z)V", "readable", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Wwwwwwwwwwwwwwwwwwwwwwwwww", "Wwwwwwwwwwwwwwwwww", "zombie", "Lokhttp3/internal/cache/DiskLruCache$Editor;", "Lokhttp3/internal/cache/DiskLruCache$Editor;", "()Lokhttp3/internal/cache/DiskLruCache$Editor;", "Wwwwwwwwwwwwwwwwwwwwwww", "(Lokhttp3/internal/cache/DiskLruCache$Editor;)V", "currentEditor", "Wwwwwwwwwwwwwwwwwwwwwwwwwww", "I", "()I", "Wwwwwwwwwwwwwwwwwwwww", "(I)V", "lockingSourceCount", "", "J", "()J", "Wwwwwwwwwwwwwwwwwww", "(J)V", "sequenceNumber", OkHttp3Client.NETWORK_CLIENT_OKHTTP}, k = 1, mv = {1, 6, 0}, xi = 48)
    /* loaded from: classes7.dex */
    public final class Entry {

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwww */
        public long f12553Wwwwwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwww */
        public int f12554Wwwwwwwwwwwwwwwwwwwwwwwwwww;
        @Nullable

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwww */
        public Editor f12555Wwwwwwwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwww */
        public boolean f12556Wwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww */
        public boolean f12557Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        @NotNull

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww */
        public final long[] f12560Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        @NotNull

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww */
        public final String f12561Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        @NotNull

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww */
        public final List<File> f12559Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new ArrayList();
        @NotNull

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww */
        public final List<File> f12558Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new ArrayList();

        public Entry(@NotNull String str) {
            DiskLruCache.this = r7;
            this.f12561Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = str;
            this.f12560Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new long[r7.Kkkkkkkk()];
            StringBuilder sb = new StringBuilder(str);
            sb.append('.');
            int length = sb.length();
            int Kkkkkkkk2 = r7.Kkkkkkkk();
            for (int i = 0; i < Kkkkkkkk2; i++) {
                sb.append(i);
                this.f12559Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.add(new File(DiskLruCache.this.Kkkkkkkkkkk(), sb.toString()));
                sb.append(".tmp");
                this.f12558Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.add(new File(DiskLruCache.this.Kkkkkkkkkkk(), sb.toString()));
                sb.setLength(length);
            }
        }

        public final void Wwwwwwwwwwwwwwww(@NotNull BufferedSink bufferedSink) throws IOException {
            long[] jArr = this.f12560Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
            int length = jArr.length;
            int i = 0;
            while (i < length) {
                long j = jArr[i];
                i++;
                bufferedSink.writeByte(32).Wwwwwwwwwwwwwwwww(j);
            }
        }

        @Nullable
        public final Snapshot Wwwwwwwwwwwwwwwww() {
            DiskLruCache diskLruCache = DiskLruCache.this;
            if (Util.f12488Wwwwwwwwwwwwwwwwwwwwwwwwwww && !Thread.holdsLock(diskLruCache)) {
                throw new AssertionError("Thread " + ((Object) Thread.currentThread().getName()) + " MUST hold lock on " + diskLruCache);
            } else if (!this.f12557Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww) {
                return null;
            } else {
                if (!DiskLruCache.this.f12534Wwwwwwwwwwww && (this.f12555Wwwwwwwwwwwwwwwwwwwwwwwwwwww != null || this.f12556Wwwwwwwwwwwwwwwwwwwwwwwwwwwww)) {
                    return null;
                }
                ArrayList arrayList = new ArrayList();
                long[] jArr = (long[]) this.f12560Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.clone();
                int i = 0;
                try {
                    int Kkkkkkkk2 = DiskLruCache.this.Kkkkkkkk();
                    for (int i2 = 0; i2 < Kkkkkkkk2; i2++) {
                        arrayList.add(Wwwwwwwwwwwwwwwwwwwwwwww(i2));
                    }
                    return new Snapshot(this.f12561Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, this.f12553Wwwwwwwwwwwwwwwwwwwwwwwwww, arrayList, jArr);
                } catch (FileNotFoundException unused) {
                    int size = arrayList.size();
                    while (i < size) {
                        Object obj = arrayList.get(i);
                        i++;
                        Util.Wwwwwwwwwwwwwwwwwwwwww((Source) obj);
                    }
                    try {
                        DiskLruCache.this.Illllllllllllllllllllllllll(this);
                    } catch (IOException unused2) {
                    }
                    return null;
                }
            }
        }

        public final void Wwwwwwwwwwwwwwwwww(boolean z) {
            this.f12556Wwwwwwwwwwwwwwwwwwwwwwwwwwwww = z;
        }

        public final void Wwwwwwwwwwwwwwwwwww(long j) {
            this.f12553Wwwwwwwwwwwwwwwwwwwwwwwwww = j;
        }

        public final void Wwwwwwwwwwwwwwwwwwww(boolean z) {
            this.f12557Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww = z;
        }

        public final void Wwwwwwwwwwwwwwwwwwwww(int i) {
            this.f12554Wwwwwwwwwwwwwwwwwwwwwwwwwww = i;
        }

        public final void Wwwwwwwwwwwwwwwwwwwwww(@NotNull List<String> list) throws IOException {
            if (list.size() == DiskLruCache.this.Kkkkkkkk()) {
                try {
                    int size = list.size();
                    int i = 0;
                    while (i < size) {
                        int i2 = i + 1;
                        this.f12560Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww[i] = Long.parseLong(list.get(i));
                        i = i2;
                    }
                    return;
                } catch (NumberFormatException unused) {
                    Wwwwwwwwwwwwwwwwwwwwwwwww(list);
                    throw new KotlinNothingValueException();
                }
            }
            Wwwwwwwwwwwwwwwwwwwwwwwww(list);
            throw new KotlinNothingValueException();
        }

        public final void Wwwwwwwwwwwwwwwwwwwwwww(@Nullable Editor editor) {
            this.f12555Wwwwwwwwwwwwwwwwwwwwwwwwwwww = editor;
        }

        public final Source Wwwwwwwwwwwwwwwwwwwwwwww(int i) {
            Source Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = DiskLruCache.this.Kkkkkkkkkk().Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.f12559Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.get(i));
            if (DiskLruCache.this.f12534Wwwwwwwwwwww) {
                return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
            }
            this.f12554Wwwwwwwwwwwwwwwwwwwwwwwwwww++;
            return new ForwardingSource(DiskLruCache.this, this) { // from class: okhttp3.internal.cache.DiskLruCache$Entry$newSource$1

                /* renamed from: Wwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
                public final /* synthetic */ DiskLruCache.Entry f12562Wwwwwwwwwwwwwwwwwwwwww;

                /* renamed from: Wwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
                public final /* synthetic */ DiskLruCache f12563Wwwwwwwwwwwwwwwwwwwwwww;

                /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
                public boolean f12565Wwwwwwwwwwwwwwwwwwwwwwwww;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(Source.this);
                    this.f12563Wwwwwwwwwwwwwwwwwwwwwww = r2;
                    this.f12562Wwwwwwwwwwwwwwwwwwwwww = this;
                }

                @Override // okio.ForwardingSource, okio.Source, java.io.Closeable, java.lang.AutoCloseable
                public void close() {
                    super.close();
                    if (!this.f12565Wwwwwwwwwwwwwwwwwwwwwwwww) {
                        this.f12565Wwwwwwwwwwwwwwwwwwwwwwwww = true;
                        DiskLruCache diskLruCache = this.f12563Wwwwwwwwwwwwwwwwwwwwwww;
                        DiskLruCache.Entry entry = this.f12562Wwwwwwwwwwwwwwwwwwwwww;
                        synchronized (diskLruCache) {
                            try {
                                entry.Wwwwwwwwwwwwwwwwwwwww(entry.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww() - 1);
                                if (entry.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww() == 0 && entry.Wwwwwwwwwwwwwwwwwwwwwwwwww()) {
                                    diskLruCache.Illllllllllllllllllllllllll(entry);
                                }
                                Unit unit = Unit.INSTANCE;
                            } catch (Throwable th) {
                                throw th;
                            }
                        }
                    }
                }
            };
        }

        public final Void Wwwwwwwwwwwwwwwwwwwwwwwww(List<String> list) throws IOException {
            throw new IOException(Intrinsics.stringPlus("unexpected journal line: ", list));
        }

        public final boolean Wwwwwwwwwwwwwwwwwwwwwwwwww() {
            return this.f12556Wwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        }

        public final long Wwwwwwwwwwwwwwwwwwwwwwwwwww() {
            return this.f12553Wwwwwwwwwwwwwwwwwwwwwwwwww;
        }

        public final boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            return this.f12557Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        }

        public final int Wwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            return this.f12554Wwwwwwwwwwwwwwwwwwwwwwwwwww;
        }

        @NotNull
        public final long[] Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            return this.f12560Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        }

        @NotNull
        public final String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            return this.f12561Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        }

        @NotNull
        public final List<File> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            return this.f12558Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        }

        @Nullable
        public final Editor Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            return this.f12555Wwwwwwwwwwwwwwwwwwwwwwwwwwww;
        }

        @NotNull
        public final List<File> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            return this.f12559Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        }
    }

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0016\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u000b\b\u0086\u0004\u0018\u00002\u00020\u0001B/\b\u0000\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006\u0012\u0006\u0010\n\u001a\u00020\t¢\u0006\u0004\b\u000b\u0010\fJ\r\u0010\r\u001a\u00020\u0002¢\u0006\u0004\b\r\u0010\u000eJ\u0013\u0010\u0011\u001a\b\u0018\u00010\u000fR\u00020\u0010¢\u0006\u0004\b\u0011\u0010\u0012J\u0015\u0010\u0015\u001a\u00020\u00072\u0006\u0010\u0014\u001a\u00020\u0013¢\u0006\u0004\b\u0015\u0010\u0016J\u000f\u0010\u0018\u001a\u00020\u0017H\u0016¢\u0006\u0004\b\u0018\u0010\u0019R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001a\u0010\u001bR\u0014\u0010\u0005\u001a\u00020\u00048\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001c\u0010\u001dR\u001a\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00070\u00068\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001e\u0010\u001fR\u0014\u0010\n\u001a\u00020\t8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b \u0010!¨\u0006\""}, d2 = {"Lokhttp3/internal/cache/DiskLruCache$Snapshot;", "Ljava/io/Closeable;", "", "key", "", "sequenceNumber", "", "Lokio/Source;", "sources", "", "lengths", "<init>", "(Lokhttp3/internal/cache/DiskLruCache;Ljava/lang/String;JLjava/util/List;[J)V", "Wwwwwwwwwwwwww", "()Ljava/lang/String;", "Lokhttp3/internal/cache/DiskLruCache$Editor;", "Lokhttp3/internal/cache/DiskLruCache;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "()Lokhttp3/internal/cache/DiskLruCache$Editor;", "", FirebaseAnalytics.Param.INDEX, "Wwwwwwwwwwwwwwwwwwwwwwwwwww", "(I)Lokio/Source;", "", "close", "()V", "Wwwwwwwwwwwwwwwwwwwwwwwww", "Ljava/lang/String;", "Wwwwwwwwwwwwwwwwwwwwwwww", "J", "Wwwwwwwwwwwwwwwwwwwwwww", "Ljava/util/List;", "Wwwwwwwwwwwwwwwwwwwwww", "[J", OkHttp3Client.NETWORK_CLIENT_OKHTTP}, k = 1, mv = {1, 6, 0}, xi = 48)
    /* loaded from: classes7.dex */
    public final class Snapshot implements Closeable, AutoCloseable {
        @NotNull

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwww */
        public final long[] f12567Wwwwwwwwwwwwwwwwwwwwww;
        @NotNull

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwww */
        public final List<Source> f12568Wwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwww */
        public final long f12569Wwwwwwwwwwwwwwwwwwwwwwww;
        @NotNull

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww */
        public final String f12570Wwwwwwwwwwwwwwwwwwwwwwwww;

        /* JADX WARN: Multi-variable type inference failed */
        public Snapshot(@NotNull String str, long j, @NotNull List<? extends Source> list, @NotNull long[] jArr) {
            DiskLruCache.this = r1;
            this.f12570Wwwwwwwwwwwwwwwwwwwwwwwww = str;
            this.f12569Wwwwwwwwwwwwwwwwwwwwwwww = j;
            this.f12568Wwwwwwwwwwwwwwwwwwwwwww = list;
            this.f12567Wwwwwwwwwwwwwwwwwwwwww = jArr;
        }

        @NotNull
        public final String Wwwwwwwwwwwwww() {
            return this.f12570Wwwwwwwwwwwwwwwwwwwwwwwww;
        }

        @NotNull
        public final Source Wwwwwwwwwwwwwwwwwwwwwwwwwww(int i) {
            return this.f12568Wwwwwwwwwwwwwwwwwwwwwww.get(i);
        }

        @Nullable
        public final Editor Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() throws IOException {
            return DiskLruCache.this.Kkkkkkkkkkkkkkk(this.f12570Wwwwwwwwwwwwwwwwwwwwwwwww, this.f12569Wwwwwwwwwwwwwwwwwwwwwwww);
        }

        @Override // java.io.Closeable, java.lang.AutoCloseable
        public void close() {
            for (Source source : this.f12568Wwwwwwwwwwwwwwwwwwwwwww) {
                Util.Wwwwwwwwwwwwwwwwwwwwww(source);
            }
        }
    }

    /* JADX WARN: Type inference failed for: r5v3, types: [okhttp3.internal.cache.DiskLruCache$cleanupTask$1] */
    public DiskLruCache(@NotNull FileSystem fileSystem, @NotNull File file, int i, int i2, long j, @NotNull TaskRunner taskRunner) {
        this.f12547Wwwwwwwwwwwwwwwwwwwwwwwww = fileSystem;
        this.f12546Wwwwwwwwwwwwwwwwwwwwwwww = file;
        this.f12545Wwwwwwwwwwwwwwwwwwwwwww = i;
        this.f12544Wwwwwwwwwwwwwwwwwwwwww = i2;
        this.f12543Wwwwwwwwwwwwwwwwwwwww = j;
        this.f12528Wwwwww = taskRunner.Wwwwwwwwwwwwwwwwwwwwwwwwww();
        if (j > 0) {
            if (i2 > 0) {
                this.f12542Wwwwwwwwwwwwwwwwwwww = new File(file, f12526Wwww);
                this.f12541Wwwwwwwwwwwwwwwwwww = new File(file, f12525Www);
                this.f12540Wwwwwwwwwwwwwwwwww = new File(file, f12524Kkkkkkkkkkkkkkkkkkkkkkkkkk);
                return;
            }
            throw new IllegalArgumentException("valueCount <= 0");
        }
        throw new IllegalArgumentException("maxSize <= 0");
    }

    public static /* synthetic */ Editor Kkkkkkkkkkkkkk(DiskLruCache diskLruCache, String str, long j, int i, Object obj) throws IOException {
        if ((i & 2) != 0) {
            j = f12521Kkkkkkkkkkkkkkkkkkkkkkk;
        }
        return diskLruCache.Kkkkkkkkkkkkkkk(str, j);
    }

    public final void Illlllllllllllllllllllll(String str) {
        if (f12520Kkkkkkkkkkkkkkkkkkkkkk.matches(str)) {
            return;
        }
        throw new IllegalArgumentException(("keys must match regex [a-z0-9_-]{1,120}: \"" + str + '\"').toString());
    }

    public final void Illllllllllllllllllllllll() throws IOException {
        while (this.f12539Wwwwwwwwwwwwwwwww > this.f12543Wwwwwwwwwwwwwwwwwwwww) {
            if (!Illlllllllllllllllllllllll()) {
                return;
            }
        }
        this.f12531Wwwwwwwww = false;
    }

    public final boolean Illlllllllllllllllllllllll() {
        for (Entry entry : this.f12537Wwwwwwwwwwwwwww.values()) {
            if (!entry.Wwwwwwwwwwwwwwwwwwwwwwwwww()) {
                Illllllllllllllllllllllllll(entry);
                return true;
            }
        }
        return false;
    }

    public final boolean Illllllllllllllllllllllllll(@NotNull Entry entry) throws IOException {
        BufferedSink bufferedSink;
        if (!this.f12534Wwwwwwwwwwww) {
            if (entry.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww() > 0 && (bufferedSink = this.f12538Wwwwwwwwwwwwwwww) != null) {
                bufferedSink.Wwwwwwwwwwwwwwwwwwwwwwwwww(f12518Kkkkkkkkkkkkkkkkkkkk);
                bufferedSink.writeByte(32);
                bufferedSink.Wwwwwwwwwwwwwwwwwwwwwwwwww(entry.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
                bufferedSink.writeByte(10);
                bufferedSink.flush();
            }
            if (entry.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww() > 0 || entry.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() != null) {
                entry.Wwwwwwwwwwwwwwwwww(true);
                return true;
            }
        }
        Editor Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = entry.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 != null) {
            Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        }
        int i = this.f12544Wwwwwwwwwwwwwwwwwwwwww;
        for (int i2 = 0; i2 < i; i2++) {
            this.f12547Wwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwww(entry.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().get(i2));
            this.f12539Wwwwwwwwwwwwwwwww -= entry.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww()[i2];
            entry.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww()[i2] = 0;
        }
        this.f12536Wwwwwwwwwwwwww++;
        BufferedSink bufferedSink2 = this.f12538Wwwwwwwwwwwwwwww;
        if (bufferedSink2 != null) {
            bufferedSink2.Wwwwwwwwwwwwwwwwwwwwwwwwww(f12517Kkkkkkkkkkkkkkkkkkk);
            bufferedSink2.writeByte(32);
            bufferedSink2.Wwwwwwwwwwwwwwwwwwwwwwwwww(entry.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
            bufferedSink2.writeByte(10);
        }
        this.f12537Wwwwwwwwwwwwwww.remove(entry.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
        if (Kkkkkk()) {
            TaskQueue.Wwwwwwwwwwwwwwwwwwwwwwwww(this.f12528Wwwwww, this.f12527Wwwww, 0L, 2, null);
        }
        return true;
    }

    public final synchronized boolean Illlllllllllllllllllllllllll(@NotNull String str) throws IOException {
        Kkkkkkk();
        Kkkkkkkkkkkkkkkkkk();
        Illlllllllllllllllllllll(str);
        Entry entry = this.f12537Wwwwwwwwwwwwwww.get(str);
        if (entry == null) {
            return false;
        }
        boolean Illllllllllllllllllllllllll = Illllllllllllllllllllllllll(entry);
        if (Illllllllllllllllllllllllll && this.f12539Wwwwwwwwwwwwwwwww <= this.f12543Wwwwwwwwwwwwwwwwwwwww) {
            this.f12531Wwwwwwwww = false;
        }
        return Illllllllllllllllllllllllll;
    }

    public final synchronized void Illllllllllllllllllllllllllll() throws IOException {
        try {
            BufferedSink bufferedSink = this.f12538Wwwwwwwwwwwwwwww;
            if (bufferedSink != null) {
                bufferedSink.close();
            }
            BufferedSink Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Okio.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.f12547Wwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.f12541Wwwwwwwwwwwwwwwwwww));
            Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwww(f12523Kkkkkkkkkkkkkkkkkkkkkkkkk).writeByte(10);
            Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwww(f12522Kkkkkkkkkkkkkkkkkkkkkkkk).writeByte(10);
            Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwww(this.f12545Wwwwwwwwwwwwwwwwwwwwwww).writeByte(10);
            Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwww(Kkkkkkkk()).writeByte(10);
            Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.writeByte(10);
            for (Entry entry : Kkkkkkkkk().values()) {
                if (entry.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() != null) {
                    Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwww(f12518Kkkkkkkkkkkkkkkkkkkk).writeByte(32);
                    Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwww(entry.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
                    Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.writeByte(10);
                } else {
                    Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwww(f12519Kkkkkkkkkkkkkkkkkkkkk).writeByte(32);
                    Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwww(entry.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
                    entry.Wwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2);
                    Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.writeByte(10);
                }
            }
            Unit unit = Unit.INSTANCE;
            CloseableKt.closeFinally(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2, null);
            if (this.f12547Wwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.f12542Wwwwwwwwwwwwwwwwwwww)) {
                this.f12547Wwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwww(this.f12542Wwwwwwwwwwwwwwwwwwww, this.f12540Wwwwwwwwwwwwwwwwww);
            }
            this.f12547Wwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwww(this.f12541Wwwwwwwwwwwwwwwwwww, this.f12542Wwwwwwwwwwwwwwwwwwww);
            this.f12547Wwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwww(this.f12540Wwwwwwwwwwwwwwwwww);
            this.f12538Wwwwwwwwwwwwwwww = Kkkkk();
            this.f12535Wwwwwwwwwwwww = false;
            this.f12530Wwwwwwww = false;
        } catch (Throwable th) {
            throw th;
        }
    }

    public final void Kk(String str) throws IOException {
        String substring;
        int indexOf$default = StringsKt.indexOf$default((CharSequence) str, ' ', 0, false, 6, (Object) null);
        if (indexOf$default != -1) {
            int i = indexOf$default + 1;
            int indexOf$default2 = StringsKt.indexOf$default((CharSequence) str, ' ', i, false, 4, (Object) null);
            if (indexOf$default2 == -1) {
                substring = str.substring(i);
                String str2 = f12517Kkkkkkkkkkkkkkkkkkk;
                if (indexOf$default == str2.length() && StringsKt.startsWith$default(str, str2, false, 2, (Object) null)) {
                    this.f12537Wwwwwwwwwwwwwww.remove(substring);
                    return;
                }
            } else {
                substring = str.substring(i, indexOf$default2);
            }
            Entry entry = this.f12537Wwwwwwwwwwwwwww.get(substring);
            if (entry == null) {
                entry = new Entry(substring);
                this.f12537Wwwwwwwwwwwwwww.put(substring, entry);
            }
            if (indexOf$default2 != -1) {
                String str3 = f12519Kkkkkkkkkkkkkkkkkkkkk;
                if (indexOf$default == str3.length() && StringsKt.startsWith$default(str, str3, false, 2, (Object) null)) {
                    List<String> split$default = StringsKt.split$default((CharSequence) str.substring(indexOf$default2 + 1), new char[]{' '}, false, 0, 6, (Object) null);
                    entry.Wwwwwwwwwwwwwwwwwwww(true);
                    entry.Wwwwwwwwwwwwwwwwwwwwwww(null);
                    entry.Wwwwwwwwwwwwwwwwwwwwww(split$default);
                    return;
                }
            }
            if (indexOf$default2 == -1) {
                String str4 = f12518Kkkkkkkkkkkkkkkkkkkk;
                if (indexOf$default == str4.length() && StringsKt.startsWith$default(str, str4, false, 2, (Object) null)) {
                    entry.Wwwwwwwwwwwwwwwwwwwwwww(new Editor(entry));
                    return;
                }
            }
            if (indexOf$default2 == -1) {
                String str5 = f12516Kkkkkkkkkkkkkkkkkk;
                if (indexOf$default == str5.length() && StringsKt.startsWith$default(str, str5, false, 2, (Object) null)) {
                    return;
                }
            }
            throw new IOException(Intrinsics.stringPlus("unexpected journal line: ", str));
        }
        throw new IOException(Intrinsics.stringPlus("unexpected journal line: ", str));
    }

    public final void Kkk() throws IOException {
        BufferedSource Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Okio.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.f12547Wwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.f12542Wwwwwwwwwwwwwwwwwwww));
        try {
            String Wwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwww();
            String Wwwwwwwwwwwwwwwwwwwwww3 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwww();
            String Wwwwwwwwwwwwwwwwwwwwww4 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwww();
            String Wwwwwwwwwwwwwwwwwwwwww5 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwww();
            String Wwwwwwwwwwwwwwwwwwwwww6 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwww();
            if (Intrinsics.areEqual(f12523Kkkkkkkkkkkkkkkkkkkkkkkkk, Wwwwwwwwwwwwwwwwwwwwww2) && Intrinsics.areEqual(f12522Kkkkkkkkkkkkkkkkkkkkkkkk, Wwwwwwwwwwwwwwwwwwwwww3) && Intrinsics.areEqual(String.valueOf(this.f12545Wwwwwwwwwwwwwwwwwwwwwww), Wwwwwwwwwwwwwwwwwwwwww4) && Intrinsics.areEqual(String.valueOf(Kkkkkkkk()), Wwwwwwwwwwwwwwwwwwwwww5) && Wwwwwwwwwwwwwwwwwwwwww6.length() <= 0) {
                int i = 0;
                while (true) {
                    try {
                        Kk(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwww());
                        i++;
                    } catch (EOFException unused) {
                        this.f12536Wwwwwwwwwwwwww = i - Kkkkkkkkk().size();
                        if (!Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwww()) {
                            Illllllllllllllllllllllllllll();
                        } else {
                            this.f12538Wwwwwwwwwwwwwwww = Kkkkk();
                        }
                        Unit unit = Unit.INSTANCE;
                        CloseableKt.closeFinally(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2, null);
                        return;
                    }
                }
            } else {
                throw new IOException("unexpected journal header: [" + Wwwwwwwwwwwwwwwwwwwwww2 + ", " + Wwwwwwwwwwwwwwwwwwwwww3 + ", " + Wwwwwwwwwwwwwwwwwwwwww5 + ", " + Wwwwwwwwwwwwwwwwwwwwww6 + AbstractJsonLexerKt.END_LIST);
            }
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                CloseableKt.closeFinally(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2, th);
                throw th2;
            }
        }
    }

    public final void Kkkk() throws IOException {
        this.f12547Wwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwww(this.f12541Wwwwwwwwwwwwwwwwwww);
        Iterator<Entry> it = this.f12537Wwwwwwwwwwwwwww.values().iterator();
        while (it.hasNext()) {
            Entry next = it.next();
            int i = 0;
            if (next.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() == null) {
                int i2 = this.f12544Wwwwwwwwwwwwwwwwwwwwww;
                while (i < i2) {
                    this.f12539Wwwwwwwwwwwwwwwww += next.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww()[i];
                    i++;
                }
            } else {
                next.Wwwwwwwwwwwwwwwwwwwwwww(null);
                int i3 = this.f12544Wwwwwwwwwwwwwwwwwwwwww;
                while (i < i3) {
                    this.f12547Wwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwww(next.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().get(i));
                    this.f12547Wwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwww(next.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().get(i));
                    i++;
                }
                it.remove();
            }
        }
    }

    public final BufferedSink Kkkkk() throws FileNotFoundException {
        return Okio.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(new FaultHidingSink(this.f12547Wwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.f12542Wwwwwwwwwwwwwwwwwwww), new Function1<IOException, Unit>() { // from class: okhttp3.internal.cache.DiskLruCache$newJournalWriter$faultHidingSink$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(IOException iOException) {
                invoke2(iOException);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2(@NotNull IOException iOException) {
                DiskLruCache diskLruCache = DiskLruCache.this;
                if (!Util.f12488Wwwwwwwwwwwwwwwwwwwwwwwwwww || Thread.holdsLock(diskLruCache)) {
                    DiskLruCache.this.f12535Wwwwwwwwwwwww = true;
                    return;
                }
                throw new AssertionError("Thread " + ((Object) Thread.currentThread().getName()) + " MUST hold lock on " + diskLruCache);
            }
        }));
    }

    public final boolean Kkkkkk() {
        int i = this.f12536Wwwwwwwwwwwwww;
        if (i >= 2000 && i >= this.f12537Wwwwwwwwwwwwwww.size()) {
            return true;
        }
        return false;
    }

    public final synchronized void Kkkkkkk() throws IOException {
        try {
            if (Util.f12488Wwwwwwwwwwwwwwwwwwwwwwwwwww && !Thread.holdsLock(this)) {
                throw new AssertionError("Thread " + ((Object) Thread.currentThread().getName()) + " MUST hold lock on " + this);
            }
            if (this.f12533Wwwwwwwwwww) {
                return;
            }
            if (this.f12547Wwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.f12540Wwwwwwwwwwwwwwwwww)) {
                if (this.f12547Wwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.f12542Wwwwwwwwwwwwwwwwwwww)) {
                    this.f12547Wwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwww(this.f12540Wwwwwwwwwwwwwwwwww);
                } else {
                    this.f12547Wwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwww(this.f12540Wwwwwwwwwwwwwwwwww, this.f12542Wwwwwwwwwwwwwwwwwwww);
                }
            }
            this.f12534Wwwwwwwwwwww = Util.Www(this.f12547Wwwwwwwwwwwwwwwwwwwwwwwww, this.f12540Wwwwwwwwwwwwwwwwww);
            if (this.f12547Wwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.f12542Wwwwwwwwwwwwwwwwwwww)) {
                try {
                    Kkk();
                    Kkkk();
                    this.f12533Wwwwwwwwwww = true;
                    return;
                } catch (IOException e) {
                    Platform Wwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Platform.Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwww();
                    Wwwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwww("DiskLruCache " + this.f12546Wwwwwwwwwwwwwwwwwwwwwwww + " is corrupt: " + ((Object) e.getMessage()) + ", removing", 5, e);
                    Kkkkkkkkkkkkkkkk();
                    this.f12532Wwwwwwwwww = false;
                }
            }
            Illllllllllllllllllllllllllll();
            this.f12533Wwwwwwwwwww = true;
        } catch (Throwable th) {
            throw th;
        }
    }

    public final int Kkkkkkkk() {
        return this.f12544Wwwwwwwwwwwwwwwwwwwwww;
    }

    @NotNull
    public final LinkedHashMap<String, Entry> Kkkkkkkkk() {
        return this.f12537Wwwwwwwwwwwwwww;
    }

    @NotNull
    public final FileSystem Kkkkkkkkkk() {
        return this.f12547Wwwwwwwwwwwwwwwwwwwwwwwww;
    }

    @NotNull
    public final File Kkkkkkkkkkk() {
        return this.f12546Wwwwwwwwwwwwwwwwwwwwwwww;
    }

    public final boolean Kkkkkkkkkkkk() {
        return this.f12532Wwwwwwwwww;
    }

    @Nullable
    public final synchronized Snapshot Kkkkkkkkkkkkk(@NotNull String str) throws IOException {
        Kkkkkkk();
        Kkkkkkkkkkkkkkkkkk();
        Illlllllllllllllllllllll(str);
        Entry entry = this.f12537Wwwwwwwwwwwwwww.get(str);
        if (entry == null) {
            return null;
        }
        Snapshot Wwwwwwwwwwwwwwwww2 = entry.Wwwwwwwwwwwwwwwww();
        if (Wwwwwwwwwwwwwwwww2 == null) {
            return null;
        }
        this.f12536Wwwwwwwwwwwwww++;
        this.f12538Wwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwww(f12516Kkkkkkkkkkkkkkkkkk).writeByte(32).Wwwwwwwwwwwwwwwwwwwwwwwwww(str).writeByte(10);
        if (Kkkkkk()) {
            TaskQueue.Wwwwwwwwwwwwwwwwwwwwwwwww(this.f12528Wwwwww, this.f12527Wwwww, 0L, 2, null);
        }
        return Wwwwwwwwwwwwwwwww2;
    }

    @JvmOverloads
    @Nullable
    public final synchronized Editor Kkkkkkkkkkkkkkk(@NotNull String str, long j) throws IOException {
        Editor Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
        Kkkkkkk();
        Kkkkkkkkkkkkkkkkkk();
        Illlllllllllllllllllllll(str);
        Entry entry = this.f12537Wwwwwwwwwwwwwww.get(str);
        if (j != f12521Kkkkkkkkkkkkkkkkkkkkkkk && (entry == null || entry.Wwwwwwwwwwwwwwwwwwwwwwwwwww() != j)) {
            return null;
        }
        if (entry == null) {
            Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = null;
        } else {
            Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = entry.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        }
        if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 != null) {
            return null;
        }
        if (entry != null && entry.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww() != 0) {
            return null;
        }
        if (!this.f12531Wwwwwwwww && !this.f12530Wwwwwwww) {
            BufferedSink bufferedSink = this.f12538Wwwwwwwwwwwwwwww;
            bufferedSink.Wwwwwwwwwwwwwwwwwwwwwwwwww(f12518Kkkkkkkkkkkkkkkkkkkk).writeByte(32).Wwwwwwwwwwwwwwwwwwwwwwwwww(str).writeByte(10);
            bufferedSink.flush();
            if (this.f12535Wwwwwwwwwwwww) {
                return null;
            }
            if (entry == null) {
                entry = new Entry(str);
                this.f12537Wwwwwwwwwwwwwww.put(str, entry);
            }
            Editor editor = new Editor(entry);
            entry.Wwwwwwwwwwwwwwwwwwwwwww(editor);
            return editor;
        }
        TaskQueue.Wwwwwwwwwwwwwwwwwwwwwwwww(this.f12528Wwwwww, this.f12527Wwwww, 0L, 2, null);
        return null;
    }

    public final void Kkkkkkkkkkkkkkkk() throws IOException {
        close();
        this.f12547Wwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.f12546Wwwwwwwwwwwwwwwwwwwwwwww);
    }

    public final synchronized void Kkkkkkkkkkkkkkkkk(@NotNull Editor editor, boolean z) throws IOException {
        Entry Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = editor.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        if (Intrinsics.areEqual(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(), editor)) {
            int i = 0;
            if (z && !Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwwwww()) {
                int i2 = this.f12544Wwwwwwwwwwwwwwwwwwwwww;
                int i3 = 0;
                while (i3 < i2) {
                    int i4 = i3 + 1;
                    if (editor.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww()[i3]) {
                        if (!this.f12547Wwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().get(i3))) {
                            editor.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
                            return;
                        }
                        i3 = i4;
                    } else {
                        editor.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
                        throw new IllegalStateException(Intrinsics.stringPlus("Newly created entry didn't create value for index ", Integer.valueOf(i3)));
                    }
                }
            }
            int i5 = this.f12544Wwwwwwwwwwwwwwwwwwwwww;
            while (i < i5) {
                int i6 = i + 1;
                File file = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().get(i);
                if (z && !Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwww()) {
                    if (this.f12547Wwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(file)) {
                        File file2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().get(i);
                        this.f12547Wwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwww(file, file2);
                        long j = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww()[i];
                        long Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3 = this.f12547Wwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(file2);
                        Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww()[i] = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3;
                        this.f12539Wwwwwwwwwwwwwwwww = (this.f12539Wwwwwwwwwwwwwwwww - j) + Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3;
                    }
                } else {
                    this.f12547Wwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwww(file);
                }
                i = i6;
            }
            Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwww(null);
            if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwww()) {
                Illllllllllllllllllllllllll(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2);
                return;
            }
            this.f12536Wwwwwwwwwwwwww++;
            BufferedSink bufferedSink = this.f12538Wwwwwwwwwwwwwwww;
            if (!Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwwwww() && !z) {
                Kkkkkkkkk().remove(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
                bufferedSink.Wwwwwwwwwwwwwwwwwwwwwwwwww(f12517Kkkkkkkkkkkkkkkkkkk).writeByte(32);
                bufferedSink.Wwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
                bufferedSink.writeByte(10);
                bufferedSink.flush();
                if (this.f12539Wwwwwwwwwwwwwwwww <= this.f12543Wwwwwwwwwwwwwwwwwwwww || Kkkkkk()) {
                    TaskQueue.Wwwwwwwwwwwwwwwwwwwwwwwww(this.f12528Wwwwww, this.f12527Wwwww, 0L, 2, null);
                }
                return;
            }
            Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwww(true);
            bufferedSink.Wwwwwwwwwwwwwwwwwwwwwwwwww(f12519Kkkkkkkkkkkkkkkkkkkkk).writeByte(32);
            bufferedSink.Wwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
            Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwww(bufferedSink);
            bufferedSink.writeByte(10);
            if (z) {
                long j2 = this.f12529Wwwwwww;
                this.f12529Wwwwwww = 1 + j2;
                Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwww(j2);
            }
            bufferedSink.flush();
            if (this.f12539Wwwwwwwwwwwwwwwww <= this.f12543Wwwwwwwwwwwwwwwwwwwww) {
            }
            TaskQueue.Wwwwwwwwwwwwwwwwwwwwwwwww(this.f12528Wwwwww, this.f12527Wwwww, 0L, 2, null);
            return;
        }
        throw new IllegalStateException("Check failed.");
    }

    public final synchronized void Kkkkkkkkkkkkkkkkkk() {
        if (this.f12532Wwwwwwwwww) {
            throw new IllegalStateException("cache is closed");
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public synchronized void close() throws IOException {
        Editor Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
        try {
            if (this.f12533Wwwwwwwwwww && !this.f12532Wwwwwwwwww) {
                int i = 0;
                Object[] array = this.f12537Wwwwwwwwwwwwwww.values().toArray(new Entry[0]);
                if (array != null) {
                    Entry[] entryArr = (Entry[]) array;
                    int length = entryArr.length;
                    while (i < length) {
                        Entry entry = entryArr[i];
                        i++;
                        if (entry.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() != null && (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = entry.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()) != null) {
                            Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
                        }
                    }
                    Illllllllllllllllllllllll();
                    this.f12538Wwwwwwwwwwwwwwww.close();
                    this.f12538Wwwwwwwwwwwwwwww = null;
                    this.f12532Wwwwwwwwww = true;
                    return;
                }
                throw new NullPointerException("null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>");
            }
            this.f12532Wwwwwwwwww = true;
        } catch (Throwable th) {
            throw th;
        }
    }

    @Override // java.io.Flushable
    public synchronized void flush() throws IOException {
        if (!this.f12533Wwwwwwwwwww) {
            return;
        }
        Kkkkkkkkkkkkkkkkkk();
        Illllllllllllllllllllllll();
        this.f12538Wwwwwwwwwwwwwwww.flush();
    }
}
