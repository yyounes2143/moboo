package okio;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.media3.exoplayer.upstream.CmcdData;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import java.io.IOException;
import java.io.OutputStream;
import java.nio.channels.WritableByteChannel;
import kotlin.Deprecated;
import kotlin.DeprecationLevel;
import kotlin.Metadata;
import kotlin.ReplaceWith;
import org.jetbrains.annotations.NotNull;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000V\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0012\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u000e\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\bv\u0018\u00002\u00020\u00012\u00020\u0002J\u000f\u0010\u0004\u001a\u00020\u0003H'¢\u0006\u0004\b\u0004\u0010\u0005J\u0017\u0010\b\u001a\u00020\u00002\u0006\u0010\u0007\u001a\u00020\u0006H&¢\u0006\u0004\b\b\u0010\tJ\u0017\u0010\f\u001a\u00020\u00002\u0006\u0010\u000b\u001a\u00020\nH&¢\u0006\u0004\b\f\u0010\rJ'\u0010\f\u001a\u00020\u00002\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u0010\u001a\u00020\u000eH&¢\u0006\u0004\b\f\u0010\u0011J\u0017\u0010\u0014\u001a\u00020\u00132\u0006\u0010\u000b\u001a\u00020\u0012H&¢\u0006\u0004\b\u0014\u0010\u0015J\u0017\u0010\u0018\u001a\u00020\u00002\u0006\u0010\u0017\u001a\u00020\u0016H&¢\u0006\u0004\b\u0018\u0010\u0019J\u0017\u0010\u001b\u001a\u00020\u00002\u0006\u0010\u001a\u001a\u00020\u000eH&¢\u0006\u0004\b\u001b\u0010\u001cJ\u0017\u0010\u001e\u001a\u00020\u00002\u0006\u0010\u001d\u001a\u00020\u000eH&¢\u0006\u0004\b\u001e\u0010\u001cJ\u0017\u0010 \u001a\u00020\u00002\u0006\u0010\u001f\u001a\u00020\u000eH&¢\u0006\u0004\b \u0010\u001cJ\u0017\u0010\"\u001a\u00020\u00002\u0006\u0010!\u001a\u00020\u0013H&¢\u0006\u0004\b\"\u0010#J\u0017\u0010$\u001a\u00020\u00002\u0006\u0010!\u001a\u00020\u0013H&¢\u0006\u0004\b$\u0010#J\u000f\u0010&\u001a\u00020%H&¢\u0006\u0004\b&\u0010'J\u000f\u0010(\u001a\u00020\u0000H&¢\u0006\u0004\b(\u0010)J\u000f\u0010*\u001a\u00020\u0000H&¢\u0006\u0004\b*\u0010)J\u000f\u0010,\u001a\u00020+H&¢\u0006\u0004\b,\u0010-R\u0014\u0010/\u001a\u00020\u00038&X¦\u0004¢\u0006\u0006\u001a\u0004\b.\u0010\u0005\u0082\u0001\u0002\u00030ø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u00061À\u0006\u0001"}, d2 = {"Lokio/BufferedSink;", "Lokio/Sink;", "Ljava/nio/channels/WritableByteChannel;", "Lokio/Buffer;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "()Lokio/Buffer;", "Lokio/ByteString;", "byteString", "Wwwww", "(Lokio/ByteString;)Lokio/BufferedSink;", "", "source", "write", "([B)Lokio/BufferedSink;", "", TypedValues.CycleType.S_WAVE_OFFSET, "byteCount", "([BII)Lokio/BufferedSink;", "Lokio/Source;", "", "Wwwwwwwwwwwwwwwwwwwwwwww", "(Lokio/Source;)J", "", TypedValues.Custom.S_STRING, "Wwwwwwwwwwwwwwwwwwwwwwwwww", "(Ljava/lang/String;)Lokio/BufferedSink;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "writeByte", "(I)Lokio/BufferedSink;", CmcdData.Factory.STREAMING_FORMAT_SS, "writeShort", CmcdData.Factory.OBJECT_TYPE_INIT_SEGMENT, "writeInt", "v", "Wwwwwwwwwwwwwwwww", "(J)Lokio/BufferedSink;", "Wwwwwwww", "", "flush", "()V", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "()Lokio/BufferedSink;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Ljava/io/OutputStream;", "Www", "()Ljava/io/OutputStream;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "buffer", "Lokio/RealBufferedSink;", "okio"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes7.dex */
public interface BufferedSink extends Sink, WritableByteChannel {
    @NotNull
    OutputStream Www();

    @NotNull
    BufferedSink Wwwww(@NotNull ByteString byteString) throws IOException;

    @NotNull
    BufferedSink Wwwwwwww(long j) throws IOException;

    @NotNull
    BufferedSink Wwwwwwwwwwwwwwwww(long j) throws IOException;

    long Wwwwwwwwwwwwwwwwwwwwwwww(@NotNull Source source) throws IOException;

    @NotNull
    BufferedSink Wwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull String str) throws IOException;

    @NotNull
    BufferedSink Wwwwwwwwwwwwwwwwwwwwwwwwwwwww() throws IOException;

    @NotNull
    BufferedSink Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() throws IOException;

    @NotNull
    Buffer Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();

    @Deprecated(level = DeprecationLevel.WARNING, message = "moved to val: use getBuffer() instead", replaceWith = @ReplaceWith(expression = "buffer", imports = {}))
    @NotNull
    Buffer Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();

    @Override // okio.Sink, java.io.Flushable
    void flush() throws IOException;

    @NotNull
    BufferedSink write(@NotNull byte[] bArr) throws IOException;

    @NotNull
    BufferedSink write(@NotNull byte[] bArr, int i, int i2) throws IOException;

    @NotNull
    BufferedSink writeByte(int i) throws IOException;

    @NotNull
    BufferedSink writeInt(int i) throws IOException;

    @NotNull
    BufferedSink writeShort(int i) throws IOException;
}
