package kotlin.io.path;

import androidx.media3.extractor.text.ttml.TtmlNode;
import com.mbridge.msdk.MBridgeConstans;
import java.nio.file.FileSystem;
import java.nio.file.Path;
import java.nio.file.Paths;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import org.jetbrains.annotations.NotNull;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\bÂ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0016\u0010\b\u001a\u00020\u00052\u0006\u0010\t\u001a\u00020\u00052\u0006\u0010\n\u001a\u00020\u0005R\u0016\u0010\u0004\u001a\n \u0006*\u0004\u0018\u00010\u00050\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u0016\u0010\u0007\u001a\n \u0006*\u0004\u0018\u00010\u00050\u0005X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u000b"}, d2 = {"Lkotlin/io/path/PathRelativizer;", "", "<init>", "()V", "emptyPath", "Ljava/nio/file/Path;", "kotlin.jvm.PlatformType", "parentPath", "tryRelativeTo", MBridgeConstans.DYNAMIC_VIEW_WX_PATH, TtmlNode.RUBY_BASE, "kotlin-stdlib-jdk7"}, k = 1, mv = {2, 2, 0}, xi = 48)
/* loaded from: classes6.dex */
final class PathRelativizer {
    @NotNull
    public static final PathRelativizer INSTANCE = new PathRelativizer();
    private static final Path emptyPath;
    private static final Path parentPath;

    static {
        Path path;
        Path path2;
        path = Paths.get("", new String[0]);
        emptyPath = path;
        path2 = Paths.get("..", new String[0]);
        parentPath = path2;
    }

    private PathRelativizer() {
    }

    @NotNull
    public final Path tryRelativeTo(@NotNull Path path, @NotNull Path path2) {
        Path normalize;
        Path normalize2;
        Path relativize;
        int nameCount;
        int nameCount2;
        FileSystem fileSystem;
        String separator;
        FileSystem fileSystem2;
        FileSystem fileSystem3;
        String separator2;
        Path path3;
        Path name;
        Path name2;
        normalize = path2.normalize();
        normalize2 = path.normalize();
        relativize = normalize.relativize(normalize2);
        nameCount = normalize.getNameCount();
        nameCount2 = normalize2.getNameCount();
        int min = Math.min(nameCount, nameCount2);
        for (int i = 0; i < min; i++) {
            name = normalize.getName(i);
            Path path4 = parentPath;
            if (!Intrinsics.areEqual(name, path4)) {
                break;
            }
            name2 = normalize2.getName(i);
            if (!Intrinsics.areEqual(name2, path4)) {
                throw new IllegalArgumentException("Unable to compute relative path");
            }
        }
        if (!Intrinsics.areEqual(normalize2, normalize) && Intrinsics.areEqual(normalize, emptyPath)) {
            return normalize2;
        }
        String obj = relativize.toString();
        fileSystem = relativize.getFileSystem();
        separator = fileSystem.getSeparator();
        if (StringsKt.endsWith$default(obj, separator, false, 2, (Object) null)) {
            fileSystem2 = relativize.getFileSystem();
            fileSystem3 = relativize.getFileSystem();
            separator2 = fileSystem3.getSeparator();
            path3 = fileSystem2.getPath(StringsKt.dropLast(obj, separator2.length()), new String[0]);
            return path3;
        }
        return relativize;
    }
}
