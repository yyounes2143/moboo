package okhttp3.internal.http2;

import com.google.common.base.Ascii;
import com.tencent.thumbplayer.tcmedia.core.player.ITPNativePlayerMessageCallback;
import com.unity3d.services.core.network.core.OkHttp3Client;
import java.io.IOException;
import kotlin.Metadata;
import kotlin.collections.ArraysKt;
import okhttp3.internal.Util;
import okio.BufferedSink;
import okio.BufferedSource;
import okio.ByteString;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000L\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\t\n\u0002\b\b\n\u0002\u0010\u0015\n\u0002\b\u0002\n\u0002\u0010\u0012\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\bÆ\u0002\u0018\u00002\u00020\u0001:\u0001\"B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u001d\u0010\t\u001a\u00020\b2\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\t\u0010\nJ\u0015\u0010\r\u001a\u00020\f2\u0006\u0010\u000b\u001a\u00020\u0004¢\u0006\u0004\b\r\u0010\u000eJ%\u0010\u0012\u001a\u00020\b2\u0006\u0010\u0005\u001a\u00020\u000f2\u0006\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\u0012\u0010\u0013J'\u0010\u0017\u001a\u00020\b2\u0006\u0010\u0014\u001a\u00020\f2\u0006\u0010\u0015\u001a\u00020\f2\u0006\u0010\u0016\u001a\u00020\fH\u0002¢\u0006\u0004\b\u0017\u0010\u0018R\u0014\u0010\u001b\u001a\u00020\u00198\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0017\u0010\u001aR\u0014\u0010\u001e\u001a\u00020\u001c8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0012\u0010\u001dR\u0014\u0010!\u001a\u00020\u001f8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\t\u0010 ¨\u0006#"}, d2 = {"Lokhttp3/internal/http2/Huffman;", "", "<init>", "()V", "Lokio/ByteString;", "source", "Lokio/BufferedSink;", "sink", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lokio/ByteString;Lokio/BufferedSink;)V", "bytes", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lokio/ByteString;)I", "Lokio/BufferedSource;", "", "byteCount", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lokio/BufferedSource;JLokio/BufferedSink;)V", "symbol", "code", "codeBitCount", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(III)V", "", "[I", "CODES", "", "[B", "CODE_BIT_COUNTS", "Lokhttp3/internal/http2/Huffman$Node;", "Lokhttp3/internal/http2/Huffman$Node;", "root", "Node", OkHttp3Client.NETWORK_CLIENT_OKHTTP}, k = 1, mv = {1, 6, 0}, xi = 48)
/* loaded from: classes7.dex */
public final class Huffman {
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final Node f12946Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final byte[] f12947Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @NotNull
    public static final Huffman INSTANCE = new Huffman();
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final int[] f12948Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = {8184, 8388568, 268435426, 268435427, 268435428, 268435429, 268435430, 268435431, 268435432, 16777194, 1073741820, 268435433, 268435434, 1073741821, 268435435, 268435436, 268435437, 268435438, 268435439, 268435440, 268435441, 268435442, 1073741822, 268435443, 268435444, 268435445, 268435446, 268435447, 268435448, 268435449, 268435450, 268435451, 20, 1016, 1017, 4090, 8185, 21, 248, 2042, 1018, 1019, 249, 2043, 250, 22, 23, 24, 0, 1, 2, 25, 26, 27, 28, 29, 30, 31, 92, 251, 32764, 32, 4091, 1020, 8186, 33, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 252, 115, ITPNativePlayerMessageCallback.INFO_LONG1_DRM_FATAL_ERROR, 8187, 524272, 8188, 16380, 34, 32765, 3, 35, 4, 36, 5, 37, 38, 39, 6, 116, 117, 40, 41, 42, 7, 43, 118, 44, 8, 9, 45, 119, 120, 121, 122, 123, 32766, 2044, 16381, 8189, 268435452, 1048550, 4194258, 1048551, 1048552, 4194259, 4194260, 4194261, 8388569, 4194262, 8388570, 8388571, 8388572, 8388573, 8388574, 16777195, 8388575, 16777196, 16777197, 4194263, 8388576, 16777198, 8388577, 8388578, 8388579, 8388580, 2097116, 4194264, 8388581, 4194265, 8388582, 8388583, 16777199, 4194266, 2097117, 1048553, 4194267, 4194268, 8388584, 8388585, 2097118, 8388586, 4194269, 4194270, 16777200, 2097119, 4194271, 8388587, 8388588, 2097120, 2097121, 4194272, 2097122, 8388589, 4194273, 8388590, 8388591, 1048554, 4194274, 4194275, 4194276, 8388592, 4194277, 4194278, 8388593, 67108832, 67108833, 1048555, 524273, 4194279, 8388594, 4194280, 33554412, 67108834, 67108835, 67108836, 134217694, 134217695, 67108837, 16777201, 33554413, 524274, 2097123, 67108838, 134217696, 134217697, 67108839, 134217698, 16777202, 2097124, 2097125, 67108840, 67108841, 268435453, 134217699, 134217700, 134217701, 1048556, 16777203, 1048557, 2097126, 4194281, 2097127, 2097128, 8388595, 4194282, 4194283, 33554414, 33554415, 16777204, 16777205, 67108842, 8388596, 67108843, 134217702, 67108844, 67108845, 134217703, 134217704, 134217705, 134217706, 134217707, 268435454, 134217708, 134217709, 134217710, 134217711, 134217712, 67108846};

