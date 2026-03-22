package okhttp3.internal;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.exifinterface.media.ExifInterface;
import androidx.media3.extractor.text.ttml.TtmlNode;
import com.google.common.net.HttpHeaders;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.unity3d.services.core.network.core.OkHttp3Client;
import io.flutter.plugin.editing.SpellCheckPlugin;
import j$.util.DesugarTimeZone;
import java.io.Closeable;
import java.io.File;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.net.Socket;
import java.net.SocketTimeoutException;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.TimeZone;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.TimeUnit;
import kotlin.ExceptionsKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.ArraysKt;
import kotlin.collections.CollectionsKt;
import kotlin.collections.IntIterator;
import kotlin.collections.MapsKt;
import kotlin.io.CloseableKt;
import kotlin.jvm.JvmField;
import kotlin.jvm.JvmName;
import kotlin.jvm.internal.ArrayIteratorKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.StringCompanionObject;
import kotlin.ranges.IntRange;
import kotlin.ranges.RangesKt;
import kotlin.text.Charsets;
import kotlin.text.Regex;
import kotlin.text.StringsKt;
import kotlinx.serialization.json.internal.AbstractJsonLexerKt;
import okhttp3.Call;
import okhttp3.EventListener;
import okhttp3.Headers;
import okhttp3.HttpUrl;
import okhttp3.OkHttpClient;
import okhttp3.RequestBody;
import okhttp3.Response;
import okhttp3.ResponseBody;
import okhttp3.internal.Util;
import okhttp3.internal.http2.Header;
import okhttp3.internal.io.FileSystem;
import okio.Buffer;
import okio.BufferedSink;
import okio.BufferedSource;
import okio.ByteString;
import okio.Options;
import okio.Sink;
import okio.Source;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000 \u0002\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0011\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\u000e\n\u0002\u0010\f\n\u0002\b\t\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0005\n\u0002\b\u0003\n\u0002\u0010\n\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u000e\n\u0002\u0010$\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010!\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0003\n\u0002\b\u0002\n\u0002\u0010\u0012\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\b\u001a%\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0001\u001a\u00020\u00002\u0006\u0010\u0002\u001a\u00020\u00002\u0006\u0010\u0003\u001a\u00020\u0000¢\u0006\u0004\b\u0005\u0010\u0006\u001a\u001d\u0010\f\u001a\u00020\u000b2\u0006\u0010\b\u001a\u00020\u00072\u0006\u0010\n\u001a\u00020\t¢\u0006\u0004\b\f\u0010\r\u001a;\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\u00070\u000e*\b\u0012\u0004\u0012\u00020\u00070\u000e2\f\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u00070\u000e2\u000e\u0010\u0011\u001a\n\u0012\u0006\b\u0000\u0012\u00020\u00070\u0010¢\u0006\u0004\b\u0012\u0010\u0013\u001a7\u0010\u0014\u001a\u00020\t*\b\u0012\u0004\u0012\u00020\u00070\u000e2\u000e\u0010\u000f\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u000e2\u000e\u0010\u0011\u001a\n\u0012\u0006\b\u0000\u0012\u00020\u00070\u0010¢\u0006\u0004\b\u0014\u0010\u0015\u001a\u001b\u0010\u0018\u001a\u00020\u0007*\u00020\u00162\b\b\u0002\u0010\u0017\u001a\u00020\t¢\u0006\u0004\b\u0018\u0010\u0019\u001a-\u0010\u001c\u001a\u00020\u001b*\b\u0012\u0004\u0012\u00020\u00070\u000e2\u0006\u0010\u001a\u001a\u00020\u00072\f\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\u00070\u0010¢\u0006\u0004\b\u001c\u0010\u001d\u001a%\u0010\u001e\u001a\b\u0012\u0004\u0012\u00020\u00070\u000e*\b\u0012\u0004\u0012\u00020\u00070\u000e2\u0006\u0010\u001a\u001a\u00020\u0007¢\u0006\u0004\b\u001e\u0010\u001f\u001a%\u0010\"\u001a\u00020\u001b*\u00020\u00072\b\b\u0002\u0010 \u001a\u00020\u001b2\b\b\u0002\u0010!\u001a\u00020\u001b¢\u0006\u0004\b\"\u0010#\u001a%\u0010$\u001a\u00020\u001b*\u00020\u00072\b\b\u0002\u0010 \u001a\u00020\u001b2\b\b\u0002\u0010!\u001a\u00020\u001b¢\u0006\u0004\b$\u0010#\u001a%\u0010%\u001a\u00020\u0007*\u00020\u00072\b\b\u0002\u0010 \u001a\u00020\u001b2\b\b\u0002\u0010!\u001a\u00020\u001b¢\u0006\u0004\b%\u0010&\u001a-\u0010(\u001a\u00020\u001b*\u00020\u00072\u0006\u0010'\u001a\u00020\u00072\b\b\u0002\u0010 \u001a\u00020\u001b2\b\b\u0002\u0010!\u001a\u00020\u001b¢\u0006\u0004\b(\u0010)\u001a-\u0010,\u001a\u00020\u001b*\u00020\u00072\u0006\u0010+\u001a\u00020*2\b\b\u0002\u0010 \u001a\u00020\u001b2\b\b\u0002\u0010!\u001a\u00020\u001b¢\u0006\u0004\b,\u0010-\u001a\u0011\u0010.\u001a\u00020\u001b*\u00020\u0007¢\u0006\u0004\b.\u0010/\u001a\u0011\u00100\u001a\u00020\t*\u00020\u0007¢\u0006\u0004\b0\u00101\u001a\u0015\u00102\u001a\u00020\t2\u0006\u0010\b\u001a\u00020\u0007¢\u0006\u0004\b2\u00101\u001a)\u00106\u001a\u00020\u00072\u0006\u00103\u001a\u00020\u00072\u0012\u00105\u001a\n\u0012\u0006\b\u0001\u0012\u0002040\u000e\"\u000204¢\u0006\u0004\b6\u00107\u001a\u0019\u0010;\u001a\u000209*\u0002082\u0006\u0010:\u001a\u000209¢\u0006\u0004\b;\u0010<\u001a'\u0010@\u001a\u00020\u001b2\u0006\u0010\b\u001a\u00020\u00072\u0006\u0010=\u001a\u00020\u00002\b\u0010?\u001a\u0004\u0018\u00010>¢\u0006\u0004\b@\u0010A\u001a\u0011\u0010B\u001a\u00020\u001b*\u00020*¢\u0006\u0004\bB\u0010C\u001a\u0017\u0010G\u001a\u00020F*\b\u0012\u0004\u0012\u00020E0D¢\u0006\u0004\bG\u0010H\u001a\u0017\u0010I\u001a\b\u0012\u0004\u0012\u00020E0D*\u00020F¢\u0006\u0004\bI\u0010J\u001a\u0019\u0010K\u001a\u00020\t*\u00020\u00162\u0006\u0010\u000f\u001a\u00020\u0016¢\u0006\u0004\bK\u0010L\u001a\u0011\u0010O\u001a\u00020N*\u00020M¢\u0006\u0004\bO\u0010P\u001a\u001c\u0010S\u001a\u00020\u001b*\u00020Q2\u0006\u0010R\u001a\u00020\u001bH\u0086\u0004¢\u0006\u0004\bS\u0010T\u001a\u001c\u0010V\u001a\u00020\u001b*\u00020U2\u0006\u0010R\u001a\u00020\u001bH\u0086\u0004¢\u0006\u0004\bV\u0010W\u001a\u001c\u0010X\u001a\u00020\u0000*\u00020\u001b2\u0006\u0010R\u001a\u00020\u0000H\u0086\u0004¢\u0006\u0004\bX\u0010Y\u001a\u0019\u0010\\\u001a\u00020\u0004*\u00020Z2\u0006\u0010[\u001a\u00020\u001b¢\u0006\u0004\b\\\u0010]\u001a\u0011\u0010^\u001a\u00020\u001b*\u000208¢\u0006\u0004\b^\u0010_\u001a!\u0010b\u001a\u00020\t*\u00020`2\u0006\u0010=\u001a\u00020\u001b2\u0006\u0010a\u001a\u00020>¢\u0006\u0004\bb\u0010c\u001a!\u0010e\u001a\u00020\t*\u00020`2\u0006\u0010d\u001a\u00020\u001b2\u0006\u0010a\u001a\u00020>¢\u0006\u0004\be\u0010c\u001a\u0019\u0010h\u001a\u00020\t*\u00020f2\u0006\u0010g\u001a\u000208¢\u0006\u0004\bh\u0010i\u001a\u0019\u0010l\u001a\u00020\u001b*\u00020j2\u0006\u0010k\u001a\u00020Q¢\u0006\u0004\bl\u0010m\u001a\u001b\u0010n\u001a\u00020\u001b*\u00020\u00072\b\b\u0002\u0010 \u001a\u00020\u001b¢\u0006\u0004\bn\u0010o\u001a\u0011\u0010q\u001a\u00020\u0000*\u00020p¢\u0006\u0004\bq\u0010r\u001a\u0019\u0010t\u001a\u00020\u0000*\u00020\u00072\u0006\u0010s\u001a\u00020\u0000¢\u0006\u0004\bt\u0010u\u001a\u001b\u0010v\u001a\u00020\u001b*\u0004\u0018\u00010\u00072\u0006\u0010s\u001a\u00020\u001b¢\u0006\u0004\bv\u0010o\u001a#\u0010x\u001a\b\u0012\u0004\u0012\u00028\u00000D\"\u0004\b\u0000\u0010w*\b\u0012\u0004\u0012\u00028\u00000D¢\u0006\u0004\bx\u0010y\u001a/\u0010{\u001a\b\u0012\u0004\u0012\u00028\u00000D\"\u0004\b\u0000\u0010w2\u0012\u0010z\u001a\n\u0012\u0006\b\u0001\u0012\u00028\u00000\u000e\"\u00028\u0000H\u0007¢\u0006\u0004\b{\u0010|\u001a8\u0010\u0080\u0001\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u007f\"\u0004\b\u0000\u0010}\"\u0004\b\u0001\u0010~*\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u007f¢\u0006\u0006\b\u0080\u0001\u0010\u0081\u0001\u001a\u0015\u0010\u0083\u0001\u001a\u00020\u0004*\u00030\u0082\u0001¢\u0006\u0006\b\u0083\u0001\u0010\u0084\u0001\u001a\u0014\u0010\u0085\u0001\u001a\u00020\u0004*\u00020f¢\u0006\u0006\b\u0085\u0001\u0010\u0086\u0001\u001a\u001f\u0010\u008a\u0001\u001a\u00020\t*\u00030\u0087\u00012\b\u0010\u0089\u0001\u001a\u00030\u0088\u0001¢\u0006\u0006\b\u008a\u0001\u0010\u008b\u0001\u001a\u0014\u0010\u008c\u0001\u001a\u00020\u0007*\u00020\u0000¢\u0006\u0006\b\u008c\u0001\u0010\u008d\u0001\u001a\u0014\u0010\u008e\u0001\u001a\u00020\u0007*\u00020\u001b¢\u0006\u0006\b\u008e\u0001\u0010\u008f\u0001\u001a-\u0010\u0093\u0001\u001a\u00020\u0004\"\u0005\b\u0000\u0010\u0090\u0001*\t\u0012\u0004\u0012\u00028\u00000\u0091\u00012\u0007\u0010\u0092\u0001\u001a\u00028\u0000H\u0000¢\u0006\u0006\b\u0093\u0001\u0010\u0094\u0001\u001a0\u0010\u0099\u0001\u001a\u00030\u0098\u0001*\b0\u0095\u0001j\u0003`\u0096\u00012\u0013\u0010\u0097\u0001\u001a\u000e\u0012\n\u0012\b0\u0095\u0001j\u0003`\u0096\u00010D¢\u0006\u0006\b\u0099\u0001\u0010\u009a\u0001\"\u0018\u0010\u009e\u0001\u001a\u00030\u009b\u00018\u0006X\u0087\u0004¢\u0006\b\n\u0006\b\u009c\u0001\u0010\u009d\u0001\"\u0017\u0010¡\u0001\u001a\u00020F8\u0006X\u0087\u0004¢\u0006\b\n\u0006\b\u009f\u0001\u0010 \u0001\"\u0018\u0010¤\u0001\u001a\u00030¢\u00018\u0006X\u0087\u0004¢\u0006\b\n\u0006\b\u0093\u0001\u0010£\u0001\"\u0017\u0010§\u0001\u001a\u00030¥\u00018\u0006X\u0087\u0004¢\u0006\u0007\n\u0005\bS\u0010¦\u0001\"\u0017\u0010ª\u0001\u001a\u00030¨\u00018\u0002X\u0082\u0004¢\u0006\u0007\n\u0005\bV\u0010©\u0001\"\u0017\u0010\u00ad\u0001\u001a\u00030«\u00018\u0006X\u0087\u0004¢\u0006\u0007\n\u0005\bX\u0010¬\u0001\"\u0017\u0010°\u0001\u001a\u00030®\u00018\u0002X\u0082\u0004¢\u0006\u0007\n\u0005\bO\u0010¯\u0001\"\u0017\u0010³\u0001\u001a\u00020\t8\u0000X\u0081\u0004¢\u0006\b\n\u0006\b±\u0001\u0010²\u0001\"\u0016\u0010µ\u0001\u001a\u00020\u00078\u0000X\u0081\u0004¢\u0006\u0007\n\u0005\b0\u0010´\u0001¨\u0006¶\u0001"}, d2 = {"", "arrayLength", TypedValues.CycleType.S_WAVE_OFFSET, "count", "", "Wwwwwwwwwwwwwwwwwwwwwww", "(JJJ)V", "", "name", "", "daemon", "Ljava/util/concurrent/ThreadFactory;", "Kkkkkkkkkkkkkkkkkkk", "(Ljava/lang/String;Z)Ljava/util/concurrent/ThreadFactory;", "", "other", "Ljava/util/Comparator;", "comparator", "Wwww", "([Ljava/lang/String;[Ljava/lang/String;Ljava/util/Comparator;)[Ljava/lang/String;", "Wwwwwwwwwwwwww", "([Ljava/lang/String;[Ljava/lang/String;Ljava/util/Comparator;)Z", "Lokhttp3/HttpUrl;", "includeDefaultPort", "Kkkkkkkkkkkkk", "(Lokhttp3/HttpUrl;Z)Ljava/lang/String;", "value", "", "Wwwwwwwwwww", "([Ljava/lang/String;Ljava/lang/String;Ljava/util/Comparator;)I", "Wwwwwwwwwwwwwwwwwwww", "([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;", SpellCheckPlugin.START_INDEX_KEY, SpellCheckPlugin.END_INDEX_KEY, "Wwwwwwwww", "(Ljava/lang/String;II)I", "Wwwwwww", "Kkkkkkk", "(Ljava/lang/String;II)Ljava/lang/String;", "delimiters", "Wwwwwwwwwwwwwwwwww", "(Ljava/lang/String;Ljava/lang/String;II)I", "", TtmlNode.RUBY_DELIMITER, "Wwwwwwwwwwwwwwwwwww", "(Ljava/lang/String;CII)I", "Wwwwwwwwww", "(Ljava/lang/String;)I", "Wwwwwwwwwwwwwwwwwwwwwwwwww", "(Ljava/lang/String;)Z", "Kkkkkkkkkkkkkkkkkkkkkkkkk", "format", "", "args", "Wwwwwwwwwwwwwww", "(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;", "Lokio/BufferedSource;", "Ljava/nio/charset/Charset;", "default", "Kkkkkkkkkkkkkkkkkkkkkkk", "(Lokio/BufferedSource;Ljava/nio/charset/Charset;)Ljava/nio/charset/Charset;", TypedValues.TransitionType.S_DURATION, "Ljava/util/concurrent/TimeUnit;", "unit", "Wwwwwwwwwwwwwwwwwwwwwwww", "(Ljava/lang/String;JLjava/util/concurrent/TimeUnit;)I", "Kkkkkkkkkkkkkkkkkkkkkkkk", "(C)I", "", "Lokhttp3/internal/http2/Header;", "Lokhttp3/Headers;", "Kkkkkkkkkkkkkkkk", "(Ljava/util/List;)Lokhttp3/Headers;", "Kkkkkkkkkkkkkkkkk", "(Lokhttp3/Headers;)Ljava/util/List;", "Wwwwwwwwwwwwwwwwwwwwwwwww", "(Lokhttp3/HttpUrl;Lokhttp3/HttpUrl;)Z", "Lokhttp3/EventListener;", "Lokhttp3/EventListener$Factory;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lokhttp3/EventListener;)Lokhttp3/EventListener$Factory;", "", "mask", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(BI)I", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(SI)I", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(IJ)J", "Lokio/BufferedSink;", "medium", "Kkkk", "(Lokio/BufferedSink;I)V", "Kkkkkkkkkkkkkkkkkkkkkk", "(Lokio/BufferedSource;)I", "Lokio/Source;", "timeUnit", "Kkkkkkkkkkkkkkkkkkkk", "(Lokio/Source;ILjava/util/concurrent/TimeUnit;)Z", "timeout", "Wwwwwwwwwwwwwwww", "Ljava/net/Socket;", "source", "Kkkkkkkkkkkkkkkkkkkkkkkkkk", "(Ljava/net/Socket;Lokio/BufferedSource;)Z", "Lokio/Buffer;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "Kkkkkkkkkkkkkkkkkkkkk", "(Lokio/Buffer;B)I", "Wwwww", "(Ljava/lang/String;I)I", "Lokhttp3/Response;", "Wwwwwwwwwwwww", "(Lokhttp3/Response;)J", "defaultValue", "Kkkkkkkkk", "(Ljava/lang/String;J)J", "Kkkkkkkk", "T", "Kkkkkkkkkkk", "(Ljava/util/List;)Ljava/util/List;", "elements", "Wwwwwwwwwwww", "([Ljava/lang/Object;)Ljava/util/List;", "K", ExifInterface.GPS_MEASUREMENT_INTERRUPTED, "", "Kkkkkkkkkk", "(Ljava/util/Map;)Ljava/util/Map;", "Ljava/io/Closeable;", "Wwwwwwwwwwwwwwwwwwwwww", "(Ljava/io/Closeable;)V", "Wwwwwwwwwwwwwwwwwwwww", "(Ljava/net/Socket;)V", "Lokhttp3/internal/io/FileSystem;", "Ljava/io/File;", "file", "Www", "(Lokhttp3/internal/io/FileSystem;Ljava/io/File;)Z", "Kkkkkkkkkkkkkk", "(J)Ljava/lang/String;", "Kkkkkkkkkkkkkkk", "(I)Ljava/lang/String;", ExifInterface.LONGITUDE_EAST, "", "element", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Ljava/util/List;Ljava/lang/Object;)V", "Ljava/lang/Exception;", "Lkotlin/Exception;", "suppressed", "", "Kkkkk", "(Ljava/lang/Exception;Ljava/util/List;)Ljava/lang/Throwable;", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "[B", "EMPTY_BYTE_ARRAY", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Lokhttp3/Headers;", "EMPTY_HEADERS", "Lokhttp3/ResponseBody;", "Lokhttp3/ResponseBody;", "EMPTY_RESPONSE", "Lokhttp3/RequestBody;", "Lokhttp3/RequestBody;", "EMPTY_REQUEST", "Lokio/Options;", "Lokio/Options;", "UNICODE_BOMS", "Ljava/util/TimeZone;", "Ljava/util/TimeZone;", "UTC", "Lkotlin/text/Regex;", "Lkotlin/text/Regex;", "VERIFY_AS_IP_ADDRESS", "Wwwwwwwwwwwwwwwwwwwwwwwwwww", "Z", "assertionsEnabled", "Ljava/lang/String;", "okHttpName", OkHttp3Client.NETWORK_CLIENT_OKHTTP}, k = 2, mv = {1, 6, 0}, xi = 48)
@JvmName(name = "Util")
/* loaded from: classes7.dex */
public final class Util {
    @JvmField
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final String f12487Wwwwwwwwwwwwwwwwwwwwwwwwww;
    @JvmField

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final boolean f12488Wwwwwwwwwwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final Regex f12489Wwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @JvmField
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final TimeZone f12490Wwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final Options f12491Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @JvmField
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final RequestBody f12492Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @JvmField
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final ResponseBody f12493Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @JvmField
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final Headers f12494Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = Headers.Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwww(new String[0]);
    @JvmField
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final byte[] f12495Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    static {
        byte[] bArr = new byte[0];
        f12495Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = bArr;
        f12493Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = ResponseBody.Companion.Wwwwwwwwwwwwwwwwwwwwwwwwww(ResponseBody.Companion, bArr, null, 1, null);
        f12492Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = RequestBody.Companion.Wwwwwwwwwwwwwwwwwwww(RequestBody.Companion, bArr, null, 0, 0, 7, null);
        Options.Companion companion = Options.Companion;
        ByteString.Companion companion2 = ByteString.Companion;
        f12491Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww = companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(companion2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww("efbbbf"), companion2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww("feff"), companion2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww("fffe"), companion2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww("0000ffff"), companion2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww("ffff0000"));
        f12490Wwwwwwwwwwwwwwwwwwwwwwwwwwwww = DesugarTimeZone.getTimeZone("GMT");
        f12489Wwwwwwwwwwwwwwwwwwwwwwwwwwww = new Regex("([0-9a-fA-F]*:[0-9a-fA-F:.]*)|([\\d.]+)");
        f12488Wwwwwwwwwwwwwwwwwwwwwwwwwww = false;
        f12487Wwwwwwwwwwwwwwwwwwwwwwwwww = StringsKt.removeSuffix(StringsKt.removePrefix(OkHttpClient.class.getName(), (CharSequence) "okhttp3."), (CharSequence) "Client");
    }

