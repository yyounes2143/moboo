package okio.internal;

import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.JvmName;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import okio.Buffer;
import okio.ByteString;
import org.jetbrains.annotations.NotNull;
/* compiled from: Proguard */
@Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0006\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0005\n\u0002\b\u001b\u001a\u0013\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u0002¢\u0006\u0004\b\u0002\u0010\u0003\u001a\u0013\u0010\u0005\u001a\u00020\u0004*\u00020\u0000H\u0002¢\u0006\u0004\b\u0005\u0010\u0006\u001a#\u0010\t\u001a\u00020\u0000*\u00020\u00002\u0006\u0010\u0007\u001a\u00020\u00002\u0006\u0010\b\u001a\u00020\u0004H\u0000¢\u0006\u0004\b\t\u0010\n\u001a\u001b\u0010\f\u001a\u00020\u0000*\u00020\u000b2\u0006\u0010\b\u001a\u00020\u0004H\u0000¢\u0006\u0004\b\f\u0010\r\u001a\u001b\u0010\u000f\u001a\u00020\u0000*\u00020\u000e2\u0006\u0010\b\u001a\u00020\u0004H\u0000¢\u0006\u0004\b\u000f\u0010\u0010\u001a\u0013\u0010\u0012\u001a\u00020\u0011*\u00020\u000bH\u0002¢\u0006\u0004\b\u0012\u0010\u0013\u001a\u0013\u0010\u0015\u001a\u00020\u0011*\u00020\u0014H\u0002¢\u0006\u0004\b\u0015\u0010\u0016\u001a\u001b\u0010\u0018\u001a\u00020\u0004*\u00020\u000e2\u0006\u0010\u0017\u001a\u00020\u0011H\u0002¢\u0006\u0004\b\u0018\u0010\u0019\"\u001a\u0010\u001e\u001a\u00020\u00118\u0002X\u0083\u0004¢\u0006\f\n\u0004\b\u001a\u0010\u001b\u0012\u0004\b\u001c\u0010\u001d\"\u001a\u0010!\u001a\u00020\u00118\u0002X\u0083\u0004¢\u0006\f\n\u0004\b\u001f\u0010\u001b\u0012\u0004\b \u0010\u001d\"\u001a\u0010$\u001a\u00020\u00118\u0002X\u0083\u0004¢\u0006\f\n\u0004\b\"\u0010\u001b\u0012\u0004\b#\u0010\u001d\"\u001a\u0010'\u001a\u00020\u00118\u0002X\u0083\u0004¢\u0006\f\n\u0004\b%\u0010\u001b\u0012\u0004\b&\u0010\u001d\"\u001a\u0010*\u001a\u00020\u00118\u0002X\u0083\u0004¢\u0006\f\n\u0004\b(\u0010\u001b\u0012\u0004\b)\u0010\u001d\"\u0018\u0010,\u001a\u00020\u0001*\u00020\u00008BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b+\u0010\u0003\"\u001a\u0010\u0017\u001a\u0004\u0018\u00010\u0011*\u00020\u00008BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b-\u0010.¨\u0006/"}, d2 = {"Lokio/Path;", "", "Wwwwwwwwwwwwwwwwwwww", "(Lokio/Path;)I", "", "Wwwwwwwwwwwwwwwwwwwww", "(Lokio/Path;)Z", "child", "normalize", "Wwwwwwwwwwwwwwwwwwwwwwwww", "(Lokio/Path;Lokio/Path;Z)Lokio/Path;", "", "Wwwwwwwwwwwwwwwwwwwwwwww", "(Ljava/lang/String;Z)Lokio/Path;", "Lokio/Buffer;", "Wwwwwwwwwwwwwwwwww", "(Lokio/Buffer;Z)Lokio/Path;", "Lokio/ByteString;", "Wwwwwwwwwwwwwwww", "(Ljava/lang/String;)Lokio/ByteString;", "", "Wwwwwwwwwwwwwwwww", "(B)Lokio/ByteString;", "slash", "Wwwwwwwwwwwwwwwwwww", "(Lokio/Buffer;Lokio/ByteString;)Z", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Lokio/ByteString;", "getSLASH$annotations", "()V", "SLASH", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "getBACKSLASH$annotations", "BACKSLASH", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "getANY_SLASH$annotations", "ANY_SLASH", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "getDOT$annotations", "DOT", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "getDOT_DOT$annotations", "DOT_DOT", "Wwwwwwwwwwwwwwwwwwwwwww", "indexOfLastSlash", "Wwwwwwwwwwwwwwwwwwwwww", "(Lokio/Path;)Lokio/ByteString;", "okio"}, k = 2, mv = {1, 8, 0}, xi = 48)
@JvmName(name = "-Path")
@SourceDebugExtension({"SMAP\nPath.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Path.kt\nokio/internal/-Path\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,406:1\n59#1,22:407\n209#1:433\n209#1:434\n1549#2:429\n1620#2,3:430\n*S KotlinDebug\n*F\n+ 1 Path.kt\nokio/internal/-Path\n*L\n53#1:407,22\n199#1:433\n204#1:434\n53#1:429\n53#1:430,3\n*E\n"})
/* renamed from: okio.internal.-Path */
/* loaded from: classes7.dex */
public final class Path {
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww */
    public static final ByteString f13263Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww */
    public static final ByteString f13264Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww */
    public static final ByteString f13265Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww */
    public static final ByteString f13266Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww */
    public static final ByteString f13267Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    static {
        ByteString.Companion companion = ByteString.Companion;
        f13267Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww("/");
        f13266Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww("\\");
        f13265Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww("/\\");
        f13264Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(".");
        f13263Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww = companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww("..");
    }

