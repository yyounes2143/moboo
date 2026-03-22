package okio;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.media3.exoplayer.MediaPeriodQueue;
import androidx.media3.exoplayer.audio.SilenceSkippingAudioProcessor;
import androidx.media3.exoplayer.upstream.CmcdData;
import com.google.common.base.Ascii;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import io.flutter.embedding.android.KeyboardMap;
import io.flutter.plugin.editing.SpellCheckPlugin;
import java.io.Closeable;
import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.nio.ByteBuffer;
import java.nio.channels.ByteChannel;
import java.nio.charset.Charset;
import kotlin.Metadata;
import kotlin.collections.ArraysKt;
import kotlin.jvm.JvmField;
import kotlin.jvm.JvmName;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.Charsets;
import kotlin.text.Typography;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000¶\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u001a\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010\u0005\n\u0002\b\u0005\n\u0002\u0010\n\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0010\u0012\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u001a\n\u0002\u0018\u0002\n\u0002\b\u000f\n\u0002\u0018\u0002\n\u0002\b\u0018\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0000\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u000e\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u00032\u00020\u0004:\u0002»\u0001B\u0007¢\u0006\u0004\b\u0005\u0010\u0006J\u000f\u0010\u0007\u001a\u00020\u0000H\u0016¢\u0006\u0004\b\u0007\u0010\bJ\u000f\u0010\n\u001a\u00020\tH\u0016¢\u0006\u0004\b\n\u0010\u000bJ\u000f\u0010\f\u001a\u00020\u0000H\u0016¢\u0006\u0004\b\f\u0010\bJ\u000f\u0010\r\u001a\u00020\u0000H\u0016¢\u0006\u0004\b\r\u0010\bJ\u000f\u0010\u000f\u001a\u00020\u000eH\u0016¢\u0006\u0004\b\u000f\u0010\u0010J\u0017\u0010\u0014\u001a\u00020\u00132\u0006\u0010\u0012\u001a\u00020\u0011H\u0016¢\u0006\u0004\b\u0014\u0010\u0015J\u0017\u0010\u0016\u001a\u00020\u000e2\u0006\u0010\u0012\u001a\u00020\u0011H\u0016¢\u0006\u0004\b\u0016\u0010\u0017J\u000f\u0010\u0018\u001a\u00020\u0001H\u0016¢\u0006\u0004\b\u0018\u0010\u0019J\u000f\u0010\u001b\u001a\u00020\u001aH\u0016¢\u0006\u0004\b\u001b\u0010\u001cJ'\u0010\u001f\u001a\u00020\u00002\u0006\u0010\u001d\u001a\u00020\u00002\b\b\u0002\u0010\u001e\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u0011¢\u0006\u0004\b\u001f\u0010 J\r\u0010!\u001a\u00020\u0011¢\u0006\u0004\b!\u0010\"J\u000f\u0010$\u001a\u00020#H\u0016¢\u0006\u0004\b$\u0010%J\u0018\u0010'\u001a\u00020#2\u0006\u0010&\u001a\u00020\u0011H\u0087\u0002¢\u0006\u0004\b'\u0010(J\u000f\u0010*\u001a\u00020)H\u0016¢\u0006\u0004\b*\u0010+J\u000f\u0010-\u001a\u00020,H\u0016¢\u0006\u0004\b-\u0010.J\u000f\u0010/\u001a\u00020\u0011H\u0016¢\u0006\u0004\b/\u0010\"J\u000f\u00100\u001a\u00020)H\u0016¢\u0006\u0004\b0\u0010+J\u000f\u00101\u001a\u00020,H\u0016¢\u0006\u0004\b1\u0010.J\u000f\u00102\u001a\u00020\u0011H\u0016¢\u0006\u0004\b2\u0010\"J\u000f\u00103\u001a\u00020\u0011H\u0016¢\u0006\u0004\b3\u0010\"J\u000f\u00104\u001a\u00020\u0011H\u0016¢\u0006\u0004\b4\u0010\"J\u000f\u00106\u001a\u000205H\u0016¢\u0006\u0004\b6\u00107J\u0017\u00108\u001a\u0002052\u0006\u0010\u0012\u001a\u00020\u0011H\u0016¢\u0006\u0004\b8\u00109J\u0017\u0010<\u001a\u00020,2\u0006\u0010;\u001a\u00020:H\u0016¢\u0006\u0004\b<\u0010=J\u001f\u0010?\u001a\u00020\u00132\u0006\u0010>\u001a\u00020\u00002\u0006\u0010\u0012\u001a\u00020\u0011H\u0016¢\u0006\u0004\b?\u0010@J\u0017\u0010B\u001a\u00020\u00112\u0006\u0010>\u001a\u00020AH\u0016¢\u0006\u0004\bB\u0010CJ\u000f\u0010E\u001a\u00020DH\u0016¢\u0006\u0004\bE\u0010FJ\u0017\u0010G\u001a\u00020D2\u0006\u0010\u0012\u001a\u00020\u0011H\u0016¢\u0006\u0004\bG\u0010HJ\u0017\u0010K\u001a\u00020D2\u0006\u0010J\u001a\u00020IH\u0016¢\u0006\u0004\bK\u0010LJ\u001f\u0010M\u001a\u00020D2\u0006\u0010\u0012\u001a\u00020\u00112\u0006\u0010J\u001a\u00020IH\u0016¢\u0006\u0004\bM\u0010NJ\u000f\u0010O\u001a\u00020DH\u0016¢\u0006\u0004\bO\u0010FJ\u0017\u0010Q\u001a\u00020D2\u0006\u0010P\u001a\u00020\u0011H\u0016¢\u0006\u0004\bQ\u0010HJ\u000f\u0010R\u001a\u00020,H\u0016¢\u0006\u0004\bR\u0010.J\u000f\u0010T\u001a\u00020SH\u0016¢\u0006\u0004\bT\u0010UJ\u0017\u0010V\u001a\u00020S2\u0006\u0010\u0012\u001a\u00020\u0011H\u0016¢\u0006\u0004\bV\u0010WJ\u0017\u0010X\u001a\u00020\u00132\u0006\u0010>\u001a\u00020SH\u0016¢\u0006\u0004\bX\u0010YJ'\u0010Z\u001a\u00020,2\u0006\u0010>\u001a\u00020S2\u0006\u0010\u001e\u001a\u00020,2\u0006\u0010\u0012\u001a\u00020,H\u0016¢\u0006\u0004\bZ\u0010[J\u0017\u0010Z\u001a\u00020,2\u0006\u0010>\u001a\u00020\\H\u0016¢\u0006\u0004\bZ\u0010]J\r\u0010^\u001a\u00020\u0013¢\u0006\u0004\b^\u0010\u0006J\u0017\u0010_\u001a\u00020\u00132\u0006\u0010\u0012\u001a\u00020\u0011H\u0016¢\u0006\u0004\b_\u0010\u0015J\u0017\u0010a\u001a\u00020\u00002\u0006\u0010`\u001a\u000205H\u0016¢\u0006\u0004\ba\u0010bJ\u0017\u0010d\u001a\u00020\u00002\u0006\u0010c\u001a\u00020DH\u0016¢\u0006\u0004\bd\u0010eJ'\u0010h\u001a\u00020\u00002\u0006\u0010c\u001a\u00020D2\u0006\u0010f\u001a\u00020,2\u0006\u0010g\u001a\u00020,H\u0016¢\u0006\u0004\bh\u0010iJ\u0017\u0010k\u001a\u00020\u00002\u0006\u0010j\u001a\u00020,H\u0016¢\u0006\u0004\bk\u0010lJ\u001f\u0010m\u001a\u00020\u00002\u0006\u0010c\u001a\u00020D2\u0006\u0010J\u001a\u00020IH\u0016¢\u0006\u0004\bm\u0010nJ/\u0010o\u001a\u00020\u00002\u0006\u0010c\u001a\u00020D2\u0006\u0010f\u001a\u00020,2\u0006\u0010g\u001a\u00020,2\u0006\u0010J\u001a\u00020IH\u0016¢\u0006\u0004\bo\u0010pJ\u0017\u0010r\u001a\u00020\u00002\u0006\u0010q\u001a\u00020SH\u0016¢\u0006\u0004\br\u0010sJ'\u0010t\u001a\u00020\u00002\u0006\u0010q\u001a\u00020S2\u0006\u0010\u001e\u001a\u00020,2\u0006\u0010\u0012\u001a\u00020,H\u0016¢\u0006\u0004\bt\u0010uJ\u0017\u0010v\u001a\u00020,2\u0006\u0010q\u001a\u00020\\H\u0016¢\u0006\u0004\bv\u0010]J\u0017\u0010x\u001a\u00020\u00112\u0006\u0010q\u001a\u00020wH\u0016¢\u0006\u0004\bx\u0010yJ\u0017\u0010{\u001a\u00020\u00002\u0006\u0010z\u001a\u00020,H\u0016¢\u0006\u0004\b{\u0010lJ\u0017\u0010}\u001a\u00020\u00002\u0006\u0010|\u001a\u00020,H\u0016¢\u0006\u0004\b}\u0010lJ\u0017\u0010\u007f\u001a\u00020\u00002\u0006\u0010~\u001a\u00020,H\u0016¢\u0006\u0004\b\u007f\u0010lJ\u0019\u0010\u0080\u0001\u001a\u00020\u00002\u0006\u0010~\u001a\u00020,H\u0016¢\u0006\u0005\b\u0080\u0001\u0010lJ\u001b\u0010\u0082\u0001\u001a\u00020\u00002\u0007\u0010\u0081\u0001\u001a\u00020\u0011H\u0016¢\u0006\u0006\b\u0082\u0001\u0010\u0083\u0001J\u001b\u0010\u0084\u0001\u001a\u00020\u00002\u0007\u0010\u0081\u0001\u001a\u00020\u0011H\u0016¢\u0006\u0006\b\u0084\u0001\u0010\u0083\u0001J\u001b\u0010\u0085\u0001\u001a\u00020\u00002\u0007\u0010\u0081\u0001\u001a\u00020\u0011H\u0016¢\u0006\u0006\b\u0085\u0001\u0010\u0083\u0001J\u001c\u0010\u0088\u0001\u001a\u00030\u0087\u00012\u0007\u0010\u0086\u0001\u001a\u00020,H\u0000¢\u0006\u0006\b\u0088\u0001\u0010\u0089\u0001J!\u0010\u008a\u0001\u001a\u00020\u00132\u0006\u0010q\u001a\u00020\u00002\u0006\u0010\u0012\u001a\u00020\u0011H\u0016¢\u0006\u0005\b\u008a\u0001\u0010@J \u0010Z\u001a\u00020\u00112\u0006\u0010>\u001a\u00020\u00002\u0006\u0010\u0012\u001a\u00020\u0011H\u0016¢\u0006\u0005\bZ\u0010\u008b\u0001J,\u0010\u008e\u0001\u001a\u00020\u00112\u0006\u0010z\u001a\u00020#2\u0007\u0010\u008c\u0001\u001a\u00020\u00112\u0007\u0010\u008d\u0001\u001a\u00020\u0011H\u0016¢\u0006\u0006\b\u008e\u0001\u0010\u008f\u0001J\u001b\u0010\u0091\u0001\u001a\u00020\u00112\u0007\u0010\u0090\u0001\u001a\u000205H\u0016¢\u0006\u0006\b\u0091\u0001\u0010\u0092\u0001J$\u0010\u0093\u0001\u001a\u00020\u00112\u0007\u0010\u0090\u0001\u001a\u0002052\u0007\u0010\u008c\u0001\u001a\u00020\u0011H\u0016¢\u0006\u0006\b\u0093\u0001\u0010\u0094\u0001J\u001b\u0010\u0096\u0001\u001a\u00020\u00112\u0007\u0010\u0095\u0001\u001a\u000205H\u0016¢\u0006\u0006\b\u0096\u0001\u0010\u0092\u0001J$\u0010\u0097\u0001\u001a\u00020\u00112\u0007\u0010\u0095\u0001\u001a\u0002052\u0007\u0010\u008c\u0001\u001a\u00020\u0011H\u0016¢\u0006\u0006\b\u0097\u0001\u0010\u0094\u0001J#\u0010\u0098\u0001\u001a\u00020\u000e2\u0006\u0010\u001e\u001a\u00020\u00112\u0007\u0010\u0090\u0001\u001a\u000205H\u0016¢\u0006\u0006\b\u0098\u0001\u0010\u0099\u0001J4\u0010\u009b\u0001\u001a\u00020\u000e2\u0006\u0010\u001e\u001a\u00020\u00112\u0007\u0010\u0090\u0001\u001a\u0002052\u0007\u0010\u009a\u0001\u001a\u00020,2\u0006\u0010\u0012\u001a\u00020,H\u0016¢\u0006\u0006\b\u009b\u0001\u0010\u009c\u0001J\u0011\u0010\u009d\u0001\u001a\u00020\u0013H\u0016¢\u0006\u0005\b\u009d\u0001\u0010\u0006J\u0011\u0010\u009e\u0001\u001a\u00020\u000eH\u0016¢\u0006\u0005\b\u009e\u0001\u0010\u0010J\u0011\u0010\u009f\u0001\u001a\u00020\u0013H\u0016¢\u0006\u0005\b\u009f\u0001\u0010\u0006J\u0013\u0010¡\u0001\u001a\u00030 \u0001H\u0016¢\u0006\u0006\b¡\u0001\u0010¢\u0001J\u001f\u0010¥\u0001\u001a\u00020\u000e2\n\u0010¤\u0001\u001a\u0005\u0018\u00010£\u0001H\u0096\u0002¢\u0006\u0006\b¥\u0001\u0010¦\u0001J\u0011\u0010§\u0001\u001a\u00020,H\u0016¢\u0006\u0005\b§\u0001\u0010.J\u0011\u0010¨\u0001\u001a\u00020DH\u0016¢\u0006\u0005\b¨\u0001\u0010FJ\u000f\u0010©\u0001\u001a\u00020\u0000¢\u0006\u0005\b©\u0001\u0010\bJ\u0011\u0010ª\u0001\u001a\u00020\u0000H\u0016¢\u0006\u0005\bª\u0001\u0010\bJ\u000f\u0010«\u0001\u001a\u000205¢\u0006\u0005\b«\u0001\u00107J\u0018\u0010¬\u0001\u001a\u0002052\u0006\u0010\u0012\u001a\u00020,¢\u0006\u0006\b¬\u0001\u0010\u00ad\u0001J\u001f\u0010°\u0001\u001a\u00030®\u00012\n\b\u0002\u0010¯\u0001\u001a\u00030®\u0001H\u0007¢\u0006\u0006\b°\u0001\u0010±\u0001R\u001c\u0010³\u0001\u001a\u0005\u0018\u00010\u0087\u00018\u0000@\u0000X\u0081\u000e¢\u0006\b\n\u0006\b\u008a\u0001\u0010²\u0001R/\u0010¸\u0001\u001a\u00020\u00112\u0007\u0010´\u0001\u001a\u00020\u00118G@@X\u0086\u000e¢\u0006\u0015\n\u0005\bx\u0010µ\u0001\u001a\u0005\b¶\u0001\u0010\"\"\u0005\b·\u0001\u0010\u0015R\u0016\u0010º\u0001\u001a\u00020\u00008VX\u0096\u0004¢\u0006\u0007\u001a\u0005\b¹\u0001\u0010\b¨\u0006¼\u0001"}, d2 = {"Lokio/Buffer;", "Lokio/BufferedSource;", "Lokio/BufferedSink;", "", "Ljava/nio/channels/ByteChannel;", "<init>", "()V", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "()Lokio/Buffer;", "Ljava/io/OutputStream;", "Www", "()Ljava/io/OutputStream;", "Kkkkkkkkkkkkkkkkk", "Kkkkkkkkkkkkkkkkkk", "", "Wwwwwwwwwwww", "()Z", "", "byteCount", "", "Wwwwwwwwwwwwwwwwww", "(J)V", "Wwwwwwwwwwwwwwwwwwwwwww", "(J)Z", "peek", "()Lokio/BufferedSource;", "Ljava/io/InputStream;", "Kkkkkkkkkkkkkkkkkkkkkkkkk", "()Ljava/io/InputStream;", "out", TypedValues.CycleType.S_WAVE_OFFSET, "Kkkkkkkkkkkkkkkkkkk", "(Lokio/Buffer;JJ)Lokio/Buffer;", "Kkkkkkkkkkkkkkkkkkkkk", "()J", "", "readByte", "()B", "pos", "Kkkkkkkkkkkkkkkk", "(J)B", "", "readShort", "()S", "", "readInt", "()I", "readLong", "Wwwwwwwwwwwwwwwwwwww", "Wwwwww", "Wwwwwwwwwwwwwwwwwww", "Wwwwwwwwwww", "Kkkkkkkkkkkkkkkkkkkkkkkkkk", "Lokio/ByteString;", "Wwwwwww", "()Lokio/ByteString;", "Wwwwwwwwwwwwwww", "(J)Lokio/ByteString;", "Lokio/Options;", "options", "Kkkkkkkkkkkkkkkkkkkkkkkk", "(Lokio/Options;)I", "sink", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lokio/Buffer;J)V", "Lokio/Sink;", "Wwww", "(Lokio/Sink;)J", "", "Kkkkk", "()Ljava/lang/String;", "Wwwwwwwwwwwwwwww", "(J)Ljava/lang/String;", "Ljava/nio/charset/Charset;", "charset", "Wwwwwwwwww", "(Ljava/nio/charset/Charset;)Ljava/lang/String;", "Kkkkkk", "(JLjava/nio/charset/Charset;)Ljava/lang/String;", "Wwwwwwwwwwwwwwwwwwwwww", "limit", "Wwwwwwwwwwwwwwwwwwwwwwwwwwww", "Kkkk", "", "Wwwwwwwwwwwww", "()[B", "Wwwwwwwwwwwwwwwwwwwww", "(J)[B", "readFully", "([B)V", "read", "([BII)I", "Ljava/nio/ByteBuffer;", "(Ljava/nio/ByteBuffer;)I", "Kkkkkkkkkkkkkkkkkkkkkkk", "skip", "byteString", "Illlllllllllllllllllllllll", "(Lokio/ByteString;)Lokio/Buffer;", TypedValues.Custom.S_STRING, "Illlllllllllll", "(Ljava/lang/String;)Lokio/Buffer;", "beginIndex", SpellCheckPlugin.END_INDEX_KEY, "Illllllllllll", "(Ljava/lang/String;II)Lokio/Buffer;", "codePoint", "Illlllllllll", "(I)Lokio/Buffer;", "Illllllllllllll", "(Ljava/lang/String;Ljava/nio/charset/Charset;)Lokio/Buffer;", "Illlllllllllllll", "(Ljava/lang/String;IILjava/nio/charset/Charset;)Lokio/Buffer;", "source", "Illllllllllllllllllllllll", "([B)Lokio/Buffer;", "Illlllllllllllllllllllll", "([BII)Lokio/Buffer;", "write", "Lokio/Source;", "Wwwwwwwwwwwwwwwwwwwwwwww", "(Lokio/Source;)J", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "Illllllllllllllllllllll", CmcdData.Factory.STREAMING_FORMAT_SS, "Illllllllllllllll", CmcdData.Factory.OBJECT_TYPE_INIT_SEGMENT, "Illlllllllllllllllll", "Illllllllllllllllll", "v", "Illlllllllllllllll", "(J)Lokio/Buffer;", "Illlllllllllllllllllll", "Illllllllllllllllllll", "minimumCapacity", "Lokio/Segment;", "Illllllllllllllllllllllllll", "(I)Lokio/Segment;", "Wwwwwwwwwwwwwwwwwwwwwwwww", "(Lokio/Buffer;J)J", "fromIndex", "toIndex", "Kkkkkkkkkkkkkkk", "(BJJ)J", "bytes", "Kkkkkkkkkkkkkk", "(Lokio/ByteString;)J", "Kkkkkkkkkkkkk", "(Lokio/ByteString;J)J", "targetBytes", "Kkkkkkkkkkkk", "Kkkkkkkkkkk", "Kkkkkkkkkk", "(JLokio/ByteString;)Z", "bytesOffset", "Kkkkkkkkk", "(JLokio/ByteString;II)Z", "flush", "isOpen", "close", "Lokio/Timeout;", "timeout", "()Lokio/Timeout;", "", "other", "equals", "(Ljava/lang/Object;)Z", "hashCode", "toString", "Kkkkkkkkkkkkkkkkkkkk", "Kkkkkkkkkkkkkkkkkkkkkk", "Illllllllllllllllllllllllllll", "Illlllllllllllllllllllllllll", "(I)Lokio/ByteString;", "Lokio/Buffer$UnsafeCursor;", "unsafeCursor", "Kkkkkkkk", "(Lokio/Buffer$UnsafeCursor;)Lokio/Buffer$UnsafeCursor;", "Lokio/Segment;", "head", "<set-?>", "J", "Kk", "Kkk", "size", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "buffer", "UnsafeCursor", "okio"}, k = 1, mv = {1, 8, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nBuffer.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Buffer.kt\nokio/Buffer\n+ 2 Util.kt\nokio/-SegmentedByteString\n+ 3 Buffer.kt\nokio/internal/-Buffer\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,641:1\n89#2:642\n86#2:675\n86#2:677\n74#2:737\n74#2:763\n83#2:802\n77#2:813\n89#2:1003\n74#2:1018\n86#2:1122\n89#2:1615\n244#3,32:643\n279#3,10:678\n292#3,18:688\n414#3,2:706\n112#3:708\n416#3:709\n114#3,18:710\n313#3,9:728\n322#3,15:738\n340#3,10:753\n350#3,3:764\n348#3,25:767\n376#3,10:792\n386#3:803\n384#3,9:804\n393#3,7:814\n391#3,20:821\n682#3,60:841\n745#3,56:901\n803#3:957\n806#3:958\n807#3,6:960\n817#3,7:966\n827#3,6:973\n835#3,5:979\n867#3,6:984\n877#3:990\n878#3,11:992\n889#3,5:1004\n898#3,9:1009\n908#3,61:1019\n633#3:1080\n636#3:1081\n637#3,5:1083\n644#3:1088\n647#3,7:1089\n656#3,20:1096\n420#3:1116\n423#3,5:1117\n428#3,10:1123\n439#3,7:1133\n444#3,2:1140\n973#3:1142\n974#3,87:1144\n1064#3,48:1231\n603#3:1279\n610#3,21:1280\n1115#3,7:1301\n1125#3,7:1308\n1135#3,4:1315\n1142#3,8:1319\n1153#3,10:1327\n1166#3,14:1337\n449#3,91:1351\n543#3,40:1442\n586#3:1482\n588#3,13:1484\n1183#3:1497\n1234#3:1498\n1235#3,39:1500\n1276#3,2:1539\n1278#3,4:1542\n1285#3,3:1546\n1289#3,4:1550\n112#3:1554\n1293#3,22:1555\n114#3,18:1577\n1319#3,2:1595\n1321#3,3:1598\n112#3:1601\n1324#3,13:1602\n1337#3,13:1616\n114#3,18:1629\n1354#3,2:1647\n1357#3:1650\n112#3:1651\n1358#3,50:1652\n114#3,18:1702\n1417#3,14:1720\n1434#3,32:1734\n1469#3,12:1766\n1484#3,18:1778\n1506#3:1796\n1507#3:1798\n1512#3,34:1799\n1#4:676\n1#4:959\n1#4:991\n1#4:1082\n1#4:1143\n1#4:1483\n1#4:1499\n1#4:1541\n1#4:1549\n1#4:1597\n1#4:1649\n1#4:1797\n*S KotlinDebug\n*F\n+ 1 Buffer.kt\nokio/Buffer\n*L\n167#1:642\n197#1:675\n235#1:677\n261#1:737\n264#1:763\n267#1:802\n267#1:813\n335#1:1003\n338#1:1018\n374#1:1122\n483#1:1615\n181#1:643,32\n252#1:678,10\n255#1:688,18\n258#1:706,2\n258#1:708\n258#1:709\n258#1:710,18\n261#1:728,9\n261#1:738,15\n264#1:753,10\n264#1:764,3\n264#1:767,25\n267#1:792,10\n267#1:803\n267#1:804,9\n267#1:814,7\n267#1:821,20\n279#1:841,60\n282#1:901,56\n284#1:957\n287#1:958\n287#1:960,6\n289#1:966,7\n292#1:973,6\n295#1:979,5\n329#1:984,6\n335#1:990\n335#1:992,11\n335#1:1004,5\n338#1:1009,9\n338#1:1019,61\n340#1:1080\n343#1:1081\n343#1:1083,5\n345#1:1088\n348#1:1089,7\n351#1:1096,20\n371#1:1116\n374#1:1117,5\n374#1:1123,10\n376#1:1133,7\n379#1:1140,2\n384#1:1142\n384#1:1144,87\n387#1:1231,48\n410#1:1279\n416#1:1280,21\n437#1:1301,7\n441#1:1308,7\n443#1:1315,4\n445#1:1319,8\n449#1:1327,10\n453#1:1337,14\n457#1:1351,91\n460#1:1442,40\n463#1:1482\n463#1:1484,13\n465#1:1497\n465#1:1498\n465#1:1500,39\n467#1:1539,2\n467#1:1542,4\n477#1:1546,3\n477#1:1550,4\n477#1:1554\n477#1:1555,22\n477#1:1577,18\n483#1:1595,2\n483#1:1598,3\n483#1:1601\n483#1:1602,13\n483#1:1616,13\n483#1:1629,18\n488#1:1647,2\n488#1:1650\n488#1:1651\n488#1:1652,50\n488#1:1702,18\n498#1:1720,14\n568#1:1734,32\n570#1:1766,12\n578#1:1778,18\n586#1:1796\n586#1:1798\n588#1:1799,34\n287#1:959\n335#1:991\n343#1:1082\n384#1:1143\n463#1:1483\n465#1:1499\n467#1:1541\n477#1:1549\n483#1:1597\n488#1:1649\n586#1:1797\n*E\n"})
/* loaded from: classes7.dex */
public final class Buffer implements BufferedSource, BufferedSink, Cloneable, ByteChannel, AutoCloseable {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public long f13122Wwwwwwwwwwwwwwwwwwwwwwww;
    @JvmField
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public Segment f13123Wwwwwwwwwwwwwwwwwwwwwwwww;

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0006\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0010\u0012\n\u0002\b\t\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\r\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0005\u0010\u0006J\u0015\u0010\t\u001a\u00020\u00042\u0006\u0010\b\u001a\u00020\u0007¢\u0006\u0004\b\t\u0010\nJ\u0015\u0010\f\u001a\u00020\u00072\u0006\u0010\u000b\u001a\u00020\u0007¢\u0006\u0004\b\f\u0010\rJ\u000f\u0010\u000f\u001a\u00020\u000eH\u0016¢\u0006\u0004\b\u000f\u0010\u0003R\u0018\u0010\u0013\u001a\u0004\u0018\u00010\u00108\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\b\u0011\u0010\u0012R\u0016\u0010\u0017\u001a\u00020\u00148\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\b\u0015\u0010\u0016R$\u0010\u001f\u001a\u0004\u0018\u00010\u00188\u0000@\u0000X\u0080\u000e¢\u0006\u0012\n\u0004\b\u0019\u0010\u001a\u001a\u0004\b\u001b\u0010\u001c\"\u0004\b\u001d\u0010\u001eR\u0016\u0010\b\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\b \u0010!R\u0018\u0010%\u001a\u0004\u0018\u00010\"8\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\b#\u0010$R\u0016\u0010(\u001a\u00020\u00048\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\b&\u0010'R\u0016\u0010*\u001a\u00020\u00048\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\b)\u0010'¨\u0006+"}, d2 = {"Lokio/Buffer$UnsafeCursor;", "Ljava/io/Closeable;", "<init>", "()V", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwww", "()I", "", TypedValues.CycleType.S_WAVE_OFFSET, "Kkkkkkkkkkkkkkkkkkkkkkk", "(J)I", "newSize", "Wwwwwwwwwwwwww", "(J)J", "", "close", "Lokio/Buffer;", "Wwwwwwwwwwwwwwwwwwwwwwwww", "Lokio/Buffer;", "buffer", "", "Wwwwwwwwwwwwwwwwwwwwwwww", "Z", "readWrite", "Lokio/Segment;", "Wwwwwwwwwwwwwwwwwwwwwww", "Lokio/Segment;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "()Lokio/Segment;", "Kkkkkkkkkkkkkkkkkkkkkk", "(Lokio/Segment;)V", "segment", "Wwwwwwwwwwwwwwwwwwwwww", "J", "", "Wwwwwwwwwwwwwwwwwwwww", "[B", "data", "Wwwwwwwwwwwwwwwwwwww", "I", "start", "Wwwwwwwwwwwwwwwwwww", "end", "okio"}, k = 1, mv = {1, 8, 0}, xi = 48)
    @SourceDebugExtension({"SMAP\nBuffer.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Buffer.kt\nokio/Buffer$UnsafeCursor\n+ 2 Buffer.kt\nokio/internal/-Buffer\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 Util.kt\nokio/-SegmentedByteString\n*L\n1#1,641:1\n1567#2:642\n1568#2:644\n1572#2:645\n1573#2,68:647\n1644#2:715\n1645#2,32:717\n1677#2,18:750\n1698#2:768\n1699#2,18:770\n1721#2:788\n1723#2,7:790\n1#3:643\n1#3:646\n1#3:716\n1#3:769\n1#3:789\n86#4:749\n*S KotlinDebug\n*F\n+ 1 Buffer.kt\nokio/Buffer$UnsafeCursor\n*L\n628#1:642\n628#1:644\n630#1:645\n630#1:647,68\n632#1:715\n632#1:717,32\n632#1:750,18\n634#1:768\n634#1:770,18\n637#1:788\n637#1:790,7\n628#1:643\n630#1:646\n632#1:716\n634#1:769\n637#1:789\n632#1:749\n*E\n"})
    /* loaded from: classes7.dex */
    public static final class UnsafeCursor implements Closeable, AutoCloseable {
        @JvmField
        @Nullable

        /* renamed from: Wwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public byte[] f13126Wwwwwwwwwwwwwwwwwwwww;
        @Nullable

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public Segment f13128Wwwwwwwwwwwwwwwwwwwwwww;
        @JvmField

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public boolean f13129Wwwwwwwwwwwwwwwwwwwwwwww;
        @JvmField
        @Nullable

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public Buffer f13130Wwwwwwwwwwwwwwwwwwwwwwwww;
        @JvmField

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public long f13127Wwwwwwwwwwwwwwwwwwwwww = -1;
        @JvmField

        /* renamed from: Wwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public int f13125Wwwwwwwwwwwwwwwwwwww = -1;
        @JvmField

        /* renamed from: Wwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public int f13124Wwwwwwwwwwwwwwwwwww = -1;

        public final void Kkkkkkkkkkkkkkkkkkkkkk(@Nullable Segment segment) {
            this.f13128Wwwwwwwwwwwwwwwwwwwwwww = segment;
        }

        public final int Kkkkkkkkkkkkkkkkkkkkkkk(long j) {
            Segment segment;
            Buffer buffer = this.f13130Wwwwwwwwwwwwwwwwwwwwwwwww;
            if (buffer != null) {
                int i = (j > (-1L) ? 1 : (j == (-1L) ? 0 : -1));
                if (i >= 0 && j <= buffer.Kk()) {
                    if (i != 0 && j != buffer.Kk()) {
                        long Kk = buffer.Kk();
                        Segment segment2 = buffer.f13123Wwwwwwwwwwwwwwwwwwwwwwwww;
                        long j2 = 0;
                        if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() != null) {
                            long j3 = this.f13127Wwwwwwwwwwwwwwwwwwwwww - (this.f13125Wwwwwwwwwwwwwwwwwwww - Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().f13234Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
                            if (j3 > j) {
                                segment = segment2;
                                segment2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
                                Kk = j3;
                            } else {
                                segment = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
                                j2 = j3;
                            }
                        } else {
                            segment = segment2;
                        }
                        if (Kk - j > j - j2) {
                            while (true) {
                                int i2 = segment.f13233Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
                                int i3 = segment.f13234Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
                                if (j < (i2 - i3) + j2) {
                                    break;
                                }
                                j2 += i2 - i3;
                                segment = segment.f13230Wwwwwwwwwwwwwwwwwwwwwwwwwwwww;
                            }
                        } else {
                            while (Kk > j) {
                                segment2 = segment2.f13229Wwwwwwwwwwwwwwwwwwwwwwwwwwww;
                                Kk -= segment2.f13233Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww - segment2.f13234Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
                            }
                            j2 = Kk;
                            segment = segment2;
                        }
                        if (this.f13129Wwwwwwwwwwwwwwwwwwwwwwww && segment.f13232Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww) {
                            Segment Wwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = segment.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww();
                            if (buffer.f13123Wwwwwwwwwwwwwwwwwwwwwwwww == segment) {
                                buffer.f13123Wwwwwwwwwwwwwwwwwwwwwwwww = Wwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
                            }
                            segment = segment.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwww2);
                            segment.f13229Wwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
                        }
                        Kkkkkkkkkkkkkkkkkkkkkk(segment);
                        this.f13127Wwwwwwwwwwwwwwwwwwwwww = j;
                        this.f13126Wwwwwwwwwwwwwwwwwwwww = segment.f13235Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
                        int i4 = segment.f13234Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww + ((int) (j - j2));
                        this.f13125Wwwwwwwwwwwwwwwwwwww = i4;
                        int i5 = segment.f13233Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
                        this.f13124Wwwwwwwwwwwwwwwwwww = i5;
                        return i5 - i4;
                    }
                    Kkkkkkkkkkkkkkkkkkkkkk(null);
                    this.f13127Wwwwwwwwwwwwwwwwwwwwww = j;
                    this.f13126Wwwwwwwwwwwwwwwwwwwww = null;
                    this.f13125Wwwwwwwwwwwwwwwwwwww = -1;
                    this.f13124Wwwwwwwwwwwwwwwwwww = -1;
                    return -1;
                }
                throw new ArrayIndexOutOfBoundsException("offset=" + j + " > size=" + buffer.Kk());
            }
            throw new IllegalStateException("not attached to a buffer");
        }

        public final long Wwwwwwwwwwwwww(long j) {
            Buffer buffer = this.f13130Wwwwwwwwwwwwwwwwwwwwwwwww;
            if (buffer != null) {
                if (this.f13129Wwwwwwwwwwwwwwwwwwwwwwww) {
                    long Kk = buffer.Kk();
                    int i = (j > Kk ? 1 : (j == Kk ? 0 : -1));
                    if (i <= 0) {
                        if (j >= 0) {
                            long j2 = Kk - j;
                            while (true) {
                                if (j2 <= 0) {
                                    break;
                                }
                                Segment segment = buffer.f13123Wwwwwwwwwwwwwwwwwwwwwwwww.f13229Wwwwwwwwwwwwwwwwwwwwwwwwwwww;
                                int i2 = segment.f13233Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
                                long j3 = i2 - segment.f13234Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
                                if (j3 <= j2) {
                                    buffer.f13123Wwwwwwwwwwwwwwwwwwwwwwwww = segment.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
                                    SegmentPool.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(segment);
                                    j2 -= j3;
                                } else {
                                    segment.f13233Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = i2 - ((int) j2);
                                    break;
                                }
                            }
                            Kkkkkkkkkkkkkkkkkkkkkk(null);
                            this.f13127Wwwwwwwwwwwwwwwwwwwwww = j;
                            this.f13126Wwwwwwwwwwwwwwwwwwwww = null;
                            this.f13125Wwwwwwwwwwwwwwwwwwww = -1;
                            this.f13124Wwwwwwwwwwwwwwwwwww = -1;
                        } else {
                            throw new IllegalArgumentException(("newSize < 0: " + j).toString());
                        }
                    } else if (i > 0) {
                        long j4 = j - Kk;
                        boolean z = true;
                        while (j4 > 0) {
                            Segment Illllllllllllllllllllllllll = buffer.Illllllllllllllllllllllllll(1);
                            int min = (int) Math.min(j4, 8192 - Illllllllllllllllllllllllll.f13233Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
                            Illllllllllllllllllllllllll.f13233Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww += min;
                            j4 -= min;
                            if (z) {
                                Kkkkkkkkkkkkkkkkkkkkkk(Illllllllllllllllllllllllll);
                                this.f13127Wwwwwwwwwwwwwwwwwwwwww = Kk;
                                this.f13126Wwwwwwwwwwwwwwwwwwwww = Illllllllllllllllllllllllll.f13235Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
                                int i3 = Illllllllllllllllllllllllll.f13233Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
                                this.f13125Wwwwwwwwwwwwwwwwwwww = i3 - min;
                                this.f13124Wwwwwwwwwwwwwwwwwww = i3;
                                z = false;
                            }
                        }
                    }
                    buffer.Kkk(j);
                    return Kk;
                }
                throw new IllegalStateException("resizeBuffer() only permitted for read/write buffers");
            }
            throw new IllegalStateException("not attached to a buffer");
        }

        public final int Wwwwwwwwwwwwwwwwwwwwwwwwwww() {
            long j;
            if (this.f13127Wwwwwwwwwwwwwwwwwwwwww != this.f13130Wwwwwwwwwwwwwwwwwwwwwwwww.Kk()) {
                long j2 = this.f13127Wwwwwwwwwwwwwwwwwwwwww;
                if (j2 == -1) {
                    j = 0;
                } else {
                    j = j2 + (this.f13124Wwwwwwwwwwwwwwwwwww - this.f13125Wwwwwwwwwwwwwwwwwwww);
                }
                return Kkkkkkkkkkkkkkkkkkkkkkk(j);
            }
            throw new IllegalStateException("no more bytes");
        }

        @Nullable
        public final Segment Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            return this.f13128Wwwwwwwwwwwwwwwwwwwwwww;
        }

        @Override // java.io.Closeable, java.lang.AutoCloseable
        public void close() {
            if (this.f13130Wwwwwwwwwwwwwwwwwwwwwwwww != null) {
                this.f13130Wwwwwwwwwwwwwwwwwwwwwwwww = null;
                Kkkkkkkkkkkkkkkkkkkkkk(null);
                this.f13127Wwwwwwwwwwwwwwwwwwwwww = -1L;
                this.f13126Wwwwwwwwwwwwwwwwwwwww = null;
                this.f13125Wwwwwwwwwwwwwwwwwwww = -1;
                this.f13124Wwwwwwwwwwwwwwwwwww = -1;
                return;
            }
            throw new IllegalStateException("not attached to a buffer");
        }
    }

    public static /* synthetic */ UnsafeCursor Kkkkkkk(Buffer buffer, UnsafeCursor unsafeCursor, int i, Object obj) {
        if ((i & 1) != 0) {
            unsafeCursor = SegmentedByteString.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        }
        return buffer.Kkkkkkkk(unsafeCursor);
    }

    @NotNull
    public Buffer Illlllllllll(int i) {
        if (i < 128) {
            writeByte(i);
            return this;
        } else if (i < 2048) {
            Segment Illllllllllllllllllllllllll = Illllllllllllllllllllllllll(2);
            byte[] bArr = Illllllllllllllllllllllllll.f13235Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
            int i2 = Illllllllllllllllllllllllll.f13233Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
            bArr[i2] = (byte) ((i >> 6) | 192);
            bArr[i2 + 1] = (byte) ((i & 63) | 128);
            Illllllllllllllllllllllllll.f13233Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = i2 + 2;
            Kkk(Kk() + 2);
            return this;
        } else if (55296 <= i && i < 57344) {
            writeByte(63);
            return this;
        } else if (i < 65536) {
            Segment Illllllllllllllllllllllllll2 = Illllllllllllllllllllllllll(3);
            byte[] bArr2 = Illllllllllllllllllllllllll2.f13235Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
            int i3 = Illllllllllllllllllllllllll2.f13233Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
            bArr2[i3] = (byte) ((i >> 12) | 224);
            bArr2[i3 + 1] = (byte) (((i >> 6) & 63) | 128);
            bArr2[i3 + 2] = (byte) ((i & 63) | 128);
            Illllllllllllllllllllllllll2.f13233Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = i3 + 3;
            Kkk(Kk() + 3);
            return this;
        } else if (i <= 1114111) {
            Segment Illllllllllllllllllllllllll3 = Illllllllllllllllllllllllll(4);
            byte[] bArr3 = Illllllllllllllllllllllllll3.f13235Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
            int i4 = Illllllllllllllllllllllllll3.f13233Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
            bArr3[i4] = (byte) ((i >> 18) | 240);
            bArr3[i4 + 1] = (byte) (((i >> 12) & 63) | 128);
            bArr3[i4 + 2] = (byte) (((i >> 6) & 63) | 128);
            bArr3[i4 + 3] = (byte) ((i & 63) | 128);
            Illllllllllllllllllllllllll3.f13233Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = i4 + 4;
            Kkk(Kk() + 4);
            return this;
        } else {
            throw new IllegalArgumentException("Unexpected code point: 0x" + SegmentedByteString.Wwwwwwwwwwwwwwwwwwwwwww(i));
        }
    }

    @NotNull
    public Buffer Illllllllllll(@NotNull String str, int i, int i2) {
        char charAt;
        char c;
        if (i >= 0) {
            if (i2 >= i) {
                if (i2 <= str.length()) {
                    while (i < i2) {
                        char charAt2 = str.charAt(i);
                        if (charAt2 < 128) {
                            Segment Illllllllllllllllllllllllll = Illllllllllllllllllllllllll(1);
                            byte[] bArr = Illllllllllllllllllllllllll.f13235Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
                            int i3 = Illllllllllllllllllllllllll.f13233Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww - i;
                            int min = Math.min(i2, 8192 - i3);
                            int i4 = i + 1;
                            bArr[i + i3] = (byte) charAt2;
                            while (true) {
                                i = i4;
                                if (i >= min || (charAt = str.charAt(i)) >= 128) {
                                    break;
                                }
                                i4 = i + 1;
                                bArr[i + i3] = (byte) charAt;
                            }
                            int i5 = Illllllllllllllllllllllllll.f13233Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
                            int i6 = (i3 + i) - i5;
                            Illllllllllllllllllllllllll.f13233Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = i5 + i6;
                            Kkk(Kk() + i6);
                        } else {
                            if (charAt2 < 2048) {
                                Segment Illllllllllllllllllllllllll2 = Illllllllllllllllllllllllll(2);
                                byte[] bArr2 = Illllllllllllllllllllllllll2.f13235Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
                                int i7 = Illllllllllllllllllllllllll2.f13233Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
                                bArr2[i7] = (byte) ((charAt2 >> 6) | 192);
                                bArr2[i7 + 1] = (byte) ((charAt2 & '?') | 128);
                                Illllllllllllllllllllllllll2.f13233Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = i7 + 2;
                                Kkk(Kk() + 2);
                            } else if (charAt2 >= 55296 && charAt2 <= 57343) {
                                int i8 = i + 1;
                                if (i8 < i2) {
                                    c = str.charAt(i8);
                                } else {
                                    c = 0;
                                }
                                if (charAt2 <= 56319 && 56320 <= c && c < 57344) {
                                    int i9 = (((charAt2 & 1023) << 10) | (c & 1023)) + 65536;
                                    Segment Illllllllllllllllllllllllll3 = Illllllllllllllllllllllllll(4);
                                    byte[] bArr3 = Illllllllllllllllllllllllll3.f13235Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
                                    int i10 = Illllllllllllllllllllllllll3.f13233Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
                                    bArr3[i10] = (byte) ((i9 >> 18) | 240);
                                    bArr3[i10 + 1] = (byte) (((i9 >> 12) & 63) | 128);
                                    bArr3[i10 + 2] = (byte) (((i9 >> 6) & 63) | 128);
                                    bArr3[i10 + 3] = (byte) ((i9 & 63) | 128);
                                    Illllllllllllllllllllllllll3.f13233Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = i10 + 4;
                                    Kkk(Kk() + 4);
                                    i += 2;
                                } else {
                                    writeByte(63);
                                    i = i8;
                                }
                            } else {
                                Segment Illllllllllllllllllllllllll4 = Illllllllllllllllllllllllll(3);
                                byte[] bArr4 = Illllllllllllllllllllllllll4.f13235Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
                                int i11 = Illllllllllllllllllllllllll4.f13233Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
                                bArr4[i11] = (byte) ((charAt2 >> '\f') | 224);
                                bArr4[i11 + 1] = (byte) ((63 & (charAt2 >> 6)) | 128);
                                bArr4[i11 + 2] = (byte) ((charAt2 & '?') | 128);
                                Illllllllllllllllllllllllll4.f13233Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = i11 + 3;
                                Kkk(Kk() + 3);
                            }
                            i++;
                        }
                    }
                    return this;
                }
                throw new IllegalArgumentException(("endIndex > string.length: " + i2 + " > " + str.length()).toString());
            }
            throw new IllegalArgumentException(("endIndex < beginIndex: " + i2 + " < " + i).toString());
        }
        throw new IllegalArgumentException(("beginIndex < 0: " + i).toString());
    }

    @Override // okio.BufferedSink
    @NotNull
    /* renamed from: Illlllllllllll */
    public Buffer Wwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull String str) {
        return Illllllllllll(str, 0, str.length());
    }

    @NotNull
    public Buffer Illllllllllllll(@NotNull String str, @NotNull Charset charset) {
        return Illlllllllllllll(str, 0, str.length(), charset);
    }

    @NotNull
    public Buffer Illlllllllllllll(@NotNull String str, int i, int i2, @NotNull Charset charset) {
        if (i >= 0) {
            if (i2 >= i) {
                if (i2 <= str.length()) {
                    if (Intrinsics.areEqual(charset, Charsets.UTF_8)) {
                        return Illllllllllll(str, i, i2);
                    }
                    byte[] bytes = str.substring(i, i2).getBytes(charset);
                    return write(bytes, 0, bytes.length);
                }
                throw new IllegalArgumentException(("endIndex > string.length: " + i2 + " > " + str.length()).toString());
            }
            throw new IllegalArgumentException(("endIndex < beginIndex: " + i2 + " < " + i).toString());
        }
        throw new IllegalArgumentException(("beginIndex < 0: " + i).toString());
    }

    @Override // okio.BufferedSink
    @NotNull
    /* renamed from: Illllllllllllllll */
    public Buffer writeShort(int i) {
        Segment Illllllllllllllllllllllllll = Illllllllllllllllllllllllll(2);
        byte[] bArr = Illllllllllllllllllllllllll.f13235Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        int i2 = Illllllllllllllllllllllllll.f13233Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        bArr[i2] = (byte) ((i >>> 8) & 255);
        bArr[i2 + 1] = (byte) (i & 255);
        Illllllllllllllllllllllllll.f13233Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = i2 + 2;
        Kkk(Kk() + 2);
        return this;
    }

    @NotNull
    public Buffer Illlllllllllllllll(long j) {
        Segment Illllllllllllllllllllllllll = Illllllllllllllllllllllllll(8);
        byte[] bArr = Illllllllllllllllllllllllll.f13235Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        int i = Illllllllllllllllllllllllll.f13233Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        bArr[i] = (byte) ((j >>> 56) & 255);
        bArr[i + 1] = (byte) ((j >>> 48) & 255);
        bArr[i + 2] = (byte) ((j >>> 40) & 255);
        bArr[i + 3] = (byte) ((j >>> 32) & 255);
        bArr[i + 4] = (byte) ((j >>> 24) & 255);
        bArr[i + 5] = (byte) ((j >>> 16) & 255);
        bArr[i + 6] = (byte) ((j >>> 8) & 255);
        bArr[i + 7] = (byte) (j & 255);
        Illllllllllllllllllllllllll.f13233Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = i + 8;
        Kkk(Kk() + 8);
        return this;
    }

    @NotNull
    public Buffer Illllllllllllllllll(int i) {
        return writeInt(SegmentedByteString.Wwwwwwwwwwwwwwwwwwwwwwwwwww(i));
    }

    @Override // okio.BufferedSink
    @NotNull
    /* renamed from: Illlllllllllllllllll */
    public Buffer writeInt(int i) {
        Segment Illllllllllllllllllllllllll = Illllllllllllllllllllllllll(4);
        byte[] bArr = Illllllllllllllllllllllllll.f13235Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        int i2 = Illllllllllllllllllllllllll.f13233Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        bArr[i2] = (byte) ((i >>> 24) & 255);
        bArr[i2 + 1] = (byte) ((i >>> 16) & 255);
        bArr[i2 + 2] = (byte) ((i >>> 8) & 255);
        bArr[i2 + 3] = (byte) (i & 255);
        Illllllllllllllllllllllllll.f13233Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = i2 + 4;
        Kkk(Kk() + 4);
        return this;
    }

    @Override // okio.BufferedSink
    @NotNull
    /* renamed from: Illllllllllllllllllll */
    public Buffer Wwwwwwww(long j) {
        if (j == 0) {
            return writeByte(48);
        }
        long j2 = (j >>> 1) | j;
        long j3 = j2 | (j2 >>> 2);
        long j4 = j3 | (j3 >>> 4);
        long j5 = j4 | (j4 >>> 8);
        long j6 = j5 | (j5 >>> 16);
        long j7 = j6 | (j6 >>> 32);
        long j8 = j7 - ((j7 >>> 1) & 6148914691236517205L);
        long j9 = ((j8 >>> 2) & 3689348814741910323L) + (j8 & 3689348814741910323L);
        long j10 = ((j9 >>> 4) + j9) & 1085102592571150095L;
        long j11 = j10 + (j10 >>> 8);
        long j12 = j11 + (j11 >>> 16);
        int i = (int) ((((j12 & 63) + ((j12 >>> 32) & 63)) + 3) / 4);
        Segment Illllllllllllllllllllllllll = Illllllllllllllllllllllllll(i);
        byte[] bArr = Illllllllllllllllllllllllll.f13235Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        int i2 = Illllllllllllllllllllllllll.f13233Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        for (int i3 = (i2 + i) - 1; i3 >= i2; i3--) {
            bArr[i3] = okio.internal.Buffer.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()[(int) (15 & j)];
            j >>>= 4;
        }
        Illllllllllllllllllllllllll.f13233Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww += i;
        Kkk(Kk() + i);
        return this;
    }

    @Override // okio.BufferedSink
    @NotNull
    /* renamed from: Illlllllllllllllllllll */
    public Buffer Wwwwwwwwwwwwwwwww(long j) {
        boolean z;
        int i = (j > 0L ? 1 : (j == 0L ? 0 : -1));
        if (i == 0) {
            return writeByte(48);
        }
        int i2 = 1;
        if (i < 0) {
            j = -j;
            if (j < 0) {
                return Wwwwwwwwwwwwwwwwwwwwwwwwww("-9223372036854775808");
            }
            z = true;
        } else {
            z = false;
        }
        if (j < 100000000) {
            if (j < 10000) {
                if (j < 100) {
                    if (j >= 10) {
                        i2 = 2;
                    }
                } else if (j < 1000) {
                    i2 = 3;
                } else {
                    i2 = 4;
                }
            } else if (j < 1000000) {
                if (j < SilenceSkippingAudioProcessor.DEFAULT_MINIMUM_SILENCE_DURATION_US) {
                    i2 = 5;
                } else {
                    i2 = 6;
                }
            } else if (j < 10000000) {
                i2 = 7;
            } else {
                i2 = 8;
            }
        } else if (j < MediaPeriodQueue.INITIAL_RENDERER_POSITION_OFFSET_US) {
            if (j < 10000000000L) {
                if (j < 1000000000) {
                    i2 = 9;
                } else {
                    i2 = 10;
                }
            } else if (j < 100000000000L) {
                i2 = 11;
            } else {
                i2 = 12;
            }
        } else if (j < 1000000000000000L) {
            if (j < 10000000000000L) {
                i2 = 13;
            } else if (j < 100000000000000L) {
                i2 = 14;
            } else {
                i2 = 15;
            }
        } else if (j < 100000000000000000L) {
            if (j < 10000000000000000L) {
                i2 = 16;
            } else {
                i2 = 17;
            }
        } else if (j < 1000000000000000000L) {
            i2 = 18;
        } else {
            i2 = 19;
        }
        if (z) {
            i2++;
        }
        Segment Illllllllllllllllllllllllll = Illllllllllllllllllllllllll(i2);
        byte[] bArr = Illllllllllllllllllllllllll.f13235Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        int i3 = Illllllllllllllllllllllllll.f13233Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww + i2;
        while (j != 0) {
            long j2 = 10;
            i3--;
            bArr[i3] = okio.internal.Buffer.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()[(int) (j % j2)];
            j /= j2;
        }
        if (z) {
            bArr[i3 - 1] = 45;
        }
        Illllllllllllllllllllllllll.f13233Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww += i2;
        Kkk(Kk() + i2);
        return this;
    }

    @Override // okio.BufferedSink
    @NotNull
    /* renamed from: Illllllllllllllllllllll */
    public Buffer writeByte(int i) {
        Segment Illllllllllllllllllllllllll = Illllllllllllllllllllllllll(1);
        byte[] bArr = Illllllllllllllllllllllllll.f13235Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        int i2 = Illllllllllllllllllllllllll.f13233Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        Illllllllllllllllllllllllll.f13233Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = i2 + 1;
        bArr[i2] = (byte) i;
        Kkk(Kk() + 1);
        return this;
    }

    @Override // okio.BufferedSink
    @NotNull
    /* renamed from: Illlllllllllllllllllllll */
    public Buffer write(@NotNull byte[] bArr, int i, int i2) {
        long j = i2;
        SegmentedByteString.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(bArr.length, i, j);
        int i3 = i2 + i;
        while (i < i3) {
            Segment Illllllllllllllllllllllllll = Illllllllllllllllllllllllll(1);
            int min = Math.min(i3 - i, 8192 - Illllllllllllllllllllllllll.f13233Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
            int i4 = i + min;
            ArraysKt.copyInto(bArr, Illllllllllllllllllllllllll.f13235Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, Illllllllllllllllllllllllll.f13233Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, i, i4);
            Illllllllllllllllllllllllll.f13233Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww += min;
            i = i4;
        }
        Kkk(Kk() + j);
        return this;
    }

    @Override // okio.BufferedSink
    @NotNull
    /* renamed from: Illllllllllllllllllllllll */
    public Buffer write(@NotNull byte[] bArr) {
        return write(bArr, 0, bArr.length);
    }

    @Override // okio.BufferedSink
    @NotNull
    /* renamed from: Illlllllllllllllllllllllll */
    public Buffer Wwwww(@NotNull ByteString byteString) {
        byteString.write$okio(this, 0, byteString.size());
        return this;
    }

    @NotNull
    public final Segment Illllllllllllllllllllllllll(int i) {
        if (i >= 1 && i <= 8192) {
            Segment segment = this.f13123Wwwwwwwwwwwwwwwwwwwwwwwww;
            if (segment == null) {
                Segment Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = SegmentPool.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
                this.f13123Wwwwwwwwwwwwwwwwwwwwwwwww = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
                Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.f13229Wwwwwwwwwwwwwwwwwwwwwwwwwwww = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
                Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.f13230Wwwwwwwwwwwwwwwwwwwwwwwwwwwww = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
                return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
            }
            Segment segment2 = segment.f13229Wwwwwwwwwwwwwwwwwwwwwwwwwwww;
            if (segment2.f13233Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww + i <= 8192 && segment2.f13231Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww) {
                return segment2;
            }
            return segment2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(SegmentPool.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
        }
        throw new IllegalArgumentException("unexpected capacity");
    }

    @NotNull
    public final ByteString Illlllllllllllllllllllllllll(int i) {
        if (i == 0) {
            return ByteString.EMPTY;
        }
        SegmentedByteString.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Kk(), 0L, i);
        Segment segment = this.f13123Wwwwwwwwwwwwwwwwwwwwwwwww;
        int i2 = 0;
        int i3 = 0;
        int i4 = 0;
        while (i3 < i) {
            int i5 = segment.f13233Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
            int i6 = segment.f13234Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
            if (i5 != i6) {
                i3 += i5 - i6;
                i4++;
                segment = segment.f13230Wwwwwwwwwwwwwwwwwwwwwwwwwwwww;
            } else {
                throw new AssertionError("s.limit == s.pos");
            }
        }
        byte[][] bArr = new byte[i4];
        int[] iArr = new int[i4 * 2];
        Segment segment2 = this.f13123Wwwwwwwwwwwwwwwwwwwwwwwww;
        int i7 = 0;
        while (i2 < i) {
            bArr[i7] = segment2.f13235Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
            i2 += segment2.f13233Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww - segment2.f13234Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
            iArr[i7] = Math.min(i2, i);
            iArr[i7 + i4] = segment2.f13234Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
            segment2.f13232Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = true;
            i7++;
            segment2 = segment2.f13230Wwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        }
        return new C2318SegmentedByteString(bArr, iArr);
    }

    @NotNull
    public final ByteString Illllllllllllllllllllllllllll() {
        if (Kk() <= 2147483647L) {
            return Illlllllllllllllllllllllllll((int) Kk());
        }
        throw new IllegalStateException(("size > Int.MAX_VALUE: " + Kk()).toString());
    }

    @JvmName(name = "size")
    public final long Kk() {
        return this.f13122Wwwwwwwwwwwwwwwwwwwwwwww;
    }

    public final void Kkk(long j) {
        this.f13122Wwwwwwwwwwwwwwwwwwwwwwww = j;
    }

    public int Kkkk() throws EOFException {
        int i;
        int i2;
        int i3;
        if (Kk() != 0) {
            byte Kkkkkkkkkkkkkkkk2 = Kkkkkkkkkkkkkkkk(0L);
            if ((Kkkkkkkkkkkkkkkk2 & 128) == 0) {
                i = Kkkkkkkkkkkkkkkk2 & Byte.MAX_VALUE;
                i3 = 0;
                i2 = 1;
            } else if ((Kkkkkkkkkkkkkkkk2 & 224) == 192) {
                i = Kkkkkkkkkkkkkkkk2 & Ascii.US;
                i2 = 2;
                i3 = 128;
            } else if ((Kkkkkkkkkkkkkkkk2 & 240) == 224) {
                i = Kkkkkkkkkkkkkkkk2 & Ascii.SI;
                i2 = 3;
                i3 = 2048;
            } else if ((Kkkkkkkkkkkkkkkk2 & 248) == 240) {
                i = Kkkkkkkkkkkkkkkk2 & 7;
                i2 = 4;
                i3 = 65536;
            } else {
                skip(1L);
                return 65533;
            }
            long j = i2;
            if (Kk() >= j) {
                for (int i4 = 1; i4 < i2; i4++) {
                    long j2 = i4;
                    byte Kkkkkkkkkkkkkkkk3 = Kkkkkkkkkkkkkkkk(j2);
                    if ((Kkkkkkkkkkkkkkkk3 & 192) == 128) {
                        i = (i << 6) | (Kkkkkkkkkkkkkkkk3 & 63);
                    } else {
                        skip(j2);
                        return 65533;
                    }
                }
                skip(j);
                if (i > 1114111) {
                    return 65533;
                }
                if ((55296 <= i && i < 57344) || i < i3) {
                    return 65533;
                }
                return i;
            }
            throw new EOFException("size < " + i2 + ": " + Kk() + " (to read code point prefixed 0x" + SegmentedByteString.Wwwwwwwwwwwwwwwwwwwwwwww(Kkkkkkkkkkkkkkkk2) + ')');
        }
        throw new EOFException();
    }

    @NotNull
    public String Kkkkk() {
        return Kkkkkk(this.f13122Wwwwwwwwwwwwwwwwwwwwwwww, Charsets.UTF_8);
    }

    @NotNull
    public String Kkkkkk(long j, @NotNull Charset charset) throws EOFException {
        int i = (j > 0L ? 1 : (j == 0L ? 0 : -1));
        if (i >= 0 && j <= 2147483647L) {
            if (this.f13122Wwwwwwwwwwwwwwwwwwwwwwww >= j) {
                if (i == 0) {
                    return "";
                }
                Segment segment = this.f13123Wwwwwwwwwwwwwwwwwwwwwwwww;
                int i2 = segment.f13234Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
                if (i2 + j > segment.f13233Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww) {
                    return new String(Wwwwwwwwwwwwwwwwwwwww(j), charset);
                }
                int i3 = (int) j;
                String str = new String(segment.f13235Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, i2, i3, charset);
                int i4 = segment.f13234Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww + i3;
                segment.f13234Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = i4;
                this.f13122Wwwwwwwwwwwwwwwwwwwwwwww -= j;
                if (i4 == segment.f13233Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww) {
                    this.f13123Wwwwwwwwwwwwwwwwwwwwwwwww = segment.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
                    SegmentPool.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(segment);
                }
                return str;
            }
            throw new EOFException();
        }
        throw new IllegalArgumentException(("byteCount: " + j).toString());
    }

    @JvmOverloads
    @NotNull
    public final UnsafeCursor Kkkkkkkk(@NotNull UnsafeCursor unsafeCursor) {
        return okio.internal.Buffer.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this, unsafeCursor);
    }

    public boolean Kkkkkkkkk(long j, @NotNull ByteString byteString, int i, int i2) {
        if (j < 0 || i < 0 || i2 < 0 || Kk() - j < i2 || byteString.size() - i < i2) {
            return false;
        }
        for (int i3 = 0; i3 < i2; i3++) {
            if (Kkkkkkkkkkkkkkkk(i3 + j) != byteString.getByte(i + i3)) {
                return false;
            }
        }
        return true;
    }

    public boolean Kkkkkkkkkk(long j, @NotNull ByteString byteString) {
        return Kkkkkkkkk(j, byteString, 0, byteString.size());
    }

    public long Kkkkkkkkkkk(@NotNull ByteString byteString, long j) {
        int i;
        int i2;
        long j2 = 0;
        if (j >= 0) {
            Segment segment = this.f13123Wwwwwwwwwwwwwwwwwwwwwwwww;
            if (segment == null) {
                return -1L;
            }
            if (Kk() - j < j) {
                j2 = Kk();
                while (j2 > j) {
                    segment = segment.f13229Wwwwwwwwwwwwwwwwwwwwwwwwwwww;
                    j2 -= segment.f13233Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww - segment.f13234Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
                }
                if (byteString.size() == 2) {
                    byte b = byteString.getByte(0);
                    byte b2 = byteString.getByte(1);
                    while (j2 < Kk()) {
                        byte[] bArr = segment.f13235Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
                        i = (int) ((segment.f13234Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww + j) - j2);
                        int i3 = segment.f13233Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
                        while (i < i3) {
                            byte b3 = bArr[i];
                            if (b3 != b && b3 != b2) {
                                i++;
                            }
                            i2 = segment.f13234Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
                        }
                        j2 += segment.f13233Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww - segment.f13234Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
                        segment = segment.f13230Wwwwwwwwwwwwwwwwwwwwwwwwwwwww;
                        j = j2;
                    }
                } else {
                    byte[] internalArray$okio = byteString.internalArray$okio();
                    while (j2 < Kk()) {
                        byte[] bArr2 = segment.f13235Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
                        i = (int) ((segment.f13234Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww + j) - j2);
                        int i4 = segment.f13233Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
                        while (i < i4) {
                            byte b4 = bArr2[i];
                            for (byte b5 : internalArray$okio) {
                                if (b4 == b5) {
                                    i2 = segment.f13234Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
                                }
                            }
                            i++;
                        }
                        j2 += segment.f13233Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww - segment.f13234Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
                        segment = segment.f13230Wwwwwwwwwwwwwwwwwwwwwwwwwwwww;
                        j = j2;
                    }
                }
                return -1L;
            }
            while (true) {
                long j3 = (segment.f13233Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww - segment.f13234Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww) + j2;
                if (j3 > j) {
                    break;
                }
                segment = segment.f13230Wwwwwwwwwwwwwwwwwwwwwwwwwwwww;
                j2 = j3;
            }
            if (byteString.size() == 2) {
                byte b6 = byteString.getByte(0);
                byte b7 = byteString.getByte(1);
                while (j2 < Kk()) {
                    byte[] bArr3 = segment.f13235Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
                    i = (int) ((segment.f13234Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww + j) - j2);
                    int i5 = segment.f13233Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
                    while (i < i5) {
                        byte b8 = bArr3[i];
                        if (b8 != b6 && b8 != b7) {
                            i++;
                        }
                        i2 = segment.f13234Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
                    }
                    j2 += segment.f13233Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww - segment.f13234Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
                    segment = segment.f13230Wwwwwwwwwwwwwwwwwwwwwwwwwwwww;
                    j = j2;
                }
            } else {
                byte[] internalArray$okio2 = byteString.internalArray$okio();
                while (j2 < Kk()) {
                    byte[] bArr4 = segment.f13235Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
                    i = (int) ((segment.f13234Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww + j) - j2);
                    int i6 = segment.f13233Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
                    while (i < i6) {
                        byte b9 = bArr4[i];
                        for (byte b10 : internalArray$okio2) {
                            if (b9 == b10) {
                                i2 = segment.f13234Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
                            }
                        }
                        i++;
                    }
                    j2 += segment.f13233Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww - segment.f13234Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
                    segment = segment.f13230Wwwwwwwwwwwwwwwwwwwwwwwwwwwww;
                    j = j2;
                }
            }
            return -1L;
            return (i - i2) + j2;
        }
        throw new IllegalArgumentException(("fromIndex < 0: " + j).toString());
    }

    public long Kkkkkkkkkkkk(@NotNull ByteString byteString) {
        return Kkkkkkkkkkk(byteString, 0L);
    }

    public long Kkkkkkkkkkkkk(@NotNull ByteString byteString, long j) throws IOException {
        long j2;
        int i;
        long j3 = j;
        if (byteString.size() > 0) {
            long j4 = 0;
            if (j3 >= 0) {
                Segment segment = this.f13123Wwwwwwwwwwwwwwwwwwwwwwwww;
                if (segment == null) {
                    return -1L;
                }
                if (Kk() - j3 < j3) {
                    j4 = Kk();
                    while (j4 > j3) {
                        segment = segment.f13229Wwwwwwwwwwwwwwwwwwwwwwwwwwww;
                        j4 -= segment.f13233Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww - segment.f13234Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
                    }
                    byte[] internalArray$okio = byteString.internalArray$okio();
                    byte b = internalArray$okio[0];
                    int size = byteString.size();
                    long Kk = (Kk() - size) + 1;
                    while (j4 < Kk) {
                        byte[] bArr = segment.f13235Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
                        int i2 = size;
                        int min = (int) Math.min(segment.f13233Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, (segment.f13234Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww + Kk) - j4);
                        int i3 = (int) ((segment.f13234Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww + j3) - j4);
                        while (i3 < min) {
                            if (bArr[i3] == b) {
                                i = i2;
                                if (okio.internal.Buffer.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(segment, i3 + 1, internalArray$okio, 1, i)) {
                                    j2 = i3 - segment.f13234Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
                                }
                            } else {
                                i = i2;
                            }
                            i3++;
                            i2 = i;
                        }
                        j4 += segment.f13233Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww - segment.f13234Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
                        segment = segment.f13230Wwwwwwwwwwwwwwwwwwwwwwwwwwwww;
                        j3 = j4;
                        size = i2;
                    }
                    return -1L;
                }
                while (true) {
                    long j5 = (segment.f13233Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww - segment.f13234Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww) + j4;
                    if (j5 > j3) {
                        break;
                    }
                    segment = segment.f13230Wwwwwwwwwwwwwwwwwwwwwwwwwwwww;
                    j4 = j5;
                }
                byte[] internalArray$okio2 = byteString.internalArray$okio();
                byte b2 = internalArray$okio2[0];
                int size2 = byteString.size();
                long Kk2 = (Kk() - size2) + 1;
                while (j4 < Kk2) {
                    byte[] bArr2 = segment.f13235Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
                    long j6 = j3;
                    int min2 = (int) Math.min(segment.f13233Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, (segment.f13234Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww + Kk2) - j4);
                    for (int i4 = (int) ((segment.f13234Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww + j6) - j4); i4 < min2; i4++) {
                        if (bArr2[i4] == b2 && okio.internal.Buffer.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(segment, i4 + 1, internalArray$okio2, 1, size2)) {
                            j2 = i4 - segment.f13234Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
                        }
                    }
                    j4 += segment.f13233Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww - segment.f13234Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
                    segment = segment.f13230Wwwwwwwwwwwwwwwwwwwwwwwwwwwww;
                    j3 = j4;
                }
                return -1L;
                return j2 + j4;
            }
            throw new IllegalArgumentException(("fromIndex < 0: " + j3).toString());
        }
        throw new IllegalArgumentException("bytes is empty");
    }

    public long Kkkkkkkkkkkkkk(@NotNull ByteString byteString) throws IOException {
        return Kkkkkkkkkkkkk(byteString, 0L);
    }

    public long Kkkkkkkkkkkkkkk(byte b, long j, long j2) {
        Segment segment;
        int i;
        long j3 = 0;
        if (0 <= j && j <= j2) {
            if (j2 > Kk()) {
                j2 = Kk();
            }
            if (j == j2 || (segment = this.f13123Wwwwwwwwwwwwwwwwwwwwwwwww) == null) {
                return -1L;
            }
            if (Kk() - j < j) {
                j3 = Kk();
                while (j3 > j) {
                    segment = segment.f13229Wwwwwwwwwwwwwwwwwwwwwwwwwwww;
                    j3 -= segment.f13233Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww - segment.f13234Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
                }
                while (j3 < j2) {
                    byte[] bArr = segment.f13235Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
                    int min = (int) Math.min(segment.f13233Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, (segment.f13234Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww + j2) - j3);
                    i = (int) ((segment.f13234Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww + j) - j3);
                    while (i < min) {
                        if (bArr[i] != b) {
                            i++;
                        }
                    }
                    j3 += segment.f13233Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww - segment.f13234Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
                    segment = segment.f13230Wwwwwwwwwwwwwwwwwwwwwwwwwwwww;
                    j = j3;
                }
                return -1L;
            }
            while (true) {
                long j4 = (segment.f13233Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww - segment.f13234Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww) + j3;
                if (j4 > j) {
                    break;
                }
                segment = segment.f13230Wwwwwwwwwwwwwwwwwwwwwwwwwwwww;
                j3 = j4;
            }
            while (j3 < j2) {
                byte[] bArr2 = segment.f13235Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
                int min2 = (int) Math.min(segment.f13233Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, (segment.f13234Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww + j2) - j3);
                i = (int) ((segment.f13234Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww + j) - j3);
                while (i < min2) {
                    if (bArr2[i] != b) {
                        i++;
                    }
                }
                j3 += segment.f13233Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww - segment.f13234Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
                segment = segment.f13230Wwwwwwwwwwwwwwwwwwwwwwwwwwwww;
                j = j3;
            }
            return -1L;
            return (i - segment.f13234Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww) + j3;
        }
        throw new IllegalArgumentException(("size=" + Kk() + " fromIndex=" + j + " toIndex=" + j2).toString());
    }

    @JvmName(name = "getByte")
    public final byte Kkkkkkkkkkkkkkkk(long j) {
        SegmentedByteString.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Kk(), j, 1L);
        Segment segment = this.f13123Wwwwwwwwwwwwwwwwwwwwwwwww;
        segment.getClass();
        if (Kk() - j < j) {
            long Kk = Kk();
            while (Kk > j) {
                segment = segment.f13229Wwwwwwwwwwwwwwwwwwwwwwwwwwww;
                Kk -= segment.f13233Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww - segment.f13234Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
            }
            return segment.f13235Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww[(int) ((segment.f13234Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww + j) - Kk)];
        }
        long j2 = 0;
        while (true) {
            int i = segment.f13233Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
            int i2 = segment.f13234Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
            long j3 = (i - i2) + j2;
            if (j3 <= j) {
                segment = segment.f13230Wwwwwwwwwwwwwwwwwwwwwwwwwwwww;
                j2 = j3;
            } else {
                return segment.f13235Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww[(int) ((i2 + j) - j2)];
            }
        }
    }

    @NotNull
    public final Buffer Kkkkkkkkkkkkkkkkkkk(@NotNull Buffer buffer, long j, long j2) {
        long j3 = j;
        SegmentedByteString.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Kk(), j3, j2);
        if (j2 != 0) {
            buffer.Kkk(buffer.Kk() + j2);
            Segment segment = this.f13123Wwwwwwwwwwwwwwwwwwwwwwwww;
            while (true) {
                int i = segment.f13233Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
                int i2 = segment.f13234Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
                if (j3 < i - i2) {
                    break;
                }
                j3 -= i - i2;
                segment = segment.f13230Wwwwwwwwwwwwwwwwwwwwwwwwwwwww;
            }
            Segment segment2 = segment;
            long j4 = j2;
            while (j4 > 0) {
                Segment Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = segment2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
                int i3 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.f13234Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww + ((int) j3);
                Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.f13234Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = i3;
                Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.f13233Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = Math.min(i3 + ((int) j4), Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.f13233Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
                Segment segment3 = buffer.f13123Wwwwwwwwwwwwwwwwwwwwwwwww;
                if (segment3 == null) {
                    Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.f13229Wwwwwwwwwwwwwwwwwwwwwwwwwwww = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
                    Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.f13230Wwwwwwwwwwwwwwwwwwwwwwwwwwwww = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
                    buffer.f13123Wwwwwwwwwwwwwwwwwwwwwwwww = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
                } else {
                    segment3.f13229Wwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2);
                }
                j4 -= Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.f13233Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww - Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.f13234Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
                segment2 = segment2.f13230Wwwwwwwwwwwwwwwwwwwwwwwwwwwww;
                j3 = 0;
            }
        }
        return this;
    }

    @NotNull
    public final Buffer Kkkkkkkkkkkkkkkkkkkk() {
        Buffer buffer = new Buffer();
        if (Kk() == 0) {
            return buffer;
        }
        Segment segment = this.f13123Wwwwwwwwwwwwwwwwwwwwwwwww;
        Segment Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = segment.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        buffer.f13123Wwwwwwwwwwwwwwwwwwwwwwwww = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
        Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.f13229Wwwwwwwwwwwwwwwwwwwwwwwwwwww = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
        Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.f13230Wwwwwwwwwwwwwwwwwwwwwwwwwwwww = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
        for (Segment segment2 = segment.f13230Wwwwwwwwwwwwwwwwwwwwwwwwwwwww; segment2 != segment; segment2 = segment2.f13230Wwwwwwwwwwwwwwwwwwwwwwwwwwwww) {
            Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.f13229Wwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(segment2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
        }
        buffer.Kkk(Kk());
        return buffer;
    }

    public final long Kkkkkkkkkkkkkkkkkkkkk() {
        long Kk = Kk();
        if (Kk == 0) {
            return 0L;
        }
        Segment segment = this.f13123Wwwwwwwwwwwwwwwwwwwwwwwww.f13229Wwwwwwwwwwwwwwwwwwwwwwwwwwww;
        int i = segment.f13233Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        if (i < 8192 && segment.f13231Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww) {
            return Kk - (i - segment.f13234Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
        }
        return Kk;
    }

    @NotNull
    /* renamed from: Kkkkkkkkkkkkkkkkkkkkkk */
    public Buffer clone() {
        return Kkkkkkkkkkkkkkkkkkkk();
    }

    public final void Kkkkkkkkkkkkkkkkkkkkkkk() {
        skip(Kk());
    }

    @Override // okio.BufferedSource
    public int Kkkkkkkkkkkkkkkkkkkkkkkk(@NotNull Options options) {
        int Wwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = okio.internal.Buffer.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(this, options, false, 2, null);
        if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwww2 == -1) {
            return -1;
        }
        skip(options.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()[Wwwwwwwwwwwwwwwwwwwwwwwwwwwww2].size());
        return Wwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
    }

    @Override // okio.BufferedSource
    @NotNull
    public InputStream Kkkkkkkkkkkkkkkkkkkkkkkkk() {
        return new InputStream() { // from class: okio.Buffer$inputStream$1
            @Override // java.io.InputStream
            public int available() {
                return (int) Math.min(Buffer.this.Kk(), Integer.MAX_VALUE);
            }

            @Override // java.io.InputStream
            public int read() {
                if (Buffer.this.Kk() > 0) {
                    return Buffer.this.readByte() & 255;
                }
                return -1;
            }

            @NotNull
            public String toString() {
                return Buffer.this + ".inputStream()";
            }

            @Override // java.io.InputStream
            public int read(@NotNull byte[] bArr, int i, int i2) {
                return Buffer.this.read(bArr, i, i2);
            }

            @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
            public void close() {
            }
        };
    }

    /* JADX WARN: Removed duplicated region for block: B:32:0x0092  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x009c  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x00a0  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x00a4 A[EDGE_INSN: B:41:0x00a4->B:37:0x00a4 ?: BREAK  , SYNTHETIC] */
    @Override // okio.BufferedSource
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public long Kkkkkkkkkkkkkkkkkkkkkkkkkk() throws java.io.EOFException {
        /*
            r14 = this;
            long r0 = r14.Kk()
            r2 = 0
            int r0 = (r0 > r2 ? 1 : (r0 == r2 ? 0 : -1))
            if (r0 == 0) goto Lae
            r0 = 0
            r1 = r0
            r4 = r2
        Ld:
            okio.Segment r6 = r14.f13123Wwwwwwwwwwwwwwwwwwwwwwwww
            byte[] r7 = r6.f13235Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww
            int r8 = r6.f13234Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww
            int r9 = r6.f13233Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww
        L15:
            if (r8 >= r9) goto L90
            r10 = r7[r8]
            r11 = 48
            if (r10 < r11) goto L24
            r11 = 57
            if (r10 > r11) goto L24
            int r11 = r10 + (-48)
            goto L39
        L24:
            r11 = 97
            if (r10 < r11) goto L2f
            r11 = 102(0x66, float:1.43E-43)
            if (r10 > r11) goto L2f
            int r11 = r10 + (-87)
            goto L39
        L2f:
            r11 = 65
            if (r10 < r11) goto L71
            r11 = 70
            if (r10 > r11) goto L71
            int r11 = r10 + (-55)
        L39:
            r12 = -1152921504606846976(0xf000000000000000, double:-3.105036184601418E231)
            long r12 = r12 & r4
            int r12 = (r12 > r2 ? 1 : (r12 == r2 ? 0 : -1))
            if (r12 != 0) goto L49
            r10 = 4
            long r4 = r4 << r10
            long r10 = (long) r11
            long r4 = r4 | r10
            int r8 = r8 + 1
            int r0 = r0 + 1
            goto L15
        L49:
            okio.Buffer r0 = new okio.Buffer
            r0.<init>()
            okio.Buffer r0 = r0.Wwwwwwww(r4)
            okio.Buffer r0 = r0.writeByte(r10)
            java.lang.NumberFormatException r1 = new java.lang.NumberFormatException
            java.lang.StringBuilder r2 = new java.lang.StringBuilder
            r2.<init>()
            java.lang.String r3 = "Number too large: "
            r2.append(r3)
            java.lang.String r0 = r0.Kkkkk()
            r2.append(r0)
            java.lang.String r0 = r2.toString()
            r1.<init>(r0)
            throw r1
        L71:
            if (r0 == 0) goto L75
            r1 = 1
            goto L90
        L75:
            java.lang.NumberFormatException r0 = new java.lang.NumberFormatException
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r1.<init>()
            java.lang.String r2 = "Expected leading [0-9a-fA-F] character but was 0x"
            r1.append(r2)
            java.lang.String r2 = okio.SegmentedByteString.Wwwwwwwwwwwwwwwwwwwwwwww(r10)
            r1.append(r2)
            java.lang.String r1 = r1.toString()
            r0.<init>(r1)
            throw r0
        L90:
            if (r8 != r9) goto L9c
            okio.Segment r7 = r6.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()
            r14.f13123Wwwwwwwwwwwwwwwwwwwwwwwww = r7
            okio.SegmentPool.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(r6)
            goto L9e
        L9c:
            r6.f13234Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = r8
        L9e:
            if (r1 != 0) goto La4
            okio.Segment r6 = r14.f13123Wwwwwwwwwwwwwwwwwwwwwwwww
            if (r6 != 0) goto Ld
        La4:
            long r1 = r14.Kk()
            long r6 = (long) r0
            long r1 = r1 - r6
            r14.Kkk(r1)
            return r4
        Lae:
            java.io.EOFException r0 = new java.io.EOFException
            r0.<init>()
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: okio.Buffer.Kkkkkkkkkkkkkkkkkkkkkkkkkk():long");
    }

    @Override // okio.BufferedSink
    @NotNull
    public OutputStream Www() {
        return new OutputStream() { // from class: okio.Buffer$outputStream$1
            @NotNull
            public String toString() {
                return Buffer.this + ".outputStream()";
            }

            @Override // java.io.OutputStream
            public void write(int i) {
                Buffer.this.writeByte(i);
            }

            @Override // java.io.OutputStream
            public void write(@NotNull byte[] bArr, int i, int i2) {
                Buffer.this.write(bArr, i, i2);
            }

            @Override // java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
            public void close() {
            }

            @Override // java.io.OutputStream, java.io.Flushable
            public void flush() {
            }
        };
    }

    @Override // okio.BufferedSource
    public long Wwww(@NotNull Sink sink) throws IOException {
        long Kk = Kk();
        if (Kk > 0) {
            sink.Wwwwwwwwwwwwwwwwwwwwwwwww(this, Kk);
        }
        return Kk;
    }

    @Override // okio.BufferedSource
    public int Wwwwww() throws EOFException {
        return SegmentedByteString.Wwwwwwwwwwwwwwwwwwwwwwwwwww(readInt());
    }

    @Override // okio.BufferedSource
    @NotNull
    public ByteString Wwwwwww() {
        return Wwwwwwwwwwwwwww(Kk());
    }

    @Override // okio.BufferedSource
    @NotNull
    public String Wwwwwwwwww(@NotNull Charset charset) {
        return Kkkkkk(this.f13122Wwwwwwwwwwwwwwwwwwwwwwww, charset);
    }

    /* JADX WARN: Code restructure failed: missing block: B:39:0x009f, code lost:
        Kkk(Kk() - r1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x00a8, code lost:
        if (r2 == false) goto L58;
     */
    /* JADX WARN: Code restructure failed: missing block: B:41:0x00aa, code lost:
        r14 = 2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:42:0x00ac, code lost:
        r14 = 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:43:0x00ad, code lost:
        if (r1 >= r14) goto L54;
     */
    /* JADX WARN: Code restructure failed: missing block: B:45:0x00b5, code lost:
        if (Kk() == r17) goto L52;
     */
    /* JADX WARN: Code restructure failed: missing block: B:46:0x00b7, code lost:
        if (r2 == false) goto L51;
     */
    /* JADX WARN: Code restructure failed: missing block: B:47:0x00b9, code lost:
        r1 = "Expected a digit";
     */
    /* JADX WARN: Code restructure failed: missing block: B:48:0x00bc, code lost:
        r1 = "Expected a digit or '-'";
     */
    /* JADX WARN: Code restructure failed: missing block: B:50:0x00e1, code lost:
        throw new java.lang.NumberFormatException(r1 + " but was 0x" + okio.SegmentedByteString.Wwwwwwwwwwwwwwwwwwwwwwww(Kkkkkkkkkkkkkkkk(r17)));
     */
    /* JADX WARN: Code restructure failed: missing block: B:52:0x00e7, code lost:
        throw new java.io.EOFException();
     */
    /* JADX WARN: Code restructure failed: missing block: B:53:0x00e8, code lost:
        if (r2 == false) goto L56;
     */
    /* JADX WARN: Code restructure failed: missing block: B:54:0x00ea, code lost:
        return r8;
     */
    /* JADX WARN: Code restructure failed: missing block: B:56:0x00ec, code lost:
        return -r8;
     */
    @Override // okio.BufferedSource
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public long Wwwwwwwwwww() throws java.io.EOFException {
        /*
            Method dump skipped, instructions count: 243
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: okio.Buffer.Wwwwwwwwwww():long");
    }

    @Override // okio.BufferedSource
    public boolean Wwwwwwwwwwww() {
        if (this.f13122Wwwwwwwwwwwwwwwwwwwwwwww == 0) {
            return true;
        }
        return false;
    }

    @Override // okio.BufferedSource
    @NotNull
    public byte[] Wwwwwwwwwwwww() {
        return Wwwwwwwwwwwwwwwwwwwww(Kk());
    }

    @Override // okio.BufferedSource
    @NotNull
    public ByteString Wwwwwwwwwwwwwww(long j) throws EOFException {
        if (j >= 0 && j <= 2147483647L) {
            if (Kk() >= j) {
                if (j >= 4096) {
                    ByteString Illlllllllllllllllllllllllll = Illlllllllllllllllllllllllll((int) j);
                    skip(j);
                    return Illlllllllllllllllllllllllll;
                }
                return new ByteString(Wwwwwwwwwwwwwwwwwwwww(j));
            }
            throw new EOFException();
        }
        throw new IllegalArgumentException(("byteCount: " + j).toString());
    }

    @Override // okio.BufferedSource
    @NotNull
    public String Wwwwwwwwwwwwwwww(long j) throws EOFException {
        return Kkkkkk(j, Charsets.UTF_8);
    }

    @Override // okio.BufferedSource
    public void Wwwwwwwwwwwwwwwwww(long j) throws EOFException {
        if (this.f13122Wwwwwwwwwwwwwwwwwwwwwwww >= j) {
            return;
        }
        throw new EOFException();
    }

    @Override // okio.BufferedSource
    public long Wwwwwwwwwwwwwwwwwww() throws EOFException {
        return SegmentedByteString.Wwwwwwwwwwwwwwwwwwwwwwwwww(readLong());
    }

    @Override // okio.BufferedSource
    public short Wwwwwwwwwwwwwwwwwwww() throws EOFException {
        return SegmentedByteString.Wwwwwwwwwwwwwwwwwwwwwwwww(readShort());
    }

    @Override // okio.BufferedSource
    @NotNull
    public byte[] Wwwwwwwwwwwwwwwwwwwww(long j) throws EOFException {
        if (j >= 0 && j <= 2147483647L) {
            if (Kk() >= j) {
                byte[] bArr = new byte[(int) j];
                readFully(bArr);
                return bArr;
            }
            throw new EOFException();
        }
        throw new IllegalArgumentException(("byteCount: " + j).toString());
    }

    @Override // okio.BufferedSource
    @NotNull
    public String Wwwwwwwwwwwwwwwwwwwwww() throws EOFException {
        return Wwwwwwwwwwwwwwwwwwwwwwwwwwww(Long.MAX_VALUE);
    }

    @Override // okio.BufferedSource
    public boolean Wwwwwwwwwwwwwwwwwwwwwww(long j) {
        if (this.f13122Wwwwwwwwwwwwwwwwwwwwwwww >= j) {
            return true;
        }
        return false;
    }

    @Override // okio.BufferedSink
    public long Wwwwwwwwwwwwwwwwwwwwwwww(@NotNull Source source) throws IOException {
        long j = 0;
        while (true) {
            long read = source.read(this, 8192L);
            if (read != -1) {
                j += read;
            } else {
                return j;
            }
        }
    }

    @Override // okio.Sink
    public void Wwwwwwwwwwwwwwwwwwwwwwwww(@NotNull Buffer buffer, long j) {
        Segment segment;
        int i;
        if (buffer != this) {
            SegmentedByteString.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(buffer.Kk(), 0L, j);
            while (j > 0) {
                Segment segment2 = buffer.f13123Wwwwwwwwwwwwwwwwwwwwwwwww;
                if (j < segment2.f13233Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww - segment2.f13234Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww) {
                    Segment segment3 = this.f13123Wwwwwwwwwwwwwwwwwwwwwwwww;
                    if (segment3 != null) {
                        segment = segment3.f13229Wwwwwwwwwwwwwwwwwwwwwwwwwwww;
                    } else {
                        segment = null;
                    }
                    if (segment != null && segment.f13231Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww) {
                        long j2 = segment.f13233Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww + j;
                        if (segment.f13232Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww) {
                            i = 0;
                        } else {
                            i = segment.f13234Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
                        }
                        if (j2 - i <= 8192) {
                            segment2.Wwwwwwwwwwwwwwwwwwwwwwwwwwww(segment, (int) j);
                            buffer.Kkk(buffer.Kk() - j);
                            Kkk(Kk() + j);
                            return;
                        }
                    }
                    buffer.f13123Wwwwwwwwwwwwwwwwwwwwwwwww = segment2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww((int) j);
                }
                Segment segment4 = buffer.f13123Wwwwwwwwwwwwwwwwwwwwwwwww;
                long j3 = segment4.f13233Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww - segment4.f13234Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
                buffer.f13123Wwwwwwwwwwwwwwwwwwwwwwwww = segment4.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
                Segment segment5 = this.f13123Wwwwwwwwwwwwwwwwwwwwwwwww;
                if (segment5 == null) {
                    this.f13123Wwwwwwwwwwwwwwwwwwwwwwwww = segment4;
                    segment4.f13229Wwwwwwwwwwwwwwwwwwwwwwwwwwww = segment4;
                    segment4.f13230Wwwwwwwwwwwwwwwwwwwwwwwwwwwww = segment4;
                } else {
                    segment5.f13229Wwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(segment4).Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
                }
                buffer.Kkk(buffer.Kk() - j3);
                Kkk(Kk() + j3);
                j -= j3;
            }
            return;
        }
        throw new IllegalArgumentException("source == this");
    }

    @Override // okio.BufferedSource
    @NotNull
    public String Wwwwwwwwwwwwwwwwwwwwwwwwwwww(long j) throws EOFException {
        if (j >= 0) {
            long j2 = Long.MAX_VALUE;
            if (j != Long.MAX_VALUE) {
                j2 = j + 1;
            }
            long j3 = j2;
            long Kkkkkkkkkkkkkkk2 = Kkkkkkkkkkkkkkk((byte) 10, 0L, j3);
            if (Kkkkkkkkkkkkkkk2 != -1) {
                return okio.internal.Buffer.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this, Kkkkkkkkkkkkkkk2);
            }
            if (j3 < Kk() && Kkkkkkkkkkkkkkkk(j3 - 1) == 13 && Kkkkkkkkkkkkkkkk(j3) == 10) {
                return okio.internal.Buffer.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this, j3);
            }
            Buffer buffer = new Buffer();
            Kkkkkkkkkkkkkkkkkkk(buffer, 0L, Math.min(32, Kk()));
            throw new EOFException("\\n not found: limit=" + Math.min(Kk(), j) + " content=" + buffer.Wwwwwww().hex() + Typography.ellipsis);
        }
        throw new IllegalArgumentException(("limit < 0: " + j).toString());
    }

    @Override // okio.BufferedSource
    public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull Buffer buffer, long j) throws EOFException {
        if (Kk() >= j) {
            buffer.Wwwwwwwwwwwwwwwwwwwwwwwww(this, j);
        } else {
            buffer.Wwwwwwwwwwwwwwwwwwwwwwwww(this, Kk());
            throw new EOFException();
        }
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Buffer)) {
            return false;
        }
        Buffer buffer = (Buffer) obj;
        if (Kk() != buffer.Kk()) {
            return false;
        }
        if (Kk() == 0) {
            return true;
        }
        Segment segment = this.f13123Wwwwwwwwwwwwwwwwwwwwwwwww;
        Segment segment2 = buffer.f13123Wwwwwwwwwwwwwwwwwwwwwwwww;
        int i = segment.f13234Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        int i2 = segment2.f13234Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        long j = 0;
        while (j < Kk()) {
            long min = Math.min(segment.f13233Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww - i, segment2.f13233Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww - i2);
            long j2 = 0;
            while (j2 < min) {
                int i3 = i + 1;
                int i4 = i2 + 1;
                if (segment.f13235Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww[i] != segment2.f13235Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww[i2]) {
                    return false;
                }
                j2++;
                i = i3;
                i2 = i4;
            }
            if (i == segment.f13233Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww) {
                segment = segment.f13230Wwwwwwwwwwwwwwwwwwwwwwwwwwwww;
                i = segment.f13234Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
            }
            if (i2 == segment2.f13233Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww) {
                segment2 = segment2.f13230Wwwwwwwwwwwwwwwwwwwwwwwwwwwww;
                i2 = segment2.f13234Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
            }
            j += min;
        }
        return true;
    }

    public int hashCode() {
        Segment segment = this.f13123Wwwwwwwwwwwwwwwwwwwwwwwww;
        if (segment == null) {
            return 0;
        }
        int i = 1;
        do {
            int i2 = segment.f13233Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
            for (int i3 = segment.f13234Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww; i3 < i2; i3++) {
                i = (i * 31) + segment.f13235Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww[i3];
            }
            segment = segment.f13230Wwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        } while (segment != this.f13123Wwwwwwwwwwwwwwwwwwwwwwwww);
        return i;
    }

    @Override // java.nio.channels.Channel
    public boolean isOpen() {
        return true;
    }

    @Override // okio.BufferedSource
    @NotNull
    public BufferedSource peek() {
        return Okio.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(new PeekSource(this));
    }

    @Override // java.nio.channels.ReadableByteChannel
    public int read(@NotNull ByteBuffer byteBuffer) throws IOException {
        Segment segment = this.f13123Wwwwwwwwwwwwwwwwwwwwwwwww;
        if (segment == null) {
            return -1;
        }
        int min = Math.min(byteBuffer.remaining(), segment.f13233Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww - segment.f13234Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
        byteBuffer.put(segment.f13235Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, segment.f13234Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, min);
        int i = segment.f13234Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww + min;
        segment.f13234Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = i;
        this.f13122Wwwwwwwwwwwwwwwwwwwwwwww -= min;
        if (i == segment.f13233Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww) {
            this.f13123Wwwwwwwwwwwwwwwwwwwwwwwww = segment.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
            SegmentPool.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(segment);
        }
        return min;
    }

    @Override // okio.BufferedSource
    public byte readByte() throws EOFException {
        if (Kk() != 0) {
            Segment segment = this.f13123Wwwwwwwwwwwwwwwwwwwwwwwww;
            int i = segment.f13234Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
            int i2 = segment.f13233Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
            int i3 = i + 1;
            byte b = segment.f13235Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww[i];
            Kkk(Kk() - 1);
            if (i3 == i2) {
                this.f13123Wwwwwwwwwwwwwwwwwwwwwwwww = segment.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
                SegmentPool.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(segment);
                return b;
            }
            segment.f13234Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = i3;
            return b;
        }
        throw new EOFException();
    }

    @Override // okio.BufferedSource
    public void readFully(@NotNull byte[] bArr) throws EOFException {
        int i = 0;
        while (i < bArr.length) {
            int read = read(bArr, i, bArr.length - i);
            if (read != -1) {
                i += read;
            } else {
                throw new EOFException();
            }
        }
    }

    @Override // okio.BufferedSource
    public int readInt() throws EOFException {
        if (Kk() >= 4) {
            Segment segment = this.f13123Wwwwwwwwwwwwwwwwwwwwwwwww;
            int i = segment.f13234Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
            int i2 = segment.f13233Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
            if (i2 - i < 4) {
                return ((readByte() & 255) << 24) | ((readByte() & 255) << 16) | ((readByte() & 255) << 8) | (readByte() & 255);
            }
            byte[] bArr = segment.f13235Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
            int i3 = ((bArr[i + 1] & 255) << 16) | ((bArr[i] & 255) << 24);
            int i4 = i + 3;
            int i5 = i + 4;
            int i6 = (bArr[i4] & 255) | i3 | ((bArr[i + 2] & 255) << 8);
            Kkk(Kk() - 4);
            if (i5 == i2) {
                this.f13123Wwwwwwwwwwwwwwwwwwwwwwwww = segment.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
                SegmentPool.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(segment);
                return i6;
            }
            segment.f13234Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = i5;
            return i6;
        }
        throw new EOFException();
    }

    @Override // okio.BufferedSource
    public long readLong() throws EOFException {
        if (Kk() >= 8) {
            Segment segment = this.f13123Wwwwwwwwwwwwwwwwwwwwwwwww;
            int i = segment.f13234Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
            int i2 = segment.f13233Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
            if (i2 - i < 8) {
                return ((readInt() & KeyboardMap.kValueMask) << 32) | (KeyboardMap.kValueMask & readInt());
            }
            byte[] bArr = segment.f13235Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
            long j = ((bArr[i + 3] & 255) << 32) | ((bArr[i] & 255) << 56) | ((bArr[i + 1] & 255) << 48) | ((bArr[i + 2] & 255) << 40);
            int i3 = i + 7;
            int i4 = i + 8;
            long j2 = j | ((bArr[i + 4] & 255) << 24) | ((bArr[i + 5] & 255) << 16) | ((bArr[i + 6] & 255) << 8) | (bArr[i3] & 255);
            Kkk(Kk() - 8);
            if (i4 == i2) {
                this.f13123Wwwwwwwwwwwwwwwwwwwwwwwww = segment.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
                SegmentPool.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(segment);
                return j2;
            }
            segment.f13234Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = i4;
            return j2;
        }
        throw new EOFException();
    }

    @Override // okio.BufferedSource
    public short readShort() throws EOFException {
        if (Kk() >= 2) {
            Segment segment = this.f13123Wwwwwwwwwwwwwwwwwwwwwwwww;
            int i = segment.f13234Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
            int i2 = segment.f13233Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
            if (i2 - i < 2) {
                return (short) (((readByte() & 255) << 8) | (readByte() & 255));
            }
            byte[] bArr = segment.f13235Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
            int i3 = i + 1;
            int i4 = i + 2;
            int i5 = (bArr[i3] & 255) | ((bArr[i] & 255) << 8);
            Kkk(Kk() - 2);
            if (i4 == i2) {
                this.f13123Wwwwwwwwwwwwwwwwwwwwwwwww = segment.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
                SegmentPool.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(segment);
            } else {
                segment.f13234Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = i4;
            }
            return (short) i5;
        }
        throw new EOFException();
    }

    @Override // okio.BufferedSource
    public void skip(long j) throws EOFException {
        while (j > 0) {
            Segment segment = this.f13123Wwwwwwwwwwwwwwwwwwwwwwwww;
            if (segment != null) {
                int min = (int) Math.min(j, segment.f13233Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww - segment.f13234Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
                long j2 = min;
                Kkk(Kk() - j2);
                j -= j2;
                int i = segment.f13234Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww + min;
                segment.f13234Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = i;
                if (i == segment.f13233Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww) {
                    this.f13123Wwwwwwwwwwwwwwwwwwwwwwwww = segment.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
                    SegmentPool.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(segment);
                }
            } else {
                throw new EOFException();
            }
        }
    }

    @Override // okio.Source
    @NotNull
    public Timeout timeout() {
        return Timeout.f13251Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    @NotNull
    public String toString() {
        return Illllllllllllllllllllllllllll().toString();
    }

    @Override // java.nio.channels.WritableByteChannel
    public int write(@NotNull ByteBuffer byteBuffer) throws IOException {
        int remaining = byteBuffer.remaining();
        int i = remaining;
        while (i > 0) {
            Segment Illllllllllllllllllllllllll = Illllllllllllllllllllllllll(1);
            int min = Math.min(i, 8192 - Illllllllllllllllllllllllll.f13233Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
            byteBuffer.get(Illllllllllllllllllllllllll.f13235Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, Illllllllllllllllllllllllll.f13233Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, min);
            i -= min;
            Illllllllllllllllllllllllll.f13233Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww += min;
        }
        this.f13122Wwwwwwwwwwwwwwwwwwwwwwww += remaining;
        return remaining;
    }

    public int read(@NotNull byte[] bArr, int i, int i2) {
        SegmentedByteString.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(bArr.length, i, i2);
        Segment segment = this.f13123Wwwwwwwwwwwwwwwwwwwwwwwww;
        if (segment == null) {
            return -1;
        }
        int min = Math.min(i2, segment.f13233Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww - segment.f13234Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
        byte[] bArr2 = segment.f13235Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        int i3 = segment.f13234Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        ArraysKt.copyInto(bArr2, bArr, i, i3, i3 + min);
        segment.f13234Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww += min;
        Kkk(Kk() - min);
        if (segment.f13234Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww == segment.f13233Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww) {
            this.f13123Wwwwwwwwwwwwwwwwwwwwwwwww = segment.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
            SegmentPool.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(segment);
        }
        return min;
    }

    @Override // okio.Source
    public long read(@NotNull Buffer buffer, long j) {
        if (j >= 0) {
            if (Kk() == 0) {
                return -1L;
            }
            if (j > Kk()) {
                j = Kk();
            }
            buffer.Wwwwwwwwwwwwwwwwwwwwwwwww(this, j);
            return j;
        }
        throw new IllegalArgumentException(("byteCount < 0: " + j).toString());
    }

    @Override // okio.BufferedSink
    @NotNull
    /* renamed from: Kkkkkkkkkkkkkkkkk */
    public Buffer Wwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this;
    }

    @Override // okio.BufferedSink
    @NotNull
    /* renamed from: Kkkkkkkkkkkkkkkkkk */
    public Buffer Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this;
    }

    @Override // okio.BufferedSource, okio.BufferedSink
    @NotNull
    public Buffer Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this;
    }

    @Override // okio.BufferedSource, okio.BufferedSink
    @NotNull
    public Buffer Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this;
    }

    @Override // okio.Source, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
    }

    @Override // okio.BufferedSink, okio.Sink, java.io.Flushable
    public void flush() {
    }
}