    public static final void Kkkk(@NotNull BufferedSink bufferedSink, int i) throws IOException {
        bufferedSink.writeByte((i >>> 16) & 255);
        bufferedSink.writeByte((i >>> 8) & 255);
        bufferedSink.writeByte(i & 255);
    }

    @NotNull
    public static final Throwable Kkkkk(@NotNull Exception exc, @NotNull List<? extends Exception> list) {
        if (list.size() > 1) {
            System.out.getClass();
        }
        for (Exception exc2 : list) {
            ExceptionsKt.addSuppressed(exc, exc2);
        }
        return exc;
    }

    public static /* synthetic */ String Kkkkkk(String str, int i, int i2, int i3, Object obj) {
        if ((i3 & 1) != 0) {
            i = 0;
        }
        if ((i3 & 2) != 0) {
            i2 = str.length();
        }
        return Kkkkkkk(str, i, i2);
    }

    @NotNull
    public static final String Kkkkkkk(@NotNull String str, int i, int i2) {
        int Wwwwwwwww2 = Wwwwwwwww(str, i, i2);
        return str.substring(Wwwwwwwww2, Wwwwwww(str, Wwwwwwwww2, i2));
    }

    public static final int Kkkkkkkk(@Nullable String str, int i) {
        Long valueOf;
        if (str == null) {
            valueOf = null;
        } else {
            try {
                valueOf = Long.valueOf(Long.parseLong(str));
            } catch (NumberFormatException unused) {
            }
        }
        if (valueOf != null) {
            long longValue = valueOf.longValue();
            if (longValue > 2147483647L) {
                return Integer.MAX_VALUE;
            }
            if (longValue < 0) {
                return 0;
            }
            return (int) longValue;
        }
        return i;
    }