    public static final ByteString Wwwwwwwwwwwwwwww(String str) {
        if (Intrinsics.areEqual(str, "/")) {
            return f13267Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        }
        if (Intrinsics.areEqual(str, "\\")) {
            return f13266Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        }
        throw new IllegalArgumentException("not a directory separator: " + str);
    }

    public static final ByteString Wwwwwwwwwwwwwwwww(byte b) {
        if (b != 47) {
            if (b == 92) {
                return f13266Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
            }
            throw new IllegalArgumentException("not a directory separator: " + ((int) b));
        }
        return f13267Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    @NotNull
    public static final okio.Path Wwwwwwwwwwwwwwwwww(@NotNull Buffer buffer, boolean z) {
        ByteString byteString;
        boolean z2;
        boolean z3;
        ByteString Wwwwwwwwwwwwwww2;
        Buffer buffer2 = new Buffer();
        ByteString byteString2 = null;
        int i = 0;
        while (true) {
            if (!buffer.Kkkkkkkkkk(0L, f13267Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww)) {
                byteString = f13266Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
                if (!buffer.Kkkkkkkkkk(0L, byteString)) {
                    break;
                }
            }
            byte readByte = buffer.readByte();
            if (byteString2 == null) {
                byteString2 = Wwwwwwwwwwwwwwwww(readByte);
            }
            i++;
        }
        if (i >= 2 && Intrinsics.areEqual(byteString2, byteString)) {
            z2 = true;
        } else {
            z2 = false;
        }
        if (z2) {
            buffer2.Wwwww(byteString2);
            buffer2.Wwwww(byteString2);
        } else if (i > 0) {
            buffer2.Wwwww(byteString2);
        } else {
            long Kkkkkkkkkkkk2 = buffer.Kkkkkkkkkkkk(f13265Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
            if (byteString2 == null) {
                if (Kkkkkkkkkkkk2 == -1) {
                    byteString2 = Wwwwwwwwwwwwwwww(okio.Path.f13200Wwwwwwwwwwwwwwwwwwwwwwww);
                } else {
                    byteString2 = Wwwwwwwwwwwwwwwww(buffer.Kkkkkkkkkkkkkkkk(Kkkkkkkkkkkk2));
                }
            }
            if (Wwwwwwwwwwwwwwwwwww(buffer, byteString2)) {
                if (Kkkkkkkkkkkk2 == 2) {
                    buffer2.Wwwwwwwwwwwwwwwwwwwwwwwww(buffer, 3L);
                } else {
                    buffer2.Wwwwwwwwwwwwwwwwwwwwwwwww(buffer, 2L);
                }
            }
        }
        if (buffer2.Kk() > 0) {
            z3 = true;
        } else {
            z3 = false;
        }
        ArrayList arrayList = new ArrayList();
        while (!buffer.Wwwwwwwwwwww()) {
            long Kkkkkkkkkkkk3 = buffer.Kkkkkkkkkkkk(f13265Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
            if (Kkkkkkkkkkkk3 == -1) {
                Wwwwwwwwwwwwwww2 = buffer.Wwwwwww();
            } else {
                Wwwwwwwwwwwwwww2 = buffer.Wwwwwwwwwwwwwww(Kkkkkkkkkkkk3);
                buffer.readByte();
            }
            ByteString byteString3 = f13263Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
            if (Intrinsics.areEqual(Wwwwwwwwwwwwwww2, byteString3)) {
                if (!z3 || !arrayList.isEmpty()) {
                    if (z && (z3 || (!arrayList.isEmpty() && !Intrinsics.areEqual(CollectionsKt.last((List<? extends Object>) arrayList), byteString3)))) {
                        if (!z2 || arrayList.size() != 1) {
                            CollectionsKt.removeLastOrNull(arrayList);
                        }
                    } else {
                        arrayList.add(Wwwwwwwwwwwwwww2);
                    }
                }
            } else if (!Intrinsics.areEqual(Wwwwwwwwwwwwwww2, f13264Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww) && !Intrinsics.areEqual(Wwwwwwwwwwwwwww2, ByteString.EMPTY)) {
                arrayList.add(Wwwwwwwwwwwwwww2);
            }
        }
        int size = arrayList.size();
        for (int i2 = 0; i2 < size; i2++) {
            if (i2 > 0) {
                buffer2.Wwwww(byteString2);
            }
            buffer2.Wwwww((ByteString) arrayList.get(i2));
        }
        if (buffer2.Kk() == 0) {
            buffer2.Wwwww(f13264Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
        }
        return new okio.Path(buffer2.Wwwwwww());
    }

    public static final boolean Wwwwwwwwwwwwwwwwwww(Buffer buffer, ByteString byteString) {
        if (!Intrinsics.areEqual(byteString, f13266Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww) || buffer.Kk() < 2 || buffer.Kkkkkkkkkkkkkkkk(1L) != 58) {
            return false;
        }
        char Kkkkkkkkkkkkkkkk2 = (char) buffer.Kkkkkkkkkkkkkkkk(0L);
        if ('a' > Kkkkkkkkkkkkkkkk2 || Kkkkkkkkkkkkkkkk2 >= '{') {
            if ('A' > Kkkkkkkkkkkkkkkk2 || Kkkkkkkkkkkkkkkk2 >= '[') {
                return false;
            }
            return true;
        }
        return true;
    }

    public static final int Wwwwwwwwwwwwwwwwwwww(okio.Path path) {
        if (path.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().size() == 0) {
            return -1;
        }
        if (path.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().getByte(0) == 47) {
            return 1;
        }
        if (path.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().getByte(0) == 92) {
            if (path.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().size() <= 2 || path.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().getByte(1) != 92) {
                return 1;
            }
            int indexOf = path.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().indexOf(f13266Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, 2);
            if (indexOf == -1) {
                return path.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().size();
            }
            return indexOf;
        }
        if (path.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().size() > 2 && path.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().getByte(1) == 58 && path.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().getByte(2) == 92) {
            char c = (char) path.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().getByte(0);
            if ('a' > c || c >= '{') {
                if ('A' <= c && c < '[') {
                    return 3;
                }
            } else {
                return 3;
            }
        }
        return -1;
    }

    public static final boolean Wwwwwwwwwwwwwwwwwwwww(okio.Path path) {
        if (!path.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().endsWith(f13263Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww) || (path.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().size() != 2 && !path.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().rangeEquals(path.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().size() - 3, f13267Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, 0, 1) && !path.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().rangeEquals(path.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().size() - 3, f13266Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, 0, 1))) {
            return false;
        }
        return true;
    }

    public static final ByteString Wwwwwwwwwwwwwwwwwwwwww(okio.Path path) {
        ByteString Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = path.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        ByteString byteString = f13267Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        if (ByteString.indexOf$default(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2, byteString, 0, 2, (Object) null) != -1) {
            return byteString;
        }
        ByteString Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3 = path.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        ByteString byteString2 = f13266Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        if (ByteString.indexOf$default(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3, byteString2, 0, 2, (Object) null) == -1) {
            return null;
        }
        return byteString2;
    }

    public static final int Wwwwwwwwwwwwwwwwwwwwwww(okio.Path path) {
        int lastIndexOf$default = ByteString.lastIndexOf$default(path.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(), f13267Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, 0, 2, (Object) null);
        if (lastIndexOf$default != -1) {
            return lastIndexOf$default;
        }
        return ByteString.lastIndexOf$default(path.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(), f13266Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, 0, 2, (Object) null);
    }

    @NotNull
    public static final okio.Path Wwwwwwwwwwwwwwwwwwwwwwww(@NotNull String str, boolean z) {
        return Wwwwwwwwwwwwwwwwww(new Buffer().Wwwwwwwwwwwwwwwwwwwwwwwwww(str), z);
    }

    @NotNull
    public static final okio.Path Wwwwwwwwwwwwwwwwwwwwwwwww(@NotNull okio.Path path, @NotNull okio.Path path2, boolean z) {
        if (!path2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww() && path2.Wwwwwwwwwwwwwwwwwww() == null) {
            ByteString Wwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwww(path);
            if (Wwwwwwwwwwwwwwwwwwwwww2 == null && (Wwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwww(path2)) == null) {
                Wwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwww(okio.Path.f13200Wwwwwwwwwwwwwwwwwwwwwwww);
            }
            Buffer buffer = new Buffer();
            buffer.Wwwww(path.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
            if (buffer.Kk() > 0) {
                buffer.Wwwww(Wwwwwwwwwwwwwwwwwwwwww2);
            }
            buffer.Wwwww(path2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
            return Wwwwwwwwwwwwwwwwww(buffer, z);
        }
        return path2;
    }
}
