package okhttp3;

import androidx.activity.Wwwwwwwwwwwwwwwww;
import androidx.webkit.ProxyConfig;
import com.google.common.net.HttpHeaders;
import com.unity3d.ads.core.data.datasource.AndroidStaticDeviceInfoDataSource;
import com.unity3d.services.core.network.core.OkHttp3Client;
import com.vungle.ads.internal.ui.AdActivity;
import java.io.Closeable;
import java.io.File;
import java.io.Flushable;
import java.io.IOException;
import java.security.cert.Certificate;
import java.security.cert.CertificateEncodingException;
import java.security.cert.CertificateException;
import java.security.cert.CertificateFactory;
import java.util.ArrayList;
import java.util.List;
import java.util.Set;
import java.util.TreeSet;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.SetsKt;
import kotlin.io.CloseableKt;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.StringCompanionObject;
import kotlin.text.StringsKt;
import kotlinx.serialization.json.internal.AbstractJsonLexerKt;
import okhttp3.Headers;
import okhttp3.Request;
import okhttp3.Response;
import okhttp3.internal.Util;
import okhttp3.internal.cache.CacheRequest;
import okhttp3.internal.cache.CacheStrategy;
import okhttp3.internal.cache.DiskLruCache;
import okhttp3.internal.concurrent.TaskRunner;
import okhttp3.internal.http.HttpMethod;
import okhttp3.internal.http.StatusLine;
import okhttp3.internal.io.FileSystem;
import okhttp3.internal.platform.Platform;
import okio.Buffer;
import okio.BufferedSink;
import okio.BufferedSource;
import okio.ByteString;
import okio.ForwardingSink;
import okio.ForwardingSource;
import okio.Okio;
import okio.Sink;
import okio.Source;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000X\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0010\b\n\u0002\b\u0016\u0018\u0000 @2\u00020\u00012\u00020\u0002:\u0004A@BCB!\b\u0000\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\b\u001a\u00020\u0007¢\u0006\u0004\b\t\u0010\nB\u0019\b\u0016\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0005¢\u0006\u0004\b\t\u0010\u000bJ\u001d\u0010\u0010\u001a\u00020\u000f2\f\u0010\u000e\u001a\b\u0018\u00010\fR\u00020\rH\u0002¢\u0006\u0004\b\u0010\u0010\u0011J\u0019\u0010\u0015\u001a\u0004\u0018\u00010\u00142\u0006\u0010\u0013\u001a\u00020\u0012H\u0000¢\u0006\u0004\b\u0015\u0010\u0016J\u0019\u0010\u0019\u001a\u0004\u0018\u00010\u00182\u0006\u0010\u0017\u001a\u00020\u0014H\u0000¢\u0006\u0004\b\u0019\u0010\u001aJ\u0017\u0010\u001b\u001a\u00020\u000f2\u0006\u0010\u0013\u001a\u00020\u0012H\u0000¢\u0006\u0004\b\u001b\u0010\u001cJ\u001f\u0010\u001f\u001a\u00020\u000f2\u0006\u0010\u001d\u001a\u00020\u00142\u0006\u0010\u001e\u001a\u00020\u0014H\u0000¢\u0006\u0004\b\u001f\u0010 J\u000f\u0010!\u001a\u00020\u000fH\u0016¢\u0006\u0004\b!\u0010\"J\u000f\u0010#\u001a\u00020\u000fH\u0016¢\u0006\u0004\b#\u0010\"J\u0017\u0010&\u001a\u00020\u000f2\u0006\u0010%\u001a\u00020$H\u0000¢\u0006\u0004\b&\u0010'J\u000f\u0010(\u001a\u00020\u000fH\u0000¢\u0006\u0004\b(\u0010\"R\u001a\u0010-\u001a\u00020\r8\u0000X\u0080\u0004¢\u0006\f\n\u0004\b)\u0010*\u001a\u0004\b+\u0010,R\"\u00105\u001a\u00020.8\u0000@\u0000X\u0080\u000e¢\u0006\u0012\n\u0004\b/\u00100\u001a\u0004\b1\u00102\"\u0004\b3\u00104R\"\u00109\u001a\u00020.8\u0000@\u0000X\u0080\u000e¢\u0006\u0012\n\u0004\b6\u00100\u001a\u0004\b7\u00102\"\u0004\b8\u00104R\u0016\u0010;\u001a\u00020.8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b:\u00100R\u0016\u0010=\u001a\u00020.8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b<\u00100R\u0016\u0010?\u001a\u00020.8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b>\u00100¨\u0006D"}, d2 = {"Lokhttp3/Cache;", "Ljava/io/Closeable;", "Ljava/io/Flushable;", "Ljava/io/File;", "directory", "", "maxSize", "Lokhttp3/internal/io/FileSystem;", "fileSystem", "<init>", "(Ljava/io/File;JLokhttp3/internal/io/FileSystem;)V", "(Ljava/io/File;J)V", "Lokhttp3/internal/cache/DiskLruCache$Editor;", "Lokhttp3/internal/cache/DiskLruCache;", "editor", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lokhttp3/internal/cache/DiskLruCache$Editor;)V", "Lokhttp3/Request;", AdActivity.REQUEST_KEY_EXTRA, "Lokhttp3/Response;", "Wwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lokhttp3/Request;)Lokhttp3/Response;", "response", "Lokhttp3/internal/cache/CacheRequest;", "Kkkkkkkkkkkkkkkkkkkkkk", "(Lokhttp3/Response;)Lokhttp3/internal/cache/CacheRequest;", "Kkkkkkkkkkkkkkkkkkkkk", "(Lokhttp3/Request;)V", "cached", "network", "Kkkkkkkkkkkkkkkk", "(Lokhttp3/Response;Lokhttp3/Response;)V", "flush", "()V", "close", "Lokhttp3/internal/cache/CacheStrategy;", "cacheStrategy", "Kkkkkkkkkkkkkkkkk", "(Lokhttp3/internal/cache/CacheStrategy;)V", "Kkkkkkkkkkkkkkkkkk", "Wwwwwwwwwwwwwwwwwwwwwwwww", "Lokhttp3/internal/cache/DiskLruCache;", "getCache$okhttp", "()Lokhttp3/internal/cache/DiskLruCache;", "cache", "", "Wwwwwwwwwwwwwwwwwwwwwwww", "I", "Kkkkkkkkkkkkkkkkkkkkkkk", "()I", "Kkkkkkkkkkkkkkkkkkk", "(I)V", "writeSuccessCount", "Wwwwwwwwwwwwwwwwwwwwwww", "Wwwwwwwwwwwwww", "Kkkkkkkkkkkkkkkkkkkk", "writeAbortCount", "Wwwwwwwwwwwwwwwwwwwwww", "networkCount", "Wwwwwwwwwwwwwwwwwwwww", "hitCount", "Wwwwwwwwwwwwwwwwwwww", "requestCount", "Companion", "CacheResponseBody", "Entry", "RealCacheRequest", OkHttp3Client.NETWORK_CLIENT_OKHTTP}, k = 1, mv = {1, 6, 0}, xi = 48)
/* loaded from: classes7.dex */
public final class Cache implements Closeable, Flushable, AutoCloseable {
    @NotNull
    public static final Companion Companion = new Companion(null);

