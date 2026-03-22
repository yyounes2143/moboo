package okhttp3.internal.http2;

import androidx.browser.trusted.sharing.ShareTarget;
import androidx.media3.exoplayer.rtsp.SessionDescription;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.mbridge.msdk.foundation.download.database.DownloadModel;
import com.mbridge.msdk.mbsignalcommon.commonwebview.ToolBar;
import com.unity3d.services.core.network.core.OkHttp3Client;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.collections.ArraysKt;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.JvmField;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.internal.Util;
import okio.Buffer;
import okio.BufferedSource;
import okio.ByteString;
import okio.Okio;
import okio.Source;
import org.jetbrains.annotations.NotNull;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010$\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\b\n\bÆ\u0002\u0018\u00002\u00020\u0001:\u0002\u0015\u0016B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0015\u0010\u0006\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007J\u001b\u0010\n\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\t0\bH\u0002¢\u0006\u0004\b\n\u0010\u000bR\u001d\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\r0\f8\u0006¢\u0006\f\n\u0004\b\u0006\u0010\u000e\u001a\u0004\b\u000f\u0010\u0010R#\u0010\u0014\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\t0\b8\u0006¢\u0006\f\n\u0004\b\u0012\u0010\u0013\u001a\u0004\b\u0012\u0010\u000b¨\u0006\u0017"}, d2 = {"Lokhttp3/internal/http2/Hpack;", "", "<init>", "()V", "Lokio/ByteString;", "name", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lokio/ByteString;)Lokio/ByteString;", "", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "()Ljava/util/Map;", "", "Lokhttp3/internal/http2/Header;", "[Lokhttp3/internal/http2/Header;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "()[Lokhttp3/internal/http2/Header;", "STATIC_HEADER_TABLE", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Ljava/util/Map;", "NAME_TO_FIRST_INDEX", "Reader", "Writer", OkHttp3Client.NETWORK_CLIENT_OKHTTP}, k = 1, mv = {1, 6, 0}, xi = 48)
/* loaded from: classes7.dex */
public final class Hpack {
    @NotNull
    public static final Hpack INSTANCE;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final Map<ByteString, Integer> f12771Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final Header[] f12772Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    static {
        Hpack hpack = new Hpack();
        INSTANCE = hpack;
        Header header = new Header(Header.f12762Wwwwwwwwwwwwwwwwwwwwwwwwww, "");
        ByteString byteString = Header.f12765Wwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        Header header2 = new Header(byteString, "GET");
        Header header3 = new Header(byteString, ShareTarget.METHOD_POST);
        ByteString byteString2 = Header.f12764Wwwwwwwwwwwwwwwwwwwwwwwwwwww;
        Header header4 = new Header(byteString2, "/");
        Header header5 = new Header(byteString2, "/index.html");
        ByteString byteString3 = Header.f12763Wwwwwwwwwwwwwwwwwwwwwwwwwww;
        Header header6 = new Header(byteString3, "http");
        Header header7 = new Header(byteString3, "https");
        ByteString byteString4 = Header.f12766Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        f12772Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new Header[]{header, header2, header3, header4, header5, header6, header7, new Header(byteString4, "200"), new Header(byteString4, "204"), new Header(byteString4, "206"), new Header(byteString4, "304"), new Header(byteString4, "400"), new Header(byteString4, "404"), new Header(byteString4, "500"), new Header("accept-charset", ""), new Header("accept-encoding", "gzip, deflate"), new Header("accept-language", ""), new Header("accept-ranges", ""), new Header("accept", ""), new Header("access-control-allow-origin", ""), new Header("age", ""), new Header("allow", ""), new Header("authorization", ""), new Header("cache-control", ""), new Header("content-disposition", ""), new Header("content-encoding", ""), new Header("content-language", ""), new Header("content-length", ""), new Header("content-location", ""), new Header("content-range", ""), new Header("content-type", ""), new Header("cookie", ""), new Header("date", ""), new Header(DownloadModel.ETAG, ""), new Header("expect", ""), new Header("expires", ""), new Header("from", ""), new Header("host", ""), new Header("if-match", ""), new Header("if-modified-since", ""), new Header("if-none-match", ""), new Header("if-range", ""), new Header("if-unmodified-since", ""), new Header("last-modified", ""), new Header("link", ""), new Header(FirebaseAnalytics.Param.LOCATION, ""), new Header("max-forwards", ""), new Header("proxy-authenticate", ""), new Header("proxy-authorization", ""), new Header(SessionDescription.ATTR_RANGE, ""), new Header("referer", ""), new Header(ToolBar.REFRESH, ""), new Header("retry-after", ""), new Header("server", ""), new Header("set-cookie", ""), new Header("strict-transport-security", ""), new Header("transfer-encoding", ""), new Header("user-agent", ""), new Header("vary", ""), new Header("via", ""), new Header("www-authenticate", "")};
        f12771Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = hpack.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
    }

