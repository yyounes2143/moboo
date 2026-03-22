package okhttp3.internal.http;

import com.unity3d.services.core.network.core.OkHttp3Client;
import java.io.EOFException;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.JvmName;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import okhttp3.Challenge;
import okhttp3.Cookie;
import okhttp3.CookieJar;
import okhttp3.Headers;
import okhttp3.HttpUrl;
import okhttp3.Response;
import okhttp3.internal.Util;
import okhttp3.internal.platform.Platform;
import okio.Buffer;
import okio.ByteString;
import org.jetbrains.annotations.NotNull;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000T\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010!\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u0005\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\u001a\u001f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003*\u00020\u00002\u0006\u0010\u0002\u001a\u00020\u0001¢\u0006\u0004\b\u0005\u0010\u0006\u001a!\u0010\u000b\u001a\u00020\n*\u00020\u00072\f\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00040\bH\u0002¢\u0006\u0004\b\u000b\u0010\f\u001a\u0013\u0010\u000e\u001a\u00020\r*\u00020\u0007H\u0002¢\u0006\u0004\b\u000e\u0010\u000f\u001a\u001b\u0010\u0012\u001a\u00020\r*\u00020\u00072\u0006\u0010\u0011\u001a\u00020\u0010H\u0002¢\u0006\u0004\b\u0012\u0010\u0013\u001a\u0015\u0010\u0014\u001a\u0004\u0018\u00010\u0001*\u00020\u0007H\u0002¢\u0006\u0004\b\u0014\u0010\u0015\u001a\u0015\u0010\u0016\u001a\u0004\u0018\u00010\u0001*\u00020\u0007H\u0002¢\u0006\u0004\b\u0016\u0010\u0015\u001a!\u0010\u001b\u001a\u00020\n*\u00020\u00172\u0006\u0010\u0019\u001a\u00020\u00182\u0006\u0010\u001a\u001a\u00020\u0000¢\u0006\u0004\b\u001b\u0010\u001c\u001a\u0011\u0010\u001e\u001a\u00020\r*\u00020\u001d¢\u0006\u0004\b\u001e\u0010\u001f\"\u0014\u0010\"\u001a\u00020 8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0005\u0010!\"\u0014\u0010#\u001a\u00020 8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001e\u0010!¨\u0006$"}, d2 = {"Lokhttp3/Headers;", "", "headerName", "", "Lokhttp3/Challenge;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lokhttp3/Headers;Ljava/lang/String;)Ljava/util/List;", "Lokio/Buffer;", "", "result", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lokio/Buffer;Ljava/util/List;)V", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lokio/Buffer;)Z", "", "prefix", "Wwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lokio/Buffer;B)Z", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lokio/Buffer;)Ljava/lang/String;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Lokhttp3/CookieJar;", "Lokhttp3/HttpUrl;", "url", "headers", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lokhttp3/CookieJar;Lokhttp3/HttpUrl;Lokhttp3/Headers;)V", "Lokhttp3/Response;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lokhttp3/Response;)Z", "Lokio/ByteString;", "Lokio/ByteString;", "QUOTED_STRING_DELIMITERS", "TOKEN_DELIMITERS", OkHttp3Client.NETWORK_CLIENT_OKHTTP}, k = 2, mv = {1, 6, 0}, xi = 48)
@JvmName(name = "HttpHeaders")
/* loaded from: classes7.dex */
public final class HttpHeaders {
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final ByteString f12718Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final ByteString f12719Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    static {
        ByteString.Companion companion = ByteString.Companion;
        f12719Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww("\"\\");
        f12718Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww("\t ,=");
    }

    public static final boolean Wwwwwwwwwwwwwwwwwwwwwwwwwww(Buffer buffer, byte b) {
        if (!buffer.Wwwwwwwwwwww() && buffer.Kkkkkkkkkkkkkkkk(0L) == b) {
            return true;
        }
        return false;
    }