    public static final long Kkkkkkkkk(@NotNull String str, long j) {
        try {
            return Long.parseLong(str);
        } catch (NumberFormatException unused) {
            return j;
        }
    }

    @NotNull
    public static final <K, V> Map<K, V> Kkkkkkkkkk(@NotNull Map<K, ? extends V> map) {
        if (map.isEmpty()) {
            return MapsKt.emptyMap();
        }
        return Collections.unmodifiableMap(new LinkedHashMap(map));
    }

    @NotNull
    public static final <T> List<T> Kkkkkkkkkkk(@NotNull List<? extends T> list) {
        return Collections.unmodifiableList(CollectionsKt.toMutableList((Collection) list));
    }

    public static /* synthetic */ String Kkkkkkkkkkkk(HttpUrl httpUrl, boolean z, int i, Object obj) {
        if ((i & 1) != 0) {
            z = false;
        }
        return Kkkkkkkkkkkkk(httpUrl, z);
    }

    @NotNull
    public static final String Kkkkkkkkkkkkk(@NotNull HttpUrl httpUrl, boolean z) {
        String Wwwwwwwwwwwwwwwwwwwwwwwwww2;
        if (StringsKt.contains$default((CharSequence) httpUrl.Wwwwwwwwwwwwwwwwwwwwwwwwww(), (CharSequence) ":", false, 2, (Object) null)) {
            Wwwwwwwwwwwwwwwwwwwwwwwwww2 = AbstractJsonLexerKt.BEGIN_LIST + httpUrl.Wwwwwwwwwwwwwwwwwwwwwwwwww() + AbstractJsonLexerKt.END_LIST;
        } else {
            Wwwwwwwwwwwwwwwwwwwwwwwwww2 = httpUrl.Wwwwwwwwwwwwwwwwwwwwwwwwww();
        }
        if (!z && httpUrl.Wwwwwwwwwwwwwwwwwwwww() == HttpUrl.Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(httpUrl.Wwwwwwwwwwwwwww())) {
            return Wwwwwwwwwwwwwwwwwwwwwwwwww2;
        }
        return Wwwwwwwwwwwwwwwwwwwwwwwwww2 + AbstractJsonLexerKt.COLON + httpUrl.Wwwwwwwwwwwwwwwwwwwww();
    }

