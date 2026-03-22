package okio;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.mbridge.msdk.MBridgeConstans;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000R\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\r\b&\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0001¢\u0006\u0004\b\u0003\u0010\u0004J'\u0010\n\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\b\u001a\u00020\u00072\u0006\u0010\t\u001a\u00020\u0007H\u0016¢\u0006\u0004\b\n\u0010\u000bJ\u001f\u0010\f\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\b\u001a\u00020\u0007H\u0016¢\u0006\u0004\b\f\u0010\rJ\u0019\u0010\u000f\u001a\u0004\u0018\u00010\u000e2\u0006\u0010\u0006\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u000f\u0010\u0010J\u001d\u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\u00050\u00122\u0006\u0010\u0011\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u0013\u0010\u0014J\u001f\u0010\u0015\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u00122\u0006\u0010\u0011\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u0015\u0010\u0014J\u0017\u0010\u0018\u001a\u00020\u00172\u0006\u0010\u0016\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u0018\u0010\u0019J'\u0010\u001d\u001a\u00020\u00172\u0006\u0010\u0016\u001a\u00020\u00052\u0006\u0010\u001b\u001a\u00020\u001a2\u0006\u0010\u001c\u001a\u00020\u001aH\u0016¢\u0006\u0004\b\u001d\u0010\u001eJ\u0017\u0010 \u001a\u00020\u001f2\u0006\u0010\u0016\u001a\u00020\u0005H\u0016¢\u0006\u0004\b \u0010!J\u001f\u0010#\u001a\u00020\"2\u0006\u0010\u0016\u001a\u00020\u00052\u0006\u0010\u001b\u001a\u00020\u001aH\u0016¢\u0006\u0004\b#\u0010$J\u001f\u0010%\u001a\u00020\"2\u0006\u0010\u0016\u001a\u00020\u00052\u0006\u0010\u001c\u001a\u00020\u001aH\u0016¢\u0006\u0004\b%\u0010$J\u001f\u0010'\u001a\u00020&2\u0006\u0010\u0011\u001a\u00020\u00052\u0006\u0010\u001b\u001a\u00020\u001aH\u0016¢\u0006\u0004\b'\u0010(J\u001f\u0010+\u001a\u00020&2\u0006\u0010)\u001a\u00020\u00052\u0006\u0010*\u001a\u00020\u0005H\u0016¢\u0006\u0004\b+\u0010,J\u001f\u0010-\u001a\u00020&2\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u001c\u001a\u00020\u001aH\u0016¢\u0006\u0004\b-\u0010(J\u000f\u0010.\u001a\u00020\u0007H\u0016¢\u0006\u0004\b.\u0010/R\u0017\u0010\u0002\u001a\u00020\u00018\u0007¢\u0006\f\n\u0004\b0\u00101\u001a\u0004\b\u0002\u00102¨\u00063"}, d2 = {"Lokio/ForwardingFileSystem;", "Lokio/FileSystem;", "delegate", "<init>", "(Lokio/FileSystem;)V", "Lokio/Path;", MBridgeConstans.DYNAMIC_VIEW_WX_PATH, "", "functionName", "parameterName", "Wwwwwwwwwwwwww", "(Lokio/Path;Ljava/lang/String;Ljava/lang/String;)Lokio/Path;", "Wwwwwwwwwwwww", "(Lokio/Path;Ljava/lang/String;)Lokio/Path;", "Lokio/FileMetadata;", "Wwwwwwwwwwwwwwwwwwwww", "(Lokio/Path;)Lokio/FileMetadata;", "dir", "", "Wwwwwwwwwwwwwwwwwwwwwwww", "(Lokio/Path;)Ljava/util/List;", "Wwwwwwwwwwwwwwwwwwwwwww", "file", "Lokio/FileHandle;", "Wwwwwwwwwwwwwwwwwwww", "(Lokio/Path;)Lokio/FileHandle;", "", "mustCreate", "mustExist", "Wwwwwwwwwwwwwwwwww", "(Lokio/Path;ZZ)Lokio/FileHandle;", "Lokio/Source;", "Wwwwwwwwwwwwwww", "(Lokio/Path;)Lokio/Source;", "Lokio/Sink;", "Wwwwwwwwwwwwwwww", "(Lokio/Path;Z)Lokio/Sink;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lokio/Path;Z)V", "source", TypedValues.AttributesType.S_TARGET, "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lokio/Path;Lokio/Path;)V", "Wwwwwwwwwwwwwwwwwwwwwwwwww", "toString", "()Ljava/lang/String;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Lokio/FileSystem;", "()Lokio/FileSystem;", "okio"}, k = 1, mv = {1, 8, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nForwardingFileSystem.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ForwardingFileSystem.kt\nokio/ForwardingFileSystem\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,243:1\n1620#2,3:244\n1620#2,3:247\n*S KotlinDebug\n*F\n+ 1 ForwardingFileSystem.kt\nokio/ForwardingFileSystem\n*L\n166#1:244,3\n174#1:247,3\n*E\n"})
/* loaded from: classes7.dex */
public abstract class ForwardingFileSystem extends FileSystem {
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final FileSystem f13169Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    public ForwardingFileSystem(@NotNull FileSystem fileSystem) {
        this.f13169Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = fileSystem;
    }