    static {
        byte[] bArr = {Ascii.CR, Ascii.ETB, Ascii.FS, Ascii.FS, Ascii.FS, Ascii.FS, Ascii.FS, Ascii.FS, Ascii.FS, Ascii.CAN, Ascii.RS, Ascii.FS, Ascii.FS, Ascii.RS, Ascii.FS, Ascii.FS, Ascii.FS, Ascii.FS, Ascii.FS, Ascii.FS, Ascii.FS, Ascii.FS, Ascii.RS, Ascii.FS, Ascii.FS, Ascii.FS, Ascii.FS, Ascii.FS, Ascii.FS, Ascii.FS, Ascii.FS, Ascii.FS, 6, 10, 10, Ascii.FF, Ascii.CR, 6, 8, Ascii.VT, 10, 10, 8, Ascii.VT, 8, 6, 6, 6, 5, 5, 5, 6, 6, 6, 6, 6, 6, 6, 7, 8, Ascii.SI, 6, Ascii.FF, 10, Ascii.CR, 6, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 8, 7, 8, Ascii.CR, 19, Ascii.CR, Ascii.SO, 6, Ascii.SI, 5, 6, 5, 6, 5, 6, 6, 6, 5, 7, 7, 6, 6, 6, 5, 6, 7, 6, 5, 5, 6, 7, 7, 7, 7, 7, Ascii.SI, Ascii.VT, Ascii.SO, Ascii.CR, Ascii.FS, Ascii.DC4, Ascii.SYN, Ascii.DC4, Ascii.DC4, Ascii.SYN, Ascii.SYN, Ascii.SYN, Ascii.ETB, Ascii.SYN, Ascii.ETB, Ascii.ETB, Ascii.ETB, Ascii.ETB, Ascii.ETB, Ascii.CAN, Ascii.ETB, Ascii.CAN, Ascii.CAN, Ascii.SYN, Ascii.ETB, Ascii.CAN, Ascii.ETB, Ascii.ETB, Ascii.ETB, Ascii.ETB, Ascii.NAK, Ascii.SYN, Ascii.ETB, Ascii.SYN, Ascii.ETB, Ascii.ETB, Ascii.CAN, Ascii.SYN, Ascii.NAK, Ascii.DC4, Ascii.SYN, Ascii.SYN, Ascii.ETB, Ascii.ETB, Ascii.NAK, Ascii.ETB, Ascii.SYN, Ascii.SYN, Ascii.CAN, Ascii.NAK, Ascii.SYN, Ascii.ETB, Ascii.ETB, Ascii.NAK, Ascii.NAK, Ascii.SYN, Ascii.NAK, Ascii.ETB, Ascii.SYN, Ascii.ETB, Ascii.ETB, Ascii.DC4, Ascii.SYN, Ascii.SYN, Ascii.SYN, Ascii.ETB, Ascii.SYN, Ascii.SYN, Ascii.ETB, Ascii.SUB, Ascii.SUB, Ascii.DC4, 19, Ascii.SYN, Ascii.ETB, Ascii.SYN, Ascii.EM, Ascii.SUB, Ascii.SUB, Ascii.SUB, Ascii.ESC, Ascii.ESC, Ascii.SUB, Ascii.CAN, Ascii.EM, 19, Ascii.NAK, Ascii.SUB, Ascii.ESC, Ascii.ESC, Ascii.SUB, Ascii.ESC, Ascii.CAN, Ascii.NAK, Ascii.NAK, Ascii.SUB, Ascii.SUB, Ascii.FS, Ascii.ESC, Ascii.ESC, Ascii.ESC, Ascii.DC4, Ascii.CAN, Ascii.DC4, Ascii.NAK, Ascii.SYN, Ascii.NAK, Ascii.NAK, Ascii.ETB, Ascii.SYN, Ascii.SYN, Ascii.EM, Ascii.EM, Ascii.CAN, Ascii.CAN, Ascii.SUB, Ascii.ETB, Ascii.SUB, Ascii.ESC, Ascii.SUB, Ascii.SUB, Ascii.ESC, Ascii.ESC, Ascii.ESC, Ascii.ESC, Ascii.ESC, Ascii.FS, Ascii.ESC, Ascii.ESC, Ascii.ESC, Ascii.ESC, Ascii.ESC, Ascii.SUB};
        f12947Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = bArr;
        f12946Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new Node();
        int length = bArr.length;
        for (int i = 0; i < length; i++) {
            INSTANCE.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(i, f12948Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww[i], f12947Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww[i]);
        }
    }