    public static final boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwww(Buffer buffer) {
        boolean z = false;
        while (!buffer.Wwwwwwwwwwww()) {
            byte Kkkkkkkkkkkkkkkk2 = buffer.Kkkkkkkkkkkkkkkk(0L);
            if (Kkkkkkkkkkkkkkkk2 == 44) {
                buffer.readByte();
                z = true;
            } else if (Kkkkkkkkkkkkkkkk2 != 32 && Kkkkkkkkkkkkkkkk2 != 9) {
                break;
            } else {
                buffer.readByte();
            }
        }
        return z;
    }

    public static final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull CookieJar cookieJar, @NotNull HttpUrl httpUrl, @NotNull Headers headers) {
        if (cookieJar != CookieJar.f12290Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww) {
            List<Cookie> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Cookie.Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(httpUrl, headers);
            if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.isEmpty()) {
                return;
            }
            cookieJar.saveFromResponse(httpUrl, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2);
        }
    }

    public static final String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Buffer buffer) {
        long Kkkkkkkkkkkk2 = buffer.Kkkkkkkkkkkk(f12718Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
        if (Kkkkkkkkkkkk2 == -1) {
            Kkkkkkkkkkkk2 = buffer.Kk();
        }
        if (Kkkkkkkkkkkk2 != 0) {
            return buffer.Wwwwwwwwwwwwwwww(Kkkkkkkkkkkk2);
        }
        return null;
    }

    public static final String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Buffer buffer) throws EOFException {
        if (buffer.readByte() == 34) {
            Buffer buffer2 = new Buffer();
            while (true) {
                long Kkkkkkkkkkkk2 = buffer.Kkkkkkkkkkkk(f12719Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
                if (Kkkkkkkkkkkk2 == -1) {
                    return null;
                }
                if (buffer.Kkkkkkkkkkkkkkkk(Kkkkkkkkkkkk2) == 34) {
                    buffer2.Wwwwwwwwwwwwwwwwwwwwwwwww(buffer, Kkkkkkkkkkkk2);
                    buffer.readByte();
                    return buffer2.Kkkkk();
                } else if (buffer.Kk() == Kkkkkkkkkkkk2 + 1) {
                    return null;
                } else {
                    buffer2.Wwwwwwwwwwwwwwwwwwwwwwwww(buffer, Kkkkkkkkkkkk2);
                    buffer.readByte();
                    buffer2.Wwwwwwwwwwwwwwwwwwwwwwwww(buffer, 1L);
                }
            }
        } else {
            throw new IllegalArgumentException("Failed requirement.");
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:59:0x0076, code lost:
        continue;
     */
    /* JADX WARN: Code restructure failed: missing block: B:60:0x0076, code lost:
        continue;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(okio.Buffer r7, java.util.List<okhttp3.Challenge> r8) throws java.io.EOFException {
        /*
            r0 = 0
        L1:
            r1 = r0
        L2:
            if (r1 != 0) goto Lf
            Wwwwwwwwwwwwwwwwwwwwwwwwwwww(r7)
            java.lang.String r1 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(r7)
            if (r1 != 0) goto Lf
            goto Lb4
        Lf:
            boolean r2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwww(r7)
            java.lang.String r3 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(r7)
            if (r3 != 0) goto L2e
            boolean r7 = r7.Wwwwwwwwwwww()
            if (r7 != 0) goto L21
            goto Lb4
        L21:
            okhttp3.Challenge r7 = new okhttp3.Challenge
            java.util.Map r0 = kotlin.collections.MapsKt.emptyMap()
            r7.<init>(r1, r0)
            r8.add(r7)
            return
        L2e:
            r4 = 61
            int r5 = okhttp3.internal.Util.Kkkkkkkkkkkkkkkkkkkkk(r7, r4)
            boolean r6 = Wwwwwwwwwwwwwwwwwwwwwwwwwwww(r7)
            if (r2 != 0) goto L59
            if (r6 != 0) goto L42
            boolean r2 = r7.Wwwwwwwwwwww()
            if (r2 == 0) goto L59
        L42:
            okhttp3.Challenge r2 = new okhttp3.Challenge
            java.lang.String r4 = "="
            java.lang.String r4 = kotlin.text.StringsKt.repeat(r4, r5)
            java.lang.String r3 = kotlin.jvm.internal.Intrinsics.stringPlus(r3, r4)
            java.util.Map r3 = java.util.Collections.singletonMap(r0, r3)
            r2.<init>(r1, r3)
            r8.add(r2)
            goto L1
        L59:
            java.util.LinkedHashMap r2 = new java.util.LinkedHashMap
            r2.<init>()
            int r6 = okhttp3.internal.Util.Kkkkkkkkkkkkkkkkkkkkk(r7, r4)
            int r5 = r5 + r6
        L63:
            if (r3 != 0) goto L74
            java.lang.String r3 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(r7)
            boolean r5 = Wwwwwwwwwwwwwwwwwwwwwwwwwwww(r7)
            if (r5 == 0) goto L70
            goto L76
        L70:
            int r5 = okhttp3.internal.Util.Kkkkkkkkkkkkkkkkkkkkk(r7, r4)
        L74:
            if (r5 != 0) goto L80
        L76:
            okhttp3.Challenge r4 = new okhttp3.Challenge
            r4.<init>(r1, r2)
            r8.add(r4)
            r1 = r3
            goto L2
        L80:
            r6 = 1
            if (r5 <= r6) goto L84
            goto Lb4
        L84:
            boolean r6 = Wwwwwwwwwwwwwwwwwwwwwwwwwwww(r7)
            if (r6 == 0) goto L8b
            goto Lb4
        L8b:
            r6 = 34
            boolean r6 = Wwwwwwwwwwwwwwwwwwwwwwwwwww(r7, r6)
            if (r6 == 0) goto L98
            java.lang.String r6 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(r7)
            goto L9c
        L98:
            java.lang.String r6 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(r7)
        L9c:
            if (r6 != 0) goto L9f
            goto Lb4
        L9f:
            java.lang.Object r3 = r2.put(r3, r6)
            java.lang.String r3 = (java.lang.String) r3
            if (r3 == 0) goto La8
            goto Lb4
        La8:
            boolean r3 = Wwwwwwwwwwwwwwwwwwwwwwwwwwww(r7)
            if (r3 != 0) goto Lb5
            boolean r3 = r7.Wwwwwwwwwwww()
            if (r3 != 0) goto Lb5
        Lb4:
            return
        Lb5:
            r3 = r0
            goto L63
        */
        throw new UnsupportedOperationException("Method not decompiled: okhttp3.internal.http.HttpHeaders.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(okio.Buffer, java.util.List):void");
    }

    public static final boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull Response response) {
        if (Intrinsics.areEqual(response.Kkkkkkkk().Wwwwwwwwwwwwwwwwwwwwwwwwwww(), "HEAD")) {
            return false;
        }
        int Kkkkkkkkkkkkkkkkkkkkkk2 = response.Kkkkkkkkkkkkkkkkkkkkkk();
        if (((Kkkkkkkkkkkkkkkkkkkkkk2 >= 100 && Kkkkkkkkkkkkkkkkkkkkkk2 < 200) || Kkkkkkkkkkkkkkkkkkkkkk2 == 204 || Kkkkkkkkkkkkkkkkkkkkkk2 == 304) && Util.Wwwwwwwwwwwww(response) == -1 && !StringsKt.equals("chunked", Response.Kkkkkkkkkkkkkkkkk(response, com.google.common.net.HttpHeaders.TRANSFER_ENCODING, null, 2, null), true)) {
            return false;
        }
        return true;
    }

    @NotNull
    public static final List<Challenge> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull Headers headers, @NotNull String str) {
        ArrayList arrayList = new ArrayList();
        int size = headers.size();
        int i = 0;
        while (i < size) {
            int i2 = i + 1;
            if (StringsKt.equals(str, headers.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(i), true)) {
                try {
                    Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(new Buffer().Wwwwwwwwwwwwwwwwwwwwwwwwww(headers.Wwwwwwwwwwwwwwwwwwwwwwwwww(i)), arrayList);
                } catch (EOFException e) {
                    Platform.Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwwww("Unable to parse challenge", 5, e);
                }
            }
            i = i2;
        }
        return arrayList;
    }
}