    @NotNull
    public static final String Kkkkkkkkkkkkkk(long j) {
        return Long.toHexString(j);
    }

    @NotNull
    public static final String Kkkkkkkkkkkkkkk(int i) {
        return Integer.toHexString(i);
    }

    @NotNull
    public static final Headers Kkkkkkkkkkkkkkkk(@NotNull List<Header> list) {
        Headers.Builder builder = new Headers.Builder();
        for (Header header : list) {
            builder.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(header.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().utf8(), header.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().utf8());
        }
        return builder.Wwwwwwwwwwwwwwwwwwwwwwwwwwww();
    }

    @NotNull
    public static final List<Header> Kkkkkkkkkkkkkkkkk(@NotNull Headers headers) {
        IntRange until = RangesKt.until(0, headers.size());
        ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(until, 10));
        Iterator<Integer> it = until.iterator();
        while (it.hasNext()) {
            int nextInt = ((IntIterator) it).nextInt();
            arrayList.add(new Header(headers.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(nextInt), headers.Wwwwwwwwwwwwwwwwwwwwwwwwww(nextInt)));
        }
        return arrayList;
    }

    public static final Thread Kkkkkkkkkkkkkkkkkk(String str, boolean z, Runnable runnable) {
        Thread thread = new Thread(runnable, str);
        thread.setDaemon(z);
        return thread;
    }

    @NotNull
    public static final ThreadFactory Kkkkkkkkkkkkkkkkkkk(@NotNull final String str, final boolean z) {
        return new ThreadFactory() { // from class: Kkkkkkkk.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww
            @Override // java.util.concurrent.ThreadFactory
            public final Thread newThread(Runnable runnable) {
                Thread Kkkkkkkkkkkkkkkkkk2;
                Kkkkkkkkkkkkkkkkkk2 = Util.Kkkkkkkkkkkkkkkkkk(str, z, runnable);
                return Kkkkkkkkkkkkkkkkkk2;
            }
        };
    }

    public static final boolean Kkkkkkkkkkkkkkkkkkkk(@NotNull Source source, int i, @NotNull TimeUnit timeUnit) throws IOException {
        long j;
        long nanoTime = System.nanoTime();
        if (source.timeout().Wwwwwwwwwwwwwwwwwwwwwwwwwwwww()) {
            j = source.timeout().Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() - nanoTime;
        } else {
            j = Long.MAX_VALUE;
        }
        source.timeout().Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Math.min(j, timeUnit.toNanos(i)) + nanoTime);
        try {
            Buffer buffer = new Buffer();
            while (source.read(buffer, 8192L) != -1) {
                buffer.Kkkkkkkkkkkkkkkkkkkkkkk();
            }
            if (j == Long.MAX_VALUE) {
                source.timeout().Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
                return true;
            }
            source.timeout().Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(nanoTime + j);
            return true;
        } catch (InterruptedIOException unused) {
            if (j == Long.MAX_VALUE) {
                source.timeout().Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
                return false;
            }
            source.timeout().Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(nanoTime + j);
            return false;
        } catch (Throwable th) {
            if (j == Long.MAX_VALUE) {
                source.timeout().Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
            } else {
                source.timeout().Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(nanoTime + j);
            }
            throw th;
        }
    }

    public static final int Kkkkkkkkkkkkkkkkkkkkk(@NotNull Buffer buffer, byte b) {
        int i = 0;
        while (!buffer.Wwwwwwwwwwww() && buffer.Kkkkkkkkkkkkkkkk(0L) == b) {
            i++;
            buffer.readByte();
        }
        return i;
    }

    public static final int Kkkkkkkkkkkkkkkkkkkkkk(@NotNull BufferedSource bufferedSource) throws IOException {
        return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(bufferedSource.readByte(), 255) | (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(bufferedSource.readByte(), 255) << 16) | (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(bufferedSource.readByte(), 255) << 8);
    }

    @NotNull
    public static final Charset Kkkkkkkkkkkkkkkkkkkkkkk(@NotNull BufferedSource bufferedSource, @NotNull Charset charset) throws IOException {
        int Kkkkkkkkkkkkkkkkkkkkkkkk2 = bufferedSource.Kkkkkkkkkkkkkkkkkkkkkkkk(f12491Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
        if (Kkkkkkkkkkkkkkkkkkkkkkkk2 != -1) {
            if (Kkkkkkkkkkkkkkkkkkkkkkkk2 != 0) {
                if (Kkkkkkkkkkkkkkkkkkkkkkkk2 != 1) {
                    if (Kkkkkkkkkkkkkkkkkkkkkkkk2 != 2) {
                        if (Kkkkkkkkkkkkkkkkkkkkkkkk2 != 3) {
                            if (Kkkkkkkkkkkkkkkkkkkkkkkk2 == 4) {
                                return Charsets.INSTANCE.UTF32_LE();
                            }
                            throw new AssertionError();
                        }
                        return Charsets.INSTANCE.UTF32_BE();
                    }
                    return StandardCharsets.UTF_16LE;
                }
                return StandardCharsets.UTF_16BE;
            }
            return StandardCharsets.UTF_8;
        }
        return charset;
    }

    public static final int Kkkkkkkkkkkkkkkkkkkkkkkk(char c) {
        if ('0' <= c && c < ':') {
            return c - '0';
        }
        if ('a' <= c && c < 'g') {
            return c - 'W';
        }
        if ('A' <= c && c < 'G') {
            return c - '7';
        }
        return -1;
    }

    public static final boolean Kkkkkkkkkkkkkkkkkkkkkkkkk(@NotNull String str) {
        if (StringsKt.equals(str, "Authorization", true) || StringsKt.equals(str, HttpHeaders.COOKIE, true) || StringsKt.equals(str, HttpHeaders.PROXY_AUTHORIZATION, true) || StringsKt.equals(str, HttpHeaders.SET_COOKIE, true)) {
            return true;
        }
        return false;
    }

    public static final boolean Kkkkkkkkkkkkkkkkkkkkkkkkkk(@NotNull Socket socket, @NotNull BufferedSource bufferedSource) {
        try {
            int soTimeout = socket.getSoTimeout();
            socket.setSoTimeout(1);
            boolean z = !bufferedSource.Wwwwwwwwwwww();
            socket.setSoTimeout(soTimeout);
            return z;
        } catch (SocketTimeoutException unused) {
            return true;
        } catch (IOException unused2) {
            return false;
        }
    }

    public static final boolean Www(@NotNull FileSystem fileSystem, @NotNull File file) {
        Sink Wwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = fileSystem.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(file);
        try {
            try {
                fileSystem.Wwwwwwwwwwwwwwwwwwwwwwwwwww(file);
                CloseableKt.closeFinally(Wwwwwwwwwwwwwwwwwwwwwwwwwwwww2, null);
                return true;
            } catch (IOException unused) {
                Unit unit = Unit.INSTANCE;
                CloseableKt.closeFinally(Wwwwwwwwwwwwwwwwwwwwwwwwwwwww2, null);
                fileSystem.Wwwwwwwwwwwwwwwwwwwwwwwwwww(file);
                return false;
            }
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                CloseableKt.closeFinally(Wwwwwwwwwwwwwwwwwwwwwwwwwwwww2, th);
                throw th2;
            }
        }
    }

    @NotNull
    public static final String[] Wwww(@NotNull String[] strArr, @NotNull String[] strArr2, @NotNull Comparator<? super String> comparator) {
        ArrayList arrayList = new ArrayList();
        int length = strArr.length;
        int i = 0;
        while (i < length) {
            String str = strArr[i];
            i++;
            int length2 = strArr2.length;
            int i2 = 0;
            while (true) {
                if (i2 < length2) {
                    String str2 = strArr2[i2];
                    i2++;
                    if (comparator.compare(str, str2) == 0) {
                        arrayList.add(str);
                        break;
                    }
                }
            }
        }
        Object[] array = arrayList.toArray(new String[0]);
        if (array != null) {
            return (String[]) array;
        }
        throw new NullPointerException("null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>");
    }

    public static final int Wwwww(@NotNull String str, int i) {
        int length = str.length();
        while (i < length) {
            int i2 = i + 1;
            char charAt = str.charAt(i);
            if (charAt != ' ' && charAt != '\t') {
                return i;
            }
            i = i2;
        }
        return str.length();
    }

    public static /* synthetic */ int Wwwwww(String str, int i, int i2, int i3, Object obj) {
        if ((i3 & 1) != 0) {
            i = 0;
        }
        if ((i3 & 2) != 0) {
            i2 = str.length();
        }
        return Wwwwwww(str, i, i2);
    }

    public static final int Wwwwwww(@NotNull String str, int i, int i2) {
        int i3 = i2 - 1;
        if (i <= i3) {
            while (true) {
                int i4 = i3 - 1;
                char charAt = str.charAt(i3);
                if (charAt == '\t' || charAt == '\n' || charAt == '\f' || charAt == '\r' || charAt == ' ') {
                    if (i3 == i) {
                        break;
                    }
                    i3 = i4;
                } else {
                    return i3 + 1;
                }
            }
        }
        return i;
    }

    public static /* synthetic */ int Wwwwwwww(String str, int i, int i2, int i3, Object obj) {
        if ((i3 & 1) != 0) {
            i = 0;
        }
        if ((i3 & 2) != 0) {
            i2 = str.length();
        }
        return Wwwwwwwww(str, i, i2);
    }

    public static final int Wwwwwwwww(@NotNull String str, int i, int i2) {
        while (i < i2) {
            int i3 = i + 1;
            char charAt = str.charAt(i);
            if (charAt == '\t' || charAt == '\n' || charAt == '\f' || charAt == '\r' || charAt == ' ') {
                i = i3;
            } else {
                return i;
            }
        }
        return i2;
    }

    public static final int Wwwwwwwwww(@NotNull String str) {
        int length = str.length();
        int i = 0;
        while (i < length) {
            int i2 = i + 1;
            char charAt = str.charAt(i);
            if (Intrinsics.compare((int) charAt, 31) > 0 && Intrinsics.compare((int) charAt, 127) < 0) {
                i = i2;
            } else {
                return i;
            }
        }
        return -1;
    }

    public static final int Wwwwwwwwwww(@NotNull String[] strArr, @NotNull String str, @NotNull Comparator<String> comparator) {
        int length = strArr.length;
        for (int i = 0; i < length; i++) {
            if (comparator.compare(strArr[i], str) == 0) {
                return i;
            }
        }
        return -1;
    }

    @SafeVarargs
    @NotNull
    public static final <T> List<T> Wwwwwwwwwwww(@NotNull T... tArr) {
        Object[] objArr = (Object[]) tArr.clone();
        return Collections.unmodifiableList(CollectionsKt.listOf(Arrays.copyOf(objArr, objArr.length)));
    }

    public static final long Wwwwwwwwwwwww(@NotNull Response response) {
        String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = response.Kkkkkkkkkkkkkkkk().Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww("Content-Length");
        if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 == null) {
            return -1L;
        }
        return Kkkkkkkkk(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2, -1L);
    }

    public static final boolean Wwwwwwwwwwwwww(@NotNull String[] strArr, @Nullable String[] strArr2, @NotNull Comparator<? super String> comparator) {
        if (strArr.length != 0 && strArr2 != null && strArr2.length != 0) {
            int length = strArr.length;
            int i = 0;
            while (i < length) {
                String str = strArr[i];
                i++;
                Iterator it = ArrayIteratorKt.iterator(strArr2);
                while (it.hasNext()) {
                    if (comparator.compare(str, (String) it.next()) == 0) {
                        return true;
                    }
                }
            }
        }
        return false;
    }

    @NotNull
    public static final String Wwwwwwwwwwwwwww(@NotNull String str, @NotNull Object... objArr) {
        StringCompanionObject stringCompanionObject = StringCompanionObject.INSTANCE;
        Locale locale = Locale.US;
        Object[] copyOf = Arrays.copyOf(objArr, objArr.length);
        return String.format(locale, str, Arrays.copyOf(copyOf, copyOf.length));
    }

    public static final boolean Wwwwwwwwwwwwwwww(@NotNull Source source, int i, @NotNull TimeUnit timeUnit) {
        try {
            return Kkkkkkkkkkkkkkkkkkkk(source, i, timeUnit);
        } catch (IOException unused) {
            return false;
        }
    }

    public static /* synthetic */ int Wwwwwwwwwwwwwwwww(String str, char c, int i, int i2, int i3, Object obj) {
        if ((i3 & 2) != 0) {
            i = 0;
        }
        if ((i3 & 4) != 0) {
            i2 = str.length();
        }
        return Wwwwwwwwwwwwwwwwwww(str, c, i, i2);
    }

    public static final int Wwwwwwwwwwwwwwwwww(@NotNull String str, @NotNull String str2, int i, int i2) {
        while (i < i2) {
            int i3 = i + 1;
            if (StringsKt.contains$default((CharSequence) str2, str.charAt(i), false, 2, (Object) null)) {
                return i;
            }
            i = i3;
        }
        return i2;
    }

    public static final int Wwwwwwwwwwwwwwwwwww(@NotNull String str, char c, int i, int i2) {
        while (i < i2) {
            int i3 = i + 1;
            if (str.charAt(i) == c) {
                return i;
            }
            i = i3;
        }
        return i2;
    }

    @NotNull
    public static final String[] Wwwwwwwwwwwwwwwwwwww(@NotNull String[] strArr, @NotNull String str) {
        String[] strArr2 = (String[]) Arrays.copyOf(strArr, strArr.length + 1);
        strArr2[ArraysKt.getLastIndex(strArr2)] = str;
        return strArr2;
    }

    public static final void Wwwwwwwwwwwwwwwwwwwww(@NotNull Socket socket) {
        try {
            socket.close();
        } catch (AssertionError e) {
            throw e;
        } catch (RuntimeException e2) {
            if (Intrinsics.areEqual(e2.getMessage(), "bio == null")) {
                return;
            }
            throw e2;
        } catch (Exception unused) {
        }
    }

    public static final void Wwwwwwwwwwwwwwwwwwwwww(@NotNull Closeable closeable) {
        try {
            closeable.close();
        } catch (RuntimeException e) {
            throw e;
        } catch (Exception unused) {
        }
    }

    public static final void Wwwwwwwwwwwwwwwwwwwwwww(long j, long j2, long j3) {
        if ((j2 | j3) >= 0 && j2 <= j && j - j2 >= j3) {
            return;
        }
        throw new ArrayIndexOutOfBoundsException();
    }

    public static final int Wwwwwwwwwwwwwwwwwwwwwwww(@NotNull String str, long j, @Nullable TimeUnit timeUnit) {
        int i = (j > 0L ? 1 : (j == 0L ? 0 : -1));
        if (i >= 0) {
            if (timeUnit != null) {
                long millis = timeUnit.toMillis(j);
                if (millis <= 2147483647L) {
                    if (millis == 0 && i > 0) {
                        throw new IllegalArgumentException(Intrinsics.stringPlus(str, " too small.").toString());
                    }
                    return (int) millis;
                }
                throw new IllegalArgumentException(Intrinsics.stringPlus(str, " too large.").toString());
            }
            throw new IllegalStateException("unit == null");
        }
        throw new IllegalStateException(Intrinsics.stringPlus(str, " < 0").toString());
    }

    public static final boolean Wwwwwwwwwwwwwwwwwwwwwwwww(@NotNull HttpUrl httpUrl, @NotNull HttpUrl httpUrl2) {
        if (Intrinsics.areEqual(httpUrl.Wwwwwwwwwwwwwwwwwwwwwwwwww(), httpUrl2.Wwwwwwwwwwwwwwwwwwwwwwwwww()) && httpUrl.Wwwwwwwwwwwwwwwwwwwww() == httpUrl2.Wwwwwwwwwwwwwwwwwwwww() && Intrinsics.areEqual(httpUrl.Wwwwwwwwwwwwwww(), httpUrl2.Wwwwwwwwwwwwwww())) {
            return true;
        }
        return false;
    }

    public static final boolean Wwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull String str) {
        return f12489Wwwwwwwwwwwwwwwwwwwwwwwwwwww.matches(str);
    }

    @NotNull
    public static final EventListener.Factory Wwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull final EventListener eventListener) {
        return new EventListener.Factory() { // from class: Kkkkkkkk.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww
            @Override // okhttp3.EventListener.Factory
            public final EventListener Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Call call) {
                EventListener Wwwwwwwwwwwwwwwwwwwwwwwwwww2;
                Wwwwwwwwwwwwwwwwwwwwwwwwwww2 = Util.Wwwwwwwwwwwwwwwwwwwwwwwwwww(EventListener.this, call);
                return Wwwwwwwwwwwwwwwwwwwwwwwwwww2;
            }
        };
    }

    public static final long Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(int i, long j) {
        return j & i;
    }

    public static final int Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(short s, int i) {
        return s & i;
    }

    public static final int Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(byte b, int i) {
        return b & i;
    }

    public static final <E> void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull List<E> list, E e) {
        if (!list.contains(e)) {
            list.add(e);
        }
    }

    public static final EventListener Wwwwwwwwwwwwwwwwwwwwwwwwwww(EventListener eventListener, Call call) {
        return eventListener;
    }
}