    @Override // okio.FileSystem
    @NotNull
    public Source Wwwwwwwwwwwwwww(@NotNull Path path) throws IOException {
        return this.f13169Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwww(Wwwwwwwwwwwwww(path, "source", "file"));
    }

    @Override // okio.FileSystem
    @NotNull
    public Sink Wwwwwwwwwwwwwwww(@NotNull Path path, boolean z) throws IOException {
        return this.f13169Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwww(Wwwwwwwwwwwwww(path, "sink", "file"), z);
    }

    @Override // okio.FileSystem
    @NotNull
    public FileHandle Wwwwwwwwwwwwwwwwww(@NotNull Path path, boolean z, boolean z2) throws IOException {
        return this.f13169Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwww(path, "openReadWrite", "file"), z, z2);
    }

    @Override // okio.FileSystem
    @NotNull
    public FileHandle Wwwwwwwwwwwwwwwwwwww(@NotNull Path path) throws IOException {
        return this.f13169Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwww(path, "openReadOnly", "file"));
    }

    @Override // okio.FileSystem
    @Nullable
    public FileMetadata Wwwwwwwwwwwwwwwwwwwww(@NotNull Path path) throws IOException {
        FileMetadata Wwwwwwwwwwwwwwwwwwwww2 = this.f13169Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwww(path, "metadataOrNull", MBridgeConstans.DYNAMIC_VIEW_WX_PATH));
        if (Wwwwwwwwwwwwwwwwwwwww2 == null) {
            return null;
        }
        if (Wwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww() == null) {
            return Wwwwwwwwwwwwwwwwwwwww2;
        }
        return FileMetadata.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwww2, false, false, Wwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(), "metadataOrNull"), null, null, null, null, null, 251, null);
    }

    @Override // okio.FileSystem
    @Nullable
    public List<Path> Wwwwwwwwwwwwwwwwwwwwwww(@NotNull Path path) {
        List<Path> Wwwwwwwwwwwwwwwwwwwwwww2 = this.f13169Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwww(path, "listOrNull", "dir"));
        if (Wwwwwwwwwwwwwwwwwwwwwww2 == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        for (Path path2 : Wwwwwwwwwwwwwwwwwwwwwww2) {
            arrayList.add(Wwwwwwwwwwwww(path2, "listOrNull"));
        }
        CollectionsKt.sort(arrayList);
        return arrayList;
    }

    @Override // okio.FileSystem
    @NotNull
    public List<Path> Wwwwwwwwwwwwwwwwwwwwwwww(@NotNull Path path) throws IOException {
        Path Wwwwwwwwwwwwww2 = Wwwwwwwwwwwwww(path, "list", "dir");
        ArrayList arrayList = new ArrayList();
        for (Path path2 : this.f13169Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwww2)) {
            arrayList.add(Wwwwwwwwwwwww(path2, "list"));
        }
        CollectionsKt.sort(arrayList);
        return arrayList;
    }

    @Override // okio.FileSystem
    public void Wwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull Path path, boolean z) throws IOException {
        this.f13169Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwww(path, "delete", MBridgeConstans.DYNAMIC_VIEW_WX_PATH), z);
    }

    @Override // okio.FileSystem
    public void Wwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull Path path, boolean z) throws IOException {
        this.f13169Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwww(path, "createDirectory", "dir"), z);
    }

    @Override // okio.FileSystem
    public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull Path path, @NotNull Path path2) throws IOException {
        this.f13169Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwww(path, "atomicMove", "source"), Wwwwwwwwwwwwww(path2, "atomicMove", TypedValues.AttributesType.S_TARGET));
    }

    @Override // okio.FileSystem
    @NotNull
    public Sink Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull Path path, boolean z) throws IOException {
        return this.f13169Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwww(path, "appendingSink", "file"), z);
    }

    @NotNull
    public String toString() {
        return Reflection.getOrCreateKotlinClass(getClass()).getSimpleName() + '(' + this.f13169Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww + ')';
    }

    @NotNull
    public Path Wwwwwwwwwwwww(@NotNull Path path, @NotNull String str) {
        return path;
    }

    @NotNull
    public Path Wwwwwwwwwwwwww(@NotNull Path path, @NotNull String str, @NotNull String str2) {
        return path;
    }
}
