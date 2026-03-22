package okio.internal;

import com.mbridge.msdk.MBridgeConstans;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.Iterator;
import kotlin.Metadata;
import kotlin.collections.ArrayDeque;
import kotlin.jvm.JvmName;
import kotlin.jvm.internal.SourceDebugExtension;
import okio.FileMetadata;
import okio.Path;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\b\u001a\u001b\u0010\u0004\u001a\u00020\u0003*\u00020\u00002\u0006\u0010\u0002\u001a\u00020\u0001H\u0000¢\u0006\u0004\b\u0004\u0010\u0005\u001a\u001b\u0010\u0007\u001a\u00020\u0006*\u00020\u00002\u0006\u0010\u0002\u001a\u00020\u0001H\u0000¢\u0006\u0004\b\u0007\u0010\b\u001a#\u0010\f\u001a\u00020\u000b*\u00020\u00002\u0006\u0010\t\u001a\u00020\u00012\u0006\u0010\n\u001a\u00020\u0006H\u0000¢\u0006\u0004\b\f\u0010\r\u001aK\u0010\u0014\u001a\u00020\u000b*\b\u0012\u0004\u0012\u00020\u00010\u000e2\u0006\u0010\u000f\u001a\u00020\u00002\f\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\u00010\u00102\u0006\u0010\u0002\u001a\u00020\u00012\u0006\u0010\u0012\u001a\u00020\u00062\u0006\u0010\u0013\u001a\u00020\u0006H\u0080@ø\u0001\u0000¢\u0006\u0004\b\u0014\u0010\u0015\u001a\u001d\u0010\u0016\u001a\u0004\u0018\u00010\u0001*\u00020\u00002\u0006\u0010\u0002\u001a\u00020\u0001H\u0000¢\u0006\u0004\b\u0016\u0010\u0017\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u0018"}, d2 = {"Lokio/FileSystem;", "Lokio/Path;", MBridgeConstans.DYNAMIC_VIEW_WX_PATH, "Lokio/FileMetadata;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lokio/FileSystem;Lokio/Path;)Lokio/FileMetadata;", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lokio/FileSystem;Lokio/Path;)Z", "dir", "mustCreate", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lokio/FileSystem;Lokio/Path;Z)V", "Lkotlin/sequences/SequenceScope;", "fileSystem", "Lkotlin/collections/ArrayDeque;", "stack", "followSymlinks", "postorder", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lkotlin/sequences/SequenceScope;Lokio/FileSystem;Lkotlin/collections/ArrayDeque;Lokio/Path;ZZLkotlin/coroutines/Continuation;)Ljava/lang/Object;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lokio/FileSystem;Lokio/Path;)Lokio/Path;", "okio"}, k = 2, mv = {1, 8, 0}, xi = 48)
@JvmName(name = "-FileSystem")
@SourceDebugExtension({"SMAP\nFileSystem.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FileSystem.kt\nokio/internal/-FileSystem\n+ 2 Okio.kt\nokio/Okio__OkioKt\n*L\n1#1,155:1\n52#2,5:156\n52#2,21:161\n60#2,10:182\n57#2,2:192\n71#2,2:194\n*S KotlinDebug\n*F\n+ 1 FileSystem.kt\nokio/internal/-FileSystem\n*L\n65#1:156,5\n66#1:161,21\n65#1:182,10\n65#1:192,2\n65#1:194,2\n*E\n"})
/* renamed from: okio.internal.-FileSystem  reason: invalid class name */
/* loaded from: classes7.dex */
public final class FileSystem {
    @Nullable
    public static final Path Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull okio.FileSystem fileSystem, @NotNull Path path) throws IOException {
        Path Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = fileSystem.Wwwwwwwwwwwwwwwwwwwwww(path).Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 == null) {
            return null;
        }
        return path.Wwwwwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2);
    }

    @NotNull
    public static final FileMetadata Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull okio.FileSystem fileSystem, @NotNull Path path) throws IOException {
        FileMetadata Wwwwwwwwwwwwwwwwwwwww2 = fileSystem.Wwwwwwwwwwwwwwwwwwwww(path);
        if (Wwwwwwwwwwwwwwwwwwwww2 != null) {
            return Wwwwwwwwwwwwwwwwwwwww2;
        }
        throw new FileNotFoundException("no such file: " + path);
    }

    public static final boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull okio.FileSystem fileSystem, @NotNull Path path) throws IOException {
        if (fileSystem.Wwwwwwwwwwwwwwwwwwwww(path) != null) {
            return true;
        }
        return false;
    }

    public static final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull okio.FileSystem fileSystem, @NotNull Path path, boolean z) throws IOException {
        ArrayDeque arrayDeque = new ArrayDeque();
        for (Path path2 = path; path2 != null && !fileSystem.Wwwwwwwwwwwwwwwwwwwwwwwww(path2); path2 = path2.Wwwwwwwwwwwwwwwwwwwwwwwwww()) {
            arrayDeque.addFirst(path2);
        }
        if (z && arrayDeque.isEmpty()) {
            throw new IOException(path + " already exist.");
        }
        Iterator<E> it = arrayDeque.iterator();
        while (it.hasNext()) {
            fileSystem.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww((Path) it.next());
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:26:0x009d, code lost:
        if (r15.yield(r1, r4) == r5) goto L31;
     */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x00e4, code lost:
        if (r0 != false) goto L67;
     */
    /* JADX WARN: Code restructure failed: missing block: B:45:0x00e6, code lost:
        if (r7 != 0) goto L38;
     */
    /* JADX WARN: Code restructure failed: missing block: B:46:0x00e8, code lost:
        r6.addLast(r12);
     */
    /* JADX WARN: Code restructure failed: missing block: B:47:0x00eb, code lost:
        r3 = r3.iterator();
        r3 = r1;
        r1 = r2;
        r2 = r3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:59:0x0136, code lost:
        r0 = th;
     */
    /* JADX WARN: Code restructure failed: missing block: B:60:0x0137, code lost:
        r7 = r6;
     */
    /* JADX WARN: Code restructure failed: missing block: B:67:0x015d, code lost:
        if (r11.yield(r1, r4) == r5) goto L31;
     */
    /* JADX WARN: Removed duplicated region for block: B:10:0x002c  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0080  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x00b0  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x00bd  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x00f9 A[Catch: all -> 0x0136, TRY_LEAVE, TryCatch #2 {all -> 0x0136, blocks: (B:48:0x00f3, B:50:0x00f9, B:47:0x00eb), top: B:77:0x00eb }] */
    /* JADX WARN: Removed duplicated region for block: B:61:0x0139  */
    /* JADX WARN: Removed duplicated region for block: B:66:0x014c  */
    /* JADX WARN: Removed duplicated region for block: B:71:0x0163  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:56:0x012e -> B:19:0x005e). Please submit an issue!!! */
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Object Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@org.jetbrains.annotations.NotNull kotlin.sequences.SequenceScope<? super okio.Path> r15, @org.jetbrains.annotations.NotNull okio.FileSystem r16, @org.jetbrains.annotations.NotNull kotlin.collections.ArrayDeque<okio.Path> r17, @org.jetbrains.annotations.NotNull okio.Path r18, boolean r19, boolean r20, @org.jetbrains.annotations.NotNull kotlin.coroutines.Continuation<? super kotlin.Unit> r21) {
        /*
            Method dump skipped, instructions count: 358
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: okio.internal.FileSystem.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(kotlin.sequences.SequenceScope, okio.FileSystem, kotlin.collections.ArrayDeque, okio.Path, boolean, boolean, kotlin.coroutines.Continuation):java.lang.Object");
    }
}
