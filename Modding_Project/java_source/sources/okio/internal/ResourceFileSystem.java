package okio.internal;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.media3.extractor.text.ttml.TtmlNode;
import com.mbridge.msdk.MBridgeConstans;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.net.URI;
import java.net.URL;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.TuplesKt;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt;
import kotlinx.serialization.json.internal.AbstractJsonLexerKt;
import okio.FileHandle;
import okio.FileMetadata;
import okio.FileSystem;
import okio.Path;
import okio.Sink;
import okio.Source;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000^\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010 \n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0007\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\b\b\u0000\u0018\u0000 42\u00020\u0001:\u00015B\u0019\b\u0000\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007J\u0017\u0010\n\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\bH\u0002¢\u0006\u0004\b\n\u0010\u000bJ\u001d\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\b0\r2\u0006\u0010\f\u001a\u00020\bH\u0016¢\u0006\u0004\b\u000e\u0010\u000fJ\u001f\u0010\u0010\u001a\n\u0012\u0004\u0012\u00020\b\u0018\u00010\r2\u0006\u0010\f\u001a\u00020\bH\u0016¢\u0006\u0004\b\u0010\u0010\u000fJ\u0017\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u0011\u001a\u00020\bH\u0016¢\u0006\u0004\b\u0013\u0010\u0014J'\u0010\u0017\u001a\u00020\u00122\u0006\u0010\u0011\u001a\u00020\b2\u0006\u0010\u0015\u001a\u00020\u00042\u0006\u0010\u0016\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\u0017\u0010\u0018J\u0019\u0010\u001a\u001a\u0004\u0018\u00010\u00192\u0006\u0010\t\u001a\u00020\bH\u0016¢\u0006\u0004\b\u001a\u0010\u001bJ\u0017\u0010\u001d\u001a\u00020\u001c2\u0006\u0010\u0011\u001a\u00020\bH\u0016¢\u0006\u0004\b\u001d\u0010\u001eJ\u001f\u0010 \u001a\u00020\u001f2\u0006\u0010\u0011\u001a\u00020\b2\u0006\u0010\u0015\u001a\u00020\u0004H\u0016¢\u0006\u0004\b \u0010!J\u001f\u0010\"\u001a\u00020\u001f2\u0006\u0010\u0011\u001a\u00020\b2\u0006\u0010\u0016\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\"\u0010!J\u001f\u0010$\u001a\u00020#2\u0006\u0010\f\u001a\u00020\b2\u0006\u0010\u0015\u001a\u00020\u0004H\u0016¢\u0006\u0004\b$\u0010%J\u001f\u0010(\u001a\u00020#2\u0006\u0010&\u001a\u00020\b2\u0006\u0010'\u001a\u00020\bH\u0016¢\u0006\u0004\b(\u0010)J\u001f\u0010*\u001a\u00020#2\u0006\u0010\t\u001a\u00020\b2\u0006\u0010\u0016\u001a\u00020\u0004H\u0016¢\u0006\u0004\b*\u0010%J\u0013\u0010,\u001a\u00020+*\u00020\bH\u0002¢\u0006\u0004\b,\u0010-R-\u00103\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0001\u0012\u0004\u0012\u00020\b0.0\r8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b/\u00100\u001a\u0004\b1\u00102¨\u00066"}, d2 = {"Lokio/internal/ResourceFileSystem;", "Lokio/FileSystem;", "Ljava/lang/ClassLoader;", "classLoader", "", "indexEagerly", "<init>", "(Ljava/lang/ClassLoader;Z)V", "Lokio/Path;", MBridgeConstans.DYNAMIC_VIEW_WX_PATH, "Wwwwwwwwwwww", "(Lokio/Path;)Lokio/Path;", "dir", "", "Wwwwwwwwwwwwwwwwwwwwwwww", "(Lokio/Path;)Ljava/util/List;", "Wwwwwwwwwwwwwwwwwwwwwww", "file", "Lokio/FileHandle;", "Wwwwwwwwwwwwwwwwwwww", "(Lokio/Path;)Lokio/FileHandle;", "mustCreate", "mustExist", "Wwwwwwwwwwwwwwwwww", "(Lokio/Path;ZZ)Lokio/FileHandle;", "Lokio/FileMetadata;", "Wwwwwwwwwwwwwwwwwwwww", "(Lokio/Path;)Lokio/FileMetadata;", "Lokio/Source;", "Wwwwwwwwwwwwwww", "(Lokio/Path;)Lokio/Source;", "Lokio/Sink;", "Wwwwwwwwwwwwwwww", "(Lokio/Path;Z)Lokio/Sink;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lokio/Path;Z)V", "source", TypedValues.AttributesType.S_TARGET, "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lokio/Path;Lokio/Path;)V", "Wwwwwwwwwwwwwwwwwwwwwwwwww", "", "Wwwwwwwwww", "(Lokio/Path;)Ljava/lang/String;", "Lkotlin/Pair;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Lkotlin/Lazy;", "Wwwwwwwwwww", "()Ljava/util/List;", "roots", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Companion", "okio"}, k = 1, mv = {1, 8, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nResourceFileSystem.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ResourceFileSystem.kt\nokio/internal/ResourceFileSystem\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,212:1\n766#2:213\n857#2,2:214\n1549#2:216\n1620#2,3:217\n766#2:220\n857#2,2:221\n1549#2:223\n1620#2,3:224\n*S KotlinDebug\n*F\n+ 1 ResourceFileSystem.kt\nokio/internal/ResourceFileSystem\n*L\n72#1:213\n72#1:214,2\n73#1:216\n73#1:217,3\n88#1:220\n88#1:221,2\n89#1:223\n89#1:224,3\n*E\n"})
/* loaded from: classes7.dex */
public final class ResourceFileSystem extends FileSystem {
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Lazy f13276Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final Companion f13275Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new Companion(null);
    @Deprecated
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final Path f13274Wwwwwwwwwwwwwwwwwwwwwwwwwwwww = Path.Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Path.Companion, "/", false, 1, null);

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0007\b\u0082\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0019\u0010\u0006\u001a\u00020\u0004*\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007J#\u0010\f\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u00040\n0\t*\u00020\b¢\u0006\u0004\b\f\u0010\rJ\u001f\u0010\u000f\u001a\u0010\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u0004\u0018\u00010\n*\u00020\u000e¢\u0006\u0004\b\u000f\u0010\u0010J\u001f\u0010\u0011\u001a\u0010\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u0004\u0018\u00010\n*\u00020\u000e¢\u0006\u0004\b\u0011\u0010\u0010J\u0017\u0010\u0014\u001a\u00020\u00132\u0006\u0010\u0012\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\u0014\u0010\u0015R\u0017\u0010\u0016\u001a\u00020\u00048\u0006¢\u0006\f\n\u0004\b\u0016\u0010\u0017\u001a\u0004\b\u0018\u0010\u0019¨\u0006\u001a"}, d2 = {"Lokio/internal/ResourceFileSystem$Companion;", "", "<init>", "()V", "Lokio/Path;", TtmlNode.RUBY_BASE, "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lokio/Path;Lokio/Path;)Lokio/Path;", "Ljava/lang/ClassLoader;", "", "Lkotlin/Pair;", "Lokio/FileSystem;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Ljava/lang/ClassLoader;)Ljava/util/List;", "Ljava/net/URL;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Ljava/net/URL;)Lkotlin/Pair;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwww", MBridgeConstans.DYNAMIC_VIEW_WX_PATH, "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lokio/Path;)Z", "ROOT", "Lokio/Path;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "()Lokio/Path;", "okio"}, k = 1, mv = {1, 8, 0}, xi = 48)
    @SourceDebugExtension({"SMAP\nResourceFileSystem.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ResourceFileSystem.kt\nokio/internal/ResourceFileSystem$Companion\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,212:1\n1603#2,9:213\n1855#2:222\n1856#2:224\n1612#2:225\n1603#2,9:226\n1855#2:235\n1856#2:237\n1612#2:238\n1#3:223\n1#3:236\n*S KotlinDebug\n*F\n+ 1 ResourceFileSystem.kt\nokio/internal/ResourceFileSystem$Companion\n*L\n183#1:213,9\n183#1:222\n183#1:224\n183#1:225\n184#1:226,9\n184#1:235\n184#1:237\n184#1:238\n183#1:223\n184#1:236\n*E\n"})
    /* loaded from: classes7.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @Nullable
        public final Pair<FileSystem, Path> Wwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull URL url) {
            int lastIndexOf$default;
            String url2 = url.toString();
            if (!StringsKt.startsWith$default(url2, "jar:file:", false, 2, (Object) null) || (lastIndexOf$default = StringsKt.lastIndexOf$default((CharSequence) url2, "!", 0, false, 6, (Object) null)) == -1) {
                return null;
            }
            return TuplesKt.to(ZipFilesKt.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Path.Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Path.Companion, new File(URI.create(url2.substring(4, lastIndexOf$default))), false, 1, null), FileSystem.f13168Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, new Function1<ZipEntry, Boolean>() { // from class: okio.internal.ResourceFileSystem$Companion$toJarRoot$zip$1
                @Override // kotlin.jvm.functions.Function1
                @NotNull
                public final Boolean invoke(@NotNull ZipEntry zipEntry) {
                    return Boolean.valueOf(ResourceFileSystem.f13275Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(zipEntry.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()));
                }
            }), Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
        }

        @Nullable
        public final Pair<FileSystem, Path> Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull URL url) {
            if (!Intrinsics.areEqual(url.getProtocol(), "file")) {
                return null;
            }
            return TuplesKt.to(FileSystem.f13168Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, Path.Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Path.Companion, new File(url.toURI()), false, 1, null));
        }

        @NotNull
        public final List<Pair<FileSystem, Path>> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull ClassLoader classLoader) {
            ArrayList list = Collections.list(classLoader.getResources(""));
            ArrayList arrayList = new ArrayList();
            int size = list.size();
            int i = 0;
            int i2 = 0;
            while (i2 < size) {
                Object obj = list.get(i2);
                i2++;
                Pair<FileSystem, Path> Wwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = ResourceFileSystem.f13275Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww((URL) obj);
                if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwww2 != null) {
                    arrayList.add(Wwwwwwwwwwwwwwwwwwwwwwwwwwwww2);
                }
            }
            ArrayList list2 = Collections.list(classLoader.getResources("META-INF/MANIFEST.MF"));
            ArrayList arrayList2 = new ArrayList();
            int size2 = list2.size();
            while (i < size2) {
                Object obj2 = list2.get(i);
                i++;
                Pair<FileSystem, Path> Wwwwwwwwwwwwwwwwwwwwwwwwwwww2 = ResourceFileSystem.f13275Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwww((URL) obj2);
                if (Wwwwwwwwwwwwwwwwwwwwwwwwwwww2 != null) {
                    arrayList2.add(Wwwwwwwwwwwwwwwwwwwwwwwwwwww2);
                }
            }
            return CollectionsKt.plus((Collection) arrayList, (Iterable) arrayList2);
        }

        @NotNull
        public final Path Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull Path path, @NotNull Path path2) {
            return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwwww(StringsKt.replace$default(StringsKt.removePrefix(path.toString(), (CharSequence) path2.toString()), (char) AbstractJsonLexerKt.STRING_ESC, '/', false, 4, (Object) null));
        }

        public final boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Path path) {
            return !StringsKt.endsWith(path.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(), ".class", true);
        }

        @NotNull
        public final Path Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            return ResourceFileSystem.f13274Wwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        }

        public Companion() {
        }
    }

    public ResourceFileSystem(@NotNull final ClassLoader classLoader, boolean z) {
        this.f13276Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = LazyKt.lazy(new Function0<List<? extends Pair<? extends FileSystem, ? extends Path>>>() { // from class: okio.internal.ResourceFileSystem$roots$2
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final List<? extends Pair<? extends FileSystem, ? extends Path>> invoke() {
                return ResourceFileSystem.f13275Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(classLoader);
            }
        });
        if (z) {
            Wwwwwwwwwww().size();
        }
    }

    private final Path Wwwwwwwwwwww(Path path) {
        return f13274Wwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwww(path, true);
    }

    public final String Wwwwwwwwww(Path path) {
        return Wwwwwwwwwwww(path).Wwwwwwwwwwwwwwwwwwwwwwwww(f13274Wwwwwwwwwwwwwwwwwwwwwwwwwwwww).toString();
    }

    public final List<Pair<FileSystem, Path>> Wwwwwwwwwww() {
        return (List) this.f13276Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.getValue();
    }

    @Override // okio.FileSystem
    @NotNull
    public Source Wwwwwwwwwwwwwww(@NotNull Path path) {
        if (f13275Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(path)) {
            String Wwwwwwwwww2 = Wwwwwwwwww(path);
            for (Pair<FileSystem, Path> pair : Wwwwwwwwwww()) {
                try {
                    return pair.component1().Wwwwwwwwwwwwwww(pair.component2().Wwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwww2));
                } catch (FileNotFoundException unused) {
                }
            }
            throw new FileNotFoundException("file not found: " + path);
        }
        throw new FileNotFoundException("file not found: " + path);
    }

    @Override // okio.FileSystem
    @NotNull
    public Sink Wwwwwwwwwwwwwwww(@NotNull Path path, boolean z) {
        throw new IOException(this + " is read-only");
    }

    @Override // okio.FileSystem
    @NotNull
    public FileHandle Wwwwwwwwwwwwwwwwww(@NotNull Path path, boolean z, boolean z2) {
        throw new IOException("resources are not writable");
    }

    @Override // okio.FileSystem
    @NotNull
    public FileHandle Wwwwwwwwwwwwwwwwwwww(@NotNull Path path) {
        if (f13275Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(path)) {
            String Wwwwwwwwww2 = Wwwwwwwwww(path);
            for (Pair<FileSystem, Path> pair : Wwwwwwwwwww()) {
                try {
                    return pair.component1().Wwwwwwwwwwwwwwwwwwww(pair.component2().Wwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwww2));
                } catch (FileNotFoundException unused) {
                }
            }
            throw new FileNotFoundException("file not found: " + path);
        }
        throw new FileNotFoundException("file not found: " + path);
    }

    @Override // okio.FileSystem
    @Nullable
    public FileMetadata Wwwwwwwwwwwwwwwwwwwww(@NotNull Path path) {
        if (!f13275Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(path)) {
            return null;
        }
        String Wwwwwwwwww2 = Wwwwwwwwww(path);
        for (Pair<FileSystem, Path> pair : Wwwwwwwwwww()) {
            FileMetadata Wwwwwwwwwwwwwwwwwwwww2 = pair.component1().Wwwwwwwwwwwwwwwwwwwww(pair.component2().Wwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwww2));
            if (Wwwwwwwwwwwwwwwwwwwww2 != null) {
                return Wwwwwwwwwwwwwwwwwwwww2;
            }
        }
        return null;
    }

    @Override // okio.FileSystem
    @Nullable
    public List<Path> Wwwwwwwwwwwwwwwwwwwwwww(@NotNull Path path) {
        String Wwwwwwwwww2 = Wwwwwwwwww(path);
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        Iterator<Pair<FileSystem, Path>> it = Wwwwwwwwwww().iterator();
        boolean z = false;
        while (true) {
            ArrayList arrayList = null;
            if (!it.hasNext()) {
                break;
            }
            Pair<FileSystem, Path> next = it.next();
            Path component2 = next.component2();
            List<Path> Wwwwwwwwwwwwwwwwwwwwwww2 = next.component1().Wwwwwwwwwwwwwwwwwwwwwww(component2.Wwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwww2));
            if (Wwwwwwwwwwwwwwwwwwwwwww2 != null) {
                ArrayList arrayList2 = new ArrayList();
                for (Object obj : Wwwwwwwwwwwwwwwwwwwwwww2) {
                    if (f13275Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww((Path) obj)) {
                        arrayList2.add(obj);
                    }
                }
                ArrayList arrayList3 = new ArrayList(CollectionsKt.collectionSizeOrDefault(arrayList2, 10));
                int size = arrayList2.size();
                int i = 0;
                while (i < size) {
                    Object obj2 = arrayList2.get(i);
                    i++;
                    arrayList3.add(f13275Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww((Path) obj2, component2));
                }
                arrayList = arrayList3;
            }
            if (arrayList != null) {
                CollectionsKt.addAll(linkedHashSet, arrayList);
                z = true;
            }
        }
        if (!z) {
            return null;
        }
        return CollectionsKt.toList(linkedHashSet);
    }

    @Override // okio.FileSystem
    @NotNull
    public List<Path> Wwwwwwwwwwwwwwwwwwwwwwww(@NotNull Path path) {
        String Wwwwwwwwww2 = Wwwwwwwwww(path);
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        boolean z = false;
        for (Pair<FileSystem, Path> pair : Wwwwwwwwwww()) {
            FileSystem component1 = pair.component1();
            Path component2 = pair.component2();
            try {
                ArrayList arrayList = new ArrayList();
                for (Object obj : component1.Wwwwwwwwwwwwwwwwwwwwwwww(component2.Wwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwww2))) {
                    if (f13275Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww((Path) obj)) {
                        arrayList.add(obj);
                    }
                }
                ArrayList arrayList2 = new ArrayList(CollectionsKt.collectionSizeOrDefault(arrayList, 10));
                int size = arrayList.size();
                int i = 0;
                while (i < size) {
                    Object obj2 = arrayList.get(i);
                    i++;
                    arrayList2.add(f13275Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww((Path) obj2, component2));
                }
                CollectionsKt.addAll(linkedHashSet, arrayList2);
                z = true;
            } catch (IOException unused) {
            }
        }
        if (z) {
            return CollectionsKt.toList(linkedHashSet);
        }
        throw new FileNotFoundException("file not found: " + path);
    }

    @Override // okio.FileSystem
    public void Wwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull Path path, boolean z) {
        throw new IOException(this + " is read-only");
    }

    @Override // okio.FileSystem
    public void Wwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull Path path, boolean z) {
        throw new IOException(this + " is read-only");
    }

    @Override // okio.FileSystem
    public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull Path path, @NotNull Path path2) {
        throw new IOException(this + " is read-only");
    }

    @Override // okio.FileSystem
    @NotNull
    public Sink Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull Path path, boolean z) {
        throw new IOException(this + " is read-only");
    }
}