    public final Map<ByteString, Integer> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        Header[] headerArr = f12772Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        LinkedHashMap linkedHashMap = new LinkedHashMap(headerArr.length);
        int length = headerArr.length;
        int i = 0;
        while (i < length) {
            int i2 = i + 1;
            Header[] headerArr2 = f12772Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
            if (!linkedHashMap.containsKey(headerArr2[i].f12770Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww)) {
                linkedHashMap.put(headerArr2[i].f12770Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, Integer.valueOf(i));
            }
            i = i2;
        }
        return Collections.unmodifiableMap(linkedHashMap);
    }

    @NotNull
    public final Header[] Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return f12772Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    @NotNull
    public final Map<ByteString, Integer> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return f12771Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    @NotNull
    public final ByteString Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull ByteString byteString) throws IOException {
        int size = byteString.size();
        int i = 0;
        while (i < size) {
            int i2 = i + 1;
            byte b = byteString.getByte(i);
            if (65 <= b && b <= 90) {
                throw new IOException(Intrinsics.stringPlus("PROTOCOL_ERROR response malformed: mixed case name: ", byteString.utf8()));
            }
            i = i2;
        }
        return byteString;
    }

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000P\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0012\n\u0002\u0010\u000b\n\u0002\b\b\n\u0002\u0010!\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0011\n\u0002\b\u0006\u0018\u00002\u00020\u0001B#\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0004¢\u0006\u0004\b\u0007\u0010\bJ\u0013\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\n0\t¢\u0006\u0004\b\u000b\u0010\fJ\r\u0010\u000e\u001a\u00020\r¢\u0006\u0004\b\u000e\u0010\u000fJ\u001d\u0010\u0012\u001a\u00020\u00042\u0006\u0010\u0010\u001a\u00020\u00042\u0006\u0010\u0011\u001a\u00020\u0004¢\u0006\u0004\b\u0012\u0010\u0013J\r\u0010\u0015\u001a\u00020\u0014¢\u0006\u0004\b\u0015\u0010\u0016J\u000f\u0010\u0017\u001a\u00020\rH\u0002¢\u0006\u0004\b\u0017\u0010\u000fJ\u000f\u0010\u0018\u001a\u00020\rH\u0002¢\u0006\u0004\b\u0018\u0010\u000fJ\u0017\u0010\u001a\u001a\u00020\u00042\u0006\u0010\u0019\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\u001a\u0010\u001bJ\u0017\u0010\u001d\u001a\u00020\r2\u0006\u0010\u001c\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\u001d\u0010\u001eJ\u0017\u0010\u001f\u001a\u00020\u00042\u0006\u0010\u001c\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\u001f\u0010\u001bJ\u0017\u0010 \u001a\u00020\r2\u0006\u0010\u001c\u001a\u00020\u0004H\u0002¢\u0006\u0004\b \u0010\u001eJ\u000f\u0010!\u001a\u00020\rH\u0002¢\u0006\u0004\b!\u0010\u000fJ\u0017\u0010#\u001a\u00020\r2\u0006\u0010\"\u001a\u00020\u0004H\u0002¢\u0006\u0004\b#\u0010\u001eJ\u000f\u0010$\u001a\u00020\rH\u0002¢\u0006\u0004\b$\u0010\u000fJ\u0017\u0010%\u001a\u00020\u00142\u0006\u0010\u001c\u001a\u00020\u0004H\u0002¢\u0006\u0004\b%\u0010&J\u0017\u0010(\u001a\u00020'2\u0006\u0010\u001c\u001a\u00020\u0004H\u0002¢\u0006\u0004\b(\u0010)J\u001f\u0010+\u001a\u00020\r2\u0006\u0010\u001c\u001a\u00020\u00042\u0006\u0010*\u001a\u00020\nH\u0002¢\u0006\u0004\b+\u0010,J\u000f\u0010-\u001a\u00020\u0004H\u0002¢\u0006\u0004\b-\u0010.R\u0014\u0010\u0005\u001a\u00020\u00048\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0017\u0010/R\u0016\u0010\u0006\u001a\u00020\u00048\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0018\u0010/R\u001a\u00102\u001a\b\u0012\u0004\u0012\u00020\n008\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001f\u00101R\u0014\u0010\u0003\u001a\u0002038\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001a\u00104R\u001e\u00107\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\n058\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\b\u000b\u00106R\u0016\u00108\u001a\u00020\u00048\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b%\u0010/R\u0016\u00109\u001a\u00020\u00048\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\b+\u0010/R\u0016\u0010:\u001a\u00020\u00048\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\b(\u0010/¨\u0006;"}, d2 = {"Lokhttp3/internal/http2/Hpack$Reader;", "", "Lokio/Source;", "source", "", "headerTableSizeSetting", "maxDynamicTableByteCount", "<init>", "(Lokio/Source;II)V", "", "Lokhttp3/internal/http2/Header;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "()Ljava/util/List;", "", "Wwwwwwwwwwwwwwwwwwwwwwww", "()V", "firstByte", "prefixMask", "Wwwwwwwwwwwwwwwwwwwwww", "(II)I", "Lokio/ByteString;", "Wwwwwwwwwwwwwwwwwwwwwwwww", "()Lokio/ByteString;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "bytesToRecover", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(I)I", FirebaseAnalytics.Param.INDEX, "Wwwwwwwwwwwwwwwwwwwwwww", "(I)V", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Wwwwwwwwwwwwwwwwwww", "Wwwwwwwwwwwwwwwwww", "nameIndex", "Wwwwwwwwwwwwwwwwwwwww", "Wwwwwwwwwwwwwwwwwwww", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(I)Lokio/ByteString;", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwww", "(I)Z", "entry", "Wwwwwwwwwwwwwwwwwwwwwwwwwwww", "(ILokhttp3/internal/http2/Header;)V", "Wwwwwwwwwwwwwwwwwwwwwwwwww", "()I", "I", "", "Ljava/util/List;", "headerList", "Lokio/BufferedSource;", "Lokio/BufferedSource;", "", "[Lokhttp3/internal/http2/Header;", "dynamicTable", "nextHeaderIndex", "headerCount", "dynamicTableByteCount", OkHttp3Client.NETWORK_CLIENT_OKHTTP}, k = 1, mv = {1, 6, 0}, xi = 48)
    /* loaded from: classes7.dex */
    public static final class Reader {
        @JvmField

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public int f12773Wwwwwwwwwwwwwwwwwwwwwwwwwww;
        @JvmField

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public int f12774Wwwwwwwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public int f12775Wwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        @JvmField
        @NotNull

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public Header[] f12776Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        @NotNull

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final BufferedSource f12777Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        @NotNull

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final List<Header> f12778Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public int f12779Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final int f12780Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        @JvmOverloads
        public Reader(@NotNull Source source, int i, int i2) {
            this.f12780Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = i;
            this.f12779Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = i2;
            this.f12778Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new ArrayList();
            this.f12777Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = Okio.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(source);
            Header[] headerArr = new Header[8];
            this.f12776Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww = headerArr;
            this.f12775Wwwwwwwwwwwwwwwwwwwwwwwwwwwww = headerArr.length - 1;
        }

        public final void Wwwwwwwwwwwwwwwwww() throws IOException {
            this.f12778Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.add(new Header(Hpack.INSTANCE.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwww()), Wwwwwwwwwwwwwwwwwwwwwwwww()));
        }

        public final void Wwwwwwwwwwwwwwwwwww(int i) throws IOException {
            this.f12778Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.add(new Header(Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(i), Wwwwwwwwwwwwwwwwwwwwwwwww()));
        }

        public final void Wwwwwwwwwwwwwwwwwwww() throws IOException {
            Wwwwwwwwwwwwwwwwwwwwwwwwwwww(-1, new Header(Hpack.INSTANCE.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwww()), Wwwwwwwwwwwwwwwwwwwwwwwww()));
        }

        public final void Wwwwwwwwwwwwwwwwwwwww(int i) throws IOException {
            Wwwwwwwwwwwwwwwwwwwwwwwwwwww(-1, new Header(Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(i), Wwwwwwwwwwwwwwwwwwwwwwwww()));
        }

        public final int Wwwwwwwwwwwwwwwwwwwwww(int i, int i2) throws IOException {
            int i3 = i & i2;
            if (i3 < i2) {
                return i3;
            }
            int i4 = 0;
            while (true) {
                int Wwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwww();
                if ((Wwwwwwwwwwwwwwwwwwwwwwwwww2 & 128) != 0) {
                    i2 += (Wwwwwwwwwwwwwwwwwwwwwwwwww2 & 127) << i4;
                    i4 += 7;
                } else {
                    return i2 + (Wwwwwwwwwwwwwwwwwwwwwwwwww2 << i4);
                }
            }
        }

        public final void Wwwwwwwwwwwwwwwwwwwwwww(int i) throws IOException {
            if (Wwwwwwwwwwwwwwwwwwwwwwwwwww(i)) {
                this.f12778Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.add(Hpack.INSTANCE.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()[i]);
                return;
            }
            int Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(i - Hpack.INSTANCE.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().length);
            if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 >= 0) {
                Header[] headerArr = this.f12776Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
                if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 < headerArr.length) {
                    this.f12778Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.add(headerArr[Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2]);
                    return;
                }
            }
            throw new IOException(Intrinsics.stringPlus("Header index too large ", Integer.valueOf(i + 1)));
        }

        public final void Wwwwwwwwwwwwwwwwwwwwwwww() throws IOException {
            while (!this.f12777Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwww()) {
                int Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Util.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.f12777Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.readByte(), 255);
                if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 != 128) {
                    if ((Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 & 128) == 128) {
                        Wwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2, 127) - 1);
                    } else if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 == 64) {
                        Wwwwwwwwwwwwwwwwwwww();
                    } else if ((Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 & 64) == 64) {
                        Wwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2, 63) - 1);
                    } else if ((Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 & 32) == 32) {
                        int Wwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2, 31);
                        this.f12779Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = Wwwwwwwwwwwwwwwwwwwwww2;
                        if (Wwwwwwwwwwwwwwwwwwwwww2 >= 0 && Wwwwwwwwwwwwwwwwwwwwww2 <= this.f12780Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww) {
                            Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
                        } else {
                            throw new IOException(Intrinsics.stringPlus("Invalid dynamic table size update ", Integer.valueOf(this.f12779Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww)));
                        }
                    } else if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 != 16 && Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 != 0) {
                        Wwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2, 15) - 1);
                    } else {
                        Wwwwwwwwwwwwwwwwww();
                    }
                } else {
                    throw new IOException("index == 0");
                }
            }
        }

        @NotNull
        public final ByteString Wwwwwwwwwwwwwwwwwwwwwwwww() throws IOException {
            boolean z;
            int Wwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwww();
            if ((Wwwwwwwwwwwwwwwwwwwwwwwwww2 & 128) == 128) {
                z = true;
            } else {
                z = false;
            }
            long Wwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwww2, 127);
            if (z) {
                Buffer buffer = new Buffer();
                Huffman.INSTANCE.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.f12777Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, Wwwwwwwwwwwwwwwwwwwwww2, buffer);
                return buffer.Wwwwwww();
            }
            return this.f12777Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwww2);
        }

        public final int Wwwwwwwwwwwwwwwwwwwwwwwwww() throws IOException {
            return Util.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.f12777Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.readByte(), 255);
        }

        public final boolean Wwwwwwwwwwwwwwwwwwwwwwwwwww(int i) {
            if (i >= 0 && i <= Hpack.INSTANCE.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().length - 1) {
                return true;
            }
            return false;
        }

        public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwww(int i, Header header) {
            this.f12778Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.add(header);
            int i2 = header.f12768Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
            if (i != -1) {
                i2 -= this.f12776Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww[Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(i)].f12768Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
            }
            int i3 = this.f12779Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
            if (i2 > i3) {
                Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
                return;
            }
            int Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww((this.f12773Wwwwwwwwwwwwwwwwwwwwwwwwwww + i2) - i3);
            if (i == -1) {
                int i4 = this.f12774Wwwwwwwwwwwwwwwwwwwwwwwwwwww + 1;
                Header[] headerArr = this.f12776Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
                if (i4 > headerArr.length) {
                    Header[] headerArr2 = new Header[headerArr.length * 2];
                    System.arraycopy(headerArr, 0, headerArr2, headerArr.length, headerArr.length);
                    this.f12775Wwwwwwwwwwwwwwwwwwwwwwwwwwwww = this.f12776Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww.length - 1;
                    this.f12776Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww = headerArr2;
                }
                int i5 = this.f12775Wwwwwwwwwwwwwwwwwwwwwwwwwwwww;
                this.f12775Wwwwwwwwwwwwwwwwwwwwwwwwwwwww = i5 - 1;
                this.f12776Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww[i5] = header;
                this.f12774Wwwwwwwwwwwwwwwwwwwwwwwwwwww++;
            } else {
                this.f12776Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww[i + Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(i) + Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2] = header;
            }
            this.f12773Wwwwwwwwwwwwwwwwwwwwwwwwwww += i2;
        }

        public final ByteString Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(int i) throws IOException {
            if (Wwwwwwwwwwwwwwwwwwwwwwwwwww(i)) {
                return Hpack.INSTANCE.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()[i].f12770Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
            }
            int Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(i - Hpack.INSTANCE.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().length);
            if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 >= 0) {
                Header[] headerArr = this.f12776Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
                if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 < headerArr.length) {
                    return headerArr[Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2].f12770Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
                }
            }
            throw new IOException(Intrinsics.stringPlus("Header index too large ", Integer.valueOf(i + 1)));
        }

        @NotNull
        public final List<Header> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            List<Header> list = CollectionsKt.toList(this.f12778Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
            this.f12778Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.clear();
            return list;
        }

        public final int Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(int i) {
            int i2;
            int i3 = 0;
            if (i > 0) {
                int length = this.f12776Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww.length;
                while (true) {
                    length--;
                    i2 = this.f12775Wwwwwwwwwwwwwwwwwwwwwwwwwwwww;
                    if (length < i2 || i <= 0) {
                        break;
                    }
                    int i4 = this.f12776Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww[length].f12768Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
                    i -= i4;
                    this.f12773Wwwwwwwwwwwwwwwwwwwwwwwwwww -= i4;
                    this.f12774Wwwwwwwwwwwwwwwwwwwwwwwwwwww--;
                    i3++;
                }
                Header[] headerArr = this.f12776Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
                System.arraycopy(headerArr, i2 + 1, headerArr, i2 + 1 + i3, this.f12774Wwwwwwwwwwwwwwwwwwwwwwwwwwww);
                this.f12775Wwwwwwwwwwwwwwwwwwwwwwwwwwwww += i3;
            }
            return i3;
        }

        public final int Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(int i) {
            return this.f12775Wwwwwwwwwwwwwwwwwwwwwwwwwwwww + 1 + i;
        }

        public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            ArraysKt.fill$default(this.f12776Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww, (Object) null, 0, 0, 6, (Object) null);
            this.f12775Wwwwwwwwwwwwwwwwwwwwwwwwwwwww = this.f12776Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww.length - 1;
            this.f12774Wwwwwwwwwwwwwwwwwwwwwwwwwwww = 0;
            this.f12773Wwwwwwwwwwwwwwwwwwwwwwwwwww = 0;
        }

        public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            int i = this.f12779Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
            int i2 = this.f12773Wwwwwwwwwwwwwwwwwwwwwwwwwww;
            if (i < i2) {
                if (i == 0) {
                    Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
                } else {
                    Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(i2 - i);
                }
            }
        }

        public /* synthetic */ Reader(Source source, int i, int i2, int i3, DefaultConstructorMarker defaultConstructorMarker) {
            this(source, i, (i3 & 4) != 0 ? i : i2);
        }
    }

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0014\n\u0002\u0010\u0011\n\u0002\b\b\u0018\u00002\u00020\u0001B%\b\u0007\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\tJ\u001b\u0010\u000e\u001a\u00020\r2\f\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u000b0\n¢\u0006\u0004\b\u000e\u0010\u000fJ%\u0010\u0013\u001a\u00020\r2\u0006\u0010\u0010\u001a\u00020\u00022\u0006\u0010\u0011\u001a\u00020\u00022\u0006\u0010\u0012\u001a\u00020\u0002¢\u0006\u0004\b\u0013\u0010\u0014J\u0015\u0010\u0017\u001a\u00020\r2\u0006\u0010\u0016\u001a\u00020\u0015¢\u0006\u0004\b\u0017\u0010\u0018J\u0015\u0010\u0019\u001a\u00020\r2\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0019\u0010\u001aJ\u000f\u0010\u001b\u001a\u00020\rH\u0002¢\u0006\u0004\b\u001b\u0010\u001cJ\u0017\u0010\u001e\u001a\u00020\u00022\u0006\u0010\u001d\u001a\u00020\u0002H\u0002¢\u0006\u0004\b\u001e\u0010\u001fJ\u0017\u0010!\u001a\u00020\r2\u0006\u0010 \u001a\u00020\u000bH\u0002¢\u0006\u0004\b!\u0010\"J\u000f\u0010#\u001a\u00020\rH\u0002¢\u0006\u0004\b#\u0010\u001cR\u0016\u0010\u0003\u001a\u00020\u00028\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\b#\u0010$R\u0014\u0010\u0005\u001a\u00020\u00048\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001b\u0010%R\u0014\u0010\u0007\u001a\u00020\u00068\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001e\u0010&R\u0016\u0010'\u001a\u00020\u00028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b!\u0010$R\u0016\u0010(\u001a\u00020\u00048\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0019\u0010%R\u0016\u0010)\u001a\u00020\u00028\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\b\u0017\u0010$R\u001e\u0010,\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u000b0*8\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\b\u000e\u0010+R\u0016\u0010-\u001a\u00020\u00028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0013\u0010$R\u0016\u0010/\u001a\u00020\u00028\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\b.\u0010$R\u0016\u00101\u001a\u00020\u00028\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\b0\u0010$¨\u00062"}, d2 = {"Lokhttp3/internal/http2/Hpack$Writer;", "", "", "headerTableSizeSetting", "", "useCompression", "Lokio/Buffer;", "out", "<init>", "(IZLokio/Buffer;)V", "", "Lokhttp3/internal/http2/Header;", "headerBlock", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Ljava/util/List;)V", "value", "prefixMask", "bits", "Wwwwwwwwwwwwwwwwwwwwwwwwwww", "(III)V", "Lokio/ByteString;", "data", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lokio/ByteString;)V", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(I)V", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "()V", "bytesToRecover", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(I)I", "entry", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lokhttp3/internal/http2/Header;)V", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "I", "Z", "Lokio/Buffer;", "smallestHeaderTableSizeSetting", "emitDynamicTableSizeUpdate", "maxDynamicTableByteCount", "", "[Lokhttp3/internal/http2/Header;", "dynamicTable", "nextHeaderIndex", "Wwwwwwwwwwwwwwwwwwwwwwwwww", "headerCount", "Wwwwwwwwwwwwwwwwwwwwwwwww", "dynamicTableByteCount", OkHttp3Client.NETWORK_CLIENT_OKHTTP}, k = 1, mv = {1, 6, 0}, xi = 48)
    /* loaded from: classes7.dex */
    public static final class Writer {
        @JvmField

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public int f12781Wwwwwwwwwwwwwwwwwwwwwwwww;
        @JvmField

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public int f12782Wwwwwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public int f12783Wwwwwwwwwwwwwwwwwwwwwwwwwww;
        @JvmField
        @NotNull

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public Header[] f12784Wwwwwwwwwwwwwwwwwwwwwwwwwwww;
        @JvmField

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public int f12785Wwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public boolean f12786Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public int f12787Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        @NotNull

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final Buffer f12788Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final boolean f12789Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        @JvmField

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public int f12790Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        @JvmOverloads
        public Writer(int i, boolean z, @NotNull Buffer buffer) {
            this.f12790Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = i;
            this.f12789Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = z;
            this.f12788Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = buffer;
            this.f12787Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = Integer.MAX_VALUE;
            this.f12785Wwwwwwwwwwwwwwwwwwwwwwwwwwwww = i;
            Header[] headerArr = new Header[8];
            this.f12784Wwwwwwwwwwwwwwwwwwwwwwwwwwww = headerArr;
            this.f12783Wwwwwwwwwwwwwwwwwwwwwwwwwww = headerArr.length - 1;
        }

        public final void Wwwwwwwwwwwwwwwwwwwwwwwwwww(int i, int i2, int i3) {
            if (i < i2) {
                this.f12788Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.writeByte(i | i3);
                return;
            }
            this.f12788Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.writeByte(i3 | i2);
            int i4 = i - i2;
            while (i4 >= 128) {
                this.f12788Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.writeByte(128 | (i4 & 127));
                i4 >>>= 7;
            }
            this.f12788Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.writeByte(i4);
        }

        public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull List<Header> list) throws IOException {
            int i;
            int i2;
            if (this.f12786Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww) {
                int i3 = this.f12787Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
                if (i3 < this.f12785Wwwwwwwwwwwwwwwwwwwwwwwwwwwww) {
                    Wwwwwwwwwwwwwwwwwwwwwwwwwww(i3, 31, 32);
                }
                this.f12786Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww = false;
                this.f12787Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = Integer.MAX_VALUE;
                Wwwwwwwwwwwwwwwwwwwwwwwwwww(this.f12785Wwwwwwwwwwwwwwwwwwwwwwwwwwwww, 31, 32);
            }
            int size = list.size();
            int i4 = 0;
            while (i4 < size) {
                int i5 = i4 + 1;
                Header header = list.get(i4);
                ByteString asciiLowercase = header.f12770Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.toAsciiLowercase();
                ByteString byteString = header.f12769Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
                Hpack hpack = Hpack.INSTANCE;
                Integer num = hpack.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().get(asciiLowercase);
                if (num != null) {
                    int intValue = num.intValue();
                    i2 = intValue + 1;
                    if (2 <= i2 && i2 < 8) {
                        if (Intrinsics.areEqual(hpack.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()[intValue].f12769Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, byteString)) {
                            i = i2;
                        } else if (Intrinsics.areEqual(hpack.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()[i2].f12769Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, byteString)) {
                            i = i2;
                            i2 = intValue + 2;
                        }
                    }
                    i = i2;
                    i2 = -1;
                } else {
                    i = -1;
                    i2 = -1;
                }
                if (i2 == -1) {
                    int i6 = this.f12783Wwwwwwwwwwwwwwwwwwwwwwwwwww + 1;
                    int length = this.f12784Wwwwwwwwwwwwwwwwwwwwwwwwwwww.length;
                    while (true) {
                        if (i6 >= length) {
                            break;
                        }
                        int i7 = i6 + 1;
                        if (Intrinsics.areEqual(this.f12784Wwwwwwwwwwwwwwwwwwwwwwwwwwww[i6].f12770Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, asciiLowercase)) {
                            if (Intrinsics.areEqual(this.f12784Wwwwwwwwwwwwwwwwwwwwwwwwwwww[i6].f12769Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, byteString)) {
                                i2 = Hpack.INSTANCE.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().length + (i6 - this.f12783Wwwwwwwwwwwwwwwwwwwwwwwwwww);
                                break;
                            } else if (i == -1) {
                                i = Hpack.INSTANCE.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().length + (i6 - this.f12783Wwwwwwwwwwwwwwwwwwwwwwwwwww);
                            }
                        }
                        i6 = i7;
                    }
                }
                if (i2 != -1) {
                    Wwwwwwwwwwwwwwwwwwwwwwwwwww(i2, 127, 128);
                } else if (i == -1) {
                    this.f12788Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.writeByte(64);
                    Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(asciiLowercase);
                    Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(byteString);
                    Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(header);
                } else if (asciiLowercase.startsWith(Header.f12767Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww) && !Intrinsics.areEqual(Header.f12762Wwwwwwwwwwwwwwwwwwwwwwwwww, asciiLowercase)) {
                    Wwwwwwwwwwwwwwwwwwwwwwwwwww(i, 15, 0);
                    Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(byteString);
                } else {
                    Wwwwwwwwwwwwwwwwwwwwwwwwwww(i, 63, 64);
                    Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(byteString);
                    Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(header);
                }
                i4 = i5;
            }
        }

        public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull ByteString byteString) throws IOException {
            if (this.f12789Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww) {
                Huffman huffman = Huffman.INSTANCE;
                if (huffman.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(byteString) < byteString.size()) {
                    Buffer buffer = new Buffer();
                    huffman.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(byteString, buffer);
                    ByteString Wwwwwww2 = buffer.Wwwwwww();
                    Wwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwww2.size(), 127, 128);
                    this.f12788Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwww(Wwwwwww2);
                    return;
                }
            }
            Wwwwwwwwwwwwwwwwwwwwwwwwwww(byteString.size(), 127, 0);
            this.f12788Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwww(byteString);
        }

        public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(int i) {
            this.f12790Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = i;
            int min = Math.min(i, 16384);
            int i2 = this.f12785Wwwwwwwwwwwwwwwwwwwwwwwwwwwww;
            if (i2 == min) {
                return;
            }
            if (min < i2) {
                this.f12787Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = Math.min(this.f12787Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, min);
            }
            this.f12786Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww = true;
            this.f12785Wwwwwwwwwwwwwwwwwwwwwwwwwwwww = min;
            Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        }

        public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Header header) {
            int i = header.f12768Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
            int i2 = this.f12785Wwwwwwwwwwwwwwwwwwwwwwwwwwwww;
            if (i > i2) {
                Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
                return;
            }
            Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww((this.f12781Wwwwwwwwwwwwwwwwwwwwwwwww + i) - i2);
            int i3 = this.f12782Wwwwwwwwwwwwwwwwwwwwwwwwww + 1;
            Header[] headerArr = this.f12784Wwwwwwwwwwwwwwwwwwwwwwwwwwww;
            if (i3 > headerArr.length) {
                Header[] headerArr2 = new Header[headerArr.length * 2];
                System.arraycopy(headerArr, 0, headerArr2, headerArr.length, headerArr.length);
                this.f12783Wwwwwwwwwwwwwwwwwwwwwwwwwww = this.f12784Wwwwwwwwwwwwwwwwwwwwwwwwwwww.length - 1;
                this.f12784Wwwwwwwwwwwwwwwwwwwwwwwwwwww = headerArr2;
            }
            int i4 = this.f12783Wwwwwwwwwwwwwwwwwwwwwwwwwww;
            this.f12783Wwwwwwwwwwwwwwwwwwwwwwwwwww = i4 - 1;
            this.f12784Wwwwwwwwwwwwwwwwwwwwwwwwwwww[i4] = header;
            this.f12782Wwwwwwwwwwwwwwwwwwwwwwwwww++;
            this.f12781Wwwwwwwwwwwwwwwwwwwwwwwww += i;
        }

        public final int Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(int i) {
            int i2;
            int i3 = 0;
            if (i > 0) {
                int length = this.f12784Wwwwwwwwwwwwwwwwwwwwwwwwwwww.length;
                while (true) {
                    length--;
                    i2 = this.f12783Wwwwwwwwwwwwwwwwwwwwwwwwwww;
                    if (length < i2 || i <= 0) {
                        break;
                    }
                    int i4 = this.f12784Wwwwwwwwwwwwwwwwwwwwwwwwwwww[length].f12768Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
                    i -= i4;
                    this.f12781Wwwwwwwwwwwwwwwwwwwwwwwww -= i4;
                    this.f12782Wwwwwwwwwwwwwwwwwwwwwwwwww--;
                    i3++;
                }
                Header[] headerArr = this.f12784Wwwwwwwwwwwwwwwwwwwwwwwwwwww;
                System.arraycopy(headerArr, i2 + 1, headerArr, i2 + 1 + i3, this.f12782Wwwwwwwwwwwwwwwwwwwwwwwwww);
                Header[] headerArr2 = this.f12784Wwwwwwwwwwwwwwwwwwwwwwwwwwww;
                int i5 = this.f12783Wwwwwwwwwwwwwwwwwwwwwwwwwww;
                Arrays.fill(headerArr2, i5 + 1, i5 + 1 + i3, (Object) null);
                this.f12783Wwwwwwwwwwwwwwwwwwwwwwwwwww += i3;
            }
            return i3;
        }

        public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            ArraysKt.fill$default(this.f12784Wwwwwwwwwwwwwwwwwwwwwwwwwwww, (Object) null, 0, 0, 6, (Object) null);
            this.f12783Wwwwwwwwwwwwwwwwwwwwwwwwwww = this.f12784Wwwwwwwwwwwwwwwwwwwwwwwwwwww.length - 1;
            this.f12782Wwwwwwwwwwwwwwwwwwwwwwwwww = 0;
            this.f12781Wwwwwwwwwwwwwwwwwwwwwwwww = 0;
        }

        public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            int i = this.f12785Wwwwwwwwwwwwwwwwwwwwwwwwwwwww;
            int i2 = this.f12781Wwwwwwwwwwwwwwwwwwwwwwwww;
            if (i < i2) {
                if (i == 0) {
                    Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
                } else {
                    Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(i2 - i);
                }
            }
        }

        public /* synthetic */ Writer(int i, boolean z, Buffer buffer, int i2, DefaultConstructorMarker defaultConstructorMarker) {
            this((i2 & 1) != 0 ? 4096 : i, (i2 & 2) != 0 ? true : z, buffer);
        }
    }
}
