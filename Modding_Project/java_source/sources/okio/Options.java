package okio;

import com.google.firebase.analytics.FirebaseAnalytics;
import java.util.List;
import java.util.RandomAccess;
import kotlin.Metadata;
import kotlin.collections.AbstractList;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0011\n\u0000\n\u0002\u0010\u0015\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0010\u0018\u0000 \u001a2\b\u0012\u0004\u0012\u00020\u00020\u00012\u00060\u0003j\u0002`\u0004:\u0001\u001aB!\b\u0002\u0012\u000e\u0010\u0006\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00020\u0005\u0012\u0006\u0010\b\u001a\u00020\u0007¢\u0006\u0004\b\t\u0010\nJ\u0018\u0010\r\u001a\u00020\u00022\u0006\u0010\f\u001a\u00020\u000bH\u0096\u0002¢\u0006\u0004\b\r\u0010\u000eR\"\u0010\u0006\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00020\u00058\u0000X\u0080\u0004¢\u0006\f\n\u0004\b\u000f\u0010\u0010\u001a\u0004\b\u0011\u0010\u0012R\u001a\u0010\b\u001a\u00020\u00078\u0000X\u0080\u0004¢\u0006\f\n\u0004\b\u0013\u0010\u0014\u001a\u0004\b\u0015\u0010\u0016R\u0014\u0010\u0019\u001a\u00020\u000b8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0017\u0010\u0018¨\u0006\u001b"}, d2 = {"Lokio/Options;", "Lkotlin/collections/AbstractList;", "Lokio/ByteString;", "Ljava/util/RandomAccess;", "Lkotlin/collections/RandomAccess;", "", "byteStrings", "", "trie", "<init>", "([Lokio/ByteString;[I)V", "", FirebaseAnalytics.Param.INDEX, "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(I)Lokio/ByteString;", "Wwwwwwwwwwwwwwwwwwwwwwwww", "[Lokio/ByteString;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "()[Lokio/ByteString;", "Wwwwwwwwwwwwwwwwwwwwwwww", "[I", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "()[I", "getSize", "()I", "size", "Companion", "okio"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes7.dex */
public final class Options extends AbstractList<ByteString> implements RandomAccess {
    @NotNull
    public static final Companion Companion = new Companion(null);
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final int[] f13196Wwwwwwwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final ByteString[] f13197Wwwwwwwwwwwwwwwwwwwwwwwww;

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010 \n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0006\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J#\u0010\b\u001a\u00020\u00072\u0012\u0010\u0006\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00050\u0004\"\u00020\u0005H\u0007¢\u0006\u0004\b\b\u0010\tJ[\u0010\u0015\u001a\u00020\u00142\b\b\u0002\u0010\u000b\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\f2\b\b\u0002\u0010\u000f\u001a\u00020\u000e2\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u00102\b\b\u0002\u0010\u0011\u001a\u00020\u000e2\b\b\u0002\u0010\u0012\u001a\u00020\u000e2\f\u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\u000e0\u0010H\u0002¢\u0006\u0004\b\u0015\u0010\u0016R\u0018\u0010\u0019\u001a\u00020\n*\u00020\f8BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b\u0017\u0010\u0018¨\u0006\u001a"}, d2 = {"Lokio/Options$Companion;", "", "<init>", "()V", "", "Lokio/ByteString;", "byteStrings", "Lokio/Options;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "([Lokio/ByteString;)Lokio/Options;", "", "nodeOffset", "Lokio/Buffer;", "node", "", "byteStringOffset", "", "fromIndex", "toIndex", "indexes", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(JLokio/Buffer;ILjava/util/List;IILjava/util/List;)V", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lokio/Buffer;)J", "intCount", "okio"}, k = 1, mv = {1, 8, 0}, xi = 48)
    @SourceDebugExtension({"SMAP\nOptions.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Options.kt\nokio/Options$Companion\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 3 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 5 Util.kt\nokio/-SegmentedByteString\n*L\n1#1,236:1\n11335#2:237\n11670#2,3:238\n13644#2,3:243\n37#3,2:241\n1#4:246\n74#5:247\n74#5:248\n*S KotlinDebug\n*F\n+ 1 Options.kt\nokio/Options$Companion\n*L\n43#1:237\n43#1:238,3\n44#1:243,3\n43#1:241,2\n151#1:247\n208#1:248\n*E\n"})
    /* loaded from: classes7.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public static /* synthetic */ void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Companion companion, long j, Buffer buffer, int i, List list, int i2, int i3, List list2, int i4, Object obj) {
            if ((i4 & 1) != 0) {
                j = 0;
            }
            companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(j, buffer, (i4 & 4) != 0 ? 0 : i, list, (i4 & 16) != 0 ? 0 : i2, (i4 & 32) != 0 ? list.size() : i3, list2);
        }

        /* JADX WARN: Code restructure failed: missing block: B:44:0x00d1, code lost:
            continue;
         */
        @kotlin.jvm.JvmStatic
        @org.jetbrains.annotations.NotNull
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final okio.Options Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@org.jetbrains.annotations.NotNull okio.ByteString... r17) {
            /*
                Method dump skipped, instructions count: 276
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: okio.Options.Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(okio.ByteString[]):okio.Options");
        }

        public final long Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Buffer buffer) {
            return buffer.Kk() / 4;
        }

        public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(long j, Buffer buffer, int i, List<? extends ByteString> list, int i2, int i3, List<Integer> list2) {
            int i4;
            int i5;
            int i6;
            long j2;
            int i7 = i;
            if (i2 < i3) {
                for (int i8 = i2; i8 < i3; i8++) {
                    if (list.get(i8).size() < i7) {
                        throw new IllegalArgumentException("Failed requirement.");
                    }
                }
                ByteString byteString = list.get(i2);
                ByteString byteString2 = list.get(i3 - 1);
                if (i7 == byteString.size()) {
                    int i9 = i2 + 1;
                    i4 = i9;
                    i5 = list2.get(i2).intValue();
                    byteString = list.get(i9);
                } else {
                    i4 = i2;
                    i5 = -1;
                }
                if (byteString.getByte(i7) != byteString2.getByte(i7)) {
                    int i10 = 1;
                    for (int i11 = i4 + 1; i11 < i3; i11++) {
                        if (list.get(i11 - 1).getByte(i7) != list.get(i11).getByte(i7)) {
                            i10++;
                        }
                    }
                    long Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = j + Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(buffer) + 2 + (i10 * 2);
                    buffer.writeInt(i10);
                    buffer.writeInt(i5);
                    for (int i12 = i4; i12 < i3; i12++) {
                        byte b = list.get(i12).getByte(i7);
                        if (i12 == i4 || b != list.get(i12 - 1).getByte(i7)) {
                            buffer.writeInt(b & 255);
                        }
                    }
                    Buffer buffer2 = new Buffer();
                    while (i4 < i3) {
                        byte b2 = list.get(i4).getByte(i7);
                        int i13 = i4 + 1;
                        int i14 = i13;
                        while (true) {
                            if (i14 < i3) {
                                if (b2 != list.get(i14).getByte(i7)) {
                                    i6 = i14;
                                    break;
                                }
                                i14++;
                            } else {
                                i6 = i3;
                                break;
                            }
                        }
                        if (i13 == i6 && i7 + 1 == list.get(i4).size()) {
                            buffer.writeInt(list2.get(i4).intValue());
                            j2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
                        } else {
                            buffer.writeInt(((int) (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(buffer2) + Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2)) * (-1));
                            j2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
                            Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(j2, buffer2, i7 + 1, list, i4, i6, list2);
                        }
                        Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = j2;
                        i4 = i6;
                    }
                    buffer.Wwwwwwwwwwwwwwwwwwwwwwww(buffer2);
                    return;
                }
                int min = Math.min(byteString.size(), byteString2.size());
                int i15 = 0;
                for (int i16 = i7; i16 < min && byteString.getByte(i16) == byteString2.getByte(i16); i16++) {
                    i15++;
                }
                long Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3 = j + Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(buffer) + 2 + i15 + 1;
                buffer.writeInt(-i15);
                buffer.writeInt(i5);
                int i17 = i7 + i15;
                while (i7 < i17) {
                    buffer.writeInt(byteString.getByte(i7) & 255);
                    i7++;
                }
                if (i4 + 1 == i3) {
                    if (i17 == list.get(i4).size()) {
                        buffer.writeInt(list2.get(i4).intValue());
                        return;
                    }
                    throw new IllegalStateException("Check failed.");
                }
                Buffer buffer3 = new Buffer();
                buffer.writeInt(((int) (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(buffer3) + Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3)) * (-1));
                Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3, buffer3, i17, list, i4, i3, list2);
                buffer.Wwwwwwwwwwwwwwwwwwwwwwww(buffer3);
                return;
            }
            throw new IllegalArgumentException("Failed requirement.");
        }

        public Companion() {
        }
    }

    public /* synthetic */ Options(ByteString[] byteStringArr, int[] iArr, DefaultConstructorMarker defaultConstructorMarker) {
        this(byteStringArr, iArr);
    }

    public /* bridge */ int Wwwwwwwwwwwwwwwwwwwwwwwwwwww(ByteString byteString) {
        return super.lastIndexOf(byteString);
    }

    public /* bridge */ int Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(ByteString byteString) {
        return super.indexOf(byteString);
    }

    @NotNull
    public final int[] Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f13196Wwwwwwwwwwwwwwwwwwwwwwww;
    }

    @NotNull
    public final ByteString[] Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f13197Wwwwwwwwwwwwwwwwwwwwwwwww;
    }

    @Override // kotlin.collections.AbstractList, java.util.List
    @NotNull
    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww */
    public ByteString get(int i) {
        return this.f13197Wwwwwwwwwwwwwwwwwwwwwwwww[i];
    }

    public /* bridge */ boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(ByteString byteString) {
        return super.contains(byteString);
    }

    @Override // kotlin.collections.AbstractCollection, java.util.Collection
    public final /* bridge */ boolean contains(Object obj) {
        if (!(obj instanceof ByteString)) {
            return false;
        }
        return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww((ByteString) obj);
    }

    @Override // kotlin.collections.AbstractList, kotlin.collections.AbstractCollection
    public int getSize() {
        return this.f13197Wwwwwwwwwwwwwwwwwwwwwwwww.length;
    }

    @Override // kotlin.collections.AbstractList, java.util.List
    public final /* bridge */ int indexOf(Object obj) {
        if (!(obj instanceof ByteString)) {
            return -1;
        }
        return Wwwwwwwwwwwwwwwwwwwwwwwwwwwww((ByteString) obj);
    }

    @Override // kotlin.collections.AbstractList, java.util.List
    public final /* bridge */ int lastIndexOf(Object obj) {
        if (!(obj instanceof ByteString)) {
            return -1;
        }
        return Wwwwwwwwwwwwwwwwwwwwwwwwwwww((ByteString) obj);
    }

    public Options(ByteString[] byteStringArr, int[] iArr) {
        this.f13197Wwwwwwwwwwwwwwwwwwwwwwwww = byteStringArr;
        this.f13196Wwwwwwwwwwwwwwwwwwwwwwww = iArr;
    }
}
