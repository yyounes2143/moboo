package okio;

import java.io.IOException;
import java.io.InputStream;
import java.nio.channels.ReadableByteChannel;
import java.nio.charset.Charset;
import kotlin.Deprecated;
import kotlin.DeprecationLevel;
import kotlin.Metadata;
import kotlin.ReplaceWith;
import org.jetbrains.annotations.NotNull;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000\u0080\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0010\u0005\n\u0002\b\u0002\n\u0002\u0010\n\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0012\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\bv\u0018\u00002\u00020\u00012\u00020\u0002J\u000f\u0010\u0004\u001a\u00020\u0003H'¢\u0006\u0004\b\u0004\u0010\u0005J\u000f\u0010\u0007\u001a\u00020\u0006H&¢\u0006\u0004\b\u0007\u0010\bJ\u0017\u0010\f\u001a\u00020\u000b2\u0006\u0010\n\u001a\u00020\tH&¢\u0006\u0004\b\f\u0010\rJ\u0017\u0010\u000e\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\tH&¢\u0006\u0004\b\u000e\u0010\u000fJ\u000f\u0010\u0011\u001a\u00020\u0010H&¢\u0006\u0004\b\u0011\u0010\u0012J\u000f\u0010\u0014\u001a\u00020\u0013H&¢\u0006\u0004\b\u0014\u0010\u0015J\u000f\u0010\u0016\u001a\u00020\u0013H&¢\u0006\u0004\b\u0016\u0010\u0015J\u000f\u0010\u0018\u001a\u00020\u0017H&¢\u0006\u0004\b\u0018\u0010\u0019J\u000f\u0010\u001a\u001a\u00020\u0017H&¢\u0006\u0004\b\u001a\u0010\u0019J\u000f\u0010\u001b\u001a\u00020\tH&¢\u0006\u0004\b\u001b\u0010\u001cJ\u000f\u0010\u001d\u001a\u00020\tH&¢\u0006\u0004\b\u001d\u0010\u001cJ\u000f\u0010\u001e\u001a\u00020\tH&¢\u0006\u0004\b\u001e\u0010\u001cJ\u000f\u0010\u001f\u001a\u00020\tH&¢\u0006\u0004\b\u001f\u0010\u001cJ\u0017\u0010 \u001a\u00020\u000b2\u0006\u0010\n\u001a\u00020\tH&¢\u0006\u0004\b \u0010\rJ\u000f\u0010\"\u001a\u00020!H&¢\u0006\u0004\b\"\u0010#J\u0017\u0010$\u001a\u00020!2\u0006\u0010\n\u001a\u00020\tH&¢\u0006\u0004\b$\u0010%J\u0017\u0010(\u001a\u00020\u00172\u0006\u0010'\u001a\u00020&H&¢\u0006\u0004\b(\u0010)J\u000f\u0010+\u001a\u00020*H&¢\u0006\u0004\b+\u0010,J\u0017\u0010-\u001a\u00020*2\u0006\u0010\n\u001a\u00020\tH&¢\u0006\u0004\b-\u0010.J\u0017\u00100\u001a\u00020\u000b2\u0006\u0010/\u001a\u00020*H&¢\u0006\u0004\b0\u00101J\u001f\u00102\u001a\u00020\u000b2\u0006\u0010/\u001a\u00020\u00032\u0006\u0010\n\u001a\u00020\tH&¢\u0006\u0004\b2\u00103J\u0017\u00105\u001a\u00020\t2\u0006\u0010/\u001a\u000204H&¢\u0006\u0004\b5\u00106J\u0017\u00108\u001a\u0002072\u0006\u0010\n\u001a\u00020\tH&¢\u0006\u0004\b8\u00109J\u000f\u0010:\u001a\u000207H&¢\u0006\u0004\b:\u0010;J\u0017\u0010=\u001a\u0002072\u0006\u0010<\u001a\u00020\tH&¢\u0006\u0004\b=\u00109J\u0017\u0010@\u001a\u0002072\u0006\u0010?\u001a\u00020>H&¢\u0006\u0004\b@\u0010AJ\u000f\u0010B\u001a\u00020\u0000H&¢\u0006\u0004\bB\u0010CJ\u000f\u0010E\u001a\u00020DH&¢\u0006\u0004\bE\u0010FR\u0014\u0010H\u001a\u00020\u00038&X¦\u0004¢\u0006\u0006\u001a\u0004\bG\u0010\u0005\u0082\u0001\u0002\u0003Iø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006JÀ\u0006\u0001"}, d2 = {"Lokio/BufferedSource;", "Lokio/Source;", "Ljava/nio/channels/ReadableByteChannel;", "Lokio/Buffer;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "()Lokio/Buffer;", "", "Wwwwwwwwwwww", "()Z", "", "byteCount", "", "Wwwwwwwwwwwwwwwwww", "(J)V", "Wwwwwwwwwwwwwwwwwwwwwww", "(J)Z", "", "readByte", "()B", "", "readShort", "()S", "Wwwwwwwwwwwwwwwwwwww", "", "readInt", "()I", "Wwwwww", "readLong", "()J", "Wwwwwwwwwwwwwwwwwww", "Wwwwwwwwwww", "Kkkkkkkkkkkkkkkkkkkkkkkkkk", "skip", "Lokio/ByteString;", "Wwwwwww", "()Lokio/ByteString;", "Wwwwwwwwwwwwwww", "(J)Lokio/ByteString;", "Lokio/Options;", "options", "Kkkkkkkkkkkkkkkkkkkkkkkk", "(Lokio/Options;)I", "", "Wwwwwwwwwwwww", "()[B", "Wwwwwwwwwwwwwwwwwwwww", "(J)[B", "sink", "readFully", "([B)V", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lokio/Buffer;J)V", "Lokio/Sink;", "Wwww", "(Lokio/Sink;)J", "", "Wwwwwwwwwwwwwwww", "(J)Ljava/lang/String;", "Wwwwwwwwwwwwwwwwwwwwww", "()Ljava/lang/String;", "limit", "Wwwwwwwwwwwwwwwwwwwwwwwwwwww", "Ljava/nio/charset/Charset;", "charset", "Wwwwwwwwww", "(Ljava/nio/charset/Charset;)Ljava/lang/String;", "peek", "()Lokio/BufferedSource;", "Ljava/io/InputStream;", "Kkkkkkkkkkkkkkkkkkkkkkkkk", "()Ljava/io/InputStream;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "buffer", "Lokio/RealBufferedSource;", "okio"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes7.dex */
public interface BufferedSource extends Source, ReadableByteChannel {
    int Kkkkkkkkkkkkkkkkkkkkkkkk(@NotNull Options options) throws IOException;

