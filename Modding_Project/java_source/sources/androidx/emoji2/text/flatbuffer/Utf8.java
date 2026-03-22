package androidx.emoji2.text.flatbuffer;

import androidx.media3.exoplayer.analytics.AnalyticsListener;
import com.google.common.base.Ascii;
import java.nio.ByteBuffer;
/* compiled from: Proguard */
/* loaded from: classes.dex */
public abstract class Utf8 {
    private static Utf8 DEFAULT;

    /* compiled from: Proguard */
    /* loaded from: classes.dex */
    public static class DecodeUtil {
        public static void handleFourBytes(byte b, byte b2, byte b3, byte b4, char[] cArr, int i) throws IllegalArgumentException {
            if (!isNotTrailingByte(b2) && (((b << Ascii.FS) + (b2 + 112)) >> 30) == 0 && !isNotTrailingByte(b3) && !isNotTrailingByte(b4)) {
                int trailingByteValue = ((b & 7) << 18) | (trailingByteValue(b2) << 12) | (trailingByteValue(b3) << 6) | trailingByteValue(b4);
                cArr[i] = highSurrogate(trailingByteValue);
                cArr[i + 1] = lowSurrogate(trailingByteValue);
                return;
            }
            throw new IllegalArgumentException("Invalid UTF-8");
        }

        public static void handleOneByte(byte b, char[] cArr, int i) {
            cArr[i] = (char) b;
        }

        public static void handleThreeBytes(byte b, byte b2, byte b3, char[] cArr, int i) throws IllegalArgumentException {
            if (!isNotTrailingByte(b2) && ((b != -32 || b2 >= -96) && ((b != -19 || b2 < -96) && !isNotTrailingByte(b3)))) {
                cArr[i] = (char) (((b & Ascii.SI) << 12) | (trailingByteValue(b2) << 6) | trailingByteValue(b3));
                return;
            }
            throw new IllegalArgumentException("Invalid UTF-8");
        }

        public static void handleTwoBytes(byte b, byte b2, char[] cArr, int i) throws IllegalArgumentException {
            if (b >= -62) {
                if (!isNotTrailingByte(b2)) {
                    cArr[i] = (char) (((b & Ascii.US) << 6) | trailingByteValue(b2));
                    return;
                }
                throw new IllegalArgumentException("Invalid UTF-8: Illegal trailing byte in 2 bytes utf");
            }
            throw new IllegalArgumentException("Invalid UTF-8: Illegal leading byte in 2 bytes utf");
        }

        private static char highSurrogate(int i) {
            return (char) ((i >>> 10) + 55232);
        }

        private static boolean isNotTrailingByte(byte b) {
            if (b > -65) {
                return true;
            }
            return false;
        }

        public static boolean isOneByte(byte b) {
            if (b >= 0) {
                return true;
            }
            return false;
        }

        public static boolean isThreeBytes(byte b) {
            if (b < -16) {
                return true;
            }
            return false;
        }

        public static boolean isTwoBytes(byte b) {
            if (b < -32) {
                return true;
            }
            return false;
        }

        private static char lowSurrogate(int i) {
            return (char) ((i & AnalyticsListener.EVENT_DRM_KEYS_LOADED) + 56320);
        }

        private static int trailingByteValue(byte b) {
            return b & 63;
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes.dex */
    public static class UnpairedSurrogateException extends IllegalArgumentException {
        public UnpairedSurrogateException(int i, int i2) {
            super("Unpaired surrogate at index " + i + " of " + i2);
        }
    }

    public static Utf8 getDefault() {
        if (DEFAULT == null) {
            DEFAULT = new Utf8Safe();
        }
        return DEFAULT;
    }

    public static void setDefault(Utf8 utf8) {
        DEFAULT = utf8;
    }

    public abstract String decodeUtf8(ByteBuffer byteBuffer, int i, int i2);

    public abstract void encodeUtf8(CharSequence charSequence, ByteBuffer byteBuffer);

    public abstract int encodedLength(CharSequence charSequence);
}
