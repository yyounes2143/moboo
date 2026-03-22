package okio;

import java.io.File;
import java.nio.file.Paths;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.JvmField;
import kotlin.jvm.JvmName;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000P\n\u0002\u0018\u0002\n\u0002\u0010\u000f\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0000\n\u0002\b\u000b\n\u0002\u0010 \n\u0002\b\u0006\n\u0002\u0010\f\n\u0002\b\u000b\u0018\u0000 :2\b\u0012\u0004\u0012\u00020\u00000\u0001:\u0001:B\u0011\b\u0000\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005J\u0018\u0010\b\u001a\u00020\u00002\u0006\u0010\u0007\u001a\u00020\u0006H\u0087\u0002¢\u0006\u0004\b\b\u0010\tJ\u0018\u0010\n\u001a\u00020\u00002\u0006\u0010\u0007\u001a\u00020\u0000H\u0087\u0002¢\u0006\u0004\b\n\u0010\u000bJ\u001f\u0010\u000e\u001a\u00020\u00002\u0006\u0010\u0007\u001a\u00020\u00002\b\b\u0002\u0010\r\u001a\u00020\f¢\u0006\u0004\b\u000e\u0010\u000fJ\u0015\u0010\u0011\u001a\u00020\u00002\u0006\u0010\u0010\u001a\u00020\u0000¢\u0006\u0004\b\u0011\u0010\u000bJ\r\u0010\u0012\u001a\u00020\u0000¢\u0006\u0004\b\u0012\u0010\u0013J\r\u0010\u0015\u001a\u00020\u0014¢\u0006\u0004\b\u0015\u0010\u0016J\r\u0010\u0018\u001a\u00020\u0017¢\u0006\u0004\b\u0018\u0010\u0019J\u0018\u0010\u001b\u001a\u00020\u001a2\u0006\u0010\u0010\u001a\u00020\u0000H\u0096\u0002¢\u0006\u0004\b\u001b\u0010\u001cJ\u001a\u0010\u001e\u001a\u00020\f2\b\u0010\u0010\u001a\u0004\u0018\u00010\u001dH\u0096\u0002¢\u0006\u0004\b\u001e\u0010\u001fJ\u000f\u0010 \u001a\u00020\u001aH\u0016¢\u0006\u0004\b \u0010!J\u000f\u0010\"\u001a\u00020\u0006H\u0016¢\u0006\u0004\b\"\u0010#R\u001a\u0010\u0003\u001a\u00020\u00028\u0000X\u0080\u0004¢\u0006\f\n\u0004\b\u0011\u0010$\u001a\u0004\b%\u0010&R\u0013\u0010(\u001a\u0004\u0018\u00010\u00008F¢\u0006\u0006\u001a\u0004\b'\u0010\u0013R\u0017\u0010,\u001a\b\u0012\u0004\u0012\u00020\u00020)8F¢\u0006\u0006\u001a\u0004\b*\u0010+R\u0011\u0010/\u001a\u00020\f8F¢\u0006\u0006\u001a\u0004\b-\u0010.R\u0013\u00103\u001a\u0004\u0018\u0001008G¢\u0006\u0006\u001a\u0004\b1\u00102R\u0011\u00105\u001a\u00020\u00028G¢\u0006\u0006\u001a\u0004\b4\u0010&R\u0011\u00107\u001a\u00020\u00068G¢\u0006\u0006\u001a\u0004\b6\u0010#R\u0013\u00109\u001a\u0004\u0018\u00010\u00008G¢\u0006\u0006\u001a\u0004\b8\u0010\u0013¨\u0006;"}, d2 = {"Lokio/Path;", "", "Lokio/ByteString;", "bytes", "<init>", "(Lokio/ByteString;)V", "", "child", "Wwwwwwwwwwwwwwwwwwwwwwww", "(Ljava/lang/String;)Lokio/Path;", "Wwwwwwwwwwwwwwwwwwwwwww", "(Lokio/Path;)Lokio/Path;", "", "normalize", "Wwwwwwwwwwwwwwwwwwwwww", "(Lokio/Path;Z)Lokio/Path;", "other", "Wwwwwwwwwwwwwwwwwwwwwwwww", "Wwwwwwwwwwwwwwwwwwwwwwwwwww", "()Lokio/Path;", "Ljava/io/File;", "Wwwwwwwwwwwwwwwwwwwww", "()Ljava/io/File;", "Ljava/nio/file/Path;", "Wwwwwwwwwwwwwwwwwwww", "()Ljava/nio/file/Path;", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lokio/Path;)I", "", "equals", "(Ljava/lang/Object;)Z", "hashCode", "()I", "toString", "()Ljava/lang/String;", "Lokio/ByteString;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "()Lokio/ByteString;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "root", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "()Ljava/util/List;", "segmentsBytes", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "()Z", "isAbsolute", "", "Wwwwwwwwwwwwwwwwwww", "()Ljava/lang/Character;", "volumeLetter", "Wwwwwwwwwwwwwwwwwwwwwwwwwwww", "nameBytes", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwww", "name", "Wwwwwwwwwwwwwwwwwwwwwwwwww", "parent", "Companion", "okio"}, k = 1, mv = {1, 8, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nPath.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Path.kt\nokio/Path\n+ 2 Path.kt\nokio/internal/-Path\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,132:1\n45#2,3:133\n53#2,28:136\n59#2,22:168\n112#2:190\n117#2:191\n122#2,6:192\n139#2,5:198\n149#2:203\n154#2,25:204\n194#2:229\n199#2,11:230\n204#2,6:241\n199#2,11:247\n204#2,6:258\n228#2,36:264\n268#2:300\n282#2:301\n287#2:302\n292#2:303\n297#2:304\n1549#3:164\n1620#3,3:165\n*S KotlinDebug\n*F\n+ 1 Path.kt\nokio/Path\n*L\n44#1:133,3\n47#1:136,28\n50#1:168,22\n53#1:190\n56#1:191\n60#1:192,6\n64#1:198,5\n68#1:203\n72#1:204,25\n75#1:229\n78#1:230,11\n81#1:241,6\n87#1:247,11\n90#1:258,6\n95#1:264,36\n97#1:300\n104#1:301\n106#1:302\n108#1:303\n110#1:304\n47#1:164\n47#1:165,3\n*E\n"})
/* loaded from: classes7.dex */
public final class Path implements Comparable<Path> {
    @NotNull
    public static final Companion Companion = new Companion(null);
    @JvmField
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final String f13200Wwwwwwwwwwwwwwwwwwwwwwww = File.separator;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final ByteString f13201Wwwwwwwwwwwwwwwwwwwwwwwww;

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u001d\u0010\b\u001a\u00020\u0007*\u00020\u00042\b\b\u0002\u0010\u0006\u001a\u00020\u0005H\u0007¢\u0006\u0004\b\b\u0010\tJ\u001d\u0010\u000b\u001a\u00020\u0007*\u00020\n2\b\b\u0002\u0010\u0006\u001a\u00020\u0005H\u0007¢\u0006\u0004\b\u000b\u0010\fJ\u001d\u0010\u000e\u001a\u00020\u0007*\u00020\r2\b\b\u0002\u0010\u0006\u001a\u00020\u0005H\u0007¢\u0006\u0004\b\u000e\u0010\u000fR\u0014\u0010\u0010\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b\u0010\u0010\u0011¨\u0006\u0012"}, d2 = {"Lokio/Path$Companion;", "", "<init>", "()V", "", "", "normalize", "Lokio/Path;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Ljava/lang/String;Z)Lokio/Path;", "Ljava/io/File;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Ljava/io/File;Z)Lokio/Path;", "Ljava/nio/file/Path;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Ljava/nio/file/Path;Z)Lokio/Path;", "DIRECTORY_SEPARATOR", "Ljava/lang/String;", "okio"}, k = 1, mv = {1, 8, 0}, xi = 48)
    /* loaded from: classes7.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public static /* synthetic */ Path Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(Companion companion, java.nio.file.Path path, boolean z, int i, Object obj) {
            if ((i & 1) != 0) {
                z = false;
            }
            return companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(path, z);
        }

        public static /* synthetic */ Path Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Companion companion, String str, boolean z, int i, Object obj) {
            if ((i & 1) != 0) {
                z = false;
            }
            return companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(str, z);
        }

        public static /* synthetic */ Path Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Companion companion, File file, boolean z, int i, Object obj) {
            if ((i & 1) != 0) {
                z = false;
            }
            return companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(file, z);
        }

        @JvmStatic
        @JvmName(name = "get")
        @NotNull
        @JvmOverloads
        public final Path Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull java.nio.file.Path path, boolean z) {
            return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(path.toString(), z);
        }

        @JvmStatic
        @JvmName(name = "get")
        @NotNull
        @JvmOverloads
        public final Path Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull String str, boolean z) {
            return okio.internal.Path.Wwwwwwwwwwwwwwwwwwwwwwww(str, z);
        }

        @JvmStatic
        @JvmName(name = "get")
        @NotNull
        @JvmOverloads
        public final Path Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull File file, boolean z) {
            return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(file.toString(), z);
        }

        public Companion() {
        }
    }

    public Path(@NotNull ByteString byteString) {
        this.f13201Wwwwwwwwwwwwwwwwwwwwwwwww = byteString;
    }

    @JvmName(name = "volumeLetter")
    @Nullable
    public final Character Wwwwwwwwwwwwwwwwwww() {
        if (ByteString.indexOf$default(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(), okio.internal.Path.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(), 0, 2, (Object) null) != -1 || Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().size() < 2 || Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().getByte(1) != 58) {
            return null;
        }
        char c = (char) Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().getByte(0);
        if (('a' > c || c >= '{') && ('A' > c || c >= '[')) {
            return null;
        }
        return Character.valueOf(c);
    }

    @NotNull
    public final java.nio.file.Path Wwwwwwwwwwwwwwwwwwww() {
        java.nio.file.Path path;
        path = Paths.get(toString(), new String[0]);
        return path;
    }

    @NotNull
    public final File Wwwwwwwwwwwwwwwwwwwww() {
        return new File(toString());
    }

    @NotNull
    public final Path Wwwwwwwwwwwwwwwwwwwwww(@NotNull Path path, boolean z) {
        return okio.internal.Path.Wwwwwwwwwwwwwwwwwwwwwwwww(this, path, z);
    }

    @JvmName(name = "resolve")
    @NotNull
    public final Path Wwwwwwwwwwwwwwwwwwwwwww(@NotNull Path path) {
        return okio.internal.Path.Wwwwwwwwwwwwwwwwwwwwwwwww(this, path, false);
    }

    @JvmName(name = "resolve")
    @NotNull
    public final Path Wwwwwwwwwwwwwwwwwwwwwwww(@NotNull String str) {
        return okio.internal.Path.Wwwwwwwwwwwwwwwwwwwwwwwww(this, okio.internal.Path.Wwwwwwwwwwwwwwwwww(new Buffer().Wwwwwwwwwwwwwwwwwwwwwwwwww(str), false), false);
    }

    @NotNull
    public final Path Wwwwwwwwwwwwwwwwwwwwwwwww(@NotNull Path path) {
        if (Intrinsics.areEqual(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(), path.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww())) {
            List<ByteString> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
            List<ByteString> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3 = path.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
            int min = Math.min(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.size(), Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3.size());
            int i = 0;
            while (i < min && Intrinsics.areEqual(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.get(i), Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3.get(i))) {
                i++;
            }
            if (i == min && Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().size() == path.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().size()) {
                return Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Companion, ".", false, 1, null);
            }
            if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3.subList(i, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3.size()).indexOf(okio.internal.Path.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()) == -1) {
                Buffer buffer = new Buffer();
                ByteString Wwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = okio.internal.Path.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(path);
                if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwww2 == null && (Wwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = okio.internal.Path.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(this)) == null) {
                    Wwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = okio.internal.Path.Wwwwwwwwwwwwwwwwwwwwwwwwww(f13200Wwwwwwwwwwwwwwwwwwwwwwww);
                }
                int size = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3.size();
                for (int i2 = i; i2 < size; i2++) {
                    buffer.Wwwww(okio.internal.Path.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
                    buffer.Wwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwww2);
                }
                int size2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.size();
                while (i < size2) {
                    buffer.Wwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.get(i));
                    buffer.Wwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwww2);
                    i++;
                }
                return okio.internal.Path.Wwwwwwwwwwwwwwwwww(buffer, false);
            }
            throw new IllegalArgumentException(("Impossible relative path to resolve: " + this + " and " + path).toString());
        }
        throw new IllegalArgumentException(("Paths of different roots cannot be relative to each other: " + this + " and " + path).toString());
    }

    @JvmName(name = "parent")
    @Nullable
    public final Path Wwwwwwwwwwwwwwwwwwwwwwwwww() {
        if (Intrinsics.areEqual(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(), okio.internal.Path.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()) || Intrinsics.areEqual(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(), okio.internal.Path.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww()) || Intrinsics.areEqual(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(), okio.internal.Path.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()) || okio.internal.Path.Wwwwwwwwwwwwwwwwwwwwwwwwwwww(this)) {
            return null;
        }
        int Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = okio.internal.Path.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this);
        if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 == 2 && Wwwwwwwwwwwwwwwwwww() != null) {
            if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().size() == 3) {
                return null;
            }
            return new Path(ByteString.substring$default(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(), 0, 3, 1, null));
        } else if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 == 1 && Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().startsWith(okio.internal.Path.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww())) {
            return null;
        } else {
            if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 == -1 && Wwwwwwwwwwwwwwwwwww() != null) {
                if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().size() == 2) {
                    return null;
                }
                return new Path(ByteString.substring$default(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(), 0, 2, 1, null));
            } else if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 == -1) {
                return new Path(okio.internal.Path.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
            } else {
                if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 == 0) {
                    return new Path(ByteString.substring$default(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(), 0, 1, 1, null));
                }
                return new Path(ByteString.substring$default(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(), 0, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2, 1, null));
            }
        }
    }

    @NotNull
    public final Path Wwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(toString(), true);
    }

    @JvmName(name = "nameBytes")
    @NotNull
    public final ByteString Wwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        int Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = okio.internal.Path.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this);
        if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 != -1) {
            return ByteString.substring$default(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(), Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 + 1, 0, 2, null);
        }
        if (Wwwwwwwwwwwwwwwwwww() != null && Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().size() == 2) {
            return ByteString.EMPTY;
        }
        return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
    }

    @JvmName(name = "name")
    @NotNull
    public final String Wwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return Wwwwwwwwwwwwwwwwwwwwwwwwwwww().utf8();
    }

    public final boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        if (okio.internal.Path.Wwwwwwwwwwwwwwwwwwwwwwwwwww(this) != -1) {
            return true;
        }
        return false;
    }

    @NotNull
    public final List<ByteString> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        ArrayList arrayList = new ArrayList();
        int Wwwwwwwwwwwwwwwwwwwwwwwwwww2 = okio.internal.Path.Wwwwwwwwwwwwwwwwwwwwwwwwwww(this);
        if (Wwwwwwwwwwwwwwwwwwwwwwwwwww2 == -1) {
            Wwwwwwwwwwwwwwwwwwwwwwwwwww2 = 0;
        } else if (Wwwwwwwwwwwwwwwwwwwwwwwwwww2 < Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().size() && Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().getByte(Wwwwwwwwwwwwwwwwwwwwwwwwwww2) == 92) {
            Wwwwwwwwwwwwwwwwwwwwwwwwwww2++;
        }
        int size = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().size();
        int i = Wwwwwwwwwwwwwwwwwwwwwwwwwww2;
        while (Wwwwwwwwwwwwwwwwwwwwwwwwwww2 < size) {
            if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().getByte(Wwwwwwwwwwwwwwwwwwwwwwwwwww2) == 47 || Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().getByte(Wwwwwwwwwwwwwwwwwwwwwwwwwww2) == 92) {
                arrayList.add(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().substring(i, Wwwwwwwwwwwwwwwwwwwwwwwwwww2));
                i = Wwwwwwwwwwwwwwwwwwwwwwwwwww2 + 1;
            }
            Wwwwwwwwwwwwwwwwwwwwwwwwwww2++;
        }
        if (i < Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().size()) {
            arrayList.add(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().substring(i, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().size()));
        }
        return arrayList;
    }

    @Nullable
    public final Path Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        int Wwwwwwwwwwwwwwwwwwwwwwwwwww2 = okio.internal.Path.Wwwwwwwwwwwwwwwwwwwwwwwwwww(this);
        if (Wwwwwwwwwwwwwwwwwwwwwwwwwww2 == -1) {
            return null;
        }
        return new Path(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().substring(0, Wwwwwwwwwwwwwwwwwwwwwwwwwww2));
    }

    @NotNull
    public final ByteString Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f13201Wwwwwwwwwwwwwwwwwwwwwwwww;
    }

    @Override // java.lang.Comparable
    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww */
    public int compareTo(@NotNull Path path) {
        return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().compareTo(path.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
    }

    public boolean equals(@Nullable Object obj) {
        if ((obj instanceof Path) && Intrinsics.areEqual(((Path) obj).Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(), Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww())) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().hashCode();
    }

    @NotNull
    public String toString() {
        return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().utf8();
    }
}