    /* renamed from: Wwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public int f12143Wwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public int f12144Wwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public int f12145Wwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public int f12146Wwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public int f12147Wwwwwwwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final DiskLruCache f12148Wwwwwwwwwwwwwwwwwwwwwwwww;

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\b\r\b\u0002\u0018\u00002\u00020\u0001B'\u0012\n\u0010\u0004\u001a\u00060\u0002R\u00020\u0003\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0005¢\u0006\u0004\b\b\u0010\tJ\u0011\u0010\u0006\u001a\u0004\u0018\u00010\nH\u0016¢\u0006\u0004\b\u0006\u0010\u000bJ\u000f\u0010\u0007\u001a\u00020\fH\u0016¢\u0006\u0004\b\u0007\u0010\rJ\u000f\u0010\u000f\u001a\u00020\u000eH\u0016¢\u0006\u0004\b\u000f\u0010\u0010R\u001b\u0010\u0004\u001a\u00060\u0002R\u00020\u00038\u0006¢\u0006\f\n\u0004\b\u0011\u0010\u0012\u001a\u0004\b\u0013\u0010\u0014R\u0016\u0010\u0006\u001a\u0004\u0018\u00010\u00058\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0015\u0010\u0016R\u0016\u0010\u0007\u001a\u0004\u0018\u00010\u00058\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0017\u0010\u0016R\u0014\u0010\u001a\u001a\u00020\u000e8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0018\u0010\u0019¨\u0006\u001b"}, d2 = {"Lokhttp3/Cache$CacheResponseBody;", "Lokhttp3/ResponseBody;", "Lokhttp3/internal/cache/DiskLruCache$Snapshot;", "Lokhttp3/internal/cache/DiskLruCache;", "snapshot", "", "contentType", "contentLength", "<init>", "(Lokhttp3/internal/cache/DiskLruCache$Snapshot;Ljava/lang/String;Ljava/lang/String;)V", "Lokhttp3/MediaType;", "()Lokhttp3/MediaType;", "", "()J", "Lokio/BufferedSource;", "source", "()Lokio/BufferedSource;", "Wwwwwwwwwwwwwwwwwwwwwwwww", "Lokhttp3/internal/cache/DiskLruCache$Snapshot;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "()Lokhttp3/internal/cache/DiskLruCache$Snapshot;", "Wwwwwwwwwwwwwwwwwwwwwwww", "Ljava/lang/String;", "Wwwwwwwwwwwwwwwwwwwwwww", "Wwwwwwwwwwwwwwwwwwwwww", "Lokio/BufferedSource;", "bodySource", OkHttp3Client.NETWORK_CLIENT_OKHTTP}, k = 1, mv = {1, 6, 0}, xi = 48)
    /* loaded from: classes7.dex */
    public static final class CacheResponseBody extends ResponseBody {
        @NotNull

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final BufferedSource f12149Wwwwwwwwwwwwwwwwwwwwww;
        @Nullable

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final String f12150Wwwwwwwwwwwwwwwwwwwwwww;
        @Nullable

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final String f12151Wwwwwwwwwwwwwwwwwwwwwwww;
        @NotNull

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final DiskLruCache.Snapshot f12152Wwwwwwwwwwwwwwwwwwwwwwwww;

        public CacheResponseBody(@NotNull DiskLruCache.Snapshot snapshot, @Nullable String str, @Nullable String str2) {
            this.f12152Wwwwwwwwwwwwwwwwwwwwwwwww = snapshot;
            this.f12151Wwwwwwwwwwwwwwwwwwwwwwww = str;
            this.f12150Wwwwwwwwwwwwwwwwwwwwwww = str2;
            this.f12149Wwwwwwwwwwwwwwwwwwwwww = Okio.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(new ForwardingSource(this) { // from class: okhttp3.Cache.CacheResponseBody.1

                /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
                public final /* synthetic */ CacheResponseBody f12153Wwwwwwwwwwwwwwwwwwwwwwww;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(Source.this);
                    this.f12153Wwwwwwwwwwwwwwwwwwwwwwww = this;
                }

                @Override // okio.ForwardingSource, okio.Source, java.io.Closeable, java.lang.AutoCloseable
                public void close() throws IOException {
                    this.f12153Wwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().close();
                    super.close();
                }
            });
        }

