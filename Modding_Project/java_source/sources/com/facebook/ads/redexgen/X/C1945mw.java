package com.facebook.ads.redexgen.X;

import android.media.AudioAttributes;
import android.media.AudioDeviceInfo;
import android.media.AudioFormat;
import android.media.AudioManager;
import android.media.AudioTrack;
import android.media.PlaybackParams;
import android.os.Handler;
import android.os.Looper;
import android.util.Pair;
import androidx.media3.common.C;
import androidx.media3.common.PlaybackException;
import androidx.work.WorkInfo;
import com.facebook.video.heroplayer.exocustom.MetaExoPlayerCustomization;
import com.google.common.base.Ascii;
import com.google.common.primitives.SignedBytes;
import com.tencent.thumbplayer.tcmedia.core.common.TPCodecParamers;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.atomic.AtomicInteger;
import kotlin.io.encoding.Base64;
import org.checkerframework.checker.nullness.qual.RequiresNonNull;
/* renamed from: com.facebook.ads.redexgen.X.mw  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public final class C1945mw implements C8N {
    public static boolean A0v;
    public static int A0w;
    public static ExecutorService A0x;
    @MetaExoPlayerCustomization(type = {"NEW_CLASS_ARG"}, value = "D23918943: Monitor the audio track usage")
    public static AtomicInteger A0y;
    public static byte[] A0z;
    public static String[] A10 = {"a2KSouRkY2EeYPYlRPuQP1BMARpp6f9O", "Gy", "Dq9VRycV95bIzONst7U9W8VcH5OAT2ac", "T381mgHUGlQbTRbVURm4ZuRF6EOi2D8f", "KkGB0jhfpK5IC", "ogTnlK5ViGnrQ4kTUDUA61bIZynBq2mv", "CJ3ZuNqxaIjwSiQAD7ytgom2H57haWJk", "spWmv2H5WGO5MG6CASCqBbohd0yqIF8X"};
    public static final Object A11;
    public float A00;
    public int A01;
    public int A02;
    public int A03;
    public int A04;
    public int A05;
    public int A06;
    public long A07;
    public long A08;
    public long A09;
    public long A0A;
    public long A0B;
    public long A0C;
    public AudioTrack A0D;
    public C2067oy A0E;
    public C1P A0F;
    public C2045ob A0G;
    public C04527m A0H;
    public C8J A0I;
    public C04658c A0J;
    public C04678f A0K;
    public C04678f A0L;
    public C04698h A0M;
    public C04698h A0N;
    public C04738n A0O;
    public ByteBuffer A0P;
    public ByteBuffer A0Q;
    public ByteBuffer A0R;
    @MetaExoPlayerCustomization(type = {"NEW_CLASS_ARG"}, value = "D45157249: Retry Audio Track Init failure with less Audio track allocation sizes")
    public boolean A0S;
    public boolean A0T;
    public boolean A0U;
    public boolean A0V;
    public boolean A0W;
    public boolean A0X;
    public boolean A0Y;
    public boolean A0Z;
    public boolean A0a;
    public boolean A0b;
    public byte[] A0c;
    public AnonymousClass38[] A0d;
    public ByteBuffer[] A0e;
    public final int A0f;
    public final AnonymousClass39 A0g;
    public final C3W A0h;
    public final InterfaceC04085u A0i;
    public final C04557p A0j;
    public final C8T A0k;
    public final C9N A0l;
    public final InterfaceC04668d A0m;
    public final C8k<C8H> A0n;
    public final C8k<C8M> A0o;
    public final C9I A0p;
    public final ArrayDeque<C04698h> A0q;
    public final boolean A0r;
    public final boolean A0s;
    public final AnonymousClass38[] A0t;
    public final AnonymousClass38[] A0u;

    public static String A0L(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A0z, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            copyOfRange[i4] = (byte) ((copyOfRange[i4] ^ i3) ^ 56);
        }
        return new String(copyOfRange);
    }

    public static void A0T() {
        A0z = new byte[]{99, 106, 44, 37, 56, 112, 106, 107, 74, 73, 78, 90, 67, 91, 110, 90, 75, 70, SignedBytes.MAX_POWER_OF_TWO, 124, 70, 65, 68, 104, 85, 66, 125, 65, 76, 84, 72, 95, Ascii.ETB, 108, 88, 73, 68, 66, 121, 95, 76, 78, 70, Byte.MAX_VALUE, 72, 65, 72, 76, 94, 72, 121, 69, 95, 72, 76, 73, 39, 0, 8, Ascii.CR, 4, 5, 65, Ascii.NAK, Ascii.SO, 65, Ascii.DC2, 4, Ascii.NAK, 65, 17, Ascii.CR, 0, Ascii.CAN, 3, 0, 2, 10, 65, 17, 0, 19, 0, Ascii.FF, Ascii.DC2, 121, 94, 70, 81, 92, 89, 84, Ascii.DLE, 96, 115, 125, Ascii.DLE, 85, 94, 83, 95, 84, 89, 94, 87, 10, Ascii.DLE, 73, 110, 118, 97, 108, 105, 100, 32, 111, 117, 116, 112, 117, 116, 32, 99, 104, 97, 110, 110, 101, 108, 32, 99, 111, 110, 102, 105, 103, 32, 40, 109, 111, 100, 101, Base64.padSymbol, 57, Ascii.RS, 6, 17, Ascii.FS, Ascii.EM, Ascii.DC4, 80, Ascii.US, 5, 4, 0, 5, 4, 80, Ascii.NAK, Ascii.RS, 19, Ascii.US, Ascii.DC4, Ascii.EM, Ascii.RS, Ascii.ETB, 80, 88, Ascii.GS, Ascii.US, Ascii.DC4, Ascii.NAK, 77, 33, Ascii.CAN, 9, Ascii.DC4, Ascii.GS, 104, 95, 73, 95, 78, 78, 83, 84, 93, Ascii.SUB, 73, 78, 91, 86, 86, 95, 94, Ascii.SUB, 91, 79, 94, 83, 85, Ascii.SUB, 78, 72, 91, 89, 81, 117, 78, 65, 66, 76, 69, 0, 84, 79, 0, 67, 79, 78, 70, 73, 71, 85, 82, 69, 0, 80, 65, 83, 83, 84, 72, 82, 79, 85, 71, 72, 0, 70, 79, 82, Ascii.SUB, 0, 124, 71, 76, 81, 89, 76, 74, 93, 76, 77, 9, 72, 92, 77, SignedBytes.MAX_POWER_OF_TWO, 70, 9, 76, 71, 74, 70, 77, SignedBytes.MAX_POWER_OF_TWO, 71, 78, 19, 9, Ascii.US, Ascii.VT, Ascii.SUB, Ascii.ETB, 17, 81, Ascii.FF, Ascii.US, 9};
    }

    static {
        A0T();
        A0v = false;
        A11 = new Object();
        A0y = new AtomicInteger(0);
    }

    @Deprecated
    public C1945mw(C04557p c04557p, AnonymousClass38[] anonymousClass38Arr) {
        this(new C8e().A06((C04557p) AbstractC1718j1.A00(c04557p, C04557p.A04)).A07(anonymousClass38Arr));
    }

    @RequiresNonNull({"#1.audioProcessorChain"})
    public C1945mw(C8e c8e) {
        this.A0j = C8e.A02(c8e);
        this.A0g = C8e.A01(c8e);
        this.A0s = AbstractC03624a.A02 >= 21 && C8e.A03(c8e);
        this.A0r = AbstractC03624a.A02 >= 23 && C8e.A04(c8e);
        this.A0f = AbstractC03624a.A02 >= 29 ? C8e.A00(c8e) : 0;
        this.A0m = c8e.A00;
        this.A0h = new C3W(C3T.A00);
        this.A0h.A04();
        this.A0k = new C8T(new C1946mx(this));
        this.A0l = new C9N();
        this.A0p = new C9I();
        ArrayList arrayList = new ArrayList();
        Collections.addAll(arrayList, new AbstractC1947my() { // from class: com.facebook.ads.redexgen.X.9K
            public static String[] A00 = {"xDq4aPrtB4VOa6dWWLPhCvkNe2Vl9lis", "EsfqB3zUW", "UtEiT2kwdPvCqjHQhdRb9TlQndFxkub5", "Wgbe7hD6UIy", "xb", "RmqoPGkQn7vPyUpVU7ZkSehlX2jVBNRl", "20c7QZBscERNsZTH", "LeRFFk0E0DkpEnw35dU8lGRVd8w5nI17"};

            @Override // com.facebook.ads.redexgen.X.AbstractC1947my
            public final AnonymousClass36 A09(AnonymousClass36 anonymousClass36) throws AnonymousClass37 {
                int i = anonymousClass36.A02;
                if (i != 3 && i != 2) {
                    if (A00[2].charAt(30) != 'b') {
                        throw new RuntimeException();
                    }
                    A00[3] = "ty1ASCrQyl5";
                    if (i != 268435456 && i != 536870912 && i != 805306368 && i != 4) {
                        throw new AnonymousClass37(anonymousClass36);
                    }
                }
                if (i != 2) {
                    return new AnonymousClass36(anonymousClass36.A03, anonymousClass36.A01, 2);
                }
                return AnonymousClass36.A05;
            }

            /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
            @Override // com.facebook.ads.redexgen.X.AnonymousClass38
            public final void AGX(ByteBuffer byteBuffer) {
                int resampledSize = byteBuffer.position();
                int size = byteBuffer.limit();
                int limit = size - resampledSize;
                int position = this.A05.A02;
                switch (position) {
                    case 3:
                        limit *= 2;
                        break;
                    case 4:
                    case 805306368:
                        limit /= 2;
                        break;
                    case 268435456:
                        break;
                    case C.BUFFER_FLAG_LAST_SAMPLE /* 536870912 */:
                        int position2 = limit / 3;
                        limit = position2 * 2;
                        break;
                    default:
                        throw new IllegalStateException();
                }
                ByteBuffer buffer = A00(limit);
                int position3 = this.A05.A02;
                switch (position3) {
                    case 3:
                        while (resampledSize < size) {
                            buffer.put((byte) 0);
                            int position4 = byteBuffer.get(resampledSize);
                            buffer.put((byte) ((position4 & 255) + WorkInfo.STOP_REASON_FOREGROUND_SERVICE_TIMEOUT));
                            resampledSize++;
                        }
                        break;
                    case 4:
                        while (resampledSize < size) {
                            int position5 = (int) (32767.0f * AbstractC03624a.A00(byteBuffer.getFloat(resampledSize), -1.0f, 1.0f));
                            int limit2 = (short) position5;
                            int position6 = limit2 & 255;
                            buffer.put((byte) position6);
                            int position7 = limit2 >> 8;
                            buffer.put((byte) (position7 & 255));
                            resampledSize += 4;
                        }
                        break;
                    case 268435456:
                        while (resampledSize < size) {
                            int position8 = resampledSize + 1;
                            buffer.put(byteBuffer.get(position8));
                            buffer.put(byteBuffer.get(resampledSize));
                            resampledSize += 2;
                        }
                        break;
                    case C.BUFFER_FLAG_LAST_SAMPLE /* 536870912 */:
                        while (resampledSize < size) {
                            int position9 = resampledSize + 1;
                            buffer.put(byteBuffer.get(position9));
                            int position10 = resampledSize + 2;
                            buffer.put(byteBuffer.get(position10));
                            resampledSize += 3;
                        }
                        break;
                    case 805306368:
                        while (resampledSize < size) {
                            int position11 = resampledSize + 2;
                            buffer.put(byteBuffer.get(position11));
                            int position12 = resampledSize + 3;
                            buffer.put(byteBuffer.get(position12));
                            resampledSize += 4;
                        }
                        break;
                    default:
                        throw new IllegalStateException();
                }
                int resampledSize2 = byteBuffer.limit();
                if (A00[7].charAt(16) != 53) {
                    throw new RuntimeException();
                }
                A00[5] = "iqTXYqAhTQO7Wpg5y1SXfPoSIsa3UBxa";
                byteBuffer.position(resampledSize2);
                buffer.flip();
            }
        }, this.A0l, this.A0p);
        Collections.addAll(arrayList, this.A0g.A6r());
        this.A0u = (AnonymousClass38[]) arrayList.toArray(new AnonymousClass38[0]);
        this.A0t = new AnonymousClass38[]{new AbstractC1947my() { // from class: com.facebook.ads.redexgen.X.9L
            public static final int A00 = Float.floatToIntBits(Float.NaN);

            public static void A00(int i, ByteBuffer byteBuffer) {
                float pcm32BitFloat = (float) (i * 4.656612875245797E-10d);
                int floatBits = Float.floatToIntBits(pcm32BitFloat);
                if (floatBits == A00) {
                    floatBits = Float.floatToIntBits(0.0f);
                }
                byteBuffer.putInt(floatBits);
            }

            @Override // com.facebook.ads.redexgen.X.AbstractC1947my
            public final AnonymousClass36 A09(AnonymousClass36 anonymousClass36) throws AnonymousClass37 {
                int i = anonymousClass36.A02;
                if (AbstractC03624a.A14(i)) {
                    if (i != 4) {
                        return new AnonymousClass36(anonymousClass36.A03, anonymousClass36.A01, 4);
                    }
                    return AnonymousClass36.A05;
                }
                throw new AnonymousClass37(anonymousClass36);
            }

            @Override // com.facebook.ads.redexgen.X.AnonymousClass38
            public final void AGX(ByteBuffer byteBuffer) {
                ByteBuffer A002;
                int i = byteBuffer.position();
                int limit = byteBuffer.limit();
                int limit2 = limit - i;
                int position = this.A05.A02;
                switch (position) {
                    case C.BUFFER_FLAG_LAST_SAMPLE /* 536870912 */:
                        int position2 = limit2 / 3;
                        A002 = A00(position2 * 4);
                        while (i < limit) {
                            int position3 = byteBuffer.get(i);
                            int limit3 = (position3 & 255) << 8;
                            int position4 = i + 1;
                            int limit4 = limit3 | ((byteBuffer.get(position4) & 255) << 16);
                            int position5 = i + 2;
                            A00(limit4 | ((byteBuffer.get(position5) & 255) << 24), A002);
                            i += 3;
                        }
                        break;
                    case 805306368:
                        A002 = A00(limit2);
                        while (i < limit) {
                            int position6 = byteBuffer.get(i);
                            int limit5 = position6 & 255;
                            int position7 = i + 1;
                            int limit6 = limit5 | ((byteBuffer.get(position7) & 255) << 8);
                            int position8 = i + 2;
                            int limit7 = limit6 | ((byteBuffer.get(position8) & 255) << 16);
                            int position9 = i + 3;
                            A00(limit7 | ((byteBuffer.get(position9) & 255) << 24), A002);
                            i += 4;
                        }
                        break;
                    default:
                        throw new IllegalStateException();
                }
                int position10 = byteBuffer.limit();
                byteBuffer.position(position10);
                A002.flip();
            }
        }};
        this.A00 = 1.0f;
        this.A0E = C2067oy.A07;
        this.A01 = 0;
        this.A0F = new C1P(0, 0.0f);
        this.A0N = new C04698h(C2045ob.A06, false, 0L, 0L);
        this.A0G = C2045ob.A06;
        this.A03 = -1;
        this.A0d = new AnonymousClass38[0];
        this.A0e = new ByteBuffer[0];
        this.A0q = new ArrayDeque<>();
        this.A0n = new C8k<>(100L);
        this.A0o = new C8k<>(100L);
        this.A0i = null;
    }

    @MetaExoPlayerCustomization(type = {"MERGED"}, value = "D58560720: customized audio track retry logic. Feature is available upstream already")
    private int A00() {
        if (C1662i5.A03(EnumC1659i2.A1i)) {
            return A01(this.A0K.A06, this.A0K.A02, this.A0K.A03);
        }
        return 1000000;
    }

    public static int A01(int i, int i2, int i3) {
        int minBufferSize = AudioTrack.getMinBufferSize(i, i2, i3);
        C3M.A08(minBufferSize != -2);
        return minBufferSize;
    }

    public static int A02(int i, ByteBuffer byteBuffer) {
        switch (i) {
            case 5:
            case 6:
            case 18:
                return GF.A03(byteBuffer);
            case 7:
            case 8:
                int headerDataInBigEndian = GV.A00(byteBuffer);
                return headerDataInBigEndian;
            case 9:
                int headerDataInBigEndian2 = AbstractC03624a.A0F(byteBuffer, byteBuffer.position());
                int headerDataInBigEndian3 = AbstractC0671Gm.A01(headerDataInBigEndian2);
                if (headerDataInBigEndian3 != -1) {
                    return headerDataInBigEndian3;
                }
                throw new IllegalArgumentException();
            case 10:
                return 1024;
            case 11:
            case 12:
                return 2048;
            case 13:
            case 19:
            default:
                throw new IllegalStateException(A0L(TPCodecParamers.TP_PROFILE_H264_HIGH_444_PREDICTIVE, 27, 17) + i);
            case 14:
                int syncframeOffset = GF.A02(byteBuffer);
                if (syncframeOffset == -1) {
                    return 0;
                }
                return GF.A04(byteBuffer, syncframeOffset) * 16;
            case 15:
                return 512;
            case 16:
                return 1024;
            case 17:
                return GI.A01(byteBuffer);
            case 20:
                return AbstractC0676Gr.A00(byteBuffer);
        }
    }

    private int A03(AudioFormat audioFormat, AudioAttributes audioAttributes) {
        if (AbstractC03624a.A02 >= 31) {
            return AudioManager.getPlaybackOffloadSupport(audioFormat, audioAttributes);
        }
        if (!AudioManager.isOffloadedPlaybackSupported(audioFormat, audioAttributes)) {
            return 0;
        }
        if (AbstractC03624a.A02 == 30) {
            String str = AbstractC03624a.A06;
            String[] strArr = A10;
            if (strArr[2].charAt(24) != strArr[6].charAt(24)) {
                throw new RuntimeException();
            }
            A10[7] = "3tkRuQxdBcZlCTwsgu7cjpWlPYr81dQa";
            if (str.startsWith(A0L(173, 5, 73))) {
                if (A10[7].length() != 32) {
                    return 2;
                }
                A10[7] = "7yaDe65lYY86qlvGhmsANLPH6jvNYU2p";
                return 2;
            }
            return 1;
        }
        return 1;
    }

    public static int A04(AudioTrack audioTrack, ByteBuffer byteBuffer, int i) {
        return audioTrack.write(byteBuffer, i, 1);
    }

    private int A05(AudioTrack audioTrack, ByteBuffer byteBuffer, int i, long j) {
        if (AbstractC03624a.A02 >= 26) {
            return audioTrack.write(byteBuffer, i, 1, j * 1000);
        }
        if (this.A0P == null) {
            this.A0P = ByteBuffer.allocate(16);
            this.A0P.order(ByteOrder.BIG_ENDIAN);
            this.A0P.putInt(1431633921);
        }
        if (this.A02 == 0) {
            this.A0P.putInt(4, i);
            this.A0P.putLong(8, 1000 * j);
            this.A0P.position(0);
            this.A02 = i;
        }
        int result = this.A0P.remaining();
        if (result > 0) {
            int avSyncHeaderBytesRemaining = audioTrack.write(this.A0P, result, 1);
            if (avSyncHeaderBytesRemaining < 0) {
                this.A02 = 0;
                return avSyncHeaderBytesRemaining;
            } else if (avSyncHeaderBytesRemaining < result) {
                return 0;
            }
        }
        int A04 = A04(audioTrack, byteBuffer, i);
        if (A04 < 0) {
            this.A02 = 0;
            return A04;
        }
        int i2 = this.A02 - A04;
        String[] strArr = A10;
        if (strArr[0].charAt(31) != strArr[3].charAt(31)) {
            A10[7] = "dZEIQVBMkpJ01dOsE3P3AYpi9pP3UgAn";
            this.A02 = i2;
            return A04;
        }
        throw new RuntimeException();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public long A06() {
        if (this.A0K.A04 == 0) {
            long j = this.A0A;
            if (A10[1].length() != 2) {
                throw new RuntimeException();
            }
            String[] strArr = A10;
            strArr[2] = "fKroUyDCoriQZ27MdWvBeynNHxXh31S0";
            strArr[6] = "V2Tsqcz9Ivj1DWTn2T33JaE9HhmQCs1A";
            return j / this.A0K.A01;
        }
        return this.A09;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public long A07() {
        if (this.A0K.A04 == 0) {
            return this.A0C / this.A0K.A05;
        }
        return this.A0B;
    }

    private long A08(long j) {
        while (!this.A0q.isEmpty() && j >= this.A0q.getFirst().A00) {
            C04698h remove = this.A0q.remove();
            String[] strArr = A10;
            if (strArr[0].charAt(31) == strArr[3].charAt(31)) {
                throw new RuntimeException();
            }
            A10[7] = "uS5QwbhdMNBXkjn1i9eeeV7Jy2FKd79B";
            this.A0N = remove;
        }
        long j2 = j - this.A0N.A00;
        if (this.A0N.A02.equals(C2045ob.A06)) {
            return this.A0N.A01 + j2;
        }
        if (this.A0q.isEmpty()) {
            long mediaDurationSinceLastCheckpointUs = this.A0g.A8M(j2);
            long playoutDurationSinceLastCheckpointUs = this.A0N.A01;
            return playoutDurationSinceLastCheckpointUs + mediaDurationSinceLastCheckpointUs;
        }
        C04698h first = this.A0q.getFirst();
        long A0Q = AbstractC03624a.A0Q(first.A00 - j, this.A0N.A02.A01);
        long playoutDurationSinceLastCheckpointUs2 = first.A01;
        return playoutDurationSinceLastCheckpointUs2 - A0Q;
    }

    private long A09(long j) {
        return this.A0K.A08(this.A0g.A90()) + j;
    }

    public static AudioFormat A0D(int i, int i2, int i3) {
        return new AudioFormat.Builder().setSampleRate(i).setChannelMask(i2).setEncoding(i3).build();
    }

    private AudioTrack A0F() throws C8H {
        try {
            return A0G((C04678f) C3M.A01(this.A0K));
        } catch (C8H e) {
            int retryBufferSize = A00();
            if (this.A0K.A00 > retryBufferSize) {
                C04678f A0C = this.A0K.A0C(retryBufferSize);
                try {
                    AudioTrack A0G = A0G(A0C);
                    this.A0K = A0C;
                    return A0G;
                } catch (C8H initialFailure) {
                    e.addSuppressed(initialFailure);
                    A0O();
                    throw e;
                }
            }
            A0O();
            throw e;
        }
    }

    private AudioTrack A0G(C04678f c04678f) throws C8H {
        try {
            AudioTrack A0A = c04678f.A0A(this.A0b, this.A0E, this.A01);
            if (0 != 0) {
                A0l(A0A);
            }
            return A0A;
        } catch (C8H e) {
            if (this.A0I != null) {
                this.A0I.ACV(e);
            }
            throw e;
        }
    }

    private C2045ob A0I() {
        return A0K().A02;
    }

    private C04698h A0K() {
        if (this.A0M != null) {
            return this.A0M;
        }
        if (!this.A0q.isEmpty()) {
            return this.A0q.getLast();
        }
        return this.A0N;
    }

    public static /* synthetic */ AtomicInteger A0M() {
        AtomicInteger atomicInteger = A0y;
        if (A10[4].length() != 6) {
            A10[7] = "bxvwh9PGR3JBxYGaTMYcQ8NcsphLXH3B";
            return atomicInteger;
        }
        throw new RuntimeException();
    }

    /* JADX WARN: Incorrect condition in loop: B:4:0x0004 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void A0N() {
        /*
            r3 = this;
            r2 = 0
        L1:
            com.facebook.ads.redexgen.X.38[] r0 = r3.A0d
            int r0 = r0.length
            if (r2 >= r0) goto L18
            com.facebook.ads.redexgen.X.38[] r0 = r3.A0d
            r0 = r0[r2]
            r0.flush()
            java.nio.ByteBuffer[] r1 = r3.A0e
            java.nio.ByteBuffer r0 = r0.A8V()
            r1[r2] = r0
            int r2 = r2 + 1
            goto L1
        L18:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.C1945mw.A0N():void");
    }

    private void A0O() {
        if (this.A0K.A0D()) {
            if (A10[1].length() != 2) {
                throw new RuntimeException();
            }
            A10[5] = "ac1bNzRzCepoXog5xkGE2UP5sVZPG6ZN";
            this.A0W = true;
        }
    }

    private void A0P() {
        if (!this.A0a) {
            this.A0a = true;
            this.A0k.A0H(A07());
            this.A0D.stop();
            this.A02 = 0;
        }
    }

    private void A0Q() {
        this.A0A = 0L;
        this.A09 = 0L;
        this.A0C = 0L;
        this.A0B = 0L;
        this.A0V = false;
        this.A04 = 0;
        this.A0N = new C04698h(A0I(), A0p(), 0L, 0L);
        this.A08 = 0L;
        this.A0M = null;
        this.A0q.clear();
        this.A0Q = null;
        this.A05 = 0;
        this.A0R = null;
        this.A0a = false;
        this.A0U = false;
        this.A03 = -1;
        this.A0P = null;
        this.A02 = 0;
        this.A0p.A0D();
        A0N();
    }

    private void A0R() {
        if (!A0h()) {
            return;
        }
        if (AbstractC03624a.A02 >= 21) {
            A0X(this.A0D, this.A00);
        } else {
            A0Y(this.A0D, this.A00);
        }
    }

    private void A0S() {
        AnonymousClass38[] anonymousClass38Arr = this.A0K.A09;
        ArrayList arrayList = new ArrayList();
        for (AnonymousClass38 anonymousClass38 : anonymousClass38Arr) {
            if (anonymousClass38.AAC()) {
                arrayList.add(anonymousClass38);
            } else {
                anonymousClass38.flush();
            }
        }
        int size = arrayList.size();
        AnonymousClass38[] audioProcessors = new AnonymousClass38[size];
        this.A0d = (AnonymousClass38[]) arrayList.toArray(audioProcessors);
        this.A0e = new ByteBuffer[size];
        A0N();
    }

    private void A0U(long j) {
        C2045ob c2045ob;
        boolean z;
        if (A0i()) {
            c2045ob = this.A0g.A47(A0I());
        } else {
            c2045ob = C2045ob.A06;
            if (A10[7].length() != 32) {
                throw new RuntimeException();
            }
            String[] strArr = A10;
            strArr[0] = "I2oaxDVd9h4oXXSjJqrHfFArwnmkYbuU";
            strArr[3] = "djNSsSrQ9W3py9jFqud3MNGsNXIKPv6H";
        }
        if (A0i()) {
            z = this.A0g.A48(A0p());
        } else {
            z = false;
        }
        this.A0q.add(new C04698h(c2045ob, z, Math.max(0L, j), this.A0K.A08(A07())));
        A0S();
        if (this.A0I != null) {
            this.A0I.AFF(z);
        }
    }

    private void A0V(long j) throws C8M {
        ByteBuffer byteBuffer;
        int length = this.A0d.length;
        int i = length;
        while (i >= 0) {
            if (i > 0) {
                ByteBuffer[] byteBufferArr = this.A0e;
                int i2 = i - 1;
                String[] strArr = A10;
                String str = strArr[0];
                String str2 = strArr[3];
                int index = str.charAt(31);
                int count = str2.charAt(31);
                if (index == count) {
                    throw new RuntimeException();
                }
                A10[1] = "0P";
                byteBuffer = byteBufferArr[i2];
            } else {
                byteBuffer = this.A0Q != null ? this.A0Q : AnonymousClass38.A00;
            }
            if (i == length) {
                A0e(byteBuffer, j);
            } else {
                AnonymousClass38 anonymousClass38 = this.A0d[i];
                int index2 = this.A03;
                if (i > index2) {
                    anonymousClass38.AGX(byteBuffer);
                }
                ByteBuffer A8V = anonymousClass38.A8V();
                this.A0e[i] = A8V;
                if (A8V.hasRemaining()) {
                    i++;
                }
            }
            if (byteBuffer.hasRemaining()) {
                return;
            }
            i--;
        }
    }

    private void A0W(AudioTrack audioTrack) {
        if (this.A0O == null) {
            this.A0O = new C04738n(this);
        }
        C04738n c04738n = this.A0O;
        String[] strArr = A10;
        if (strArr[2].charAt(24) != strArr[6].charAt(24)) {
            throw new RuntimeException();
        }
        A10[7] = "8t8nFWsxRl9HTQxqXeO3m9pm7diLrI9Q";
        c04738n.A00(audioTrack);
    }

    public static void A0X(AudioTrack audioTrack, float f) {
        audioTrack.setVolume(f);
    }

    public static void A0Y(AudioTrack audioTrack, float f) {
        audioTrack.setStereoVolume(f, f);
    }

    private void A0Z(final AudioTrack audioTrack, final C3W c3w, final C8J c8j, final C8F c8f) {
        c3w.A02();
        final Handler handler = new Handler(Looper.myLooper());
        synchronized (A11) {
            if (A0x == null) {
                A0x = AbstractC03624a.A0u(A0L(23, 33, 21));
            }
            A0w++;
            A0x.execute(new Runnable() { // from class: com.facebook.ads.redexgen.X.8Y
                @Override // java.lang.Runnable
                public final void run() {
                    C1945mw.A0a(audioTrack, c8j, handler, c8f, c3w);
                }
            });
        }
    }

    public static /* synthetic */ void A0a(AudioTrack audioTrack, final C8J c8j, Handler handler, final C8F c8f, C3W c3w) {
        try {
            audioTrack.flush();
            audioTrack.release();
            if (c8j != null && handler.getLooper().getThread().isAlive()) {
                handler.post(new Runnable() { // from class: com.facebook.ads.redexgen.X.8X
                    @Override // java.lang.Runnable
                    public final void run() {
                        C8J.this.ACX(c8f);
                    }
                });
            }
            c3w.A04();
            synchronized (A11) {
                A0w--;
                if (A0w == 0) {
                    A0x.shutdown();
                    A0x = null;
                }
            }
        } catch (Throwable th) {
            if (c8j != null && handler.getLooper().getThread().isAlive()) {
                handler.post(new Runnable() { // from class: com.facebook.ads.redexgen.X.8X
                    @Override // java.lang.Runnable
                    public final void run() {
                        C8J.this.ACX(c8f);
                    }
                });
            }
            c3w.A04();
            synchronized (A11) {
                A0w--;
                if (A0w == 0) {
                    A0x.shutdown();
                    A0x = null;
                }
                throw th;
            }
        }
    }

    private void A0b(C2045ob c2045ob) {
        if (A0h()) {
            try {
                this.A0D.setPlaybackParams(new PlaybackParams().allowDefaults().setSpeed(c2045ob.A01).setPitch(c2045ob.A00).setAudioFallbackMode(2));
            } catch (IllegalArgumentException e) {
                AnonymousClass44.A0A(A0L(7, 16, 23), A0L(56, 29, 89), e);
            }
            PlaybackParams playbackParams = this.A0D.getPlaybackParams();
            float speed = playbackParams.getSpeed();
            PlaybackParams playbackParams2 = this.A0D.getPlaybackParams();
            c2045ob = new C2045ob(speed, playbackParams2.getPitch());
            this.A0k.A0G(c2045ob.A01);
        }
        this.A0G = c2045ob;
    }

    private void A0c(C2045ob c2045ob, boolean z) {
        C04698h A0K = A0K();
        if (!c2045ob.equals(A0K.A02) || z != A0K.A03) {
            C04698h mediaPositionParameters = new C04698h(c2045ob, z, -9223372036854775807L, -9223372036854775807L);
            if (A0h()) {
                this.A0M = mediaPositionParameters;
            } else {
                this.A0N = mediaPositionParameters;
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:50:0x00e8, code lost:
        if (r0 < r2) goto L81;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void A0e(java.nio.ByteBuffer r13, long r14) throws com.facebook.ads.redexgen.X.C8M {
        /*
            Method dump skipped, instructions count: 346
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.C1945mw.A0e(java.nio.ByteBuffer, long):void");
    }

    /* JADX WARN: Code restructure failed: missing block: B:23:0x0078, code lost:
        if (r8.A0R != null) goto L28;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x007a, code lost:
        return false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x0084, code lost:
        if (r8.A0R != null) goto L28;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private boolean A0f() throws com.facebook.ads.redexgen.X.C8M {
        /*
            r8 = this;
            r7 = 0
            int r0 = r8.A03
            r4 = 0
            r3 = -1
            if (r0 != r3) goto La
            r8.A03 = r4
            r7 = 1
        La:
            int r5 = r8.A03
            com.facebook.ads.redexgen.X.38[] r0 = r8.A0d
            int r0 = r0.length
            r1 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            r6 = 1
            if (r5 >= r0) goto L59
            com.facebook.ads.redexgen.X.38[] r5 = r8.A0d
            int r0 = r8.A03
            r0 = r5[r0]
            if (r7 == 0) goto L22
            r0.AGW()
        L22:
            r8.A0V(r1)
            boolean r5 = r0.AAG()
            java.lang.String[] r2 = com.facebook.ads.redexgen.X.C1945mw.A10
            r0 = 0
            r1 = r2[r0]
            r0 = 3
            r2 = r2[r0]
            r0 = 31
            char r1 = r1.charAt(r0)
            char r0 = r2.charAt(r0)
            if (r1 == r0) goto L53
            java.lang.String[] r2 = com.facebook.ads.redexgen.X.C1945mw.A10
            java.lang.String r1 = "SZlzkFrjT9RrDQln4ds2mG9At4QQTsjU"
            r0 = 0
            r2[r0] = r1
            java.lang.String r1 = "7YjBVNvSPjH845plY2W9SI0PPB4m8Pgz"
            r0 = 3
            r2[r0] = r1
            if (r5 != 0) goto L4c
            return r4
        L4c:
            r7 = 1
            int r0 = r8.A03
            int r0 = r0 + r6
            r8.A03 = r0
            goto La
        L53:
            java.lang.RuntimeException r0 = new java.lang.RuntimeException
            r0.<init>()
            throw r0
        L59:
            java.nio.ByteBuffer r0 = r8.A0R
            if (r0 == 0) goto L87
            java.nio.ByteBuffer r0 = r8.A0R
            r8.A0e(r0, r1)
            java.lang.String[] r2 = com.facebook.ads.redexgen.X.C1945mw.A10
            r0 = 2
            r1 = r2[r0]
            r0 = 6
            r2 = r2[r0]
            r0 = 24
            char r1 = r1.charAt(r0)
            char r0 = r2.charAt(r0)
            if (r1 == r0) goto L7b
            java.nio.ByteBuffer r0 = r8.A0R
            if (r0 == 0) goto L87
        L7a:
            return r4
        L7b:
            java.lang.String[] r2 = com.facebook.ads.redexgen.X.C1945mw.A10
            java.lang.String r1 = "ih"
            r0 = 1
            r2[r0] = r1
            java.nio.ByteBuffer r0 = r8.A0R
            if (r0 == 0) goto L87
            goto L7a
        L87:
            r8.A03 = r3
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.C1945mw.A0f():boolean");
    }

    @MetaExoPlayerCustomization(type = {"MERGED"}, value = "D45157249: Retry Audio Track Init failure with less Audio track allocation sizes; Upstream has this feature")
    private boolean A0g() throws C8H {
        if (this.A0h.A03()) {
            this.A0D = this.A0S ? A0F() : A0G(this.A0K);
            String[] strArr = A10;
            if (strArr[2].charAt(24) != strArr[6].charAt(24)) {
                throw new RuntimeException();
            }
            String[] strArr2 = A10;
            strArr2[2] = "dWhjJD4ryPYmrGCHimoCOlqhHDAwt6Vc";
            strArr2[6] = "fifoJCnFOIc3PbrGHGLYECSFH4AKcCFA";
            if (A0l(this.A0D)) {
                A0W(this.A0D);
                if (this.A0f != 3) {
                    this.A0D.setOffloadDelayPadding(this.A0K.A07.A08, this.A0K.A07.A09);
                }
            }
            if (AbstractC03624a.A02 >= 31 && this.A0H != null) {
                C04648b.A00(this.A0D, this.A0H);
            }
            this.A01 = this.A0D.getAudioSessionId();
            this.A0k.A0I(this.A0D, this.A0K.A04 == 2, this.A0K.A03, this.A0K.A05, this.A0K.A00);
            A0R();
            if (this.A0F.A01 != 0) {
                this.A0D.attachAuxEffect(this.A0F.A01);
                AudioTrack audioTrack = this.A0D;
                C1P c1p = this.A0F;
                if (A10[7].length() != 32) {
                    audioTrack.setAuxEffectSendLevel(c1p.A00);
                } else {
                    A10[7] = "RIRRfrrRSIs4t73WNQ17weV6jTByi7uZ";
                    audioTrack.setAuxEffectSendLevel(c1p.A00);
                }
            }
            if (this.A0J != null && AbstractC03624a.A02 >= 23) {
                C8a.A00(this.A0D, this.A0J);
            }
            this.A0Y = true;
            if (this.A0I != null) {
                this.A0I.ACW(this.A0K.A0B());
            }
            return true;
        }
        return false;
    }

    private boolean A0h() {
        return this.A0D != null;
    }

    private boolean A0i() {
        if (!this.A0b) {
            if (A0L(271, 9, 70).equals(this.A0K.A07.A0W) && !A0j(this.A0K.A07.A0C)) {
                return true;
            }
        }
        return false;
    }

    private boolean A0j(int i) {
        return this.A0s && AbstractC03624a.A14(i);
    }

    public static boolean A0k(int i) {
        return (AbstractC03624a.A02 >= 24 && i == -6) || i == -32;
    }

    public static boolean A0l(AudioTrack audioTrack) {
        return AbstractC03624a.A02 >= 29 && audioTrack.isOffloadedPlayback();
    }

    /* JADX WARN: Removed duplicated region for block: B:25:0x004e  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x0055  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private boolean A0m(com.facebook.ads.redexgen.X.C2061or r5, com.facebook.ads.redexgen.X.C2067oy r6) {
        /*
            r4 = this;
            int r1 = com.facebook.ads.redexgen.X.AbstractC03624a.A02
            r0 = 29
            r3 = 0
            if (r1 < r0) goto Lb
            int r0 = r4.A0f
            if (r0 != 0) goto Lc
        Lb:
            return r3
        Lc:
            java.lang.String r0 = r5.A0W
            java.lang.Object r1 = com.facebook.ads.redexgen.X.C3M.A01(r0)
            java.lang.String r1 = (java.lang.String) r1
            java.lang.String r0 = r5.A0R
            int r2 = com.facebook.ads.redexgen.X.AbstractC03172h.A03(r1, r0)
            if (r2 != 0) goto L1d
            return r3
        L1d:
            int r0 = r5.A06
            int r1 = com.facebook.ads.redexgen.X.AbstractC03624a.A01(r0)
            if (r1 != 0) goto L26
            return r3
        L26:
            int r0 = r5.A0G
            android.media.AudioFormat r1 = A0D(r0, r1, r2)
            com.facebook.ads.redexgen.X.1N r0 = r6.A01()
            android.media.AudioAttributes r0 = r0.A00
            int r0 = r4.A03(r1, r0)
            r2 = 1
            switch(r0) {
                case 0: goto L59;
                case 1: goto L41;
                case 2: goto L40;
                default: goto L3a;
            }
        L3a:
            java.lang.IllegalStateException r0 = new java.lang.IllegalStateException
            r0.<init>()
            throw r0
        L40:
            return r2
        L41:
            int r0 = r5.A08
            if (r0 != 0) goto L49
            int r0 = r5.A09
            if (r0 == 0) goto L57
        L49:
            r1 = 1
        L4a:
            int r0 = r4.A0f
            if (r0 != r2) goto L55
            r0 = 1
        L4f:
            if (r1 == 0) goto L53
            if (r0 != 0) goto L54
        L53:
            r3 = 1
        L54:
            return r3
        L55:
            r0 = 0
            goto L4f
        L57:
            r1 = 0
            goto L4a
        L59:
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.C1945mw.A0m(com.facebook.ads.redexgen.X.or, com.facebook.ads.redexgen.X.oy):boolean");
    }

    public final int A0o(C2061or c2061or) {
        if (!A0L(271, 9, 70).equals(c2061or.A0W)) {
            return ((this.A0W || !A0m(c2061or, this.A0E)) && !this.A0j.A0B(c2061or)) ? 0 : 2;
        } else if (!AbstractC03624a.A15(c2061or.A0C)) {
            AnonymousClass44.A07(A0L(7, 16, 23), A0L(85, 22, 8) + c2061or.A0C);
            return 0;
        } else {
            int i = c2061or.A0C;
            if (A10[7].length() != 32) {
                throw new RuntimeException();
            }
            A10[1] = "pL";
            return (i == 2 || (this.A0s && c2061or.A0C == 4)) ? 2 : 1;
        }
    }

    public final boolean A0p() {
        return A0K().A03;
    }

    @Override // com.facebook.ads.redexgen.X.C8N
    public final void A51(C2061or c2061or, int i, int[] iArr) throws C8G {
        int outputSampleRate;
        AnonymousClass38[] anonymousClass38Arr;
        int outputSampleRate2;
        int outputPcmFrameSize;
        int outputChannelConfig;
        int intValue;
        int outputEncoding;
        int outputMode = i;
        int[] iArr2 = iArr;
        if (A0L(271, 9, 70).equals(c2061or.A0W)) {
            C3M.A07(AbstractC03624a.A15(c2061or.A0C));
            outputSampleRate = AbstractC03624a.A06(c2061or.A0C, c2061or.A06);
            if (A0j(c2061or.A0C)) {
                anonymousClass38Arr = this.A0t;
            } else {
                anonymousClass38Arr = this.A0u;
            }
            C9I c9i = this.A0p;
            int inputPcmFrameSize = c2061or.A08;
            c9i.A0E(inputPcmFrameSize, c2061or.A09);
            int inputPcmFrameSize2 = AbstractC03624a.A02;
            if (inputPcmFrameSize2 < 21) {
                int inputPcmFrameSize3 = c2061or.A06;
                if (inputPcmFrameSize3 == 8 && iArr2 == null) {
                    iArr2 = new int[6];
                    for (int inputPcmFrameSize4 = 0; inputPcmFrameSize4 < iArr2.length; inputPcmFrameSize4++) {
                        iArr2[inputPcmFrameSize4] = inputPcmFrameSize4;
                    }
                }
            }
            this.A0l.A0C(iArr2);
            int i2 = c2061or.A0G;
            int inputPcmFrameSize5 = c2061or.A06;
            AnonymousClass36 anonymousClass36 = new AnonymousClass36(i2, inputPcmFrameSize5, c2061or.A0C);
            for (AnonymousClass38 anonymousClass38 : anonymousClass38Arr) {
                try {
                    AnonymousClass36 A4z = anonymousClass38.A4z(anonymousClass36);
                    if (anonymousClass38.AAC()) {
                        anonymousClass36 = A4z;
                    }
                } catch (AnonymousClass37 e) {
                    throw new C8G(e, c2061or);
                }
            }
            outputChannelConfig = 0;
            intValue = anonymousClass36.A02;
            outputSampleRate2 = anonymousClass36.A03;
            outputEncoding = AbstractC03624a.A01(anonymousClass36.A01);
            outputPcmFrameSize = AbstractC03624a.A06(intValue, anonymousClass36.A01);
        } else {
            outputSampleRate = -1;
            anonymousClass38Arr = new AnonymousClass38[0];
            outputSampleRate2 = c2061or.A0G;
            outputPcmFrameSize = -1;
            if (A0m(c2061or, this.A0E)) {
                outputChannelConfig = 1;
                intValue = AbstractC03172h.A03((String) C3M.A01(c2061or.A0W), c2061or.A0R);
                outputEncoding = AbstractC03624a.A01(c2061or.A06);
            } else {
                outputChannelConfig = 2;
                if (A10[1].length() == 2) {
                    A10[5] = "lAbqtU1Up8pAGeHbeXVy9OX5EzAUCGx9";
                    Pair<Integer, Integer> A09 = this.A0j.A09(c2061or);
                    if (A09 != null) {
                        intValue = ((Integer) A09.first).intValue();
                        outputEncoding = ((Integer) A09.second).intValue();
                        if (A10[7].length() == 32) {
                            A10[1] = "Lw";
                        }
                    } else {
                        throw new C8G(A0L(207, 37, 24) + c2061or, c2061or);
                    }
                }
                throw new RuntimeException();
            }
        }
        String A0L = A0L(0, 7, 114);
        if (intValue != 0) {
            if (outputEncoding != 0) {
                if (outputMode == 0) {
                    InterfaceC04668d interfaceC04668d = this.A0m;
                    int A01 = A01(outputSampleRate2, outputEncoding, intValue);
                    int outputChannelConfig2 = outputPcmFrameSize != -1 ? outputPcmFrameSize : 1;
                    outputMode = interfaceC04668d.A6x(A01, intValue, outputChannelConfig, outputChannelConfig2, outputSampleRate2, c2061or.A05, this.A0r ? 8.0d : 1.0d);
                }
                this.A0W = false;
                C04678f c04678f = new C04678f(c2061or, outputSampleRate, outputChannelConfig, outputPcmFrameSize, outputSampleRate2, outputEncoding, intValue, outputMode, anonymousClass38Arr, this.A0b);
                if (A0h()) {
                    this.A0L = c04678f;
                    return;
                } else {
                    this.A0K = c04678f;
                    return;
                }
            }
            throw new C8G(A0L(107, 36, 56) + outputChannelConfig + A0L + c2061or, c2061or);
        }
        throw new C8G(A0L(143, 30, 72) + outputChannelConfig + A0L + c2061or, c2061or);
    }

    @Override // com.facebook.ads.redexgen.X.C8N
    public final void A5r() {
        if (this.A0b) {
            this.A0b = false;
            flush();
        }
    }

    @Override // com.facebook.ads.redexgen.X.C8N
    public final void A6E() {
        C3M.A08(AbstractC03624a.A02 >= 21);
        C3M.A08(this.A0T);
        if (!this.A0b) {
            this.A0b = true;
            flush();
        }
    }

    @Override // com.facebook.ads.redexgen.X.C8N
    public final void A6L() {
        if (AbstractC03624a.A02 < 25) {
            flush();
            return;
        }
        this.A0o.A00();
        this.A0n.A00();
        if (!A0h()) {
            return;
        }
        A0Q();
        if (this.A0k.A0J()) {
            this.A0D.pause();
        }
        this.A0D.flush();
        this.A0k.A0E();
        this.A0k.A0I(this.A0D, this.A0K.A04 == 2, this.A0K.A03, this.A0K.A05, this.A0K.A00);
        this.A0Y = true;
    }

    @Override // com.facebook.ads.redexgen.X.C8N
    public final long A7X(boolean z) {
        if (!A0h() || this.A0Y) {
            return Long.MIN_VALUE;
        }
        long A0D = this.A0k.A0D(z);
        C04678f c04678f = this.A0K;
        long positionUs = A07();
        return A09(A08(Math.min(A0D, c04678f.A08(positionUs))));
    }

    @Override // com.facebook.ads.redexgen.X.C8N
    public final C2045ob A8e() {
        if (this.A0r) {
            return this.A0G;
        }
        return A0I();
    }

    @Override // com.facebook.ads.redexgen.X.C8N
    public final boolean A9W(ByteBuffer byteBuffer, final long adjustmentUs, int i) throws C8H, C8M {
        C3M.A07(this.A0Q == null || byteBuffer == this.A0Q);
        if (this.A0L != null) {
            if (!A0f()) {
                return false;
            }
            if (this.A0L.A0E(this.A0K)) {
                this.A0K = this.A0L;
                this.A0L = null;
                if (A0l(this.A0D) && this.A0f != 3) {
                    if (this.A0D.getPlayState() == 3) {
                        this.A0D.setOffloadEndOfStream();
                    }
                    AudioTrack audioTrack = this.A0D;
                    int i2 = this.A0K.A07.A08;
                    String[] strArr = A10;
                    if (strArr[0].charAt(31) != strArr[3].charAt(31)) {
                        String[] strArr2 = A10;
                        strArr2[0] = "jzTmuhmcT6oYK5lhq8C6QOSyUXF7wdwQ";
                        strArr2[3] = "cWMrj79Gd0zdSeVIzQJ8siz7G3nSjdgD";
                        audioTrack.setOffloadDelayPadding(i2, this.A0K.A07.A09);
                        this.A0V = true;
                    } else {
                        throw new RuntimeException();
                    }
                }
            } else {
                A0P();
                if (A9g()) {
                    return false;
                }
                flush();
            }
            A0U(adjustmentUs);
        }
        if (!A0h()) {
            try {
                if (!A0g()) {
                    return false;
                }
            } catch (C8H e) {
                if (!e.A02) {
                    this.A0n.A01(e);
                    return false;
                }
                throw e;
            }
        }
        this.A0n.A00();
        if (this.A0Y) {
            this.A08 = Math.max(0L, adjustmentUs);
            this.A0Z = false;
            this.A0Y = false;
            if (this.A0r && AbstractC03624a.A02 >= 23) {
                A0b(this.A0G);
            }
            A0U(adjustmentUs);
            if (this.A0X) {
                AGG();
            }
        }
        if (this.A0k.A0N(A07())) {
            if (this.A0Q == null) {
                C3M.A07(byteBuffer.order() == ByteOrder.LITTLE_ENDIAN);
                if (!byteBuffer.hasRemaining()) {
                    return true;
                }
                if (this.A0K.A04 != 0 && this.A04 == 0) {
                    this.A04 = A02(this.A0K.A03, byteBuffer);
                    if (this.A04 == 0) {
                        return true;
                    }
                }
                if (this.A0M != null) {
                    if (!A0f()) {
                        return false;
                    }
                    A0U(adjustmentUs);
                    this.A0M = null;
                }
                final long A09 = this.A08 + this.A0K.A09(A06() - this.A0p.A0C());
                if (!this.A0Z && Math.abs(A09 - adjustmentUs) > 200000) {
                    if (this.A0I != null) {
                        this.A0I.ACV(new Exception(adjustmentUs, A09) { // from class: com.facebook.ads.redexgen.X.8L
                            public static byte[] A02;
                            public final long A00;
                            public final long A01;

                            static {
                                A01();
                            }

                            public static String A00(int i3, int i4, int i5) {
                                byte[] copyOfRange = Arrays.copyOfRange(A02, i3, i3 + i4);
                                for (int i6 = 0; i6 < copyOfRange.length; i6++) {
                                    copyOfRange[i6] = (byte) ((copyOfRange[i6] - i5) + PlaybackException.ERROR_CODE_NOT_AVAILABLE_IN_REGION);
                                }
                                return new String(copyOfRange);
                            }

                            public static void A01() {
                                A02 = new byte[]{-20, -32, 39, 47, 52, -32, Ascii.GS, 54, 45, SignedBytes.MAX_POWER_OF_TWO, 56, 45, 43, 60, 45, 44, -24, 41, Base64.padSymbol, 44, 49, 55, -24, 60, 58, 41, 43, 51, -24, 60, 49, 53, 45, 59, 60, 41, 53, 56, -24, 44, 49, 59, 43, 55, 54, 60, 49, 54, Base64.padSymbol, 49, 60, 65, 2, -24, 45, SignedBytes.MAX_POWER_OF_TWO, 56, 45, 43, 60, 45, 44, -24};
                            }

                            {
                                super(A00(6, 57, 94) + A09 + A00(0, 6, 86) + adjustmentUs);
                                this.A00 = adjustmentUs;
                                this.A01 = A09;
                            }
                        });
                    }
                    this.A0Z = true;
                }
                if (this.A0Z) {
                    if (!A0f()) {
                        return false;
                    }
                    long j = adjustmentUs - A09;
                    this.A08 += j;
                    this.A0Z = false;
                    A0U(adjustmentUs);
                    if (this.A0I != null && j != 0) {
                        this.A0I.AEh();
                    }
                }
                if (this.A0K.A04 == 0) {
                    this.A0A += byteBuffer.remaining();
                } else {
                    this.A09 += this.A04 * i;
                }
                this.A0Q = byteBuffer;
                this.A05 = i;
            }
            A0V(adjustmentUs);
            if (!this.A0Q.hasRemaining()) {
                this.A0Q = null;
                this.A05 = 0;
                return true;
            } else if (this.A0k.A0M(A07())) {
                AnonymousClass44.A07(A0L(7, 16, 23), A0L(178, 29, 2));
                flush();
                return true;
            } else {
                return false;
            }
        }
        return false;
    }

    @Override // com.facebook.ads.redexgen.X.C8N
    public final void A9Z() {
        this.A0Z = true;
    }

    @Override // com.facebook.ads.redexgen.X.C8N
    public final boolean A9g() {
        return A0h() && this.A0k.A0L(A07());
    }

    @Override // com.facebook.ads.redexgen.X.C8N
    public final boolean AAG() {
        return !A0h() || (this.A0U && !A9g());
    }

    @Override // com.facebook.ads.redexgen.X.C8N
    public final void AGG() {
        this.A0X = true;
        if (A0h()) {
            this.A0k.A0F();
            this.A0D.play();
        }
    }

    @Override // com.facebook.ads.redexgen.X.C8N
    public final void AGI() throws C8M {
        if (!this.A0U && A0h() && A0f()) {
            A0P();
            this.A0U = true;
        }
    }

    @Override // com.facebook.ads.redexgen.X.C8N
    public final void AIW(C2067oy c2067oy) {
        if (this.A0E.equals(c2067oy)) {
            return;
        }
        this.A0E = c2067oy;
        if (this.A0b) {
            return;
        }
        flush();
    }

    @Override // com.facebook.ads.redexgen.X.C8N
    public final void AIX(int i) {
        if (this.A01 != i) {
            this.A01 = i;
            this.A0T = i != 0;
            flush();
        }
    }

    @Override // com.facebook.ads.redexgen.X.C8N
    public final void AIY(C1P c1p) {
        if (this.A0F.equals(c1p)) {
            return;
        }
        int i = c1p.A01;
        float f = c1p.A00;
        if (this.A0D != null) {
            int effectId = this.A0F.A01;
            if (effectId != i) {
                AudioTrack audioTrack = this.A0D;
                if (A10[7].length() != 32) {
                    throw new RuntimeException();
                }
                String[] strArr = A10;
                strArr[0] = "ejzMDVkCKjmiTtIYDMlHFxA2dL6L7Th4";
                strArr[3] = "3op87oKeQBz5MvPCbX5N1e1cWqib6LOP";
                audioTrack.attachAuxEffect(i);
            }
            if (i != 0) {
                this.A0D.setAuxEffectSendLevel(f);
            }
        }
        this.A0F = c1p;
    }

    @Override // com.facebook.ads.redexgen.X.C8N
    @MetaExoPlayerCustomization(type = {"NEW_METHOD"}, value = "D45157249: Retry Audio Track Init failure with less Audio track allocation sizes")
    public final void AIg(boolean z) {
        this.A0S = z;
    }

    @Override // com.facebook.ads.redexgen.X.C8N
    public final void AIl(C8J c8j) {
        this.A0I = c8j;
    }

    @Override // com.facebook.ads.redexgen.X.C8N
    public final void AIt(C2045ob c2045ob) {
        C2045ob c2045ob2 = new C2045ob(AbstractC03624a.A00(c2045ob.A01, 0.1f, 8.0f), AbstractC03624a.A00(c2045ob.A00, 0.1f, 8.0f));
        if (this.A0r) {
            int i = AbstractC03624a.A02;
            String[] strArr = A10;
            if (strArr[2].charAt(24) != strArr[6].charAt(24)) {
                throw new RuntimeException();
            }
            String[] strArr2 = A10;
            strArr2[0] = "mNkMATimN2JlCwGmoqKrFKrIOPJhoNaC";
            strArr2[3] = "5L3Fdp27ixuu2nNAlcGmWXwucnCjA2b5";
            if (i >= 23) {
                A0b(c2045ob2);
                return;
            }
        }
        A0c(c2045ob2, A0p());
    }

    @Override // com.facebook.ads.redexgen.X.C8N
    public final void AIw(C04527m c04527m) {
        this.A0H = c04527m;
    }

    @Override // com.facebook.ads.redexgen.X.C8N
    public final void AIy(AudioDeviceInfo audioDeviceInfo) {
        this.A0J = audioDeviceInfo == null ? null : new C04658c(audioDeviceInfo);
        String[] strArr = A10;
        if (strArr[2].charAt(24) != strArr[6].charAt(24)) {
            throw new RuntimeException();
        }
        String[] strArr2 = A10;
        strArr2[0] = "fdceU7wc4F7eltehFDuXboaWNHZsjBbo";
        strArr2[3] = "ndF9ePFUZlaV1XmuWN8y5PTJytJgMa2t";
        if (this.A0D != null) {
            C8a.A00(this.A0D, this.A0J);
        }
    }

    @Override // com.facebook.ads.redexgen.X.C8N
    public final void AJ4(boolean z) {
        A0c(A0I(), z);
    }

    @Override // com.facebook.ads.redexgen.X.C8N
    public final boolean AJc(C2061or c2061or) {
        return A0o(c2061or) != 0;
    }

    @Override // com.facebook.ads.redexgen.X.C8N
    @MetaExoPlayerCustomization(type = {"TEMPORARY"}, value = "Old API that can be removed when we move to MediaCodecRenderer2")
    public final boolean AJe(int i, int i2) {
        return AbstractC03624a.A15(i2) ? i2 != 4 || AbstractC03624a.A02 >= 21 : this.A0j != null && this.A0j.A0A(i2) && (i == -1 || i <= this.A0j.A08());
    }

    @Override // com.facebook.ads.redexgen.X.C8N
    public final void flush() {
        if (A0h()) {
            A0Q();
            if (this.A0k.A0J()) {
                this.A0D.pause();
            }
            boolean A0l = A0l(this.A0D);
            if (A10[4].length() == 6) {
                throw new RuntimeException();
            }
            A10[5] = "i9Rinuw5ztOihCbMK36CN4CjOXT3DfRT";
            if (A0l) {
                C04738n c04738n = this.A0O;
                if (A10[7].length() != 32) {
                    throw new RuntimeException();
                }
                A10[7] = "H3Tn5qbfAuT8Q6Ln8VWJEFxZf5lTeqqt";
                ((C04738n) C3M.A01(c04738n)).A01(this.A0D);
            }
            if (AbstractC03624a.A02 < 21 && !this.A0T) {
                this.A01 = 0;
            }
            C8F A0B = this.A0K.A0B();
            if (this.A0L != null) {
                this.A0K = this.A0L;
                this.A0L = null;
            }
            this.A0k.A0E();
            A0Z(this.A0D, this.A0h, this.A0I, A0B);
            this.A0D = null;
        }
        this.A0o.A00();
        this.A0n.A00();
    }

    @Override // com.facebook.ads.redexgen.X.C8N
    public final void pause() {
        this.A0X = false;
        if (A0h() && this.A0k.A0K()) {
            this.A0D.pause();
        }
    }

    @Override // com.facebook.ads.redexgen.X.C8N
    public final void setVolume(float f) {
        if (this.A00 != f) {
            this.A00 = f;
            String[] strArr = A10;
            if (strArr[0].charAt(31) == strArr[3].charAt(31)) {
                throw new RuntimeException();
            }
            A10[5] = "E1Te023wTVVNappUuQixsG3bphOCE2I8";
            A0R();
        }
    }
}
