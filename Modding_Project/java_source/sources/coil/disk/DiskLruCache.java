package coil.disk;

import coil.util.FileSystems;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.google.firebase.remoteconfig.RemoteConfigConstants;
import java.io.Closeable;
import java.io.Flushable;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Regex;
import kotlin.text.StringsKt;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineDispatcher;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.SupervisorKt;
import okio.BufferedSink;
import okio.FileSystem;
import okio.ForwardingFileSystem;
import okio.Okio;
import okio.Path;
import okio.Sink;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000\u0081\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u0013\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0015\n\u0002\b\b*\u0001`\b\u0000\u0018\u0000 c2\u00060\u0001j\u0002`\u00022\u00020\u0003:\u0004cdefB7\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\b\u0012\u0006\u0010\u000b\u001a\u00020\n\u0012\u0006\u0010\r\u001a\u00020\f\u0012\u0006\u0010\u000e\u001a\u00020\f¢\u0006\u0004\b\u000f\u0010\u0010J\u000f\u0010\u0012\u001a\u00020\u0011H\u0002¢\u0006\u0004\b\u0012\u0010\u0013J\u000f\u0010\u0015\u001a\u00020\u0014H\u0002¢\u0006\u0004\b\u0015\u0010\u0016J\u0017\u0010\u0019\u001a\u00020\u00112\u0006\u0010\u0018\u001a\u00020\u0017H\u0002¢\u0006\u0004\b\u0019\u0010\u001aJ\u000f\u0010\u001b\u001a\u00020\u0011H\u0002¢\u0006\u0004\b\u001b\u0010\u0013J\u000f\u0010\u001c\u001a\u00020\u0011H\u0002¢\u0006\u0004\b\u001c\u0010\u0013J#\u0010!\u001a\u00020\u00112\n\u0010\u001e\u001a\u00060\u001dR\u00020\u00002\u0006\u0010 \u001a\u00020\u001fH\u0002¢\u0006\u0004\b!\u0010\"J\u000f\u0010#\u001a\u00020\u001fH\u0002¢\u0006\u0004\b#\u0010$J\u001b\u0010'\u001a\u00020\u001f2\n\u0010&\u001a\u00060%R\u00020\u0000H\u0002¢\u0006\u0004\b'\u0010(J\u000f\u0010)\u001a\u00020\u0011H\u0002¢\u0006\u0004\b)\u0010\u0013J\u000f\u0010*\u001a\u00020\u0011H\u0002¢\u0006\u0004\b*\u0010\u0013J\u000f\u0010+\u001a\u00020\u001fH\u0002¢\u0006\u0004\b+\u0010$J\u000f\u0010,\u001a\u00020\u0011H\u0002¢\u0006\u0004\b,\u0010\u0013J\u000f\u0010-\u001a\u00020\u0011H\u0002¢\u0006\u0004\b-\u0010\u0013J\u0017\u0010/\u001a\u00020\u00112\u0006\u0010.\u001a\u00020\u0017H\u0002¢\u0006\u0004\b/\u0010\u001aJ\r\u00100\u001a\u00020\u0011¢\u0006\u0004\b0\u0010\u0013J\u001e\u00102\u001a\b\u0018\u000101R\u00020\u00002\u0006\u0010.\u001a\u00020\u0017H\u0086\u0002¢\u0006\u0004\b2\u00103J\u001b\u00104\u001a\b\u0018\u00010\u001dR\u00020\u00002\u0006\u0010.\u001a\u00020\u0017¢\u0006\u0004\b4\u00105J\u000f\u00106\u001a\u00020\u0011H\u0016¢\u0006\u0004\b6\u0010\u0013J\u000f\u00107\u001a\u00020\u0011H\u0016¢\u0006\u0004\b7\u0010\u0013R\u0014\u0010\u0007\u001a\u00020\u00068\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b8\u00109R\u0014\u0010\u000b\u001a\u00020\n8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b:\u0010;R\u0014\u0010\r\u001a\u00020\f8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b<\u0010=R\u0014\u0010\u000e\u001a\u00020\f8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b>\u0010=R\u0014\u0010@\u001a\u00020\u00068\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b?\u00109R\u0014\u0010B\u001a\u00020\u00068\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bA\u00109R\u0014\u0010D\u001a\u00020\u00068\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bC\u00109R8\u0010I\u001a&\u0012\u0004\u0012\u00020\u0017\u0012\b\u0012\u00060%R\u00020\u00000Ej\u0012\u0012\u0004\u0012\u00020\u0017\u0012\b\u0012\u00060%R\u00020\u0000`F8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bG\u0010HR\u0014\u0010M\u001a\u00020J8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bK\u0010LR\u0016\u0010O\u001a\u00020\n8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bN\u0010;R\u0016\u0010Q\u001a\u00020\f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bP\u0010=R\u0018\u0010T\u001a\u0004\u0018\u00010\u00148\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bR\u0010SR\u0016\u0010W\u001a\u00020\u001f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bU\u0010VR\u0016\u0010Y\u001a\u00020\u001f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bX\u0010VR\u0016\u0010[\u001a\u00020\u001f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bZ\u0010VR\u0016\u0010]\u001a\u00020\u001f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\\\u0010VR\u0016\u0010_\u001a\u00020\u001f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b^\u0010VR\u0014\u0010\u0005\u001a\u00020`8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\ba\u0010b¨\u0006g"}, d2 = {"Lcoil/disk/DiskLruCache;", "Ljava/io/Closeable;", "Lokio/Closeable;", "Ljava/io/Flushable;", "Lokio/FileSystem;", "fileSystem", "Lokio/Path;", "directory", "Lkotlinx/coroutines/CoroutineDispatcher;", "cleanupDispatcher", "", "maxSize", "", RemoteConfigConstants.RequestFieldKey.APP_VERSION, "valueCount", "<init>", "(Lokio/FileSystem;Lokio/Path;Lkotlinx/coroutines/CoroutineDispatcher;JII)V", "", "Kk", "()V", "Lokio/BufferedSink;", "Kkkk", "()Lokio/BufferedSink;", "", "line", "Illllllllllllllllllllllllllll", "(Ljava/lang/String;)V", "Kkk", "Illlllllllllllllllllllll", "Lcoil/disk/DiskLruCache$Editor;", "editor", "", FirebaseAnalytics.Param.SUCCESS, "Kkkkkkkkkkk", "(Lcoil/disk/DiskLruCache$Editor;Z)V", "Kkkkkk", "()Z", "Lcoil/disk/DiskLruCache$Entry;", "entry", "Illlllllllllllllllllllllllll", "(Lcoil/disk/DiskLruCache$Entry;)Z", "Kkkkkkkkkkkk", "Illlllllllllllllllllllllll", "Illllllllllllllllllllllllll", "Kkkkkkkkkk", "Kkkkk", "key", "Illllllllllllllllllllllll", "Kkkkkkk", "Lcoil/disk/DiskLruCache$Snapshot;", "Kkkkkkkk", "(Ljava/lang/String;)Lcoil/disk/DiskLruCache$Snapshot;", "Kkkkkkkkk", "(Ljava/lang/String;)Lcoil/disk/DiskLruCache$Editor;", "close", "flush", "Wwwwwwwwwwwwwwwwwwwwwwwww", "Lokio/Path;", "Wwwwwwwwwwwwwwwwwwwwwwww", "J", "Wwwwwwwwwwwwwwwwwwwwwww", "I", "Wwwwwwwwwwwwwwwwwwwwww", "Wwwwwwwwwwwwwwwwwwwww", "journalFile", "Wwwwwwwwwwwwwwwwwwww", "journalFileTmp", "Wwwwwwwwwwwwwwwwwww", "journalFileBackup", "Ljava/util/LinkedHashMap;", "Lkotlin/collections/LinkedHashMap;", "Wwwwwwwwwwwwwwwwww", "Ljava/util/LinkedHashMap;", "lruEntries", "Lkotlinx/coroutines/CoroutineScope;", "Wwwwwwwwwwwwwwwww", "Lkotlinx/coroutines/CoroutineScope;", "cleanupScope", "Wwwwwwwwwwwwwwww", "size", "Wwwwwwwwwwwwwww", "operationsSinceRewrite", "Wwwwwwwwwwwwww", "Lokio/BufferedSink;", "journalWriter", "Wwwwwwwwwwwww", "Z", "hasJournalErrors", "Wwwwwwwwwwww", "initialized", "Wwwwwwwwwww", "closed", "Wwwwwwwwww", "mostRecentTrimFailed", "Wwwwwwwww", "mostRecentRebuildFailed", "coil/disk/DiskLruCache$fileSystem$1", "Wwwwwwww", "Lcoil/disk/DiskLruCache$fileSystem$1;", "Companion", "Editor", "Entry", "Snapshot", "coil-base_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class DiskLruCache implements Closeable, Flushable, AutoCloseable {
    @NotNull
    public static final Companion Companion = new Companion(null);
    @NotNull

    /* renamed from: Wwwwwww  reason: collision with root package name */
    public static final Regex f1851Wwwwwww = new Regex("[a-z0-9_-]{1,120}");
    @NotNull

    /* renamed from: Wwwwwwww  reason: collision with root package name */
    public final DiskLruCache$fileSystem$1 f1852Wwwwwwww;

    /* renamed from: Wwwwwwwww  reason: collision with root package name */
    public boolean f1853Wwwwwwwww;

    /* renamed from: Wwwwwwwwww  reason: collision with root package name */
    public boolean f1854Wwwwwwwwww;

    /* renamed from: Wwwwwwwwwww  reason: collision with root package name */
    public boolean f1855Wwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwww  reason: collision with root package name */
    public boolean f1856Wwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwww  reason: collision with root package name */
    public boolean f1857Wwwwwwwwwwwww;
    @Nullable

    /* renamed from: Wwwwwwwwwwwwww  reason: collision with root package name */
    public BufferedSink f1858Wwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwww  reason: collision with root package name */
    public int f1859Wwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwww  reason: collision with root package name */
    public long f1860Wwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final CoroutineScope f1861Wwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final LinkedHashMap<String, Entry> f1862Wwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Path f1863Wwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Path f1864Wwwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Path f1865Wwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final int f1866Wwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final int f1867Wwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final long f1868Wwwwwwwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Path f1869Wwwwwwwwwwwwwwwwwwwwwwwww;

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003R\u0014\u0010\u0005\u001a\u00020\u00048\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0005\u0010\u0006R\u0014\u0010\u0007\u001a\u00020\u00048\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0007\u0010\u0006R\u0014\u0010\t\u001a\u00020\b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\t\u0010\nR\u0014\u0010\u000b\u001a\u00020\u00048\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u000b\u0010\u0006R\u0014\u0010\f\u001a\u00020\u00048\u0002X\u0082T¢\u0006\u0006\n\u0004\b\f\u0010\u0006¨\u0006\r"}, d2 = {"Lcoil/disk/DiskLruCache$Companion;", "", "<init>", "()V", "", "CLEAN", "Ljava/lang/String;", "DIRTY", "Lkotlin/text/Regex;", "LEGAL_KEY_PATTERN", "Lkotlin/text/Regex;", "READ", "REMOVE", "coil-base_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public Companion() {
        }
    }

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\b\n\u0002\u0010\u0018\n\u0002\b\u0005\b\u0086\u0004\u0018\u00002\u00020\u0001B\u0013\u0012\n\u0010\u0004\u001a\u00060\u0002R\u00020\u0003¢\u0006\u0004\b\u0005\u0010\u0006J\u0015\u0010\n\u001a\u00020\t2\u0006\u0010\b\u001a\u00020\u0007¢\u0006\u0004\b\n\u0010\u000bJ\r\u0010\r\u001a\u00020\f¢\u0006\u0004\b\r\u0010\u000eJ\r\u0010\u000f\u001a\u00020\f¢\u0006\u0004\b\u000f\u0010\u000eJ\u0013\u0010\u0011\u001a\b\u0018\u00010\u0010R\u00020\u0003¢\u0006\u0004\b\u0011\u0010\u0012J\r\u0010\u0013\u001a\u00020\f¢\u0006\u0004\b\u0013\u0010\u000eJ\u0017\u0010\u0016\u001a\u00020\f2\u0006\u0010\u0015\u001a\u00020\u0014H\u0002¢\u0006\u0004\b\u0016\u0010\u0017R\u001b\u0010\u0004\u001a\u00060\u0002R\u00020\u00038\u0006¢\u0006\f\n\u0004\b\u0013\u0010\u0018\u001a\u0004\b\u0019\u0010\u001aR\u0016\u0010\u001c\u001a\u00020\u00148\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u000f\u0010\u001bR\u0017\u0010!\u001a\u00020\u001d8\u0006¢\u0006\f\n\u0004\b\u0011\u0010\u001e\u001a\u0004\b\u001f\u0010 ¨\u0006\""}, d2 = {"Lcoil/disk/DiskLruCache$Editor;", "", "Lcoil/disk/DiskLruCache$Entry;", "Lcoil/disk/DiskLruCache;", "entry", "<init>", "(Lcoil/disk/DiskLruCache;Lcoil/disk/DiskLruCache$Entry;)V", "", FirebaseAnalytics.Param.INDEX, "Lokio/Path;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(I)Lokio/Path;", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "()V", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Lcoil/disk/DiskLruCache$Snapshot;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "()Lcoil/disk/DiskLruCache$Snapshot;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "", FirebaseAnalytics.Param.SUCCESS, "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Z)V", "Lcoil/disk/DiskLruCache$Entry;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwww", "()Lcoil/disk/DiskLruCache$Entry;", "Z", "closed", "", "[Z", "Wwwwwwwwwwwwwwwwwwwwwwwwwww", "()[Z", "written", "coil-base_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public final class Editor {
        @NotNull

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final boolean[] f1871Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public boolean f1872Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        @NotNull

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final Entry f1873Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        public Editor(@NotNull Entry entry) {
            this.f1873Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = entry;
            this.f1871Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new boolean[DiskLruCache.this.f1866Wwwwwwwwwwwwwwwwwwwwww];
        }

        @NotNull
        public final boolean[] Wwwwwwwwwwwwwwwwwwwwwwwwwww() {
            return this.f1871Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        }

        @NotNull
        public final Entry Wwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            return this.f1873Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        }

        @NotNull
        public final Path Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(int i) {
            Path path;
            DiskLruCache diskLruCache = DiskLruCache.this;
            synchronized (diskLruCache) {
                if (!this.f1872Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww) {
                    this.f1871Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww[i] = true;
                    Path path2 = this.f1873Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().get(i);
                    FileSystems.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(diskLruCache.f1852Wwwwwwww, path2);
                    path = path2;
                } else {
                    throw new IllegalStateException("editor is closed");
                }
            }
            return path;
        }

        public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            if (Intrinsics.areEqual(this.f1873Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(), this)) {
                this.f1873Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwww(true);
            }
        }

        public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(boolean z) {
            DiskLruCache diskLruCache = DiskLruCache.this;
            synchronized (diskLruCache) {
                try {
                    if (!this.f1872Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww) {
                        if (Intrinsics.areEqual(this.f1873Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(), this)) {
                            diskLruCache.Kkkkkkkkkkk(this, z);
                        }
                        this.f1872Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = true;
                        Unit unit = Unit.INSTANCE;
                    } else {
                        throw new IllegalStateException("editor is closed");
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }

        @Nullable
        public final Snapshot Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            Snapshot Kkkkkkkk2;
            DiskLruCache diskLruCache = DiskLruCache.this;
            synchronized (diskLruCache) {
                Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
                Kkkkkkkk2 = diskLruCache.Kkkkkkkk(this.f1873Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
            }
            return Kkkkkkkk2;
        }

        public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(true);
        }

        public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(false);
        }
    }

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000b\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010 \n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u0016\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u0006\b\u0086\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005J\u001b\u0010\t\u001a\u00020\b2\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00020\u0006¢\u0006\u0004\b\t\u0010\nJ\u0015\u0010\r\u001a\u00020\b2\u0006\u0010\f\u001a\u00020\u000b¢\u0006\u0004\b\r\u0010\u000eJ\u0013\u0010\u0011\u001a\b\u0018\u00010\u000fR\u00020\u0010¢\u0006\u0004\b\u0011\u0010\u0012R\u0017\u0010\u0003\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0013\u0010\u0014\u001a\u0004\b\u0015\u0010\u0016R\u0017\u0010\u001c\u001a\u00020\u00178\u0006¢\u0006\f\n\u0004\b\u0018\u0010\u0019\u001a\u0004\b\u001a\u0010\u001bR'\u0010#\u001a\u0012\u0012\u0004\u0012\u00020\u001e0\u001dj\b\u0012\u0004\u0012\u00020\u001e`\u001f8\u0006¢\u0006\f\n\u0004\b \u0010!\u001a\u0004\b\u0013\u0010\"R'\u0010$\u001a\u0012\u0012\u0004\u0012\u00020\u001e0\u001dj\b\u0012\u0004\u0012\u00020\u001e`\u001f8\u0006¢\u0006\f\n\u0004\b\u0015\u0010!\u001a\u0004\b \u0010\"R\"\u0010+\u001a\u00020%8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001a\u0010&\u001a\u0004\b'\u0010(\"\u0004\b)\u0010*R\"\u0010/\u001a\u00020%8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b,\u0010&\u001a\u0004\b-\u0010(\"\u0004\b.\u0010*R(\u00105\u001a\b\u0018\u000100R\u00020\u00108\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b'\u00101\u001a\u0004\b\u0018\u00102\"\u0004\b3\u00104R\"\u0010;\u001a\u0002068\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b-\u00107\u001a\u0004\b,\u00108\"\u0004\b9\u0010:¨\u0006<"}, d2 = {"Lcoil/disk/DiskLruCache$Entry;", "", "", "key", "<init>", "(Lcoil/disk/DiskLruCache;Ljava/lang/String;)V", "", "strings", "", "Wwwwwwwwwwwwwwwwwwwwwwwww", "(Ljava/util/List;)V", "Lokio/BufferedSink;", "writer", "Wwwwwwwwwwwwwwwwwwww", "(Lokio/BufferedSink;)V", "Lcoil/disk/DiskLruCache$Snapshot;", "Lcoil/disk/DiskLruCache;", "Wwwwwwwwwwwwwwwwwwwww", "()Lcoil/disk/DiskLruCache$Snapshot;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Ljava/lang/String;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "()Ljava/lang/String;", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "[J", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "()[J", "lengths", "Ljava/util/ArrayList;", "Lokio/Path;", "Lkotlin/collections/ArrayList;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Ljava/util/ArrayList;", "()Ljava/util/ArrayList;", "cleanFiles", "dirtyFiles", "", "Z", "Wwwwwwwwwwwwwwwwwwwwwwwwwwww", "()Z", "Wwwwwwwwwwwwwwwwwwwwwww", "(Z)V", "readable", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Wwwwwwwwwwwwwwwwwwwwwwwwwww", "Wwwwwwwwwwwwwwwwwwwwww", "zombie", "Lcoil/disk/DiskLruCache$Editor;", "Lcoil/disk/DiskLruCache$Editor;", "()Lcoil/disk/DiskLruCache$Editor;", "Wwwwwwwwwwwwwwwwwwwwwwwwww", "(Lcoil/disk/DiskLruCache$Editor;)V", "currentEditor", "", "I", "()I", "Wwwwwwwwwwwwwwwwwwwwwwww", "(I)V", "lockingSnapshotCount", "coil-base_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public final class Entry {

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public int f1875Wwwwwwwwwwwwwwwwwwwwwwwwwww;
        @Nullable

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public Editor f1876Wwwwwwwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public boolean f1877Wwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public boolean f1878Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        @NotNull

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final ArrayList<Path> f1879Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        @NotNull

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final ArrayList<Path> f1880Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        @NotNull

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final long[] f1881Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        @NotNull

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final String f1882Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        public Entry(@NotNull String str) {
            this.f1882Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = str;
            this.f1881Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new long[DiskLruCache.this.f1866Wwwwwwwwwwwwwwwwwwwwww];
            this.f1880Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new ArrayList<>(DiskLruCache.this.f1866Wwwwwwwwwwwwwwwwwwwwww);
            this.f1879Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new ArrayList<>(DiskLruCache.this.f1866Wwwwwwwwwwwwwwwwwwwwww);
            StringBuilder sb = new StringBuilder(str);
            sb.append('.');
            int length = sb.length();
            int i = DiskLruCache.this.f1866Wwwwwwwwwwwwwwwwwwwwww;
            for (int i2 = 0; i2 < i; i2++) {
                sb.append(i2);
                this.f1880Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.add(DiskLruCache.this.f1869Wwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwww(sb.toString()));
                sb.append(".tmp");
                this.f1879Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.add(DiskLruCache.this.f1869Wwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwww(sb.toString()));
                sb.setLength(length);
            }
        }

        public final void Wwwwwwwwwwwwwwwwwwww(@NotNull BufferedSink bufferedSink) {
            for (long j : this.f1881Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww) {
                bufferedSink.writeByte(32).Wwwwwwwwwwwwwwwww(j);
            }
        }

        @Nullable
        public final Snapshot Wwwwwwwwwwwwwwwwwwwww() {
            if (!this.f1878Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww || this.f1876Wwwwwwwwwwwwwwwwwwwwwwwwwwww != null || this.f1877Wwwwwwwwwwwwwwwwwwwwwwwwwwwww) {
                return null;
            }
            ArrayList<Path> arrayList = this.f1880Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
            DiskLruCache diskLruCache = DiskLruCache.this;
            int size = arrayList.size();
            for (int i = 0; i < size; i++) {
                if (!diskLruCache.f1852Wwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwww(arrayList.get(i))) {
                    try {
                        diskLruCache.Illlllllllllllllllllllllllll(this);
                    } catch (IOException unused) {
                    }
                    return null;
                }
            }
            this.f1875Wwwwwwwwwwwwwwwwwwwwwwwwwww++;
            return new Snapshot(this);
        }

        public final void Wwwwwwwwwwwwwwwwwwwwww(boolean z) {
            this.f1877Wwwwwwwwwwwwwwwwwwwwwwwwwwwww = z;
        }

        public final void Wwwwwwwwwwwwwwwwwwwwwww(boolean z) {
            this.f1878Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww = z;
        }

        public final void Wwwwwwwwwwwwwwwwwwwwwwww(int i) {
            this.f1875Wwwwwwwwwwwwwwwwwwwwwwwwwww = i;
        }

        public final void Wwwwwwwwwwwwwwwwwwwwwwwww(@NotNull List<String> list) {
            if (list.size() == DiskLruCache.this.f1866Wwwwwwwwwwwwwwwwwwwwww) {
                try {
                    int size = list.size();
                    for (int i = 0; i < size; i++) {
                        this.f1881Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww[i] = Long.parseLong(list.get(i));
                    }
                    return;
                } catch (NumberFormatException unused) {
                    throw new IOException("unexpected journal line: " + list);
                }
            }
            throw new IOException("unexpected journal line: " + list);
        }

        public final void Wwwwwwwwwwwwwwwwwwwwwwwwww(@Nullable Editor editor) {
            this.f1876Wwwwwwwwwwwwwwwwwwwwwwwwwwww = editor;
        }

        public final boolean Wwwwwwwwwwwwwwwwwwwwwwwwwww() {
            return this.f1877Wwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        }

        public final boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            return this.f1878Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        }

        public final int Wwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            return this.f1875Wwwwwwwwwwwwwwwwwwwwwwwwwww;
        }

        @NotNull
        public final long[] Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            return this.f1881Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        }

        @NotNull
        public final String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            return this.f1882Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        }

        @NotNull
        public final ArrayList<Path> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            return this.f1879Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        }

        @Nullable
        public final Editor Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            return this.f1876Wwwwwwwwwwwwwwwwwwwwwwwwwwww;
        }

        @NotNull
        public final ArrayList<Path> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            return this.f1880Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        }
    }

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0086\u0004\u0018\u00002\u00060\u0001j\u0002`\u0002B\u0013\u0012\n\u0010\u0005\u001a\u00060\u0003R\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007J\u0015\u0010\u000b\u001a\u00020\n2\u0006\u0010\t\u001a\u00020\b¢\u0006\u0004\b\u000b\u0010\fJ\u000f\u0010\u000e\u001a\u00020\rH\u0016¢\u0006\u0004\b\u000e\u0010\u000fJ\u0013\u0010\u0011\u001a\b\u0018\u00010\u0010R\u00020\u0004¢\u0006\u0004\b\u0011\u0010\u0012R\u001b\u0010\u0005\u001a\u00060\u0003R\u00020\u00048\u0006¢\u0006\f\n\u0004\b\u0013\u0010\u0014\u001a\u0004\b\u0015\u0010\u0016R\u0016\u0010\u001a\u001a\u00020\u00178\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0018\u0010\u0019¨\u0006\u001b"}, d2 = {"Lcoil/disk/DiskLruCache$Snapshot;", "Ljava/io/Closeable;", "Lokio/Closeable;", "Lcoil/disk/DiskLruCache$Entry;", "Lcoil/disk/DiskLruCache;", "entry", "<init>", "(Lcoil/disk/DiskLruCache;Lcoil/disk/DiskLruCache$Entry;)V", "", FirebaseAnalytics.Param.INDEX, "Lokio/Path;", "Wwwwwwwwwwwwwwwwwwwwwwwwwww", "(I)Lokio/Path;", "", "close", "()V", "Lcoil/disk/DiskLruCache$Editor;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "()Lcoil/disk/DiskLruCache$Editor;", "Wwwwwwwwwwwwwwwwwwwwwwwww", "Lcoil/disk/DiskLruCache$Entry;", "getEntry", "()Lcoil/disk/DiskLruCache$Entry;", "", "Wwwwwwwwwwwwwwwwwwwwwwww", "Z", "closed", "coil-base_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public final class Snapshot implements Closeable, AutoCloseable {

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public boolean f1884Wwwwwwwwwwwwwwwwwwwwwwww;
        @NotNull

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final Entry f1885Wwwwwwwwwwwwwwwwwwwwwwwww;

        public Snapshot(@NotNull Entry entry) {
            this.f1885Wwwwwwwwwwwwwwwwwwwwwwwww = entry;
        }

        @NotNull
        public final Path Wwwwwwwwwwwwwwwwwwwwwwwwwww(int i) {
            if (!this.f1884Wwwwwwwwwwwwwwwwwwwwwwww) {
                return this.f1885Wwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().get(i);
            }
            throw new IllegalStateException("snapshot is closed");
        }

        @Nullable
        public final Editor Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            Editor Kkkkkkkkk2;
            DiskLruCache diskLruCache = DiskLruCache.this;
            synchronized (diskLruCache) {
                close();
                Kkkkkkkkk2 = diskLruCache.Kkkkkkkkk(this.f1885Wwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
            }
            return Kkkkkkkkk2;
        }

        @Override // java.io.Closeable, java.lang.AutoCloseable
        public void close() {
            if (!this.f1884Wwwwwwwwwwwwwwwwwwwwwwww) {
                this.f1884Wwwwwwwwwwwwwwwwwwwwwwww = true;
                DiskLruCache diskLruCache = DiskLruCache.this;
                synchronized (diskLruCache) {
                    try {
                        Entry entry = this.f1885Wwwwwwwwwwwwwwwwwwwwwwwww;
                        entry.Wwwwwwwwwwwwwwwwwwwwwwww(entry.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww() - 1);
                        if (this.f1885Wwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww() == 0 && this.f1885Wwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwww()) {
                            diskLruCache.Illlllllllllllllllllllllllll(this.f1885Wwwwwwwwwwwwwwwwwwwwwwwww);
                        }
                        Unit unit = Unit.INSTANCE;
                    } catch (Throwable th) {
                        throw th;
                    }
                }
            }
        }
    }

    /* JADX WARN: Type inference failed for: r4v9, types: [coil.disk.DiskLruCache$fileSystem$1] */
    public DiskLruCache(@NotNull final FileSystem fileSystem, @NotNull Path path, @NotNull CoroutineDispatcher coroutineDispatcher, long j, int i, int i2) {
        this.f1869Wwwwwwwwwwwwwwwwwwwwwwwww = path;
        this.f1868Wwwwwwwwwwwwwwwwwwwwwwww = j;
        this.f1867Wwwwwwwwwwwwwwwwwwwwwww = i;
        this.f1866Wwwwwwwwwwwwwwwwwwwwww = i2;
        if (j > 0) {
            if (i2 > 0) {
                this.f1865Wwwwwwwwwwwwwwwwwwwww = path.Wwwwwwwwwwwwwwwwwwwwwwww("journal");
                this.f1864Wwwwwwwwwwwwwwwwwwww = path.Wwwwwwwwwwwwwwwwwwwwwwww("journal.tmp");
                this.f1863Wwwwwwwwwwwwwwwwwww = path.Wwwwwwwwwwwwwwwwwwwwwwww("journal.bkp");
                this.f1862Wwwwwwwwwwwwwwwwww = new LinkedHashMap<>(0, 0.75f, true);
                this.f1861Wwwwwwwwwwwwwwwww = CoroutineScopeKt.CoroutineScope(SupervisorKt.SupervisorJob$default((Job) null, 1, (Object) null).plus(coroutineDispatcher.limitedParallelism(1)));
                this.f1852Wwwwwwww = new ForwardingFileSystem(fileSystem) { // from class: coil.disk.DiskLruCache$fileSystem$1
                    @Override // okio.ForwardingFileSystem, okio.FileSystem
                    @NotNull
                    public Sink Wwwwwwwwwwwwwwww(@NotNull Path path2, boolean z) {
                        Path Wwwwwwwwwwwwwwwwwwwwwwwwww2 = path2.Wwwwwwwwwwwwwwwwwwwwwwwwww();
                        if (Wwwwwwwwwwwwwwwwwwwwwwwwww2 != null) {
                            Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwww2);
                        }
                        return super.Wwwwwwwwwwwwwwww(path2, z);
                    }
                };
                return;
            }
            throw new IllegalArgumentException("valueCount <= 0");
        }
        throw new IllegalArgumentException("maxSize <= 0");
    }

    public final synchronized void Illlllllllllllllllllllll() {
        try {
            BufferedSink bufferedSink = this.f1858Wwwwwwwwwwwwww;
            if (bufferedSink != null) {
                bufferedSink.close();
            }
            BufferedSink Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Okio.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwww(this.f1864Wwwwwwwwwwwwwwwwwwww, false));
            try {
                Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwww("libcore.io.DiskLruCache").writeByte(10);
                Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwww("1").writeByte(10);
                Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwww(this.f1867Wwwwwwwwwwwwwwwwwwwwwww).writeByte(10);
                Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwww(this.f1866Wwwwwwwwwwwwwwwwwwwwww).writeByte(10);
                Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.writeByte(10);
                for (Entry entry : this.f1862Wwwwwwwwwwwwwwwwww.values()) {
                    if (entry.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() != null) {
                        Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwww("DIRTY");
                        Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.writeByte(32);
                        Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwww(entry.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
                        Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.writeByte(10);
                    } else {
                        Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwww("CLEAN");
                        Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.writeByte(32);
                        Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwww(entry.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
                        entry.Wwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2);
                        Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.writeByte(10);
                    }
                }
                Unit unit = Unit.INSTANCE;
                th = null;
            } catch (Throwable th) {
                th = th;
            }
            if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 != null) {
                Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.close();
            }
            if (th == null) {
                if (Wwwwwwwwwwwwwwwwwwwwwwwww(this.f1865Wwwwwwwwwwwwwwwwwwwww)) {
                    Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.f1865Wwwwwwwwwwwwwwwwwwwww, this.f1863Wwwwwwwwwwwwwwwwwww);
                    Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.f1864Wwwwwwwwwwwwwwwwwwww, this.f1865Wwwwwwwwwwwwwwwwwwwww);
                    Wwwwwwwwwwwwwwwwwwwwwwwwwww(this.f1863Wwwwwwwwwwwwwwwwwww);
                } else {
                    Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.f1864Wwwwwwwwwwwwwwwwwwww, this.f1865Wwwwwwwwwwwwwwwwwwwww);
                }
                this.f1858Wwwwwwwwwwwwww = Kkkk();
                this.f1859Wwwwwwwwwwwwwww = 0;
                this.f1857Wwwwwwwwwwwww = false;
                this.f1853Wwwwwwwww = false;
            } else {
                throw th;
            }
        } finally {
        }
    }

    public final void Illllllllllllllllllllllll(String str) {
        if (f1851Wwwwwww.matches(str)) {
            return;
        }
        throw new IllegalArgumentException(("keys must match regex [a-z0-9_-]{1,120}: \"" + str + '\"').toString());
    }

    public final void Illlllllllllllllllllllllll() {
        while (this.f1860Wwwwwwwwwwwwwwww > this.f1868Wwwwwwwwwwwwwwwwwwwwwwww) {
            if (!Illllllllllllllllllllllllll()) {
                return;
            }
        }
        this.f1854Wwwwwwwwww = false;
    }

    public final boolean Illllllllllllllllllllllllll() {
        for (Entry entry : this.f1862Wwwwwwwwwwwwwwwwww.values()) {
            if (!entry.Wwwwwwwwwwwwwwwwwwwwwwwwwww()) {
                Illlllllllllllllllllllllllll(entry);
                return true;
            }
        }
        return false;
    }

    public final boolean Illlllllllllllllllllllllllll(Entry entry) {
        BufferedSink bufferedSink;
        if (entry.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww() > 0 && (bufferedSink = this.f1858Wwwwwwwwwwwwww) != null) {
            bufferedSink.Wwwwwwwwwwwwwwwwwwwwwwwwww("DIRTY");
            bufferedSink.writeByte(32);
            bufferedSink.Wwwwwwwwwwwwwwwwwwwwwwwwww(entry.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
            bufferedSink.writeByte(10);
            bufferedSink.flush();
        }
        if (entry.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww() <= 0 && entry.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() == null) {
            int i = this.f1866Wwwwwwwwwwwwwwwwwwwwww;
            for (int i2 = 0; i2 < i; i2++) {
                Wwwwwwwwwwwwwwwwwwwwwwwwwww(entry.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().get(i2));
                this.f1860Wwwwwwwwwwwwwwww -= entry.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww()[i2];
                entry.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww()[i2] = 0;
            }
            this.f1859Wwwwwwwwwwwwwww++;
            BufferedSink bufferedSink2 = this.f1858Wwwwwwwwwwwwww;
            if (bufferedSink2 != null) {
                bufferedSink2.Wwwwwwwwwwwwwwwwwwwwwwwwww("REMOVE");
                bufferedSink2.writeByte(32);
                bufferedSink2.Wwwwwwwwwwwwwwwwwwwwwwwwww(entry.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
                bufferedSink2.writeByte(10);
            }
            this.f1862Wwwwwwwwwwwwwwwwww.remove(entry.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
            if (Kkkkkk()) {
                Kkkkk();
            }
            return true;
        }
        entry.Wwwwwwwwwwwwwwwwwwwwww(true);
        return true;
    }

    public final void Illllllllllllllllllllllllllll(String str) {
        String substring;
        int indexOf$default = StringsKt.indexOf$default((CharSequence) str, ' ', 0, false, 6, (Object) null);
        if (indexOf$default != -1) {
            int i = indexOf$default + 1;
            int indexOf$default2 = StringsKt.indexOf$default((CharSequence) str, ' ', i, false, 4, (Object) null);
            if (indexOf$default2 == -1) {
                substring = str.substring(i);
                if (indexOf$default == 6 && StringsKt.startsWith$default(str, "REMOVE", false, 2, (Object) null)) {
                    this.f1862Wwwwwwwwwwwwwwwwww.remove(substring);
                    return;
                }
            } else {
                substring = str.substring(i, indexOf$default2);
            }
            LinkedHashMap<String, Entry> linkedHashMap = this.f1862Wwwwwwwwwwwwwwwwww;
            Entry entry = linkedHashMap.get(substring);
            if (entry == null) {
                entry = new Entry(substring);
                linkedHashMap.put(substring, entry);
            }
            Entry entry2 = entry;
            if (indexOf$default2 != -1 && indexOf$default == 5 && StringsKt.startsWith$default(str, "CLEAN", false, 2, (Object) null)) {
                List<String> split$default = StringsKt.split$default((CharSequence) str.substring(indexOf$default2 + 1), new char[]{' '}, false, 0, 6, (Object) null);
                entry2.Wwwwwwwwwwwwwwwwwwwwwww(true);
                entry2.Wwwwwwwwwwwwwwwwwwwwwwwwww(null);
                entry2.Wwwwwwwwwwwwwwwwwwwwwwwww(split$default);
                return;
            } else if (indexOf$default2 == -1 && indexOf$default == 5 && StringsKt.startsWith$default(str, "DIRTY", false, 2, (Object) null)) {
                entry2.Wwwwwwwwwwwwwwwwwwwwwwwwww(new Editor(entry2));
                return;
            } else if (indexOf$default2 == -1 && indexOf$default == 4 && StringsKt.startsWith$default(str, "READ", false, 2, (Object) null)) {
                return;
            } else {
                throw new IOException("unexpected journal line: " + str);
            }
        }
        throw new IOException("unexpected journal line: " + str);
    }

    /* JADX WARN: Removed duplicated region for block: B:33:0x00be A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:34:0x00bf  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x00b0 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void Kk() {
        /*
            r10 = this;
            java.lang.String r0 = ", "
            coil.disk.DiskLruCache$fileSystem$1 r1 = r10.f1852Wwwwwwww
            okio.Path r2 = r10.f1865Wwwwwwwwwwwwwwwwwwwww
            okio.Source r1 = r1.Wwwwwwwwwwwwwww(r2)
            okio.BufferedSource r1 = okio.Okio.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(r1)
            java.lang.String r2 = r1.Wwwwwwwwwwwwwwwwwwwwww()     // Catch: java.lang.Throwable -> L5b
            java.lang.String r3 = r1.Wwwwwwwwwwwwwwwwwwwwww()     // Catch: java.lang.Throwable -> L5b
            java.lang.String r4 = r1.Wwwwwwwwwwwwwwwwwwwwww()     // Catch: java.lang.Throwable -> L5b
            java.lang.String r5 = r1.Wwwwwwwwwwwwwwwwwwwwww()     // Catch: java.lang.Throwable -> L5b
            java.lang.String r6 = r1.Wwwwwwwwwwwwwwwwwwwwww()     // Catch: java.lang.Throwable -> L5b
            java.lang.String r7 = "libcore.io.DiskLruCache"
            boolean r7 = kotlin.jvm.internal.Intrinsics.areEqual(r7, r2)     // Catch: java.lang.Throwable -> L5b
            if (r7 == 0) goto L7a
            java.lang.String r7 = "1"
            boolean r7 = kotlin.jvm.internal.Intrinsics.areEqual(r7, r3)     // Catch: java.lang.Throwable -> L5b
            if (r7 == 0) goto L7a
            int r7 = r10.f1867Wwwwwwwwwwwwwwwwwwwwwww     // Catch: java.lang.Throwable -> L5b
            java.lang.String r7 = java.lang.String.valueOf(r7)     // Catch: java.lang.Throwable -> L5b
            boolean r7 = kotlin.jvm.internal.Intrinsics.areEqual(r7, r4)     // Catch: java.lang.Throwable -> L5b
            if (r7 == 0) goto L7a
            int r7 = r10.f1866Wwwwwwwwwwwwwwwwwwwwww     // Catch: java.lang.Throwable -> L5b
            java.lang.String r7 = java.lang.String.valueOf(r7)     // Catch: java.lang.Throwable -> L5b
            boolean r7 = kotlin.jvm.internal.Intrinsics.areEqual(r7, r5)     // Catch: java.lang.Throwable -> L5b
            if (r7 == 0) goto L7a
            int r7 = r6.length()     // Catch: java.lang.Throwable -> L5b
            if (r7 > 0) goto L7a
            r0 = 0
        L51:
            java.lang.String r2 = r1.Wwwwwwwwwwwwwwwwwwwwww()     // Catch: java.lang.Throwable -> L5b java.io.EOFException -> L5d
            r10.Illllllllllllllllllllllllllll(r2)     // Catch: java.lang.Throwable -> L5b java.io.EOFException -> L5d
            int r0 = r0 + 1
            goto L51
        L5b:
            r0 = move-exception
            goto Lae
        L5d:
            java.util.LinkedHashMap<java.lang.String, coil.disk.DiskLruCache$Entry> r2 = r10.f1862Wwwwwwwwwwwwwwwwww     // Catch: java.lang.Throwable -> L5b
            int r2 = r2.size()     // Catch: java.lang.Throwable -> L5b
            int r0 = r0 - r2
            r10.f1859Wwwwwwwwwwwwwww = r0     // Catch: java.lang.Throwable -> L5b
            boolean r0 = r1.Wwwwwwwwwwww()     // Catch: java.lang.Throwable -> L5b
            if (r0 != 0) goto L70
            r10.Illlllllllllllllllllllll()     // Catch: java.lang.Throwable -> L5b
            goto L76
        L70:
            okio.BufferedSink r0 = r10.Kkkk()     // Catch: java.lang.Throwable -> L5b
            r10.f1858Wwwwwwwwwwwwww = r0     // Catch: java.lang.Throwable -> L5b
        L76:
            kotlin.Unit r0 = kotlin.Unit.INSTANCE     // Catch: java.lang.Throwable -> L5b
            r0 = 0
            goto Lae
        L7a:
            java.io.IOException r7 = new java.io.IOException     // Catch: java.lang.Throwable -> L5b
            java.lang.StringBuilder r8 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L5b
            r8.<init>()     // Catch: java.lang.Throwable -> L5b
            java.lang.String r9 = "unexpected journal header: ["
            r8.append(r9)     // Catch: java.lang.Throwable -> L5b
            r8.append(r2)     // Catch: java.lang.Throwable -> L5b
            r8.append(r0)     // Catch: java.lang.Throwable -> L5b
            r8.append(r3)     // Catch: java.lang.Throwable -> L5b
            r8.append(r0)     // Catch: java.lang.Throwable -> L5b
            r8.append(r4)     // Catch: java.lang.Throwable -> L5b
            r8.append(r0)     // Catch: java.lang.Throwable -> L5b
            r8.append(r5)     // Catch: java.lang.Throwable -> L5b
            r8.append(r0)     // Catch: java.lang.Throwable -> L5b
            r8.append(r6)     // Catch: java.lang.Throwable -> L5b
            r0 = 93
            r8.append(r0)     // Catch: java.lang.Throwable -> L5b
            java.lang.String r0 = r8.toString()     // Catch: java.lang.Throwable -> L5b
            r7.<init>(r0)     // Catch: java.lang.Throwable -> L5b
            throw r7     // Catch: java.lang.Throwable -> L5b
        Lae:
            if (r1 == 0) goto Lbc
            r1.close()     // Catch: java.lang.Throwable -> Lb4
            goto Lbc
        Lb4:
            r1 = move-exception
            if (r0 != 0) goto Lb9
            r0 = r1
            goto Lbc
        Lb9:
            kotlin.ExceptionsKt.addSuppressed(r0, r1)
        Lbc:
            if (r0 != 0) goto Lbf
            return
        Lbf:
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: coil.disk.DiskLruCache.Kk():void");
    }

    public final void Kkk() {
        Iterator<Entry> it = this.f1862Wwwwwwwwwwwwwwwwww.values().iterator();
        long j = 0;
        while (it.hasNext()) {
            Entry next = it.next();
            int i = 0;
            if (next.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() == null) {
                int i2 = this.f1866Wwwwwwwwwwwwwwwwwwwwww;
                while (i < i2) {
                    j += next.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww()[i];
                    i++;
                }
            } else {
                next.Wwwwwwwwwwwwwwwwwwwwwwwwww(null);
                int i3 = this.f1866Wwwwwwwwwwwwwwwwwwwwww;
                while (i < i3) {
                    Wwwwwwwwwwwwwwwwwwwwwwwwwww(next.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().get(i));
                    Wwwwwwwwwwwwwwwwwwwwwwwwwww(next.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().get(i));
                    i++;
                }
                it.remove();
            }
        }
        this.f1860Wwwwwwwwwwwwwwww = j;
    }

    public final BufferedSink Kkkk() {
        return Okio.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(new FaultHidingSink(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.f1865Wwwwwwwwwwwwwwwwwwwww), new Function1<IOException, Unit>() { // from class: coil.disk.DiskLruCache$newJournalWriter$faultHidingSink$1
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
                DiskLruCache.this.f1857Wwwwwwwwwwwww = true;
            }
        }));
    }

    public final void Kkkkk() {
        BuildersKt__Builders_commonKt.launch$default(this.f1861Wwwwwwwwwwwwwwwww, null, null, new DiskLruCache$launchCleanup$1(this, null), 3, null);
    }

    public final boolean Kkkkkk() {
        if (this.f1859Wwwwwwwwwwwwwww >= 2000) {
            return true;
        }
        return false;
    }

    public final synchronized void Kkkkkkk() {
        try {
            if (this.f1856Wwwwwwwwwwww) {
                return;
            }
            Wwwwwwwwwwwwwwwwwwwwwwwwwww(this.f1864Wwwwwwwwwwwwwwwwwwww);
            if (Wwwwwwwwwwwwwwwwwwwwwwwww(this.f1863Wwwwwwwwwwwwwwwwwww)) {
                if (Wwwwwwwwwwwwwwwwwwwwwwwww(this.f1865Wwwwwwwwwwwwwwwwwwwww)) {
                    Wwwwwwwwwwwwwwwwwwwwwwwwwww(this.f1863Wwwwwwwwwwwwwwwwwww);
                } else {
                    Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.f1863Wwwwwwwwwwwwwwwwwww, this.f1865Wwwwwwwwwwwwwwwwwwwww);
                }
            }
            if (Wwwwwwwwwwwwwwwwwwwwwwwww(this.f1865Wwwwwwwwwwwwwwwwwwwww)) {
                try {
                    Kk();
                    Kkk();
                    this.f1856Wwwwwwwwwwww = true;
                    return;
                } catch (IOException unused) {
                    Kkkkkkkkkk();
                    this.f1855Wwwwwwwwwww = false;
                }
            }
            Illlllllllllllllllllllll();
            this.f1856Wwwwwwwwwwww = true;
        } catch (Throwable th) {
            throw th;
        }
    }

    @Nullable
    public final synchronized Snapshot Kkkkkkkk(@NotNull String str) {
        Snapshot Wwwwwwwwwwwwwwwwwwwww2;
        Kkkkkkkkkkkk();
        Illllllllllllllllllllllll(str);
        Kkkkkkk();
        Entry entry = this.f1862Wwwwwwwwwwwwwwwwww.get(str);
        if (entry != null && (Wwwwwwwwwwwwwwwwwwwww2 = entry.Wwwwwwwwwwwwwwwwwwwww()) != null) {
            this.f1859Wwwwwwwwwwwwwww++;
            BufferedSink bufferedSink = this.f1858Wwwwwwwwwwwwww;
            bufferedSink.Wwwwwwwwwwwwwwwwwwwwwwwwww("READ");
            bufferedSink.writeByte(32);
            bufferedSink.Wwwwwwwwwwwwwwwwwwwwwwwwww(str);
            bufferedSink.writeByte(10);
            if (Kkkkkk()) {
                Kkkkk();
            }
            return Wwwwwwwwwwwwwwwwwwwww2;
        }
        return null;
    }

    @Nullable
    public final synchronized Editor Kkkkkkkkk(@NotNull String str) {
        Editor editor;
        Kkkkkkkkkkkk();
        Illllllllllllllllllllllll(str);
        Kkkkkkk();
        Entry entry = this.f1862Wwwwwwwwwwwwwwwwww.get(str);
        if (entry != null) {
            editor = entry.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        } else {
            editor = null;
        }
        if (editor != null) {
            return null;
        }
        if (entry != null && entry.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww() != 0) {
            return null;
        }
        if (!this.f1854Wwwwwwwwww && !this.f1853Wwwwwwwww) {
            BufferedSink bufferedSink = this.f1858Wwwwwwwwwwwwww;
            bufferedSink.Wwwwwwwwwwwwwwwwwwwwwwwwww("DIRTY");
            bufferedSink.writeByte(32);
            bufferedSink.Wwwwwwwwwwwwwwwwwwwwwwwwww(str);
            bufferedSink.writeByte(10);
            bufferedSink.flush();
            if (this.f1857Wwwwwwwwwwwww) {
                return null;
            }
            if (entry == null) {
                entry = new Entry(str);
                this.f1862Wwwwwwwwwwwwwwwwww.put(str, entry);
            }
            Editor editor2 = new Editor(entry);
            entry.Wwwwwwwwwwwwwwwwwwwwwwwwww(editor2);
            return editor2;
        }
        Kkkkk();
        return null;
    }

    public final void Kkkkkkkkkk() {
        close();
        FileSystems.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.f1852Wwwwwwww, this.f1869Wwwwwwwwwwwwwwwwwwwwwwwww);
    }

    public final synchronized void Kkkkkkkkkkk(Editor editor, boolean z) {
        long j;
        Entry Wwwwwwwwwwwwwwwwwwwwwwwwwwww2 = editor.Wwwwwwwwwwwwwwwwwwwwwwwwwwww();
        if (Intrinsics.areEqual(Wwwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(), editor)) {
            int i = 0;
            if (z && !Wwwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwwww()) {
                int i2 = this.f1866Wwwwwwwwwwwwwwwwwwwwww;
                for (int i3 = 0; i3 < i2; i3++) {
                    if (editor.Wwwwwwwwwwwwwwwwwwwwwwwwwww()[i3] && !Wwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().get(i3))) {
                        editor.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
                        return;
                    }
                }
                int i4 = this.f1866Wwwwwwwwwwwwwwwwwwwwww;
                while (i < i4) {
                    Path path = Wwwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().get(i);
                    Path path2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().get(i);
                    if (Wwwwwwwwwwwwwwwwwwwwwwwww(path)) {
                        Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(path, path2);
                    } else {
                        FileSystems.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.f1852Wwwwwwww, Wwwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().get(i));
                    }
                    long j2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww()[i];
                    Long Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwww(path2).Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
                    if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 != null) {
                        j = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.longValue();
                    } else {
                        j = 0;
                    }
                    Wwwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww()[i] = j;
                    this.f1860Wwwwwwwwwwwwwwww = (this.f1860Wwwwwwwwwwwwwwww - j2) + j;
                    i++;
                }
            } else {
                int i5 = this.f1866Wwwwwwwwwwwwwwwwwwwwww;
                while (i < i5) {
                    Wwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().get(i));
                    i++;
                }
            }
            Wwwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwww(null);
            if (Wwwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwwww()) {
                Illlllllllllllllllllllllllll(Wwwwwwwwwwwwwwwwwwwwwwwwwwww2);
                return;
            }
            this.f1859Wwwwwwwwwwwwwww++;
            BufferedSink bufferedSink = this.f1858Wwwwwwwwwwwwww;
            if (!z && !Wwwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwwwww()) {
                this.f1862Wwwwwwwwwwwwwwwwww.remove(Wwwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
                bufferedSink.Wwwwwwwwwwwwwwwwwwwwwwwwww("REMOVE");
                bufferedSink.writeByte(32);
                bufferedSink.Wwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
                bufferedSink.writeByte(10);
                bufferedSink.flush();
                if (this.f1860Wwwwwwwwwwwwwwww <= this.f1868Wwwwwwwwwwwwwwwwwwwwwwww || Kkkkkk()) {
                    Kkkkk();
                }
                return;
            }
            Wwwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwww(true);
            bufferedSink.Wwwwwwwwwwwwwwwwwwwwwwwwww("CLEAN");
            bufferedSink.writeByte(32);
            bufferedSink.Wwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
            Wwwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwww(bufferedSink);
            bufferedSink.writeByte(10);
            bufferedSink.flush();
            if (this.f1860Wwwwwwwwwwwwwwww <= this.f1868Wwwwwwwwwwwwwwwwwwwwwwww) {
            }
            Kkkkk();
            return;
        }
        throw new IllegalStateException("Check failed.");
    }

    public final void Kkkkkkkkkkkk() {
        if (!this.f1855Wwwwwwwwwww) {
            return;
        }
        throw new IllegalStateException("cache is closed");
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public synchronized void close() {
        try {
            if (this.f1856Wwwwwwwwwwww && !this.f1855Wwwwwwwwwww) {
                for (Entry entry : (Entry[]) this.f1862Wwwwwwwwwwwwwwwwww.values().toArray(new Entry[0])) {
                    Editor Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = entry.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
                    if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 != null) {
                        Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
                    }
                }
                Illlllllllllllllllllllllll();
                CoroutineScopeKt.cancel$default(this.f1861Wwwwwwwwwwwwwwwww, null, 1, null);
                this.f1858Wwwwwwwwwwwwww.close();
                this.f1858Wwwwwwwwwwwwww = null;
                this.f1855Wwwwwwwwwww = true;
                return;
            }
            this.f1855Wwwwwwwwwww = true;
        } catch (Throwable th) {
            throw th;
        }
    }

    @Override // java.io.Flushable
    public synchronized void flush() {
        if (!this.f1856Wwwwwwwwwwww) {
            return;
        }
        Kkkkkkkkkkkk();
        Illlllllllllllllllllllllll();
        this.f1858Wwwwwwwwwwwwww.flush();
    }
}
