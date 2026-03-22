package okhttp3;

import androidx.browser.trusted.sharing.ShareTarget;
import com.google.common.base.Ascii;
import com.unity3d.services.core.network.core.OkHttp3Client;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.UUID;
import kotlin.Metadata;
import kotlin.jvm.JvmField;
import kotlin.jvm.JvmName;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.MediaType;
import okhttp3.internal.Util;
import okio.Buffer;
import okio.BufferedSink;
import okio.ByteString;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\t\n\u0002\b\u0006\n\u0002\u0010\u0002\n\u0002\b\u000b\n\u0002\u0010\u000e\n\u0002\b\u0006\u0018\u0000 %2\u00020\u0001:\u0003&%'B'\b\u0000\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006¢\u0006\u0004\b\t\u0010\nJ!\u0010\u0010\u001a\u00020\u000f2\b\u0010\f\u001a\u0004\u0018\u00010\u000b2\u0006\u0010\u000e\u001a\u00020\rH\u0002¢\u0006\u0004\b\u0010\u0010\u0011J\u000f\u0010\u0012\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\u0012\u0010\u0013J\u000f\u0010\u0014\u001a\u00020\u000fH\u0016¢\u0006\u0004\b\u0014\u0010\u0015J\u0017\u0010\u0017\u001a\u00020\u00162\u0006\u0010\f\u001a\u00020\u000bH\u0016¢\u0006\u0004\b\u0017\u0010\u0018R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0019\u0010\u001aR\u0017\u0010\u0005\u001a\u00020\u00048\u0007¢\u0006\f\n\u0004\b\u0010\u0010\u001b\u001a\u0004\b\u0005\u0010\u0013R\u001d\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00070\u00068\u0007¢\u0006\f\n\u0004\b\u001c\u0010\u001d\u001a\u0004\b\b\u0010\u001eR\u0014\u0010\u0012\u001a\u00020\u00048\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001f\u0010\u001bR\u0016\u0010\u0014\u001a\u00020\u000f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b \u0010!R\u0011\u0010$\u001a\u00020\"8G¢\u0006\u0006\u001a\u0004\b\u0019\u0010#¨\u0006("}, d2 = {"Lokhttp3/MultipartBody;", "Lokhttp3/RequestBody;", "Lokio/ByteString;", "boundaryByteString", "Lokhttp3/MediaType;", "type", "", "Lokhttp3/MultipartBody$Part;", "parts", "<init>", "(Lokio/ByteString;Lokhttp3/MediaType;Ljava/util/List;)V", "Lokio/BufferedSink;", "sink", "", "countBytes", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lokio/BufferedSink;Z)J", "contentType", "()Lokhttp3/MediaType;", "contentLength", "()J", "", "writeTo", "(Lokio/BufferedSink;)V", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Lokio/ByteString;", "Lokhttp3/MediaType;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Ljava/util/List;", "()Ljava/util/List;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "J", "", "()Ljava/lang/String;", "boundary", "Companion", "Builder", "Part", OkHttp3Client.NETWORK_CLIENT_OKHTTP}, k = 1, mv = {1, 6, 0}, xi = 48)
/* loaded from: classes7.dex */
public final class MultipartBody extends RequestBody {
    @NotNull
    public static final Companion Companion = new Companion(null);
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final byte[] f12341Wwwwwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final byte[] f12342Wwwwwwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final byte[] f12343Wwwwwwwwwwwwwwwwwwwwwwww;
    @JvmField
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final MediaType f12344Wwwwwwwwwwwwwwwwwwwwwwwww;
    @JvmField
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final MediaType f12345Wwwwwwwwwwwwwwwwwwwwwwwwww;
    @JvmField
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final MediaType f12346Wwwwwwwwwwwwwwwwwwwwwwwwwww;
    @JvmField
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final MediaType f12347Wwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @JvmField
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final MediaType f12348Wwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public long f12349Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final MediaType f12350Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final List<Part> f12351Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final MediaType f12352Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final ByteString f12353Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000F\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010!\n\u0002\b\u0003\u0018\u00002\u00020\u0001B\u0013\b\u0007\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005J\u0015\u0010\b\u001a\u00020\u00002\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\tJ\u001f\u0010\u000e\u001a\u00020\u00002\b\u0010\u000b\u001a\u0004\u0018\u00010\n2\u0006\u0010\r\u001a\u00020\f¢\u0006\u0004\b\u000e\u0010\u000fJ\u0015\u0010\u0012\u001a\u00020\u00002\u0006\u0010\u0011\u001a\u00020\u0010¢\u0006\u0004\b\u0012\u0010\u0013J\r\u0010\u0015\u001a\u00020\u0014¢\u0006\u0004\b\u0015\u0010\u0016R\u0014\u0010\u0003\u001a\u00020\u00178\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000e\u0010\u0018R\u0016\u0010\u0007\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0012\u0010\u0019R\u001a\u0010\u001c\u001a\b\u0012\u0004\u0012\u00020\u00100\u001a8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0015\u0010\u001b¨\u0006\u001d"}, d2 = {"Lokhttp3/MultipartBody$Builder;", "", "", "boundary", "<init>", "(Ljava/lang/String;)V", "Lokhttp3/MediaType;", "type", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lokhttp3/MediaType;)Lokhttp3/MultipartBody$Builder;", "Lokhttp3/Headers;", "headers", "Lokhttp3/RequestBody;", "body", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lokhttp3/Headers;Lokhttp3/RequestBody;)Lokhttp3/MultipartBody$Builder;", "Lokhttp3/MultipartBody$Part;", "part", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lokhttp3/MultipartBody$Part;)Lokhttp3/MultipartBody$Builder;", "Lokhttp3/MultipartBody;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "()Lokhttp3/MultipartBody;", "Lokio/ByteString;", "Lokio/ByteString;", "Lokhttp3/MediaType;", "", "Ljava/util/List;", "parts", OkHttp3Client.NETWORK_CLIENT_OKHTTP}, k = 1, mv = {1, 6, 0}, xi = 48)
    /* loaded from: classes7.dex */
    public static final class Builder {
        @NotNull

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final List<Part> f12354Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        @NotNull

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public MediaType f12355Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        @NotNull

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final ByteString f12356Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        @JvmOverloads
        public Builder() {
            this(null, 1, null);
        }

        @NotNull
        public final Builder Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull MediaType mediaType) {
            if (Intrinsics.areEqual(mediaType.Wwwwwwwwwwwwwwwwwwwwwwwwwww(), "multipart")) {
                this.f12355Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = mediaType;
                return this;
            }
            throw new IllegalArgumentException(Intrinsics.stringPlus("multipart != ", mediaType).toString());
        }

        @NotNull
        public final MultipartBody Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            if (!this.f12354Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.isEmpty()) {
                return new MultipartBody(this.f12356Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, this.f12355Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, Util.Kkkkkkkkkkk(this.f12354Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww));
            }
            throw new IllegalStateException("Multipart body must have at least one part.");
        }

        @NotNull
        public final Builder Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull Part part) {
            this.f12354Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.add(part);
            return this;
        }

        @NotNull
        public final Builder Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@Nullable Headers headers, @NotNull RequestBody requestBody) {
            Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Part.Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(headers, requestBody));
            return this;
        }

        @JvmOverloads
        public Builder(@NotNull String str) {
            this.f12356Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = ByteString.Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(str);
            this.f12355Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = MultipartBody.f12348Wwwwwwwwwwwwwwwwwwwwwwwwwwwww;
            this.f12354Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new ArrayList();
        }

        public /* synthetic */ Builder(String str, int i, DefaultConstructorMarker defaultConstructorMarker) {
            this((i & 1) != 0 ? UUID.randomUUID().toString() : str);
        }
    }

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0012\n\u0002\b\t\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003R\u0014\u0010\u0005\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b\u0005\u0010\u0006R\u0014\u0010\b\u001a\u00020\u00078\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\b\u0010\tR\u0014\u0010\n\u001a\u00020\u00078\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\n\u0010\tR\u0014\u0010\u000b\u001a\u00020\u00078\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000b\u0010\tR\u0014\u0010\f\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b\f\u0010\u0006R\u0014\u0010\r\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b\r\u0010\u0006R\u0014\u0010\u000e\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b\u000e\u0010\u0006R\u0014\u0010\u000f\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b\u000f\u0010\u0006¨\u0006\u0010"}, d2 = {"Lokhttp3/MultipartBody$Companion;", "", "<init>", "()V", "Lokhttp3/MediaType;", "ALTERNATIVE", "Lokhttp3/MediaType;", "", "COLONSPACE", "[B", "CRLF", "DASHDASH", "DIGEST", "FORM", "MIXED", "PARALLEL", OkHttp3Client.NETWORK_CLIENT_OKHTTP}, k = 1, mv = {1, 6, 0}, xi = 48)
    /* loaded from: classes7.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public Companion() {
        }
    }

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u000b\u0018\u0000 \u000e2\u00020\u0001:\u0001\u000eB\u001b\b\u0002\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007R\u0019\u0010\u0003\u001a\u0004\u0018\u00010\u00028\u0007¢\u0006\f\n\u0004\b\b\u0010\t\u001a\u0004\b\n\u0010\u000bR\u0017\u0010\u0005\u001a\u00020\u00048\u0007¢\u0006\f\n\u0004\b\n\u0010\f\u001a\u0004\b\b\u0010\r¨\u0006\u000f"}, d2 = {"Lokhttp3/MultipartBody$Part;", "", "Lokhttp3/Headers;", "headers", "Lokhttp3/RequestBody;", "body", "<init>", "(Lokhttp3/Headers;Lokhttp3/RequestBody;)V", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Lokhttp3/Headers;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "()Lokhttp3/Headers;", "Lokhttp3/RequestBody;", "()Lokhttp3/RequestBody;", "Companion", OkHttp3Client.NETWORK_CLIENT_OKHTTP}, k = 1, mv = {1, 6, 0}, xi = 48)
    /* loaded from: classes7.dex */
    public static final class Part {
        @NotNull
        public static final Companion Companion = new Companion(null);
        @NotNull

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final RequestBody f12357Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        @Nullable

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final Headers f12358Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        /* compiled from: Proguard */
        @Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J!\u0010\t\u001a\u00020\b2\b\u0010\u0005\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0007\u001a\u00020\u0006H\u0007¢\u0006\u0004\b\t\u0010\n¨\u0006\u000b"}, d2 = {"Lokhttp3/MultipartBody$Part$Companion;", "", "<init>", "()V", "Lokhttp3/Headers;", "headers", "Lokhttp3/RequestBody;", "body", "Lokhttp3/MultipartBody$Part;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lokhttp3/Headers;Lokhttp3/RequestBody;)Lokhttp3/MultipartBody$Part;", OkHttp3Client.NETWORK_CLIENT_OKHTTP}, k = 1, mv = {1, 6, 0}, xi = 48)
        /* loaded from: classes7.dex */
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            @JvmStatic
            @NotNull
            public final Part Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@Nullable Headers headers, @NotNull RequestBody requestBody) {
                String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
                String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3;
                if (headers == null) {
                    Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = null;
                } else {
                    Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = headers.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww("Content-Type");
                }
                if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 == null) {
                    if (headers == null) {
                        Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3 = null;
                    } else {
                        Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3 = headers.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww("Content-Length");
                    }
                    if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3 == null) {
                        return new Part(headers, requestBody, null);
                    }
                    throw new IllegalArgumentException("Unexpected header: Content-Length");
                }
                throw new IllegalArgumentException("Unexpected header: Content-Type");
            }

            public Companion() {
            }
        }

        public /* synthetic */ Part(Headers headers, RequestBody requestBody, DefaultConstructorMarker defaultConstructorMarker) {
            this(headers, requestBody);
        }

        @JvmName(name = "headers")
        @Nullable
        public final Headers Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            return this.f12358Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        }

        @JvmName(name = "body")
        @NotNull
        public final RequestBody Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            return this.f12357Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        }

        public Part(Headers headers, RequestBody requestBody) {
            this.f12358Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = headers;
            this.f12357Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = requestBody;
        }
    }

    static {
        MediaType.Companion companion = MediaType.Companion;
        f12348Wwwwwwwwwwwwwwwwwwwwwwwwwwwww = companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww("multipart/mixed");
        f12347Wwwwwwwwwwwwwwwwwwwwwwwwwwww = companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww("multipart/alternative");
        f12346Wwwwwwwwwwwwwwwwwwwwwwwwwww = companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww("multipart/digest");
        f12345Wwwwwwwwwwwwwwwwwwwwwwwwww = companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww("multipart/parallel");
        f12344Wwwwwwwwwwwwwwwwwwwwwwwww = companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(ShareTarget.ENCODING_TYPE_MULTIPART);
        f12343Wwwwwwwwwwwwwwwwwwwwwwww = new byte[]{58, 32};
        f12342Wwwwwwwwwwwwwwwwwwwwwww = new byte[]{Ascii.CR, 10};
        f12341Wwwwwwwwwwwwwwwwwwwwww = new byte[]{45, 45};
    }

    public MultipartBody(@NotNull ByteString byteString, @NotNull MediaType mediaType, @NotNull List<Part> list) {
        this.f12353Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = byteString;
        this.f12352Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = mediaType;
        this.f12351Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = list;
        MediaType.Companion companion = MediaType.Companion;
        this.f12350Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(mediaType + "; boundary=" + Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
        this.f12349Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww = -1L;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final long Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(BufferedSink bufferedSink, boolean z) throws IOException {
        Buffer buffer;
        if (z) {
            bufferedSink = new Buffer();
            buffer = bufferedSink;
        } else {
            buffer = 0;
        }
        int size = this.f12351Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.size();
        long j = 0;
        int i = 0;
        while (i < size) {
            int i2 = i + 1;
            Part part = this.f12351Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.get(i);
            Headers Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = part.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
            RequestBody Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = part.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
            bufferedSink.write(f12341Wwwwwwwwwwwwwwwwwwwwww);
            bufferedSink.Wwwww(this.f12353Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
            bufferedSink.write(f12342Wwwwwwwwwwwwwwwwwwwwwww);
            if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 != null) {
                int size2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.size();
                for (int i3 = 0; i3 < size2; i3++) {
                    bufferedSink.Wwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(i3)).write(f12343Wwwwwwwwwwwwwwwwwwwwwwww).Wwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwww(i3)).write(f12342Wwwwwwwwwwwwwwwwwwwwwww);
                }
            }
            MediaType contentType = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.contentType();
            if (contentType != null) {
                bufferedSink.Wwwwwwwwwwwwwwwwwwwwwwwwww("Content-Type: ").Wwwwwwwwwwwwwwwwwwwwwwwwww(contentType.toString()).write(f12342Wwwwwwwwwwwwwwwwwwwwwww);
            }
            long contentLength = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.contentLength();
            if (contentLength != -1) {
                bufferedSink.Wwwwwwwwwwwwwwwwwwwwwwwwww("Content-Length: ").Wwwwwwwwwwwwwwwww(contentLength).write(f12342Wwwwwwwwwwwwwwwwwwwwwww);
            } else if (z) {
                buffer.Kkkkkkkkkkkkkkkkkkkkkkk();
                return -1L;
            }
            byte[] bArr = f12342Wwwwwwwwwwwwwwwwwwwwwww;
            bufferedSink.write(bArr);
            if (z) {
                j += contentLength;
            } else {
                Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.writeTo(bufferedSink);
            }
            bufferedSink.write(bArr);
            i = i2;
        }
        byte[] bArr2 = f12341Wwwwwwwwwwwwwwwwwwwwww;
        bufferedSink.write(bArr2);
        bufferedSink.Wwwww(this.f12353Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
        bufferedSink.write(bArr2);
        bufferedSink.write(f12342Wwwwwwwwwwwwwwwwwwwwwww);
        if (z) {
            long Kk = j + buffer.Kk();
            buffer.Kkkkkkkkkkkkkkkkkkkkkkk();
            return Kk;
        }
        return j;
    }

    @JvmName(name = "boundary")
    @NotNull
    public final String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f12353Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.utf8();
    }

    @Override // okhttp3.RequestBody
    public long contentLength() throws IOException {
        long j = this.f12349Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        if (j == -1) {
            long Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(null, true);
            this.f12349Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
            return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
        }
        return j;
    }

    @Override // okhttp3.RequestBody
    @NotNull
    public MediaType contentType() {
        return this.f12350Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    @Override // okhttp3.RequestBody
    public void writeTo(@NotNull BufferedSink bufferedSink) throws IOException {
        Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(bufferedSink, false);
    }
}
