package okio;

import java.util.ArrayList;
import java.util.Map;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.reflect.KClass;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0004\n\u0002\u0010$\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u0015\u0018\u00002\u00020\u0001Bq\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0002\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0007\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u0007\u0012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u0007\u0012\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u0007\u0012\u0018\b\u0002\u0010\u000e\u001a\u0012\u0012\b\u0012\u0006\u0012\u0002\b\u00030\r\u0012\u0004\u0012\u00020\u00010\f¢\u0006\u0004\b\u000f\u0010\u0010Jw\u0010\u0011\u001a\u00020\u00002\b\b\u0002\u0010\u0003\u001a\u00020\u00022\b\b\u0002\u0010\u0004\u001a\u00020\u00022\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u00072\u0018\b\u0002\u0010\u000e\u001a\u0012\u0012\b\u0012\u0006\u0012\u0002\b\u00030\r\u0012\u0004\u0012\u00020\u00010\f¢\u0006\u0004\b\u0011\u0010\u0012J\u000f\u0010\u0014\u001a\u00020\u0013H\u0016¢\u0006\u0004\b\u0014\u0010\u0015R\u0017\u0010\u0003\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0011\u0010\u0016\u001a\u0004\b\u0017\u0010\u0018R\u0017\u0010\u0004\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0019\u0010\u0016\u001a\u0004\b\u001a\u0010\u0018R\u0019\u0010\u0006\u001a\u0004\u0018\u00010\u00058\u0006¢\u0006\f\n\u0004\b\u001b\u0010\u001c\u001a\u0004\b\u001d\u0010\u001eR\u0019\u0010\b\u001a\u0004\u0018\u00010\u00078\u0006¢\u0006\f\n\u0004\b\u001f\u0010 \u001a\u0004\b\u001f\u0010!R\u0019\u0010\t\u001a\u0004\u0018\u00010\u00078\u0006¢\u0006\f\n\u0004\b\u001d\u0010 \u001a\u0004\b\"\u0010!R\u0019\u0010\n\u001a\u0004\u0018\u00010\u00078\u0006¢\u0006\f\n\u0004\b\u001a\u0010 \u001a\u0004\b\u001b\u0010!R\u0019\u0010\u000b\u001a\u0004\u0018\u00010\u00078\u0006¢\u0006\f\n\u0004\b\u0017\u0010 \u001a\u0004\b#\u0010!R'\u0010\u000e\u001a\u0012\u0012\b\u0012\u0006\u0012\u0002\b\u00030\r\u0012\u0004\u0012\u00020\u00010\f8\u0006¢\u0006\f\n\u0004\b$\u0010%\u001a\u0004\b&\u0010'¨\u0006("}, d2 = {"Lokio/FileMetadata;", "", "", "isRegularFile", "isDirectory", "Lokio/Path;", "symlinkTarget", "", "size", "createdAtMillis", "lastModifiedAtMillis", "lastAccessedAtMillis", "", "Lkotlin/reflect/KClass;", "extras", "<init>", "(ZZLokio/Path;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/util/Map;)V", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(ZZLokio/Path;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/util/Map;)Lokio/FileMetadata;", "", "toString", "()Ljava/lang/String;", "Z", "Wwwwwwwwwwwwwwwwwwwwwwwwwwww", "()Z", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Lokio/Path;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "()Lokio/Path;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Ljava/lang/Long;", "()Ljava/lang/Long;", "getCreatedAtMillis", "getLastAccessedAtMillis", "Wwwwwwwwwwwwwwwwwwwwwwwwwww", "Ljava/util/Map;", "getExtras", "()Ljava/util/Map;", "okio"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes7.dex */
public final class FileMetadata {
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Map<KClass<?>, Object> f13158Wwwwwwwwwwwwwwwwwwwwwwwwwww;
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Long f13159Wwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Long f13160Wwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Long f13161Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Long f13162Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Path f13163Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final boolean f13164Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final boolean f13165Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    public FileMetadata() {
        this(false, false, null, null, null, null, null, null, 255, null);
    }

    public static /* synthetic */ FileMetadata Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(FileMetadata fileMetadata, boolean z, boolean z2, Path path, Long l, Long l2, Long l3, Long l4, Map map, int i, Object obj) {
        if ((i & 1) != 0) {
            z = fileMetadata.f13165Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        }
        if ((i & 2) != 0) {
            z2 = fileMetadata.f13164Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        }
        if ((i & 4) != 0) {
            path = fileMetadata.f13163Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        }
        if ((i & 8) != 0) {
            l = fileMetadata.f13162Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        }
        if ((i & 16) != 0) {
            l2 = fileMetadata.f13161Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        }
        if ((i & 32) != 0) {
            l3 = fileMetadata.f13160Wwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        }
        if ((i & 64) != 0) {
            l4 = fileMetadata.f13159Wwwwwwwwwwwwwwwwwwwwwwwwwwww;
        }
        Map<KClass<?>, Object> map2 = map;
        if ((i & 128) != 0) {
            map2 = fileMetadata.f13158Wwwwwwwwwwwwwwwwwwwwwwwwwww;
        }
        Long l5 = l4;
        Map map3 = map2;
        Long l6 = l2;
        Long l7 = l3;
        return fileMetadata.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(z, z2, path, l, l6, l7, l5, map3);
    }

    public final boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f13165Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    public final boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f13164Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    @Nullable
    public final Path Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f13163Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    @Nullable
    public final Long Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f13162Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    @Nullable
    public final Long Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f13160Wwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    @NotNull
    public final FileMetadata Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(boolean z, boolean z2, @Nullable Path path, @Nullable Long l, @Nullable Long l2, @Nullable Long l3, @Nullable Long l4, @NotNull Map<KClass<?>, ? extends Object> map) {
        return new FileMetadata(z, z2, path, l, l2, l3, l4, map);
    }

    @NotNull
    public String toString() {
        ArrayList arrayList = new ArrayList();
        if (this.f13165Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww) {
            arrayList.add("isRegularFile");
        }
        if (this.f13164Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww) {
            arrayList.add("isDirectory");
        }
        if (this.f13162Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww != null) {
            arrayList.add("byteCount=" + this.f13162Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
        }
        if (this.f13161Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww != null) {
            arrayList.add("createdAt=" + this.f13161Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
        }
        if (this.f13160Wwwwwwwwwwwwwwwwwwwwwwwwwwwww != null) {
            arrayList.add("lastModifiedAt=" + this.f13160Wwwwwwwwwwwwwwwwwwwwwwwwwwwww);
        }
        if (this.f13159Wwwwwwwwwwwwwwwwwwwwwwwwwwww != null) {
            arrayList.add("lastAccessedAt=" + this.f13159Wwwwwwwwwwwwwwwwwwwwwwwwwwww);
        }
        if (!this.f13158Wwwwwwwwwwwwwwwwwwwwwwwwwww.isEmpty()) {
            arrayList.add("extras=" + this.f13158Wwwwwwwwwwwwwwwwwwwwwwwwwww);
        }
        return CollectionsKt.joinToString$default(arrayList, ", ", "FileMetadata(", ")", 0, null, null, 56, null);
    }

    public FileMetadata(boolean z, boolean z2, @Nullable Path path, @Nullable Long l, @Nullable Long l2, @Nullable Long l3, @Nullable Long l4, @NotNull Map<KClass<?>, ? extends Object> map) {
        this.f13165Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = z;
        this.f13164Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = z2;
        this.f13163Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = path;
        this.f13162Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = l;
        this.f13161Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww = l2;
        this.f13160Wwwwwwwwwwwwwwwwwwwwwwwwwwwww = l3;
        this.f13159Wwwwwwwwwwwwwwwwwwwwwwwwwwww = l4;
        this.f13158Wwwwwwwwwwwwwwwwwwwwwwwwwww = MapsKt.toMap(map);
    }

    public /* synthetic */ FileMetadata(boolean z, boolean z2, Path path, Long l, Long l2, Long l3, Long l4, Map map, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? false : z, (i & 2) != 0 ? false : z2, (i & 4) != 0 ? null : path, (i & 8) != 0 ? null : l, (i & 16) != 0 ? null : l2, (i & 32) != 0 ? null : l3, (i & 64) != 0 ? null : l4, (i & 128) != 0 ? MapsKt.emptyMap() : map);
    }
}