        @NotNull
        public final DiskLruCache.Snapshot Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            return this.f12152Wwwwwwwwwwwwwwwwwwwwwwwww;
        }

        @Override // okhttp3.ResponseBody
        public long contentLength() {
            String str = this.f12150Wwwwwwwwwwwwwwwwwwwwwww;
            if (str == null) {
                return -1L;
            }
            return Util.Kkkkkkkkk(str, -1L);
        }

        @Override // okhttp3.ResponseBody
        @Nullable
        public MediaType contentType() {
            String str = this.f12151Wwwwwwwwwwwwwwwwwwwwwwww;
            if (str == null) {
                return null;
            }
            return MediaType.Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(str);
        }

        @Override // okhttp3.ResponseBody
        @NotNull
        public BufferedSource source() {
            return this.f12149Wwwwwwwwwwwwwwwwwwwwww;
        }
    }

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000J\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0006\n\u0002\u0010\"\n\u0002\b\f\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0017\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0007¢\u0006\u0004\b\u0007\u0010\bJ\u0017\u0010\f\u001a\u00020\u000b2\u0006\u0010\n\u001a\u00020\tH\u0000¢\u0006\u0004\b\f\u0010\rJ%\u0010\u0015\u001a\u00020\u00142\u0006\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u0013\u001a\u00020\u0012¢\u0006\u0004\b\u0015\u0010\u0016J\u0011\u0010\u0017\u001a\u00020\u0014*\u00020\u000e¢\u0006\u0004\b\u0017\u0010\u0018J\u0011\u0010\u0019\u001a\u00020\u0010*\u00020\u000e¢\u0006\u0004\b\u0019\u0010\u001aJ\u0019\u0010\u001c\u001a\b\u0012\u0004\u0012\u00020\u00060\u001b*\u00020\u0010H\u0002¢\u0006\u0004\b\u001c\u0010\u001dJ\u001f\u0010 \u001a\u00020\u00102\u0006\u0010\u001e\u001a\u00020\u00102\u0006\u0010\u001f\u001a\u00020\u0010H\u0002¢\u0006\u0004\b \u0010!R\u0014\u0010\"\u001a\u00020\u000b8\u0002X\u0082T¢\u0006\u0006\n\u0004\b\"\u0010#R\u0014\u0010$\u001a\u00020\u000b8\u0002X\u0082T¢\u0006\u0006\n\u0004\b$\u0010#R\u0014\u0010%\u001a\u00020\u000b8\u0002X\u0082T¢\u0006\u0006\n\u0004\b%\u0010#R\u0014\u0010&\u001a\u00020\u000b8\u0002X\u0082T¢\u0006\u0006\n\u0004\b&\u0010#¨\u0006'"}, d2 = {"Lokhttp3/Cache$Companion;", "", "<init>", "()V", "Lokhttp3/HttpUrl;", "url", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lokhttp3/HttpUrl;)Ljava/lang/String;", "Lokio/BufferedSource;", "source", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lokio/BufferedSource;)I", "Lokhttp3/Response;", "cachedResponse", "Lokhttp3/Headers;", "cachedRequest", "Lokhttp3/Request;", "newRequest", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lokhttp3/Response;Lokhttp3/Headers;Lokhttp3/Request;)Z", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lokhttp3/Response;)Z", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lokhttp3/Response;)Lokhttp3/Headers;", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lokhttp3/Headers;)Ljava/util/Set;", "requestHeaders", "responseHeaders", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lokhttp3/Headers;Lokhttp3/Headers;)Lokhttp3/Headers;", "ENTRY_BODY", "I", "ENTRY_COUNT", "ENTRY_METADATA", "VERSION", OkHttp3Client.NETWORK_CLIENT_OKHTTP}, k = 1, mv = {1, 6, 0}, xi = 48)
    /* loaded from: classes7.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull Response response, @NotNull Headers headers, @NotNull Request request) {
            Set<String> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(response.Kkkkkkkkkkkkkkkk());
            if (Wwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2) && Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.isEmpty()) {
                return true;
            }
            for (String str : Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2) {
                if (!Intrinsics.areEqual(headers.Wwwwwwwwwwwwwwwwwwwwwwwww(str), request.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(str))) {
                    return false;
                }
            }
            return true;
        }

        @NotNull
        public final Headers Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull Response response) {
            return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(response.Kkkkkkkkkkkkk().Kkkkkkkk().Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(), response.Kkkkkkkkkkkkkkkk());
        }

        public final Headers Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Headers headers, Headers headers2) {
            Set<String> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(headers2);
            if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.isEmpty()) {
                return Util.f12494Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
            }
            Headers.Builder builder = new Headers.Builder();
            int size = headers.size();
            int i = 0;
            while (i < size) {
                int i2 = i + 1;
                String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3 = headers.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(i);
                if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.contains(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3)) {
                    builder.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3, headers.Wwwwwwwwwwwwwwwwwwwwwwwwww(i));
                }
                i = i2;
            }
            return builder.Wwwwwwwwwwwwwwwwwwwwwwwwwwww();
        }

        public final Set<String> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Headers headers) {
            int size = headers.size();
            TreeSet treeSet = null;
            int i = 0;
            while (i < size) {
                int i2 = i + 1;
                if (StringsKt.equals(HttpHeaders.VARY, headers.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(i), true)) {
                    String Wwwwwwwwwwwwwwwwwwwwwwwwww2 = headers.Wwwwwwwwwwwwwwwwwwwwwwwwww(i);
                    if (treeSet == null) {
                        treeSet = new TreeSet(StringsKt.getCASE_INSENSITIVE_ORDER(StringCompanionObject.INSTANCE));
                    }
                    for (String str : StringsKt.split$default((CharSequence) Wwwwwwwwwwwwwwwwwwwwwwwwww2, new char[]{AbstractJsonLexerKt.COMMA}, false, 0, 6, (Object) null)) {
                        treeSet.add(StringsKt.trim((CharSequence) str).toString());
                    }
                }
                i = i2;
            }
            if (treeSet == null) {
                return SetsKt.emptySet();
            }
            return treeSet;
        }

        public final int Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull BufferedSource bufferedSource) throws IOException {
            try {
                long Wwwwwwwwwww2 = bufferedSource.Wwwwwwwwwww();
                String Wwwwwwwwwwwwwwwwwwwwww2 = bufferedSource.Wwwwwwwwwwwwwwwwwwwwww();
                if (Wwwwwwwwwww2 >= 0 && Wwwwwwwwwww2 <= 2147483647L && Wwwwwwwwwwwwwwwwwwwwww2.length() <= 0) {
                    return (int) Wwwwwwwwwww2;
                }
                throw new IOException("expected an int but was \"" + Wwwwwwwwwww2 + Wwwwwwwwwwwwwwwwwwwwww2 + '\"');
            } catch (NumberFormatException e) {
                throw new IOException(e.getMessage());
            }
        }

        @JvmStatic
        @NotNull
        public final String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull HttpUrl httpUrl) {
            return ByteString.Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(httpUrl.toString()).md5().hex();
        }

        public final boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull Response response) {
            return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(response.Kkkkkkkkkkkkkkkk()).contains(ProxyConfig.MATCH_ALL_SCHEMES);
        }

        public Companion() {
        }
    }

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0002\b\u0007\b\u0082\u0004\u0018\u00002\u00020\u0001B\u0013\u0012\n\u0010\u0004\u001a\u00060\u0002R\u00020\u0003¢\u0006\u0004\b\u0005\u0010\u0006J\u000f\u0010\b\u001a\u00020\u0007H\u0016¢\u0006\u0004\b\b\u0010\tJ\u000f\u0010\u000b\u001a\u00020\nH\u0016¢\u0006\u0004\b\u000b\u0010\fR\u0018\u0010\u0004\u001a\u00060\u0002R\u00020\u00038\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\b\u0010\rR\u0014\u0010\u000f\u001a\u00020\n8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000b\u0010\u000eR\u0014\u0010\u0011\u001a\u00020\n8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0010\u0010\u000eR\"\u0010\u0018\u001a\u00020\u00128\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0013\u0010\u0014\u001a\u0004\b\u0013\u0010\u0015\"\u0004\b\u0016\u0010\u0017¨\u0006\u0019"}, d2 = {"Lokhttp3/Cache$RealCacheRequest;", "Lokhttp3/internal/cache/CacheRequest;", "Lokhttp3/internal/cache/DiskLruCache$Editor;", "Lokhttp3/internal/cache/DiskLruCache;", "editor", "<init>", "(Lokhttp3/Cache;Lokhttp3/internal/cache/DiskLruCache$Editor;)V", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "()V", "Lokio/Sink;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "()Lokio/Sink;", "Lokhttp3/internal/cache/DiskLruCache$Editor;", "Lokio/Sink;", "cacheOut", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "body", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Z", "()Z", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Z)V", "done", OkHttp3Client.NETWORK_CLIENT_OKHTTP}, k = 1, mv = {1, 6, 0}, xi = 48)
    /* loaded from: classes7.dex */
    public final class RealCacheRequest implements CacheRequest {

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public boolean f12168Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        @NotNull

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final Sink f12169Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        @NotNull

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final Sink f12170Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        @NotNull

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final DiskLruCache.Editor f12171Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        public RealCacheRequest(@NotNull DiskLruCache.Editor editor) {
            this.f12171Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = editor;
            Sink Wwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = editor.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(1);
            this.f12170Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = Wwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
            this.f12169Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new ForwardingSink(Wwwwwwwwwwwwwwwwwwwwwwwwwwwww2) { // from class: okhttp3.Cache.RealCacheRequest.1
                @Override // okio.ForwardingSink, okio.Sink, java.io.Closeable, java.lang.AutoCloseable
                public void close() throws IOException {
                    Cache cache = Cache.this;
                    RealCacheRequest realCacheRequest = this;
                    synchronized (cache) {
                        if (realCacheRequest.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()) {
                            return;
                        }
                        realCacheRequest.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(true);
                        cache.Kkkkkkkkkkkkkkkkkkk(cache.Kkkkkkkkkkkkkkkkkkkkkkk() + 1);
                        super.close();
                        this.f12171Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
                    }
                }
            };
        }

        public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(boolean z) {
            this.f12168Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = z;
        }

        public final boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            return this.f12168Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        }

        @Override // okhttp3.internal.cache.CacheRequest
        @NotNull
        public Sink Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            return this.f12169Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        }

        @Override // okhttp3.internal.cache.CacheRequest
        public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            Cache cache = Cache.this;
            synchronized (cache) {
                if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()) {
                    return;
                }
                Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(true);
                cache.Kkkkkkkkkkkkkkkkkkkk(cache.Wwwwwwwwwwwwww() + 1);
                Util.Wwwwwwwwwwwwwwwwwwwwww(this.f12170Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
                try {
                    this.f12171Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
                } catch (IOException unused) {
                }
            }
        }
    }

    public Cache(@NotNull File file, long j, @NotNull FileSystem fileSystem) {
        this.f12148Wwwwwwwwwwwwwwwwwwwwwwwww = new DiskLruCache(fileSystem, file, 201105, 2, j, TaskRunner.INSTANCE);
    }

    public final void Kkkkkkkkkkkkkkkk(@NotNull Response response, @NotNull Response response2) {
        DiskLruCache.Editor editor;
        Entry entry = new Entry(response2);
        ResponseBody Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = response.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 != null) {
            try {
                editor = ((CacheResponseBody) Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2).Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
                if (editor != null) {
                    try {
                        entry.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(editor);
                        editor.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
                    } catch (IOException unused) {
                        Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(editor);
                    }
                }
            } catch (IOException unused2) {
                editor = null;
            }
        } else {
            throw new NullPointerException("null cannot be cast to non-null type okhttp3.Cache.CacheResponseBody");
        }
    }

    public final synchronized void Kkkkkkkkkkkkkkkkk(@NotNull CacheStrategy cacheStrategy) {
        try {
            this.f12143Wwwwwwwwwwwwwwwwwwww++;
            if (cacheStrategy.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() != null) {
                this.f12145Wwwwwwwwwwwwwwwwwwwwww++;
            } else if (cacheStrategy.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() != null) {
                this.f12144Wwwwwwwwwwwwwwwwwwwww++;
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public final synchronized void Kkkkkkkkkkkkkkkkkk() {
        this.f12144Wwwwwwwwwwwwwwwwwwwww++;
    }

    public final void Kkkkkkkkkkkkkkkkkkk(int i) {
        this.f12147Wwwwwwwwwwwwwwwwwwwwwwww = i;
    }

    public final void Kkkkkkkkkkkkkkkkkkkk(int i) {
        this.f12146Wwwwwwwwwwwwwwwwwwwwwww = i;
    }

    public final void Kkkkkkkkkkkkkkkkkkkkk(@NotNull Request request) throws IOException {
        this.f12148Wwwwwwwwwwwwwwwwwwwwwwwww.Illlllllllllllllllllllllllll(Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(request.Wwwwwwwwwwwwwwwwwwwwwwww()));
    }

    @Nullable
    public final CacheRequest Kkkkkkkkkkkkkkkkkkkkkk(@NotNull Response response) {
        DiskLruCache.Editor editor;
        String Wwwwwwwwwwwwwwwwwwwwwwwwwww2 = response.Kkkkkkkk().Wwwwwwwwwwwwwwwwwwwwwwwwwww();
        if (HttpMethod.INSTANCE.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(response.Kkkkkkkk().Wwwwwwwwwwwwwwwwwwwwwwwwwww())) {
            try {
                Kkkkkkkkkkkkkkkkkkkkk(response.Kkkkkkkk());
            } catch (IOException unused) {
            }
            return null;
        } else if (!Intrinsics.areEqual(Wwwwwwwwwwwwwwwwwwwwwwwwwww2, "GET")) {
            return null;
        } else {
            Companion companion = Companion;
            if (companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(response)) {
                return null;
            }
            Entry entry = new Entry(response);
            try {
                editor = DiskLruCache.Kkkkkkkkkkkkkk(this.f12148Wwwwwwwwwwwwwwwwwwwwwwwww, companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(response.Kkkkkkkk().Wwwwwwwwwwwwwwwwwwwwwwww()), 0L, 2, null);
                if (editor == null) {
                    return null;
                }
                try {
                    entry.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(editor);
                    return new RealCacheRequest(editor);
                } catch (IOException unused2) {
                    Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(editor);
                    return null;
                }
            } catch (IOException unused3) {
                editor = null;
            }
        }
    }

    public final int Kkkkkkkkkkkkkkkkkkkkkkk() {
        return this.f12147Wwwwwwwwwwwwwwwwwwwwwwww;
    }

    public final int Wwwwwwwwwwwwww() {
        return this.f12146Wwwwwwwwwwwwwwwwwwwwwww;
    }

    @Nullable
    public final Response Wwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull Request request) {
        try {
            DiskLruCache.Snapshot Kkkkkkkkkkkkk2 = this.f12148Wwwwwwwwwwwwwwwwwwwwwwwww.Kkkkkkkkkkkkk(Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(request.Wwwwwwwwwwwwwwwwwwwwwwww()));
            if (Kkkkkkkkkkkkk2 == null) {
                return null;
            }
            try {
                Entry entry = new Entry(Kkkkkkkkkkkkk2.Wwwwwwwwwwwwwwwwwwwwwwwwwww(0));
                Response Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = entry.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Kkkkkkkkkkkkk2);
                if (!entry.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(request, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2)) {
                    ResponseBody Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
                    if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 != null) {
                        Util.Wwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2);
                    }
                    return null;
                }
                return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
            } catch (IOException unused) {
                Util.Wwwwwwwwwwwwwwwwwwwwww(Kkkkkkkkkkkkk2);
                return null;
            }
        } catch (IOException unused2) {
        }
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(DiskLruCache.Editor editor) {
        if (editor != null) {
            try {
                editor.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
            } catch (IOException unused) {
            }
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.f12148Wwwwwwwwwwwwwwwwwwwwwwwww.close();
    }

    @Override // java.io.Flushable
    public void flush() throws IOException {
        this.f12148Wwwwwwwwwwwwwwwwwwwwwwwww.flush();
    }

    public Cache(@NotNull File file, long j) {
        this(file, j, FileSystem.f12956Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
    }

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000\u0092\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\t\n\u0002\b\t\b\u0002\u0018\u0000 B2\u00020\u0001:\u0001BB\u0011\b\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005B\u0011\b\u0016\u0012\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\u0004\u0010\bJ\u0019\u0010\r\u001a\u00020\f2\n\u0010\u000b\u001a\u00060\tR\u00020\n¢\u0006\u0004\b\r\u0010\u000eJ\u001d\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\u0012\u0010\u0013J\u0019\u0010\u0016\u001a\u00020\u00062\n\u0010\u0015\u001a\u00060\u0014R\u00020\n¢\u0006\u0004\b\u0016\u0010\u0017J\u001d\u0010\u001c\u001a\b\u0012\u0004\u0012\u00020\u001b0\u001a2\u0006\u0010\u0019\u001a\u00020\u0018H\u0002¢\u0006\u0004\b\u001c\u0010\u001dJ%\u0010!\u001a\u00020\f2\u0006\u0010\u001f\u001a\u00020\u001e2\f\u0010 \u001a\b\u0012\u0004\u0012\u00020\u001b0\u001aH\u0002¢\u0006\u0004\b!\u0010\"R\u0014\u0010&\u001a\u00020#8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b$\u0010%R\u0014\u0010)\u001a\u00020'8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0012\u0010(R\u0014\u0010,\u001a\u00020*8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001c\u0010+R\u0014\u0010/\u001a\u00020-8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0016\u0010.R\u0014\u00102\u001a\u0002008\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b!\u00101R\u0014\u00103\u001a\u00020*8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\r\u0010+R\u0014\u00105\u001a\u00020'8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b4\u0010(R\u0016\u00109\u001a\u0004\u0018\u0001068\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b7\u00108R\u0014\u0010=\u001a\u00020:8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b;\u0010<R\u0014\u0010?\u001a\u00020:8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b>\u0010<R\u0014\u0010A\u001a\u00020\u00118BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b$\u0010@¨\u0006C"}, d2 = {"Lokhttp3/Cache$Entry;", "", "Lokio/Source;", "rawSource", "<init>", "(Lokio/Source;)V", "Lokhttp3/Response;", "response", "(Lokhttp3/Response;)V", "Lokhttp3/internal/cache/DiskLruCache$Editor;", "Lokhttp3/internal/cache/DiskLruCache;", "editor", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lokhttp3/internal/cache/DiskLruCache$Editor;)V", "Lokhttp3/Request;", AdActivity.REQUEST_KEY_EXTRA, "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lokhttp3/Request;Lokhttp3/Response;)Z", "Lokhttp3/internal/cache/DiskLruCache$Snapshot;", "snapshot", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lokhttp3/internal/cache/DiskLruCache$Snapshot;)Lokhttp3/Response;", "Lokio/BufferedSource;", "source", "", "Ljava/security/cert/Certificate;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lokio/BufferedSource;)Ljava/util/List;", "Lokio/BufferedSink;", "sink", "certificates", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lokio/BufferedSink;Ljava/util/List;)V", "Lokhttp3/HttpUrl;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Lokhttp3/HttpUrl;", "url", "Lokhttp3/Headers;", "Lokhttp3/Headers;", "varyHeaders", "", "Ljava/lang/String;", "requestMethod", "Lokhttp3/Protocol;", "Lokhttp3/Protocol;", "protocol", "", "I", "code", "message", "Wwwwwwwwwwwwwwwwwwwwwwwwwwww", "responseHeaders", "Lokhttp3/Handshake;", "Wwwwwwwwwwwwwwwwwwwwwwwwwww", "Lokhttp3/Handshake;", "handshake", "", "Wwwwwwwwwwwwwwwwwwwwwwwwww", "J", "sentRequestMillis", "Wwwwwwwwwwwwwwwwwwwwwwwww", "receivedResponseMillis", "()Z", "isHttps", "Companion", OkHttp3Client.NETWORK_CLIENT_OKHTTP}, k = 1, mv = {1, 6, 0}, xi = 48)
    /* loaded from: classes7.dex */
    public static final class Entry {
        @NotNull
        public static final Companion Companion = new Companion(null);
        @NotNull

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public static final String f12155Wwwwwwwwwwwwwwwwwwwwwww;
        @NotNull

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public static final String f12156Wwwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final long f12157Wwwwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final long f12158Wwwwwwwwwwwwwwwwwwwwwwwwww;
        @Nullable

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final Handshake f12159Wwwwwwwwwwwwwwwwwwwwwwwwwww;
        @NotNull

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final Headers f12160Wwwwwwwwwwwwwwwwwwwwwwwwwwww;
        @NotNull

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final String f12161Wwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final int f12162Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        @NotNull

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final Protocol f12163Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        @NotNull

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final String f12164Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        @NotNull

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final Headers f12165Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        @NotNull

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final HttpUrl f12166Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        /* compiled from: Proguard */
        @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0006"}, d2 = {"Lokhttp3/Cache$Entry$Companion;", "", "()V", "RECEIVED_MILLIS", "", "SENT_MILLIS", OkHttp3Client.NETWORK_CLIENT_OKHTTP}, k = 1, mv = {1, 6, 0}, xi = 48)
        /* loaded from: classes7.dex */
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            public Companion() {
            }
        }

        static {
            Platform.Companion companion = Platform.Companion;
            f12156Wwwwwwwwwwwwwwwwwwwwwwww = Intrinsics.stringPlus(companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwwwwwwww(), "-Sent-Millis");
            f12155Wwwwwwwwwwwwwwwwwwwwwww = Intrinsics.stringPlus(companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwwwwwwww(), "-Received-Millis");
        }

        public Entry(@NotNull Source source) throws IOException {
            TlsVersion tlsVersion;
            try {
                BufferedSource Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Okio.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(source);
                String Wwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwww();
                HttpUrl Wwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = HttpUrl.Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwww2);
                if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwww2 != null) {
                    this.f12166Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = Wwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
                    this.f12164Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwww();
                    Headers.Builder builder = new Headers.Builder();
                    int Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Cache.Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2);
                    int i = 0;
                    int i2 = 0;
                    while (i2 < Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2) {
                        i2++;
                        builder.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwww());
                    }
                    this.f12165Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = builder.Wwwwwwwwwwwwwwwwwwwwwwwwwwww();
                    StatusLine Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = StatusLine.Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwww());
                    this.f12163Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.f12735Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
                    this.f12162Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.f12734Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
                    this.f12161Wwwwwwwwwwwwwwwwwwwwwwwwwwwww = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.f12733Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
                    Headers.Builder builder2 = new Headers.Builder();
                    int Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3 = Cache.Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2);
                    while (i < Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3) {
                        i++;
                        builder2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwww());
                    }
                    String str = f12156Wwwwwwwwwwwwwwwwwwwwwwww;
                    String Wwwwwwwwwwwwwwwwwwwwwwwwwww2 = builder2.Wwwwwwwwwwwwwwwwwwwwwwwwwww(str);
                    String str2 = f12155Wwwwwwwwwwwwwwwwwwwwwww;
                    String Wwwwwwwwwwwwwwwwwwwwwwwwwww3 = builder2.Wwwwwwwwwwwwwwwwwwwwwwwwwww(str2);
                    builder2.Wwwwwwwwwwwwwwwwwwwwwwwww(str);
                    builder2.Wwwwwwwwwwwwwwwwwwwwwwwww(str2);
                    long j = 0;
                    this.f12158Wwwwwwwwwwwwwwwwwwwwwwwwww = Wwwwwwwwwwwwwwwwwwwwwwwwwww2 == null ? 0L : Long.parseLong(Wwwwwwwwwwwwwwwwwwwwwwwwwww2);
                    if (Wwwwwwwwwwwwwwwwwwwwwwwwwww3 != null) {
                        j = Long.parseLong(Wwwwwwwwwwwwwwwwwwwwwwwwwww3);
                    }
                    this.f12157Wwwwwwwwwwwwwwwwwwwwwwwww = j;
                    this.f12160Wwwwwwwwwwwwwwwwwwwwwwwwwwww = builder2.Wwwwwwwwwwwwwwwwwwwwwwwwwwww();
                    if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()) {
                        String Wwwwwwwwwwwwwwwwwwwwww3 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwww();
                        if (Wwwwwwwwwwwwwwwwwwwwww3.length() <= 0) {
                            CipherSuite Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = CipherSuite.Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwww());
                            List<Certificate> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww4 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2);
                            List<Certificate> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww5 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2);
                            if (!Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwww()) {
                                tlsVersion = TlsVersion.Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwww());
                            } else {
                                tlsVersion = TlsVersion.SSL_3_0;
                            }
                            this.f12159Wwwwwwwwwwwwwwwwwwwwwwwwwww = Handshake.Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(tlsVersion, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww4, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww5);
                        } else {
                            throw new IOException("expected \"\" but was \"" + Wwwwwwwwwwwwwwwwwwwwww3 + '\"');
                        }
                    } else {
                        this.f12159Wwwwwwwwwwwwwwwwwwwwwwwwwww = null;
                    }
                    Unit unit = Unit.INSTANCE;
                    CloseableKt.closeFinally(source, null);
                    return;
                }
                IOException iOException = new IOException(Intrinsics.stringPlus("Cache corruption for ", Wwwwwwwwwwwwwwwwwwwwww2));
                Platform.Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwwww("cache corruption", 5, iOException);
                throw iOException;
            } catch (Throwable th) {
                try {
                    throw th;
                } catch (Throwable th2) {
                    CloseableKt.closeFinally(source, th);
                    throw th2;
                }
            }
        }

        public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull DiskLruCache.Editor editor) throws IOException {
            BufferedSink Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Okio.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(editor.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(0));
            try {
                Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwww(this.f12166Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.toString()).writeByte(10);
                Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwww(this.f12164Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww).writeByte(10);
                Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwww(this.f12165Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.size()).writeByte(10);
                int size = this.f12165Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.size();
                int i = 0;
                while (i < size) {
                    int i2 = i + 1;
                    Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwww(this.f12165Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(i)).Wwwwwwwwwwwwwwwwwwwwwwwwww(": ").Wwwwwwwwwwwwwwwwwwwwwwwwww(this.f12165Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwww(i)).writeByte(10);
                    i = i2;
                }
                Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwww(new StatusLine(this.f12163Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, this.f12162Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww, this.f12161Wwwwwwwwwwwwwwwwwwwwwwwwwwwww).toString()).writeByte(10);
                Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwww(this.f12160Wwwwwwwwwwwwwwwwwwwwwwwwwwww.size() + 2).writeByte(10);
                int size2 = this.f12160Wwwwwwwwwwwwwwwwwwwwwwwwwwww.size();
                for (int i3 = 0; i3 < size2; i3++) {
                    Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwww(this.f12160Wwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(i3)).Wwwwwwwwwwwwwwwwwwwwwwwwww(": ").Wwwwwwwwwwwwwwwwwwwwwwwwww(this.f12160Wwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwww(i3)).writeByte(10);
                }
                Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwww(f12156Wwwwwwwwwwwwwwwwwwwwwwww).Wwwwwwwwwwwwwwwwwwwwwwwwww(": ").Wwwwwwwwwwwwwwwww(this.f12158Wwwwwwwwwwwwwwwwwwwwwwwwww).writeByte(10);
                Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwww(f12155Wwwwwwwwwwwwwwwwwwwwwww).Wwwwwwwwwwwwwwwwwwwwwwwwww(": ").Wwwwwwwwwwwwwwwww(this.f12157Wwwwwwwwwwwwwwwwwwwwwwwww).writeByte(10);
                if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()) {
                    Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.writeByte(10);
                    Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwww(this.f12159Wwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()).writeByte(10);
                    Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2, this.f12159Wwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
                    Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2, this.f12159Wwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
                    Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwww(this.f12159Wwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww().javaName()).writeByte(10);
                }
                Unit unit = Unit.INSTANCE;
                CloseableKt.closeFinally(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2, null);
            } finally {
            }
        }

        public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(BufferedSink bufferedSink, List<? extends Certificate> list) throws IOException {
            try {
                bufferedSink.Wwwwwwwwwwwwwwwww(list.size()).writeByte(10);
                for (Certificate certificate : list) {
                    bufferedSink.Wwwwwwwwwwwwwwwwwwwwwwwwww(ByteString.Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwww(ByteString.Companion, certificate.getEncoded(), 0, 0, 3, null).base64()).writeByte(10);
                }
            } catch (CertificateEncodingException e) {
                throw new IOException(e.getMessage());
            }
        }

        @NotNull
        public final Response Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull DiskLruCache.Snapshot snapshot) {
            String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = this.f12160Wwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww("Content-Type");
            String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3 = this.f12160Wwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww("Content-Length");
            return new Response.Builder().Wwwwwwwwwwwwwwww(new Request.Builder().Wwwwwwwwwwwwwwww(this.f12166Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww).Wwwwwwwwwwwwwwwwwwwwwwwwww(this.f12164Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, null).Wwwwwwwwwwwwwwwwwwwwwwwwwww(this.f12165Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww).Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()).Wwwwwwwwwwwwwwwwww(this.f12163Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww).Wwwwwwwwwwwwwwwwwwwwwwwwwwww(this.f12162Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww).Wwwwwwwwwwwwwwwwwwwww(this.f12161Wwwwwwwwwwwwwwwwwwwwwwwwwwwww).Wwwwwwwwwwwwwwwwwwwwwww(this.f12160Wwwwwwwwwwwwwwwwwwwwwwwwwwww).Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(new CacheResponseBody(snapshot, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3)).Wwwwwwwwwwwwwwwwwwwwwwwww(this.f12159Wwwwwwwwwwwwwwwwwwwwwwwwwww).Wwwwwwwwwwwwwww(this.f12158Wwwwwwwwwwwwwwwwwwwwwwwwww).Wwwwwwwwwwwwwwwww(this.f12157Wwwwwwwwwwwwwwwwwwwwwwwww).Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        }

        public final List<Certificate> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(BufferedSource bufferedSource) throws IOException {
            int Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Cache.Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(bufferedSource);
            if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 == -1) {
                return CollectionsKt.emptyList();
            }
            try {
                CertificateFactory certificateFactory = CertificateFactory.getInstance(AndroidStaticDeviceInfoDataSource.CERTIFICATE_TYPE_X509);
                ArrayList arrayList = new ArrayList(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2);
                int i = 0;
                while (i < Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2) {
                    i++;
                    String Wwwwwwwwwwwwwwwwwwwwww2 = bufferedSource.Wwwwwwwwwwwwwwwwwwwwww();
                    Buffer buffer = new Buffer();
                    buffer.Wwwww(ByteString.Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwww2));
                    arrayList.add(certificateFactory.generateCertificate(buffer.Kkkkkkkkkkkkkkkkkkkkkkkkk()));
                }
                return arrayList;
            } catch (CertificateException e) {
                throw new IOException(e.getMessage());
            }
        }

        public final boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull Request request, @NotNull Response response) {
            if (Intrinsics.areEqual(this.f12166Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, request.Wwwwwwwwwwwwwwwwwwwwwwww()) && Intrinsics.areEqual(this.f12164Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, request.Wwwwwwwwwwwwwwwwwwwwwwwwwww()) && Cache.Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwww(response, this.f12165Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, request)) {
                return true;
            }
            return false;
        }

        public final boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            return Intrinsics.areEqual(this.f12166Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwww(), "https");
        }

        public Entry(@NotNull Response response) {
            this.f12166Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = response.Kkkkkkkk().Wwwwwwwwwwwwwwwwwwwwwwww();
            this.f12165Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = Cache.Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(response);
            this.f12164Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = response.Kkkkkkkk().Wwwwwwwwwwwwwwwwwwwwwwwwwww();
            this.f12163Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = response.Kkkkkkkkkk();
            this.f12162Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww = response.Kkkkkkkkkkkkkkkkkkkkkk();
            this.f12161Wwwwwwwwwwwwwwwwwwwwwwwwwwwww = response.Kkkkkkkkkkkkkk();
            this.f12160Wwwwwwwwwwwwwwwwwwwwwwwwwwww = response.Kkkkkkkkkkkkkkkk();
            this.f12159Wwwwwwwwwwwwwwwwwwwwwwwwwww = response.Kkkkkkkkkkkkkkkkkkkk();
            this.f12158Wwwwwwwwwwwwwwwwwwwwwwwwww = response.Kkkkkkk();
            this.f12157Wwwwwwwwwwwwwwwwwwwwwwwww = response.Kkkkkkkkk();
        }
    }
}