    @NotNull
    InputStream Kkkkkkkkkkkkkkkkkkkkkkkkk();

    long Kkkkkkkkkkkkkkkkkkkkkkkkkk() throws IOException;

    long Wwww(@NotNull Sink sink) throws IOException;

    int Wwwwww() throws IOException;

    @NotNull
    ByteString Wwwwwww() throws IOException;

    @NotNull
    String Wwwwwwwwww(@NotNull Charset charset) throws IOException;

    long Wwwwwwwwwww() throws IOException;

    boolean Wwwwwwwwwwww() throws IOException;

    @NotNull
    byte[] Wwwwwwwwwwwww() throws IOException;

    @NotNull
    ByteString Wwwwwwwwwwwwwww(long j) throws IOException;

    @NotNull
    String Wwwwwwwwwwwwwwww(long j) throws IOException;

    void Wwwwwwwwwwwwwwwwww(long j) throws IOException;

    long Wwwwwwwwwwwwwwwwwww() throws IOException;

    short Wwwwwwwwwwwwwwwwwwww() throws IOException;

    @NotNull
    byte[] Wwwwwwwwwwwwwwwwwwwww(long j) throws IOException;

    @NotNull
    String Wwwwwwwwwwwwwwwwwwwwww() throws IOException;

    boolean Wwwwwwwwwwwwwwwwwwwwwww(long j) throws IOException;

    @NotNull
    String Wwwwwwwwwwwwwwwwwwwwwwwwwwww(long j) throws IOException;

    void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull Buffer buffer, long j) throws IOException;

    @NotNull
    Buffer Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();

    @Deprecated(level = DeprecationLevel.WARNING, message = "moved to val: use getBuffer() instead", replaceWith = @ReplaceWith(expression = "buffer", imports = {}))
    @NotNull
    Buffer Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();

    @NotNull
    BufferedSource peek();

    byte readByte() throws IOException;

    void readFully(@NotNull byte[] bArr) throws IOException;

    int readInt() throws IOException;

    long readLong() throws IOException;

    short readShort() throws IOException;

    void skip(long j) throws IOException;
}
