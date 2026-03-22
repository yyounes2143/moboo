package kotlinx.serialization.json.internal;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.media3.exoplayer.rtsp.SessionDescription;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.nio.CharBuffer;
import java.nio.charset.Charset;
import java.nio.charset.CharsetDecoder;
import java.nio.charset.CoderResult;
import java.nio.charset.CodingErrorAction;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\f\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0019\n\u0002\b\u0006\n\u0002\u0010\u0002\n\u0000\b\u0000\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0004\b\u0006\u0010\u0007J\u001e\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u00112\u0006\u0010\u0015\u001a\u00020\u0011J \u0010\u0016\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u00112\u0006\u0010\u0015\u001a\u00020\u0011H\u0002J\b\u0010\u0017\u001a\u00020\u0011H\u0002J\b\u0010\u0018\u001a\u00020\u0011H\u0002J\u0006\u0010\u0019\u001a\u00020\u001aR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\tX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\rX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u000fX\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u001b"}, d2 = {"Lkotlinx/serialization/json/internal/CharsetReader;", "", "inputStream", "Ljava/io/InputStream;", "charset", "Ljava/nio/charset/Charset;", "<init>", "(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V", "decoder", "Ljava/nio/charset/CharsetDecoder;", "byteBuffer", "Ljava/nio/ByteBuffer;", "hasLeftoverPotentiallySurrogateChar", "", "leftoverChar", "", "read", "", "array", "", TypedValues.CycleType.S_WAVE_OFFSET, SessionDescription.ATTR_LENGTH, "doRead", "fillByteBuffer", "oneShotReadSlowPath", "release", "", "kotlinx-serialization-json"}, k = 1, mv = {2, 0, 0}, xi = 48)
/* loaded from: classes7.dex */
public final class CharsetReader {
    @NotNull
    private final ByteBuffer byteBuffer;
    @NotNull
    private final Charset charset;
    @NotNull
    private final CharsetDecoder decoder;
    private boolean hasLeftoverPotentiallySurrogateChar;
    @NotNull
    private final InputStream inputStream;
    private char leftoverChar;

    public CharsetReader(@NotNull InputStream inputStream, @NotNull Charset charset) {
        this.inputStream = inputStream;
        this.charset = charset;
        CharsetDecoder newDecoder = charset.newDecoder();
        CodingErrorAction codingErrorAction = CodingErrorAction.REPLACE;
        this.decoder = newDecoder.onMalformedInput(codingErrorAction).onUnmappableCharacter(codingErrorAction);
        ByteBuffer wrap = ByteBuffer.wrap(ByteArrayPool8k.INSTANCE.take());
        this.byteBuffer = wrap;
        wrap.flip();
    }

    private final int doRead(char[] cArr, int i, int i2) {
        CharBuffer wrap = CharBuffer.wrap(cArr, i, i2);
        if (wrap.position() != 0) {
            wrap = wrap.slice();
        }
        boolean z = false;
        while (true) {
            CoderResult decode = this.decoder.decode(this.byteBuffer, wrap, z);
            if (decode.isUnderflow()) {
                if (z || !wrap.hasRemaining()) {
                    break;
                } else if (fillByteBuffer() < 0) {
                    if (wrap.position() == 0 && !this.byteBuffer.hasRemaining()) {
                        z = true;
                        break;
                    }
                    this.decoder.reset();
                    z = true;
                } else {
                    continue;
                }
            } else if (decode.isOverflow()) {
                wrap.position();
                break;
            } else {
                decode.throwException();
            }
        }
        if (z) {
            this.decoder.reset();
        }
        if (wrap.position() == 0) {
            return -1;
        }
        return wrap.position();
    }

    private final int fillByteBuffer() {
        int i;
        this.byteBuffer.compact();
        try {
            int limit = this.byteBuffer.limit();
            int position = this.byteBuffer.position();
            if (position <= limit) {
                i = limit - position;
            } else {
                i = 0;
            }
            int read = this.inputStream.read(this.byteBuffer.array(), this.byteBuffer.arrayOffset() + position, i);
            if (read < 0) {
                return read;
            }
            this.byteBuffer.position(position + read);
            this.byteBuffer.flip();
            return this.byteBuffer.remaining();
        } finally {
            this.byteBuffer.flip();
        }
    }

    private final int oneShotReadSlowPath() {
        if (this.hasLeftoverPotentiallySurrogateChar) {
            this.hasLeftoverPotentiallySurrogateChar = false;
            return this.leftoverChar;
        }
        char[] cArr = new char[2];
        int read = read(cArr, 0, 2);
        if (read == -1) {
            return -1;
        }
        if (read != 1) {
            if (read == 2) {
                this.leftoverChar = cArr[1];
                this.hasLeftoverPotentiallySurrogateChar = true;
                return cArr[0];
            }
            throw new IllegalStateException(("Unreachable state: " + read).toString());
        }
        return cArr[0];
    }

    public final int read(@NotNull char[] cArr, int i, int i2) {
        int i3 = 0;
        if (i2 == 0) {
            return 0;
        }
        if (i >= 0 && i < cArr.length && i2 >= 0 && i + i2 <= cArr.length) {
            if (this.hasLeftoverPotentiallySurrogateChar) {
                cArr[i] = this.leftoverChar;
                i++;
                i2--;
                this.hasLeftoverPotentiallySurrogateChar = false;
                if (i2 == 0) {
                    return 1;
                }
                i3 = 1;
            }
            if (i2 == 1) {
                int oneShotReadSlowPath = oneShotReadSlowPath();
                if (oneShotReadSlowPath == -1) {
                    if (i3 == 0) {
                        return -1;
                    }
                    return i3;
                }
                cArr[i] = (char) oneShotReadSlowPath;
                return i3 + 1;
            }
            return doRead(cArr, i, i2) + i3;
        }
        throw new IllegalArgumentException(("Unexpected arguments: " + i + ", " + i2 + ", " + cArr.length).toString());
    }

    public final void release() {
        ByteArrayPool8k.INSTANCE.release(this.byteBuffer.array());
    }
}
