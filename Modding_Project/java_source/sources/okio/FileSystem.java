package okio;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.mbridge.msdk.MBridgeConstans;
import java.io.IOException;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.JvmField;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.SourceDebugExtension;
import okio.Path;
import okio.internal.ResourceFileSystem;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000J\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u0002\n\u0002\b\u000e\b&\u0018\u0000 22\u00020\u0001:\u00012B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u0015\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0007\u0010\bJ\u0019\u0010\t\u001a\u0004\u0018\u00010\u00062\u0006\u0010\u0005\u001a\u00020\u0004H&¢\u0006\u0004\b\t\u0010\bJ\u0015\u0010\u000b\u001a\u00020\n2\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u000b\u0010\fJ\u001d\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u00040\u000e2\u0006\u0010\r\u001a\u00020\u0004H&¢\u0006\u0004\b\u000f\u0010\u0010J\u001f\u0010\u0011\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u000e2\u0006\u0010\r\u001a\u00020\u0004H&¢\u0006\u0004\b\u0011\u0010\u0010J\u0017\u0010\u0014\u001a\u00020\u00132\u0006\u0010\u0012\u001a\u00020\u0004H&¢\u0006\u0004\b\u0014\u0010\u0015J+\u0010\u0018\u001a\u00020\u00132\u0006\u0010\u0012\u001a\u00020\u00042\b\b\u0002\u0010\u0016\u001a\u00020\n2\b\b\u0002\u0010\u0017\u001a\u00020\nH&¢\u0006\u0004\b\u0018\u0010\u0019J\u0015\u0010\u001a\u001a\u00020\u00132\u0006\u0010\u0012\u001a\u00020\u0004¢\u0006\u0004\b\u001a\u0010\u0015J\u0017\u0010\u001c\u001a\u00020\u001b2\u0006\u0010\u0012\u001a\u00020\u0004H&¢\u0006\u0004\b\u001c\u0010\u001dJ!\u0010\u001f\u001a\u00020\u001e2\u0006\u0010\u0012\u001a\u00020\u00042\b\b\u0002\u0010\u0016\u001a\u00020\nH&¢\u0006\u0004\b\u001f\u0010 J\u0015\u0010!\u001a\u00020\u001e2\u0006\u0010\u0012\u001a\u00020\u0004¢\u0006\u0004\b!\u0010\"J!\u0010#\u001a\u00020\u001e2\u0006\u0010\u0012\u001a\u00020\u00042\b\b\u0002\u0010\u0017\u001a\u00020\nH&¢\u0006\u0004\b#\u0010 J\u0015\u0010$\u001a\u00020\u001e2\u0006\u0010\u0012\u001a\u00020\u0004¢\u0006\u0004\b$\u0010\"J!\u0010&\u001a\u00020%2\u0006\u0010\r\u001a\u00020\u00042\b\b\u0002\u0010\u0016\u001a\u00020\nH&¢\u0006\u0004\b&\u0010'J\u0015\u0010(\u001a\u00020%2\u0006\u0010\r\u001a\u00020\u0004¢\u0006\u0004\b(\u0010)J\u001f\u0010*\u001a\u00020%2\u0006\u0010\r\u001a\u00020\u00042\b\b\u0002\u0010\u0016\u001a\u00020\n¢\u0006\u0004\b*\u0010'J\u0015\u0010+\u001a\u00020%2\u0006\u0010\r\u001a\u00020\u0004¢\u0006\u0004\b+\u0010)J\u001f\u0010.\u001a\u00020%2\u0006\u0010,\u001a\u00020\u00042\u0006\u0010-\u001a\u00020\u0004H&¢\u0006\u0004\b.\u0010/J!\u00100\u001a\u00020%2\u0006\u0010\u0005\u001a\u00020\u00042\b\b\u0002\u0010\u0017\u001a\u00020\nH&¢\u0006\u0004\b0\u0010'J\u0015\u00101\u001a\u00020%2\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b1\u0010)¨\u00063"}, d2 = {"Lokio/FileSystem;", "", "<init>", "()V", "Lokio/Path;", MBridgeConstans.DYNAMIC_VIEW_WX_PATH, "Lokio/FileMetadata;", "Wwwwwwwwwwwwwwwwwwwwww", "(Lokio/Path;)Lokio/FileMetadata;", "Wwwwwwwwwwwwwwwwwwwww", "", "Wwwwwwwwwwwwwwwwwwwwwwwww", "(Lokio/Path;)Z", "dir", "", "Wwwwwwwwwwwwwwwwwwwwwwww", "(Lokio/Path;)Ljava/util/List;", "Wwwwwwwwwwwwwwwwwwwwwww", "file", "Lokio/FileHandle;", "Wwwwwwwwwwwwwwwwwwww", "(Lokio/Path;)Lokio/FileHandle;", "mustCreate", "mustExist", "Wwwwwwwwwwwwwwwwww", "(Lokio/Path;ZZ)Lokio/FileHandle;", "Wwwwwwwwwwwwwwwwwww", "Lokio/Source;", "Wwwwwwwwwwwwwww", "(Lokio/Path;)Lokio/Source;", "Lokio/Sink;", "Wwwwwwwwwwwwwwww", "(Lokio/Path;Z)Lokio/Sink;", "Wwwwwwwwwwwwwwwww", "(Lokio/Path;)Lokio/Sink;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lokio/Path;Z)V", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lokio/Path;)V", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "source", TypedValues.AttributesType.S_TARGET, "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lokio/Path;Lokio/Path;)V", "Wwwwwwwwwwwwwwwwwwwwwwwwww", "Wwwwwwwwwwwwwwwwwwwwwwwwwww", "Companion", "okio"}, k = 1, mv = {1, 8, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nFileSystem.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FileSystem.kt\nokio/FileSystem\n+ 2 Okio.kt\nokio/Okio__OkioKt\n*L\n1#1,165:1\n52#2,21:166\n52#2,21:187\n*S KotlinDebug\n*F\n+ 1 FileSystem.kt\nokio/FileSystem\n*L\n67#1:166,21\n81#1:187,21\n*E\n"})
/* loaded from: classes7.dex */
public abstract class FileSystem {
    @NotNull
    public static final Companion Companion = new Companion(null);
    @JvmField
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final FileSystem f13166Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @JvmField
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final Path f13167Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @JvmField
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final FileSystem f13168Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003R\u0014\u0010\u0005\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b\u0005\u0010\u0006R\u0014\u0010\u0007\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b\u0007\u0010\u0006R\u0014\u0010\t\u001a\u00020\b8\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b\t\u0010\n¨\u0006\u000b"}, d2 = {"Lokio/FileSystem$Companion;", "", "<init>", "()V", "Lokio/FileSystem;", "RESOURCES", "Lokio/FileSystem;", "SYSTEM", "Lokio/Path;", "SYSTEM_TEMPORARY_DIRECTORY", "Lokio/Path;", "okio"}, k = 1, mv = {1, 8, 0}, xi = 48)
    /* loaded from: classes7.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public Companion() {
        }
    }

    static {
        FileSystem jvmSystemFileSystem;
        try {
            Class.forName("java.nio.file.Files");
            jvmSystemFileSystem = new NioSystemFileSystem();
        } catch (ClassNotFoundException unused) {
            jvmSystemFileSystem = new JvmSystemFileSystem();
        }
        f13168Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = jvmSystemFileSystem;
        f13167Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = Path.Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Path.Companion, System.getProperty("java.io.tmpdir"), false, 1, null);
        f13166Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new ResourceFileSystem(ResourceFileSystem.class.getClassLoader(), false);
    }

    @NotNull
    public abstract Source Wwwwwwwwwwwwwww(@NotNull Path path) throws IOException;

    @NotNull
    public abstract Sink Wwwwwwwwwwwwwwww(@NotNull Path path, boolean z) throws IOException;

    @NotNull
    public final Sink Wwwwwwwwwwwwwwwww(@NotNull Path path) throws IOException {
        return Wwwwwwwwwwwwwwww(path, false);
    }

    @NotNull
    public abstract FileHandle Wwwwwwwwwwwwwwwwww(@NotNull Path path, boolean z, boolean z2) throws IOException;

    @NotNull
    public final FileHandle Wwwwwwwwwwwwwwwwwww(@NotNull Path path) throws IOException {
        return Wwwwwwwwwwwwwwwwww(path, false, false);
    }

    @NotNull
    public abstract FileHandle Wwwwwwwwwwwwwwwwwwww(@NotNull Path path) throws IOException;

    @Nullable
    public abstract FileMetadata Wwwwwwwwwwwwwwwwwwwww(@NotNull Path path) throws IOException;

    @NotNull
    public final FileMetadata Wwwwwwwwwwwwwwwwwwwwww(@NotNull Path path) throws IOException {
        return okio.internal.FileSystem.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this, path);
    }

    @Nullable
    public abstract List<Path> Wwwwwwwwwwwwwwwwwwwwwww(@NotNull Path path);

    @NotNull
    public abstract List<Path> Wwwwwwwwwwwwwwwwwwwwwwww(@NotNull Path path) throws IOException;

    public final boolean Wwwwwwwwwwwwwwwwwwwwwwwww(@NotNull Path path) throws IOException {
        return okio.internal.FileSystem.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this, path);
    }

    public abstract void Wwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull Path path, boolean z) throws IOException;

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull Path path) throws IOException {
        Wwwwwwwwwwwwwwwwwwwwwwwwww(path, false);
    }

    public abstract void Wwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull Path path, boolean z) throws IOException;

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull Path path) throws IOException {
        Wwwwwwwwwwwwwwwwwwwwwwwwwwww(path, false);
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull Path path, boolean z) throws IOException {
        okio.internal.FileSystem.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this, path, z);
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull Path path) throws IOException {
        Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(path, false);
    }

    public abstract void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull Path path, @NotNull Path path2) throws IOException;

    @NotNull
    public abstract Sink Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull Path path, boolean z) throws IOException;

    @NotNull
    public final Sink Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull Path path) throws IOException {
        return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(path, false);
    }
}