    public final int Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull ByteString byteString) {
        int size = byteString.size();
        long j = 0;
        int i = 0;
        while (i < size) {
            int i2 = i + 1;
            j += f12947Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww[Util.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(byteString.getByte(i), 255)];
            i = i2;
        }
        return (int) ((j + 7) >> 3);
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull ByteString byteString, @NotNull BufferedSink bufferedSink) throws IOException {
        int size = byteString.size();
        long j = 0;
        int i = 0;
        int i2 = 0;
        while (i < size) {
            int i3 = i + 1;
            int Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Util.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(byteString.getByte(i), 255);
            int i4 = f12948Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww[Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2];
            byte b = f12947Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww[Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2];
            j = (j << b) | i4;
            i2 += b;
            while (i2 >= 8) {
                i2 = (i2 == true ? 1 : 0) - 8;
                bufferedSink.writeByte((int) (j >> i2));
            }
            i = i3;
        }
        if (i2 > 0) {
            bufferedSink.writeByte((int) ((j << (8 - i2)) | (255 >>> i2)));
        }
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull BufferedSource bufferedSource, long j, @NotNull BufferedSink bufferedSink) {
        Node node = f12946Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        int i = 0;
        long j2 = 0;
        int i2 = 0;
        while (j2 < j) {
            j2++;
            i = (i << 8) | Util.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(bufferedSource.readByte(), 255);
            i2 += 8;
            while (i2 >= 8) {
                node = node.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()[(i >>> (i2 - 8)) & 255];
                if (node.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() == null) {
                    bufferedSink.writeByte(node.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
                    i2 -= node.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
                    node = f12946Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
                } else {
                    i2 -= 8;
                }
            }
        }
        while (i2 > 0) {
            Node node2 = node.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()[(i << (8 - i2)) & 255];
            if (node2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() == null && node2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() <= i2) {
                bufferedSink.writeByte(node2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
                i2 -= node2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
                node = f12946Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
            } else {
                return;
            }
        }
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(int i, int i2, int i3) {
        Node node = new Node(i, i3);
        Node node2 = f12946Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        while (i3 > 8) {
            i3 -= 8;
            int i4 = (i2 >>> i3) & 255;
            Node[] Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = node2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
            Node node3 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2[i4];
            if (node3 == null) {
                node3 = new Node();
                Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2[i4] = node3;
            }
            node2 = node3;
        }
        int i5 = 8 - i3;
        int i6 = (i2 << i5) & 255;
        ArraysKt.fill(node2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(), node, i6, (1 << i5) + i6);
    }

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u0011\n\u0002\b\n\b\u0002\u0018\u00002\u00020\u0001B\t\b\u0016¢\u0006\u0004\b\u0002\u0010\u0003B\u0019\b\u0016\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0006\u001a\u00020\u0004¢\u0006\u0004\b\u0002\u0010\u0007R!\u0010\f\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\u0000\u0018\u00010\b8\u0006¢\u0006\f\n\u0004\b\t\u0010\n\u001a\u0004\b\t\u0010\u000bR\u0017\u0010\u0005\u001a\u00020\u00048\u0006¢\u0006\f\n\u0004\b\r\u0010\u000e\u001a\u0004\b\r\u0010\u000fR\u0017\u0010\u0011\u001a\u00020\u00048\u0006¢\u0006\f\n\u0004\b\u0010\u0010\u000e\u001a\u0004\b\u0010\u0010\u000f¨\u0006\u0012"}, d2 = {"Lokhttp3/internal/http2/Huffman$Node;", "", "<init>", "()V", "", "symbol", "bits", "(II)V", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "[Lokhttp3/internal/http2/Huffman$Node;", "()[Lokhttp3/internal/http2/Huffman$Node;", "children", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "I", "()I", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "terminalBitCount", OkHttp3Client.NETWORK_CLIENT_OKHTTP}, k = 1, mv = {1, 6, 0}, xi = 48)
    /* loaded from: classes7.dex */
    public static final class Node {

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final int f12949Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final int f12950Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        @Nullable

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final Node[] f12951Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        public Node() {
            this.f12951Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new Node[256];
            this.f12950Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = 0;
            this.f12949Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = 0;
        }

        public final int Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            return this.f12949Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        }

        public final int Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            return this.f12950Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        }

        @Nullable
        public final Node[] Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            return this.f12951Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        }

        public Node(int i, int i2) {
            this.f12951Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = null;
            this.f12950Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = i;
            int i3 = i2 & 7;
            this.f12949Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = i3 == 0 ? 8 : i3;
        }
    }
}
