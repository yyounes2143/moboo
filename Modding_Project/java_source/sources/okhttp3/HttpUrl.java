package okhttp3;

import androidx.media3.extractor.text.ttml.TtmlNode;
import com.applovin.sdk.AppLovinEventParameters;
import com.google.common.base.Ascii;
import com.tencent.thumbplayer.tcmedia.core.common.TPCodecParamers;
import com.unity3d.services.core.network.core.OkHttp3Client;
import java.net.MalformedURLException;
import java.net.URI;
import java.net.URISyntaxException;
import java.net.URL;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.Collections;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.collections.SetsKt;
import kotlin.jvm.JvmName;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.IntProgression;
import kotlin.ranges.RangesKt;
import kotlin.text.Regex;
import kotlin.text.StringsKt;
import kotlin.text.Typography;
import kotlinx.serialization.json.internal.AbstractJsonLexerKt;
import okhttp3.internal.HostnamesKt;
import okhttp3.internal.Util;
import okio.Buffer;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000F\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010\b\n\u0000\n\u0002\u0010 \n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b \n\u0002\u0010\"\n\u0002\b\u0007\u0018\u0000 J2\u00020\u0001:\u0002KJBc\b\u0000\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0002\u0012\u0006\u0010\b\u001a\u00020\u0007\u0012\f\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u00020\t\u0012\u0010\u0010\u000b\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\u0002\u0018\u00010\t\u0012\b\u0010\f\u001a\u0004\u0018\u00010\u0002\u0012\u0006\u0010\r\u001a\u00020\u0002¢\u0006\u0004\b\u000e\u0010\u000fJ\u000f\u0010\u0011\u001a\u00020\u0010H\u0007¢\u0006\u0004\b\u0011\u0010\u0012J\u000f\u0010\u0014\u001a\u00020\u0013H\u0007¢\u0006\u0004\b\u0014\u0010\u0015J\u0017\u0010\u0017\u001a\u0004\u0018\u00010\u00022\u0006\u0010\u0016\u001a\u00020\u0002¢\u0006\u0004\b\u0017\u0010\u0018J\r\u0010\u0019\u001a\u00020\u0002¢\u0006\u0004\b\u0019\u0010\u001aJ\u0017\u0010\u001c\u001a\u0004\u0018\u00010\u00002\u0006\u0010\u001b\u001a\u00020\u0002¢\u0006\u0004\b\u001c\u0010\u001dJ\r\u0010\u001f\u001a\u00020\u001e¢\u0006\u0004\b\u001f\u0010 J\u0017\u0010!\u001a\u0004\u0018\u00010\u001e2\u0006\u0010\u001b\u001a\u00020\u0002¢\u0006\u0004\b!\u0010\"J\u001a\u0010%\u001a\u00020$2\b\u0010#\u001a\u0004\u0018\u00010\u0001H\u0096\u0002¢\u0006\u0004\b%\u0010&J\u000f\u0010'\u001a\u00020\u0007H\u0016¢\u0006\u0004\b'\u0010(J\u000f\u0010)\u001a\u00020\u0002H\u0016¢\u0006\u0004\b)\u0010\u001aR\u0017\u0010\u0003\u001a\u00020\u00028\u0007¢\u0006\f\n\u0004\b*\u0010+\u001a\u0004\b,\u0010\u001aR\u0017\u0010\u0004\u001a\u00020\u00028\u0007¢\u0006\f\n\u0004\b-\u0010+\u001a\u0004\b\u0004\u0010\u001aR\u0017\u0010\u0005\u001a\u00020\u00028\u0007¢\u0006\f\n\u0004\b.\u0010+\u001a\u0004\b\u0005\u0010\u001aR\u0017\u0010\u0006\u001a\u00020\u00028\u0007¢\u0006\f\n\u0004\b/\u0010+\u001a\u0004\b0\u0010\u001aR\u0017\u0010\b\u001a\u00020\u00078\u0007¢\u0006\f\n\u0004\b1\u00102\u001a\u0004\b3\u0010(R\u001d\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u00020\t8\u0007¢\u0006\f\n\u0004\b4\u00105\u001a\u0004\b6\u00107R\u001e\u0010\u000b\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\u0002\u0018\u00010\t8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b8\u00105R\u0019\u0010\f\u001a\u0004\u0018\u00010\u00028\u0007¢\u0006\f\n\u0004\b9\u0010+\u001a\u0004\b\f\u0010\u001aR\u0014\u0010\r\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b0\u0010+R\u0017\u0010=\u001a\u00020$8\u0006¢\u0006\f\n\u0004\b:\u0010;\u001a\u0004\b:\u0010<R\u0011\u0010>\u001a\u00020\u00028G¢\u0006\u0006\u001a\u0004\b8\u0010\u001aR\u0011\u0010?\u001a\u00020\u00028G¢\u0006\u0006\u001a\u0004\b.\u0010\u001aR\u0011\u0010@\u001a\u00020\u00028G¢\u0006\u0006\u001a\u0004\b/\u0010\u001aR\u0017\u0010A\u001a\b\u0012\u0004\u0012\u00020\u00020\t8G¢\u0006\u0006\u001a\u0004\b1\u00107R\u0013\u0010B\u001a\u0004\u0018\u00010\u00028G¢\u0006\u0006\u001a\u0004\b4\u0010\u001aR\u0013\u0010D\u001a\u0004\u0018\u00010\u00028G¢\u0006\u0006\u001a\u0004\bC\u0010\u001aR\u0017\u0010H\u001a\b\u0012\u0004\u0012\u00020\u00020E8G¢\u0006\u0006\u001a\u0004\bF\u0010GR\u0013\u0010I\u001a\u0004\u0018\u00010\u00028G¢\u0006\u0006\u001a\u0004\b-\u0010\u001a¨\u0006L"}, d2 = {"Lokhttp3/HttpUrl;", "", "", "scheme", AppLovinEventParameters.USER_ACCOUNT_IDENTIFIER, "password", "host", "", "port", "", "pathSegments", "queryNamesAndValues", "fragment", "url", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V", "Ljava/net/URL;", "Wwwwwwwwwwwww", "()Ljava/net/URL;", "Ljava/net/URI;", "Wwwwwwwwwwwwww", "()Ljava/net/URI;", "name", "Wwwwwwwwwwwwwwwwwww", "(Ljava/lang/String;)Ljava/lang/String;", "Wwwwwwwwwwwwwwwww", "()Ljava/lang/String;", "link", "Wwwwwwwwwwwwwwww", "(Ljava/lang/String;)Lokhttp3/HttpUrl;", "Lokhttp3/HttpUrl$Builder;", "Wwwwwwwwwwwwwwwwwwwwwwww", "()Lokhttp3/HttpUrl$Builder;", "Wwwwwwwwwwwwwwwwwwwwwww", "(Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;", "other", "", "equals", "(Ljava/lang/Object;)Z", "hashCode", "()I", "toString", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Ljava/lang/String;", "Wwwwwwwwwwwwwww", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Wwwwwwwwwwwwwwwwwwwwwwwwww", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "I", "Wwwwwwwwwwwwwwwwwwwww", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Ljava/util/List;", "Wwwwwwwwwwwwwwwwwwwwww", "()Ljava/util/List;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwww", "Wwwwwwwwwwwwwwwwwwwwwwwwwww", "Wwwwwwwwwwwwwwwwwwwwwwwww", "Z", "()Z", "isHttps", "encodedUsername", "encodedPassword", "encodedPath", "encodedPathSegments", "encodedQuery", "Wwwwwwwwwwwwwwwwwwww", "query", "", "Wwwwwwwwwwwwwwwwww", "()Ljava/util/Set;", "queryParameterNames", "encodedFragment", "Companion", "Builder", OkHttp3Client.NETWORK_CLIENT_OKHTTP}, k = 1, mv = {1, 6, 0}, xi = 48)
/* loaded from: classes7.dex */
public final class HttpUrl {
    @NotNull
    public static final Companion Companion = new Companion(null);
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final char[] f12314Wwwwwwwwwwwwwwwwwwwwwwww = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F'};

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final boolean f12315Wwwwwwwwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final String f12316Wwwwwwwwwwwwwwwwwwwwwwwwww;
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final String f12317Wwwwwwwwwwwwwwwwwwwwwwwwwww;
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final List<String> f12318Wwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final List<String> f12319Wwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final int f12320Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final String f12321Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final String f12322Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final String f12323Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final String f12324Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u001f\n\u0002\u0018\u0002\n\u0002\b\u0017\n\u0002\u0010!\n\u0002\b\r\u0018\u0000 S2\u00020\u0001:\u0001SB\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u000f\u0010\u0005\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\u0005\u0010\u0006J'\u0010\f\u001a\u00020\u000b2\u0006\u0010\b\u001a\u00020\u00072\u0006\u0010\t\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\f\u0010\rJ7\u0010\u0012\u001a\u00020\u000b2\u0006\u0010\b\u001a\u00020\u00072\u0006\u0010\u000e\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\u00042\u0006\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u0011\u001a\u00020\u000fH\u0002¢\u0006\u0004\b\u0012\u0010\u0013J\u0017\u0010\u0014\u001a\u00020\u000f2\u0006\u0010\b\u001a\u00020\u0007H\u0002¢\u0006\u0004\b\u0014\u0010\u0015J\u0017\u0010\u0016\u001a\u00020\u000f2\u0006\u0010\b\u001a\u00020\u0007H\u0002¢\u0006\u0004\b\u0016\u0010\u0015J\u000f\u0010\u0017\u001a\u00020\u000bH\u0002¢\u0006\u0004\b\u0017\u0010\u0003J\u0015\u0010\u0019\u001a\u00020\u00002\u0006\u0010\u0018\u001a\u00020\u0007¢\u0006\u0004\b\u0019\u0010\u001aJ\u0015\u0010\u001c\u001a\u00020\u00002\u0006\u0010\u001b\u001a\u00020\u0007¢\u0006\u0004\b\u001c\u0010\u001aJ\u0015\u0010\u001e\u001a\u00020\u00002\u0006\u0010\u001d\u001a\u00020\u0007¢\u0006\u0004\b\u001e\u0010\u001aJ\u0015\u0010 \u001a\u00020\u00002\u0006\u0010\u001f\u001a\u00020\u0007¢\u0006\u0004\b \u0010\u001aJ\u0015\u0010\"\u001a\u00020\u00002\u0006\u0010!\u001a\u00020\u0004¢\u0006\u0004\b\"\u0010#J\u0017\u0010%\u001a\u00020\u00002\b\u0010$\u001a\u0004\u0018\u00010\u0007¢\u0006\u0004\b%\u0010\u001aJ\u001f\u0010(\u001a\u00020\u00002\u0006\u0010&\u001a\u00020\u00072\b\u0010'\u001a\u0004\u0018\u00010\u0007¢\u0006\u0004\b(\u0010)J\u001f\u0010,\u001a\u00020\u00002\u0006\u0010*\u001a\u00020\u00072\b\u0010+\u001a\u0004\u0018\u00010\u0007¢\u0006\u0004\b,\u0010)J\u000f\u0010-\u001a\u00020\u0000H\u0000¢\u0006\u0004\b-\u0010.J\r\u00100\u001a\u00020/¢\u0006\u0004\b0\u00101J\u000f\u00102\u001a\u00020\u0007H\u0016¢\u0006\u0004\b2\u00103J!\u00105\u001a\u00020\u00002\b\u00104\u001a\u0004\u0018\u00010/2\u0006\u0010\b\u001a\u00020\u0007H\u0000¢\u0006\u0004\b5\u00106R$\u0010\u0018\u001a\u0004\u0018\u00010\u00078\u0000@\u0000X\u0080\u000e¢\u0006\u0012\n\u0004\b,\u00107\u001a\u0004\b8\u00103\"\u0004\b9\u0010:R\"\u0010=\u001a\u00020\u00078\u0000@\u0000X\u0080\u000e¢\u0006\u0012\n\u0004\b(\u00107\u001a\u0004\b;\u00103\"\u0004\b<\u0010:R\"\u0010@\u001a\u00020\u00078\u0000@\u0000X\u0080\u000e¢\u0006\u0012\n\u0004\b0\u00107\u001a\u0004\b>\u00103\"\u0004\b?\u0010:R$\u0010\u001f\u001a\u0004\u0018\u00010\u00078\u0000@\u0000X\u0080\u000e¢\u0006\u0012\n\u0004\b\u0005\u00107\u001a\u0004\bA\u00103\"\u0004\bB\u0010:R\"\u0010!\u001a\u00020\u00048\u0000@\u0000X\u0080\u000e¢\u0006\u0012\n\u0004\b%\u0010C\u001a\u0004\bD\u0010\u0006\"\u0004\bE\u0010FR \u0010L\u001a\b\u0012\u0004\u0012\u00020\u00070G8\u0000X\u0080\u0004¢\u0006\f\n\u0004\bH\u0010I\u001a\u0004\bJ\u0010KR,\u0010P\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\u0007\u0018\u00010G8\u0000@\u0000X\u0080\u000e¢\u0006\u0012\n\u0004\b>\u0010I\u001a\u0004\bM\u0010K\"\u0004\bN\u0010OR$\u0010R\u001a\u0004\u0018\u00010\u00078\u0000@\u0000X\u0080\u000e¢\u0006\u0012\n\u0004\bJ\u00107\u001a\u0004\bH\u00103\"\u0004\bQ\u0010:¨\u0006T"}, d2 = {"Lokhttp3/HttpUrl$Builder;", "", "<init>", "()V", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "()I", "", "input", "startPos", "limit", "", "Wwwwwwwwwwww", "(Ljava/lang/String;II)V", "pos", "", "addTrailingSlash", "alreadyEncoded", "Wwwwwwwwwwwwww", "(Ljava/lang/String;IIZZ)V", "Wwwwwwwwwwwwwwwwwwww", "(Ljava/lang/String;)Z", "Wwwwwwwwwwwwwwwwwww", "Wwwwwwwwwwwwwwww", "scheme", "Wwwwwwwwwww", "(Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;", AppLovinEventParameters.USER_ACCOUNT_IDENTIFIER, "Www", "password", "Wwwwwwwwwwwwwwwww", "host", "Wwwwwwwwwwwwwwwwwwwww", "port", "Wwwwwwwwwwwwwww", "(I)Lokhttp3/HttpUrl$Builder;", "encodedQuery", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "name", "value", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;", "encodedName", "encodedValue", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Wwwwwwwwwwwww", "()Lokhttp3/HttpUrl$Builder;", "Lokhttp3/HttpUrl;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "()Lokhttp3/HttpUrl;", "toString", "()Ljava/lang/String;", TtmlNode.RUBY_BASE, "Wwwwwwwwwwwwwwwwww", "(Lokhttp3/HttpUrl;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;", "Ljava/lang/String;", "Wwwwwwwwwwwwwwwwwwwwww", "Wwww", "(Ljava/lang/String;)V", "Wwwwwwwwwwwwwwwwwwwwwwwww", "Wwwwwww", "encodedUsername", "Wwwwwwwwwwwwwwwwwwwwwwwwwwww", "Wwwwwwwww", "encodedPassword", "Wwwwwwwwwwwwwwwwwwwwwwww", "Wwwwww", "I", "Wwwwwwwwwwwwwwwwwwwwwww", "Wwwww", "(I)V", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Ljava/util/List;", "Wwwwwwwwwwwwwwwwwwwwwwwwwww", "()Ljava/util/List;", "encodedPathSegments", "Wwwwwwwwwwwwwwwwwwwwwwwwww", "Wwwwwwww", "(Ljava/util/List;)V", "encodedQueryNamesAndValues", "Wwwwwwwwww", "encodedFragment", "Companion", OkHttp3Client.NETWORK_CLIENT_OKHTTP}, k = 1, mv = {1, 6, 0}, xi = 48)
    /* loaded from: classes7.dex */
    public static final class Builder {
        @NotNull
        public static final Companion Companion = new Companion(null);
        @Nullable

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public String f12325Wwwwwwwwwwwwwwwwwwwwwwwwwww;
        @Nullable

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public List<String> f12326Wwwwwwwwwwwwwwwwwwwwwwwwwwww;
        @NotNull

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final List<String> f12327Wwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        @Nullable

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public String f12329Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        @Nullable

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public String f12332Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        @NotNull

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public String f12331Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = "";
        @NotNull

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public String f12330Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = "";

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public int f12328Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww = -1;

        /* compiled from: Proguard */
        @Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\n\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J'\u0010\t\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\b\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\t\u0010\nJ#\u0010\u000b\u001a\u00020\u0006*\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\b\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\u000b\u0010\nJ'\u0010\f\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\b\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\f\u0010\nJ'\u0010\r\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\b\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\r\u0010\nR\u0014\u0010\u000e\u001a\u00020\u00048\u0000X\u0080T¢\u0006\u0006\n\u0004\b\u000e\u0010\u000f¨\u0006\u0010"}, d2 = {"Lokhttp3/HttpUrl$Builder$Companion;", "", "<init>", "()V", "", "input", "", "pos", "limit", "Wwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Ljava/lang/String;II)I", "Wwwwwwwwwwwwwwwwwwwwwwwwwww", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "INVALID_HOST", "Ljava/lang/String;", OkHttp3Client.NETWORK_CLIENT_OKHTTP}, k = 1, mv = {1, 6, 0}, xi = 48)
        /* loaded from: classes7.dex */
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            public final int Wwwwwwwwwwwwwwwwwwwwwwwwwww(String str, int i, int i2) {
                int i3 = 0;
                while (i < i2) {
                    int i4 = i + 1;
                    char charAt = str.charAt(i);
                    if (charAt != '\\' && charAt != '/') {
                        break;
                    }
                    i3++;
                    i = i4;
                }
                return i3;
            }

            public final int Wwwwwwwwwwwwwwwwwwwwwwwwwwww(String str, int i, int i2) {
                if (i2 - i < 2) {
                    return -1;
                }
                char charAt = str.charAt(i);
                if ((Intrinsics.compare((int) charAt, 97) >= 0 && Intrinsics.compare((int) charAt, 122) <= 0) || (Intrinsics.compare((int) charAt, 65) >= 0 && Intrinsics.compare((int) charAt, 90) <= 0)) {
                    int i3 = i + 1;
                    while (true) {
                        if (i3 >= i2) {
                            break;
                        }
                        int i4 = i3 + 1;
                        char charAt2 = str.charAt(i3);
                        if (('a' <= charAt2 && charAt2 < '{') || (('A' <= charAt2 && charAt2 < '[') || (('0' <= charAt2 && charAt2 < ':') || charAt2 == '+' || charAt2 == '-' || charAt2 == '.'))) {
                            i3 = i4;
                        } else if (charAt2 == ':') {
                            return i3;
                        }
                    }
                }
                return -1;
            }

            public final int Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(String str, int i, int i2) {
                while (i < i2) {
                    char charAt = str.charAt(i);
                    if (charAt == '[') {
                        do {
                            i++;
                            if (i < i2) {
                            }
                        } while (str.charAt(i) != ']');
                    } else if (charAt == ':') {
                        return i;
                    }
                    i++;
                }
                return i2;
            }

            public final int Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(String str, int i, int i2) {
                int parseInt;
                try {
                    parseInt = Integer.parseInt(Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(HttpUrl.Companion, str, i, i2, "", false, false, false, false, null, 248, null));
                } catch (NumberFormatException unused) {
                }
                if (1 > parseInt || parseInt >= 65536) {
                    return -1;
                }
                return parseInt;
            }

            public Companion() {
            }
        }

        public Builder() {
            ArrayList arrayList = new ArrayList();
            this.f12327Wwwwwwwwwwwwwwwwwwwwwwwwwwwww = arrayList;
            arrayList.add("");
        }

        @NotNull
        public final Builder Www(@NotNull String str) {
            Wwwwwww(Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(HttpUrl.Companion, str, 0, 0, " \"':;<=>@[]^`{}|/\\?#", false, false, false, false, null, 251, null));
            return this;
        }

        public final void Wwww(@Nullable String str) {
            this.f12332Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = str;
        }

        public final void Wwwww(int i) {
            this.f12328Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww = i;
        }

        public final void Wwwwww(@Nullable String str) {
            this.f12329Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = str;
        }

        public final void Wwwwwww(@NotNull String str) {
            this.f12331Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = str;
        }

        public final void Wwwwwwww(@Nullable List<String> list) {
            this.f12326Wwwwwwwwwwwwwwwwwwwwwwwwwwww = list;
        }

        public final void Wwwwwwwww(@NotNull String str) {
            this.f12330Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = str;
        }

        public final void Wwwwwwwwww(@Nullable String str) {
            this.f12325Wwwwwwwwwwwwwwwwwwwwwwwwwww = str;
        }

        @NotNull
        public final Builder Wwwwwwwwwww(@NotNull String str) {
            if (StringsKt.equals(str, "http", true)) {
                Wwww("http");
                return this;
            } else if (StringsKt.equals(str, "https", true)) {
                Wwww("https");
                return this;
            } else {
                throw new IllegalArgumentException(Intrinsics.stringPlus("unexpected scheme: ", str));
            }
        }

        public final void Wwwwwwwwwwww(String str, int i, int i2) {
            boolean z;
            if (i != i2) {
                char charAt = str.charAt(i);
                if (charAt != '/' && charAt != '\\') {
                    List<String> list = this.f12327Wwwwwwwwwwwwwwwwwwwwwwwwwwwww;
                    list.set(list.size() - 1, "");
                } else {
                    this.f12327Wwwwwwwwwwwwwwwwwwwwwwwwwwwww.clear();
                    this.f12327Wwwwwwwwwwwwwwwwwwwwwwwwwwwww.add("");
                    i++;
                }
                int i3 = i;
                while (i3 < i2) {
                    int Wwwwwwwwwwwwwwwwww2 = Util.Wwwwwwwwwwwwwwwwww(str, "/\\", i3, i2);
                    if (Wwwwwwwwwwwwwwwwww2 < i2) {
                        z = true;
                    } else {
                        z = false;
                    }
                    String str2 = str;
                    Wwwwwwwwwwwwww(str2, i3, Wwwwwwwwwwwwwwwwww2, z, true);
                    if (z) {
                        i3 = Wwwwwwwwwwwwwwwwww2 + 1;
                        str = str2;
                    } else {
                        str = str2;
                        i3 = Wwwwwwwwwwwwwwwwww2;
                    }
                }
            }
        }

        @NotNull
        public final Builder Wwwwwwwwwwwww() {
            String replace;
            String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
            String Wwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwww();
            String str = null;
            if (Wwwwwwwwwwwwwwwwwwwwwwww2 == null) {
                replace = null;
            } else {
                replace = new Regex("[\"<>^`{|}]").replace(Wwwwwwwwwwwwwwwwwwwwwwww2, "");
            }
            Wwwwww(replace);
            int size = Wwwwwwwwwwwwwwwwwwwwwwwwwww().size();
            int i = 0;
            for (int i2 = 0; i2 < size; i2++) {
                Wwwwwwwwwwwwwwwwwwwwwwwwwww().set(i2, Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(HttpUrl.Companion, Wwwwwwwwwwwwwwwwwwwwwwwwwww().get(i2), 0, 0, "[]", true, true, false, false, null, 227, null));
            }
            List<String> Wwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwww();
            if (Wwwwwwwwwwwwwwwwwwwwwwwwww2 != null) {
                int size2 = Wwwwwwwwwwwwwwwwwwwwwwwwww2.size();
                while (i < size2) {
                    int i3 = i + 1;
                    String str2 = Wwwwwwwwwwwwwwwwwwwwwwwwww2.get(i);
                    if (str2 == null) {
                        Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = null;
                    } else {
                        Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(HttpUrl.Companion, str2, 0, 0, "\\^`{|}", true, true, true, false, null, TPCodecParamers.TP_PROFILE_MJPEG_HUFFMAN_LOSSLESS, null);
                    }
                    Wwwwwwwwwwwwwwwwwwwwwwwwww2.set(i, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2);
                    i = i3;
                }
            }
            String Wwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwww();
            if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwww2 != null) {
                str = Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(HttpUrl.Companion, Wwwwwwwwwwwwwwwwwwwwwwwwwwwww2, 0, 0, " \"#<>\\^`{|}", true, true, false, true, null, 163, null);
            }
            Wwwwwwwwww(str);
            return this;
        }

        public final void Wwwwwwwwwwwwww(String str, int i, int i2, boolean z, boolean z2) {
            String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(HttpUrl.Companion, str, i, i2, " \"<>^`{}|/\\?#", z2, false, false, false, null, 240, null);
            if (!Wwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2)) {
                if (Wwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2)) {
                    Wwwwwwwwwwwwwwww();
                    return;
                }
                List<String> list = this.f12327Wwwwwwwwwwwwwwwwwwwwwwwwwwwww;
                if (list.get(list.size() - 1).length() == 0) {
                    List<String> list2 = this.f12327Wwwwwwwwwwwwwwwwwwwwwwwwwwwww;
                    list2.set(list2.size() - 1, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2);
                } else {
                    this.f12327Wwwwwwwwwwwwwwwwwwwwwwwwwwwww.add(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2);
                }
                if (z) {
                    this.f12327Wwwwwwwwwwwwwwwwwwwwwwwwwwwww.add("");
                }
            }
        }

        @NotNull
        public final Builder Wwwwwwwwwwwwwww(int i) {
            if (1 <= i && i < 65536) {
                Wwwww(i);
                return this;
            }
            throw new IllegalArgumentException(Intrinsics.stringPlus("unexpected port: ", Integer.valueOf(i)).toString());
        }

        public final void Wwwwwwwwwwwwwwww() {
            List<String> list = this.f12327Wwwwwwwwwwwwwwwwwwwwwwwwwwwww;
            if (list.remove(list.size() - 1).length() == 0 && !this.f12327Wwwwwwwwwwwwwwwwwwwwwwwwwwwww.isEmpty()) {
                List<String> list2 = this.f12327Wwwwwwwwwwwwwwwwwwwwwwwwwwwww;
                list2.set(list2.size() - 1, "");
                return;
            }
            this.f12327Wwwwwwwwwwwwwwwwwwwwwwwwwwwww.add("");
        }

        @NotNull
        public final Builder Wwwwwwwwwwwwwwwww(@NotNull String str) {
            Wwwwwwwww(Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(HttpUrl.Companion, str, 0, 0, " \"':;<=>@[]^`{}|/\\?#", false, false, false, false, null, 251, null));
            return this;
        }

        @NotNull
        public final Builder Wwwwwwwwwwwwwwwwww(@Nullable HttpUrl httpUrl, @NotNull String str) {
            int Wwwwwwwwwwwwwwwwwwwwwwwwwwww2;
            String str2;
            int Wwwwwwwwwwwwwwwwww2;
            char c;
            boolean z;
            int i;
            int i2;
            char c2;
            int i3;
            String str3 = str;
            int Wwwwwwww2 = Util.Wwwwwwww(str3, 0, 0, 3, null);
            int Wwwwww2 = Util.Wwwwww(str3, Wwwwwwww2, 0, 2, null);
            Companion companion = Companion;
            boolean z2 = true;
            char c3 = 65535;
            if (companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwww(str3, Wwwwwwww2, Wwwwww2) != -1) {
                if (StringsKt.startsWith(str3, "https:", Wwwwwwww2, true)) {
                    this.f12332Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = "https";
                    Wwwwwwww2 += 6;
                } else if (StringsKt.startsWith(str3, "http:", Wwwwwwww2, true)) {
                    this.f12332Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = "http";
                    Wwwwwwww2 += 5;
                } else {
                    throw new IllegalArgumentException("Expected URL scheme 'http' or 'https' but was '" + str3.substring(0, Wwwwwwwwwwwwwwwwwwwwwwwwwwww2) + '\'');
                }
            } else if (httpUrl != null) {
                this.f12332Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = httpUrl.Wwwwwwwwwwwwwww();
            } else {
                if (str3.length() > 6) {
                    str2 = Intrinsics.stringPlus(StringsKt.take(str3, 6), "...");
                } else {
                    str2 = str3;
                }
                throw new IllegalArgumentException(Intrinsics.stringPlus("Expected URL scheme 'http' or 'https' but no scheme was found for ", str2));
            }
            int Wwwwwwwwwwwwwwwwwwwwwwwwwww2 = companion.Wwwwwwwwwwwwwwwwwwwwwwwwwww(str3, Wwwwwwww2, Wwwwww2);
            char c4 = '?';
            char c5 = '#';
            if (Wwwwwwwwwwwwwwwwwwwwwwwwwww2 < 2 && httpUrl != null && Intrinsics.areEqual(httpUrl.Wwwwwwwwwwwwwww(), this.f12332Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww)) {
                this.f12331Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = httpUrl.Wwwwwwwwwwwwwwwwwwwwwwwwwwww();
                this.f12330Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = httpUrl.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
                this.f12329Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = httpUrl.Wwwwwwwwwwwwwwwwwwwwwwwwww();
                this.f12328Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww = httpUrl.Wwwwwwwwwwwwwwwwwwwww();
                this.f12327Wwwwwwwwwwwwwwwwwwwwwwwwwwwww.clear();
                this.f12327Wwwwwwwwwwwwwwwwwwwwwwwwwwwww.addAll(httpUrl.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
                if (Wwwwwwww2 == Wwwwww2 || str3.charAt(Wwwwwwww2) == '#') {
                    Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(httpUrl.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww());
                }
            } else {
                int i4 = Wwwwwwww2 + Wwwwwwwwwwwwwwwwwwwwwwwwwww2;
                boolean z3 = false;
                boolean z4 = false;
                while (true) {
                    Wwwwwwwwwwwwwwwwww2 = Util.Wwwwwwwwwwwwwwwwww(str3, "@/\\?#", i4, Wwwwww2);
                    if (Wwwwwwwwwwwwwwwwww2 != Wwwwww2) {
                        c = str3.charAt(Wwwwwwwwwwwwwwwwww2);
                    } else {
                        c = c3;
                    }
                    if (c == c3 || c == c5 || c == '/' || c == '\\' || c == c4) {
                        break;
                    } else if (c == '@') {
                        if (!z3) {
                            int Wwwwwwwwwwwwwwwwwww2 = Util.Wwwwwwwwwwwwwwwwwww(str3, AbstractJsonLexerKt.COLON, i4, Wwwwwwwwwwwwwwwwww2);
                            Companion companion2 = HttpUrl.Companion;
                            z = z2;
                            String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(companion2, str3, i4, Wwwwwwwwwwwwwwwwwww2, " \"':;<=>@[]^`{}|/\\?#", true, false, false, false, null, 240, null);
                            if (z4) {
                                Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = this.f12331Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww + "%40" + Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
                            }
                            this.f12331Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
                            if (Wwwwwwwwwwwwwwwwwww2 != Wwwwwwwwwwwwwwwwww2) {
                                i2 = Wwwwwwwwwwwwwwwwww2;
                                this.f12330Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(companion2, str, Wwwwwwwwwwwwwwwwwww2 + 1, i2, " \"':;<=>@[]^`{}|/\\?#", true, false, false, false, null, 240, null);
                                z3 = z;
                            } else {
                                i2 = Wwwwwwwwwwwwwwwwww2;
                            }
                            str3 = str;
                            i = i2;
                            z4 = z;
                        } else {
                            z = z2;
                            StringBuilder sb = new StringBuilder();
                            sb.append(this.f12330Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
                            sb.append("%40");
                            str3 = str;
                            i = Wwwwwwwwwwwwwwwwww2;
                            sb.append(Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(HttpUrl.Companion, str3, i4, Wwwwwwwwwwwwwwwwww2, " \"':;<=>@[]^`{}|/\\?#", true, false, false, false, null, 240, null));
                            this.f12330Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = sb.toString();
                        }
                        i4 = i + 1;
                        z2 = z;
                        c4 = '?';
                        c5 = '#';
                        c3 = 65535;
                    }
                }
                Companion companion3 = Companion;
                int Wwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = companion3.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(str3, i4, Wwwwwwwwwwwwwwwwww2);
                int i5 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwww2 + 1;
                if (i5 < Wwwwwwwwwwwwwwwwww2) {
                    this.f12329Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = HostnamesKt.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwww(HttpUrl.Companion, str3, i4, Wwwwwwwwwwwwwwwwwwwwwwwwwwwww2, false, 4, null));
                    int Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = companion3.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(str3, i5, Wwwwwwwwwwwwwwwwww2);
                    this.f12328Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
                    if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 == -1) {
                        throw new IllegalArgumentException(("Invalid URL port: \"" + str3.substring(i5, Wwwwwwwwwwwwwwwwww2) + '\"').toString());
                    }
                } else {
                    Companion companion4 = HttpUrl.Companion;
                    this.f12329Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = HostnamesKt.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwww(companion4, str3, i4, Wwwwwwwwwwwwwwwwwwwwwwwwwwwww2, false, 4, null));
                    this.f12328Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww = companion4.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.f12332Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
                }
                if (this.f12329Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww != null) {
                    Wwwwwwww2 = Wwwwwwwwwwwwwwwwww2;
                } else {
                    throw new IllegalArgumentException(("Invalid URL host: \"" + str3.substring(i4, Wwwwwwwwwwwwwwwwwwwwwwwwwwwww2) + '\"').toString());
                }
            }
            int Wwwwwwwwwwwwwwwwww3 = Util.Wwwwwwwwwwwwwwwwww(str3, "?#", Wwwwwwww2, Wwwwww2);
            Wwwwwwwwwwww(str3, Wwwwwwww2, Wwwwwwwwwwwwwwwwww3);
            if (Wwwwwwwwwwwwwwwwww3 < Wwwwww2 && str3.charAt(Wwwwwwwwwwwwwwwwww3) == '?') {
                c2 = '#';
                int Wwwwwwwwwwwwwwwwwww3 = Util.Wwwwwwwwwwwwwwwwwww(str3, '#', Wwwwwwwwwwwwwwwwww3, Wwwwww2);
                Companion companion5 = HttpUrl.Companion;
                this.f12326Wwwwwwwwwwwwwwwwwwwwwwwwwwww = companion5.Wwwwwwwwwwwwwwwwwwwwwwwww(Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(companion5, str3, Wwwwwwwwwwwwwwwwww3 + 1, Wwwwwwwwwwwwwwwwwww3, " \"'<>#", true, false, true, false, null, 208, null));
                i3 = Wwwwwwwwwwwwwwwwwww3;
            } else {
                c2 = '#';
                i3 = Wwwwwwwwwwwwwwwwww3;
            }
            if (i3 < Wwwwww2 && str3.charAt(i3) == c2) {
                this.f12325Wwwwwwwwwwwwwwwwwwwwwwwwwww = Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(HttpUrl.Companion, str3, i3 + 1, Wwwwww2, "", true, false, false, true, null, 176, null);
            }
            return this;
        }

        public final boolean Wwwwwwwwwwwwwwwwwww(String str) {
            if (Intrinsics.areEqual(str, "..") || StringsKt.equals(str, "%2e.", true) || StringsKt.equals(str, ".%2e", true) || StringsKt.equals(str, "%2e%2e", true)) {
                return true;
            }
            return false;
        }

        public final boolean Wwwwwwwwwwwwwwwwwwww(String str) {
            if (Intrinsics.areEqual(str, ".") || StringsKt.equals(str, "%2e", true)) {
                return true;
            }
            return false;
        }

        @NotNull
        public final Builder Wwwwwwwwwwwwwwwwwwwww(@NotNull String str) {
            String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = HostnamesKt.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwww(HttpUrl.Companion, str, 0, 0, false, 7, null));
            if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 != null) {
                Wwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2);
                return this;
            }
            throw new IllegalArgumentException(Intrinsics.stringPlus("unexpected host: ", str));
        }

        @Nullable
        public final String Wwwwwwwwwwwwwwwwwwwwww() {
            return this.f12332Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        }

        public final int Wwwwwwwwwwwwwwwwwwwwwww() {
            return this.f12328Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        }

        @Nullable
        public final String Wwwwwwwwwwwwwwwwwwwwwwww() {
            return this.f12329Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        }

        @NotNull
        public final String Wwwwwwwwwwwwwwwwwwwwwwwww() {
            return this.f12331Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        }

        @Nullable
        public final List<String> Wwwwwwwwwwwwwwwwwwwwwwwwww() {
            return this.f12326Wwwwwwwwwwwwwwwwwwwwwwwwwwww;
        }

        @NotNull
        public final List<String> Wwwwwwwwwwwwwwwwwwwwwwwwwww() {
            return this.f12327Wwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        }

        @NotNull
        public final String Wwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            return this.f12330Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        }

        @Nullable
        public final String Wwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            return this.f12325Wwwwwwwwwwwwwwwwwwwwwwwwwww;
        }

        @NotNull
        public final Builder Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@Nullable String str) {
            Companion companion;
            String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
            List<String> list = null;
            if (str != null && (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww((companion = HttpUrl.Companion), str, 0, 0, " \"'<>#", true, false, true, false, null, 211, null)) != null) {
                list = companion.Wwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2);
            }
            Wwwwwwww(list);
            return this;
        }

        public final int Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            int i = this.f12328Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
            if (i != -1) {
                return i;
            }
            return HttpUrl.Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.f12332Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
        }

        @NotNull
        public final HttpUrl Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            ArrayList arrayList;
            String Wwwwwwwwwwwwwwwwwwwwwwwwwww2;
            String str = this.f12332Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
            if (str != null) {
                Companion companion = HttpUrl.Companion;
                String Wwwwwwwwwwwwwwwwwwwwwwwwwww3 = Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwww(companion, this.f12331Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, 0, 0, false, 7, null);
                String Wwwwwwwwwwwwwwwwwwwwwwwwwww4 = Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwww(companion, this.f12330Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, 0, 0, false, 7, null);
                String str2 = this.f12329Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
                if (str2 != null) {
                    int Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
                    List<String> list = this.f12327Wwwwwwwwwwwwwwwwwwwwwwwwwwwww;
                    ArrayList arrayList2 = new ArrayList(CollectionsKt.collectionSizeOrDefault(list, 10));
                    for (String str3 : list) {
                        arrayList2.add(Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwww(HttpUrl.Companion, str3, 0, 0, false, 7, null));
                    }
                    List<String> list2 = this.f12326Wwwwwwwwwwwwwwwwwwwwwwwwwwww;
                    String str4 = null;
                    if (list2 == null) {
                        arrayList = null;
                    } else {
                        List<String> list3 = list2;
                        ArrayList arrayList3 = new ArrayList(CollectionsKt.collectionSizeOrDefault(list3, 10));
                        for (String str5 : list3) {
                            if (str5 == null) {
                                Wwwwwwwwwwwwwwwwwwwwwwwwwww2 = null;
                            } else {
                                Wwwwwwwwwwwwwwwwwwwwwwwwwww2 = Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwww(HttpUrl.Companion, str5, 0, 0, true, 3, null);
                            }
                            arrayList3.add(Wwwwwwwwwwwwwwwwwwwwwwwwwww2);
                        }
                        arrayList = arrayList3;
                    }
                    String str6 = this.f12325Wwwwwwwwwwwwwwwwwwwwwwwwwww;
                    if (str6 != null) {
                        str4 = Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwww(HttpUrl.Companion, str6, 0, 0, false, 7, null);
                    }
                    return new HttpUrl(str, Wwwwwwwwwwwwwwwwwwwwwwwwwww3, Wwwwwwwwwwwwwwwwwwwwwwwwwww4, str2, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2, arrayList2, arrayList, str4, toString());
                }
                throw new IllegalStateException("host == null");
            }
            throw new IllegalStateException("scheme == null");
        }

        @NotNull
        public final Builder Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull String str, @Nullable String str2) {
            String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
            if (Wwwwwwwwwwwwwwwwwwwwwwwwww() == null) {
                Wwwwwwww(new ArrayList());
            }
            List<String> Wwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwww();
            Companion companion = HttpUrl.Companion;
            Wwwwwwwwwwwwwwwwwwwwwwwwww2.add(Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(companion, str, 0, 0, " !\"#$&'(),/:;<=>?@[]\\^`{|}~", false, false, true, false, null, 219, null));
            List<String> Wwwwwwwwwwwwwwwwwwwwwwwwww3 = Wwwwwwwwwwwwwwwwwwwwwwwwww();
            if (str2 == null) {
                Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = null;
            } else {
                Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(companion, str2, 0, 0, " !\"#$&'(),/:;<=>?@[]\\^`{|}~", false, false, true, false, null, 219, null);
            }
            Wwwwwwwwwwwwwwwwwwwwwwwwww3.add(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2);
            return this;
        }

        @NotNull
        public final Builder Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull String str, @Nullable String str2) {
            String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
            if (Wwwwwwwwwwwwwwwwwwwwwwwwww() == null) {
                Wwwwwwww(new ArrayList());
            }
            List<String> Wwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwww();
            Companion companion = HttpUrl.Companion;
            Wwwwwwwwwwwwwwwwwwwwwwwwww2.add(Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(companion, str, 0, 0, " \"'<>#&=", true, false, true, false, null, 211, null));
            List<String> Wwwwwwwwwwwwwwwwwwwwwwwwww3 = Wwwwwwwwwwwwwwwwwwwwwwwwww();
            if (str2 == null) {
                Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = null;
            } else {
                Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(companion, str2, 0, 0, " \"'<>#&=", true, false, true, false, null, 211, null);
            }
            Wwwwwwwwwwwwwwwwwwwwwwwwww3.add(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2);
            return this;
        }

        @NotNull
        public String toString() {
            StringBuilder sb = new StringBuilder();
            if (Wwwwwwwwwwwwwwwwwwwwww() != null) {
                sb.append(Wwwwwwwwwwwwwwwwwwwwww());
                sb.append("://");
            } else {
                sb.append("//");
            }
            if (Wwwwwwwwwwwwwwwwwwwwwwwww().length() > 0 || Wwwwwwwwwwwwwwwwwwwwwwwwwwww().length() > 0) {
                sb.append(Wwwwwwwwwwwwwwwwwwwwwwwww());
                if (Wwwwwwwwwwwwwwwwwwwwwwwwwwww().length() > 0) {
                    sb.append(AbstractJsonLexerKt.COLON);
                    sb.append(Wwwwwwwwwwwwwwwwwwwwwwwwwwww());
                }
                sb.append('@');
            }
            if (Wwwwwwwwwwwwwwwwwwwwwwww() != null) {
                if (StringsKt.contains$default((CharSequence) Wwwwwwwwwwwwwwwwwwwwwwww(), (char) AbstractJsonLexerKt.COLON, false, 2, (Object) null)) {
                    sb.append(AbstractJsonLexerKt.BEGIN_LIST);
                    sb.append(Wwwwwwwwwwwwwwwwwwwwwwww());
                    sb.append(AbstractJsonLexerKt.END_LIST);
                } else {
                    sb.append(Wwwwwwwwwwwwwwwwwwwwwwww());
                }
            }
            if (Wwwwwwwwwwwwwwwwwwwwwww() != -1 || Wwwwwwwwwwwwwwwwwwwwww() != null) {
                int Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
                if (Wwwwwwwwwwwwwwwwwwwwww() == null || Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 != HttpUrl.Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwww())) {
                    sb.append(AbstractJsonLexerKt.COLON);
                    sb.append(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2);
                }
            }
            Companion companion = HttpUrl.Companion;
            companion.Wwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwww(), sb);
            if (Wwwwwwwwwwwwwwwwwwwwwwwwww() != null) {
                sb.append('?');
                companion.Wwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwww(), sb);
            }
            if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwww() != null) {
                sb.append('#');
                sb.append(Wwwwwwwwwwwwwwwwwwwwwwwwwwwww());
            }
            return sb.toString();
        }
    }

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000`\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010!\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0010\u0019\n\u0002\b\u000b\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0017\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0007¢\u0006\u0004\b\u0007\u0010\bJ%\u0010\u000e\u001a\u00020\r*\b\u0012\u0004\u0012\u00020\u00040\t2\n\u0010\f\u001a\u00060\nj\u0002`\u000bH\u0000¢\u0006\u0004\b\u000e\u0010\u000fJ'\u0010\u0010\u001a\u00020\r*\n\u0012\u0006\u0012\u0004\u0018\u00010\u00040\t2\n\u0010\f\u001a\u00060\nj\u0002`\u000bH\u0000¢\u0006\u0004\b\u0010\u0010\u000fJ\u001b\u0010\u0012\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00040\u0011*\u00020\u0004H\u0000¢\u0006\u0004\b\u0012\u0010\u0013J\u0013\u0010\u0015\u001a\u00020\u0014*\u00020\u0004H\u0007¢\u0006\u0004\b\u0015\u0010\u0016J\u0015\u0010\u0017\u001a\u0004\u0018\u00010\u0014*\u00020\u0004H\u0007¢\u0006\u0004\b\u0017\u0010\u0016J1\u0010\u001c\u001a\u00020\u0004*\u00020\u00042\b\b\u0002\u0010\u0018\u001a\u00020\u00062\b\b\u0002\u0010\u0019\u001a\u00020\u00062\b\b\u0002\u0010\u001b\u001a\u00020\u001aH\u0000¢\u0006\u0004\b\u001c\u0010\u001dJc\u0010$\u001a\u00020\u0004*\u00020\u00042\b\b\u0002\u0010\u0018\u001a\u00020\u00062\b\b\u0002\u0010\u0019\u001a\u00020\u00062\u0006\u0010\u001e\u001a\u00020\u00042\b\b\u0002\u0010\u001f\u001a\u00020\u001a2\b\b\u0002\u0010 \u001a\u00020\u001a2\b\b\u0002\u0010\u001b\u001a\u00020\u001a2\b\b\u0002\u0010!\u001a\u00020\u001a2\n\b\u0002\u0010#\u001a\u0004\u0018\u00010\"H\u0000¢\u0006\u0004\b$\u0010%J3\u0010(\u001a\u00020\r*\u00020&2\u0006\u0010'\u001a\u00020\u00042\u0006\u0010\u0018\u001a\u00020\u00062\u0006\u0010\u0019\u001a\u00020\u00062\u0006\u0010\u001b\u001a\u00020\u001aH\u0002¢\u0006\u0004\b(\u0010)J#\u0010*\u001a\u00020\u001a*\u00020\u00042\u0006\u0010\u0018\u001a\u00020\u00062\u0006\u0010\u0019\u001a\u00020\u0006H\u0002¢\u0006\u0004\b*\u0010+J]\u0010-\u001a\u00020\r*\u00020&2\u0006\u0010,\u001a\u00020\u00042\u0006\u0010\u0018\u001a\u00020\u00062\u0006\u0010\u0019\u001a\u00020\u00062\u0006\u0010\u001e\u001a\u00020\u00042\u0006\u0010\u001f\u001a\u00020\u001a2\u0006\u0010 \u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\u001a2\u0006\u0010!\u001a\u00020\u001a2\b\u0010#\u001a\u0004\u0018\u00010\"H\u0002¢\u0006\u0004\b-\u0010.R\u0014\u0010/\u001a\u00020\u00048\u0000X\u0080T¢\u0006\u0006\n\u0004\b/\u00100R\u0014\u00101\u001a\u00020\u00048\u0000X\u0080T¢\u0006\u0006\n\u0004\b1\u00100R\u0014\u00102\u001a\u00020\u00048\u0000X\u0080T¢\u0006\u0006\n\u0004\b2\u00100R\u0014\u00104\u001a\u0002038\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b4\u00105R\u0014\u00106\u001a\u00020\u00048\u0000X\u0080T¢\u0006\u0006\n\u0004\b6\u00100R\u0014\u00107\u001a\u00020\u00048\u0000X\u0080T¢\u0006\u0006\n\u0004\b7\u00100R\u0014\u00108\u001a\u00020\u00048\u0000X\u0080T¢\u0006\u0006\n\u0004\b8\u00100R\u0014\u00109\u001a\u00020\u00048\u0000X\u0080T¢\u0006\u0006\n\u0004\b9\u00100R\u0014\u0010:\u001a\u00020\u00048\u0000X\u0080T¢\u0006\u0006\n\u0004\b:\u00100R\u0014\u0010;\u001a\u00020\u00048\u0000X\u0080T¢\u0006\u0006\n\u0004\b;\u00100R\u0014\u0010<\u001a\u00020\u00048\u0000X\u0080T¢\u0006\u0006\n\u0004\b<\u00100R\u0014\u0010=\u001a\u00020\u00048\u0000X\u0080T¢\u0006\u0006\n\u0004\b=\u00100¨\u0006>"}, d2 = {"Lokhttp3/HttpUrl$Companion;", "", "<init>", "()V", "", "scheme", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Ljava/lang/String;)I", "", "Ljava/lang/StringBuilder;", "Lkotlin/text/StringBuilder;", "out", "", "Wwwwwwwwwwwwwwwwwwwwwwwwww", "(Ljava/util/List;Ljava/lang/StringBuilder;)V", "Wwwwwwwwwwwwwwwwwwwwwwww", "", "Wwwwwwwwwwwwwwwwwwwwwwwww", "(Ljava/lang/String;)Ljava/util/List;", "Lokhttp3/HttpUrl;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Ljava/lang/String;)Lokhttp3/HttpUrl;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwww", "pos", "limit", "", "plusIsSpace", "Wwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Ljava/lang/String;IIZ)Ljava/lang/String;", "encodeSet", "alreadyEncoded", "strict", "unicodeAllowed", "Ljava/nio/charset/Charset;", "charset", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Ljava/lang/String;IILjava/lang/String;ZZZZLjava/nio/charset/Charset;)Ljava/lang/String;", "Lokio/Buffer;", "encoded", "Wwwwwwwwwwwwwwwwwwwwww", "(Lokio/Buffer;Ljava/lang/String;IIZ)V", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Ljava/lang/String;II)Z", "input", "Wwwwwwwwwwwwwwwwwwwwwww", "(Lokio/Buffer;Ljava/lang/String;IILjava/lang/String;ZZZZLjava/nio/charset/Charset;)V", "FORM_ENCODE_SET", "Ljava/lang/String;", "FRAGMENT_ENCODE_SET", "FRAGMENT_ENCODE_SET_URI", "", "HEX_DIGITS", "[C", "PASSWORD_ENCODE_SET", "PATH_SEGMENT_ENCODE_SET", "PATH_SEGMENT_ENCODE_SET_URI", "QUERY_COMPONENT_ENCODE_SET", "QUERY_COMPONENT_ENCODE_SET_URI", "QUERY_COMPONENT_REENCODE_SET", "QUERY_ENCODE_SET", "USERNAME_ENCODE_SET", OkHttp3Client.NETWORK_CLIENT_OKHTTP}, k = 1, mv = {1, 6, 0}, xi = 48)
    /* loaded from: classes7.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public static /* synthetic */ String Wwwwwwwwwwwwwwwwwwwwwwwwwww(Companion companion, String str, int i, int i2, boolean z, int i3, Object obj) {
            if ((i3 & 1) != 0) {
                i = 0;
            }
            if ((i3 & 2) != 0) {
                i2 = str.length();
            }
            if ((i3 & 4) != 0) {
                z = false;
            }
            return companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwww(str, i, i2, z);
        }

        public static /* synthetic */ String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Companion companion, String str, int i, int i2, String str2, boolean z, boolean z2, boolean z3, boolean z4, Charset charset, int i3, Object obj) {
            if ((i3 & 1) != 0) {
                i = 0;
            }
            if ((i3 & 2) != 0) {
                i2 = str.length();
            }
            if ((i3 & 8) != 0) {
                z = false;
            }
            if ((i3 & 16) != 0) {
                z2 = false;
            }
            if ((i3 & 32) != 0) {
                z3 = false;
            }
            if ((i3 & 64) != 0) {
                z4 = false;
            }
            if ((i3 & 128) != 0) {
                charset = null;
            }
            return companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(str, i, i2, str2, z, z2, z3, z4, charset);
        }

        public final void Wwwwwwwwwwwwwwwwwwwwww(Buffer buffer, String str, int i, int i2, boolean z) {
            int i3;
            while (i < i2) {
                int codePointAt = str.codePointAt(i);
                if (codePointAt == 37 && (i3 = i + 2) < i2) {
                    int Kkkkkkkkkkkkkkkkkkkkkkkk2 = Util.Kkkkkkkkkkkkkkkkkkkkkkkk(str.charAt(i + 1));
                    int Kkkkkkkkkkkkkkkkkkkkkkkk3 = Util.Kkkkkkkkkkkkkkkkkkkkkkkk(str.charAt(i3));
                    if (Kkkkkkkkkkkkkkkkkkkkkkkk2 != -1 && Kkkkkkkkkkkkkkkkkkkkkkkk3 != -1) {
                        buffer.writeByte((Kkkkkkkkkkkkkkkkkkkkkkkk2 << 4) + Kkkkkkkkkkkkkkkkkkkkkkkk3);
                        i = Character.charCount(codePointAt) + i3;
                    }
                    buffer.Illlllllllll(codePointAt);
                    i += Character.charCount(codePointAt);
                } else {
                    if (codePointAt == 43 && z) {
                        buffer.writeByte(32);
                        i++;
                    }
                    buffer.Illlllllllll(codePointAt);
                    i += Character.charCount(codePointAt);
                }
            }
        }

        public final void Wwwwwwwwwwwwwwwwwwwwwww(Buffer buffer, String str, int i, int i2, String str2, boolean z, boolean z2, boolean z3, boolean z4, Charset charset) {
            int i3 = i;
            Buffer buffer2 = null;
            while (i3 < i2) {
                int codePointAt = str.codePointAt(i3);
                if (!z || (codePointAt != 9 && codePointAt != 10 && codePointAt != 12 && codePointAt != 13)) {
                    if (codePointAt == 43 && z3) {
                        buffer.Wwwwwwwwwwwwwwwwwwwwwwwwww(z ? "+" : "%2B");
                    } else {
                        if (codePointAt >= 32 && codePointAt != 127 && (codePointAt < 128 || z4)) {
                            if (!StringsKt.contains$default((CharSequence) str2, (char) codePointAt, false, 2, (Object) null) && (codePointAt != 37 || (z && (!z2 || Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(str, i3, i2))))) {
                                buffer.Illlllllllll(codePointAt);
                                i3 += Character.charCount(codePointAt);
                            }
                        }
                        if (buffer2 == null) {
                            buffer2 = new Buffer();
                        }
                        if (charset != null && !Intrinsics.areEqual(charset, StandardCharsets.UTF_8)) {
                            buffer2.Illlllllllllllll(str, i3, Character.charCount(codePointAt) + i3, charset);
                        } else {
                            buffer2.Illlllllllll(codePointAt);
                        }
                        while (!buffer2.Wwwwwwwwwwww()) {
                            byte readByte = buffer2.readByte();
                            buffer.writeByte(37);
                            buffer.writeByte(HttpUrl.f12314Wwwwwwwwwwwwwwwwwwwwwwww[((readByte & 255) >> 4) & 15]);
                            buffer.writeByte(HttpUrl.f12314Wwwwwwwwwwwwwwwwwwwwwwww[readByte & Ascii.SI]);
                        }
                        i3 += Character.charCount(codePointAt);
                    }
                }
                i3 += Character.charCount(codePointAt);
            }
        }

        public final void Wwwwwwwwwwwwwwwwwwwwwwww(@NotNull List<String> list, @NotNull StringBuilder sb) {
            IntProgression step = RangesKt.step(RangesKt.until(0, list.size()), 2);
            int first = step.getFirst();
            int last = step.getLast();
            int step2 = step.getStep();
            if ((step2 <= 0 || first > last) && (step2 >= 0 || last > first)) {
                return;
            }
            while (true) {
                int i = first + step2;
                String str = list.get(first);
                String str2 = list.get(first + 1);
                if (first > 0) {
                    sb.append(Typography.amp);
                }
                sb.append(str);
                if (str2 != null) {
                    sb.append('=');
                    sb.append(str2);
                }
                if (first != last) {
                    first = i;
                } else {
                    return;
                }
            }
        }

        @NotNull
        public final List<String> Wwwwwwwwwwwwwwwwwwwwwwwww(@NotNull String str) {
            ArrayList arrayList = new ArrayList();
            int i = 0;
            while (i <= str.length()) {
                String str2 = str;
                int indexOf$default = StringsKt.indexOf$default((CharSequence) str2, (char) Typography.amp, i, false, 4, (Object) null);
                if (indexOf$default == -1) {
                    indexOf$default = str2.length();
                }
                int indexOf$default2 = StringsKt.indexOf$default((CharSequence) str2, '=', i, false, 4, (Object) null);
                if (indexOf$default2 != -1 && indexOf$default2 <= indexOf$default) {
                    arrayList.add(str2.substring(i, indexOf$default2));
                    arrayList.add(str2.substring(indexOf$default2 + 1, indexOf$default));
                } else {
                    arrayList.add(str2.substring(i, indexOf$default));
                    arrayList.add(null);
                }
                i = indexOf$default + 1;
                str = str2;
            }
            return arrayList;
        }

        public final void Wwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull List<String> list, @NotNull StringBuilder sb) {
            int size = list.size();
            for (int i = 0; i < size; i++) {
                sb.append('/');
                sb.append(list.get(i));
            }
        }

        @NotNull
        public final String Wwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull String str, int i, int i2, boolean z) {
            int i3 = i;
            while (i3 < i2) {
                int i4 = i3 + 1;
                char charAt = str.charAt(i3);
                if (charAt != '%' && (charAt != '+' || !z)) {
                    i3 = i4;
                } else {
                    Buffer buffer = new Buffer();
                    buffer.Illllllllllll(str, i, i3);
                    Wwwwwwwwwwwwwwwwwwwwww(buffer, str, i3, i2, z);
                    return buffer.Kkkkk();
                }
            }
            return str.substring(i, i2);
        }

        @JvmStatic
        @JvmName(name = "parse")
        @Nullable
        public final HttpUrl Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull String str) {
            try {
                return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(str);
            } catch (IllegalArgumentException unused) {
                return null;
            }
        }

        public final boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(String str, int i, int i2) {
            int i3 = i + 2;
            if (i3 < i2 && str.charAt(i) == '%' && Util.Kkkkkkkkkkkkkkkkkkkkkkkk(str.charAt(i + 1)) != -1 && Util.Kkkkkkkkkkkkkkkkkkkkkkkk(str.charAt(i3)) != -1) {
                return true;
            }
            return false;
        }

        @JvmStatic
        @JvmName(name = "get")
        @NotNull
        public final HttpUrl Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull String str) {
            return new Builder().Wwwwwwwwwwwwwwwwww(null, str).Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        }

        @JvmStatic
        public final int Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull String str) {
            if (Intrinsics.areEqual(str, "http")) {
                return 80;
            }
            if (Intrinsics.areEqual(str, "https")) {
                return 443;
            }
            return -1;
        }

        @NotNull
        public final String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull String str, int i, int i2, @NotNull String str2, boolean z, boolean z2, boolean z3, boolean z4, @Nullable Charset charset) {
            int i3 = i;
            while (i3 < i2) {
                int codePointAt = str.codePointAt(i3);
                if (codePointAt >= 32 && codePointAt != 127 && ((codePointAt < 128 || z4) && !StringsKt.contains$default((CharSequence) str2, (char) codePointAt, false, 2, (Object) null) && ((codePointAt != 37 || (z && (!z2 || Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(str, i3, i2)))) && (codePointAt != 43 || !z3)))) {
                    i3 += Character.charCount(codePointAt);
                } else {
                    Buffer buffer = new Buffer();
                    buffer.Illllllllllll(str, i, i3);
                    Wwwwwwwwwwwwwwwwwwwwwww(buffer, str, i3, i2, str2, z, z2, z3, z4, charset);
                    return buffer.Kkkkk();
                }
            }
            return str.substring(i, i2);
        }

        public Companion() {
        }
    }

    public HttpUrl(@NotNull String str, @NotNull String str2, @NotNull String str3, @NotNull String str4, int i, @NotNull List<String> list, @Nullable List<String> list2, @Nullable String str5, @NotNull String str6) {
        this.f12324Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = str;
        this.f12323Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = str2;
        this.f12322Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = str3;
        this.f12321Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = str4;
        this.f12320Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww = i;
        this.f12319Wwwwwwwwwwwwwwwwwwwwwwwwwwwww = list;
        this.f12318Wwwwwwwwwwwwwwwwwwwwwwwwwwww = list2;
        this.f12317Wwwwwwwwwwwwwwwwwwwwwwwwwww = str5;
        this.f12316Wwwwwwwwwwwwwwwwwwwwwwwwww = str6;
        this.f12315Wwwwwwwwwwwwwwwwwwwwwwwww = Intrinsics.areEqual(str, "https");
    }

    @JvmStatic
    @JvmName(name = "get")
    @NotNull
    public static final HttpUrl Wwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull String str) {
        return Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(str);
    }

    @JvmName(name = "url")
    @NotNull
    public final URL Wwwwwwwwwwwww() {
        try {
            return new URL(this.f12316Wwwwwwwwwwwwwwwwwwwwwwwwww);
        } catch (MalformedURLException e) {
            throw new RuntimeException(e);
        }
    }

    @JvmName(name = "uri")
    @NotNull
    public final URI Wwwwwwwwwwwwww() {
        String builder = Wwwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwww().toString();
        try {
            return new URI(builder);
        } catch (URISyntaxException e) {
            try {
                return URI.create(new Regex("[\\u0000-\\u001F\\u007F-\\u009F\\p{javaWhitespace}]").replace(builder, ""));
            } catch (Exception unused) {
                throw new RuntimeException(e);
            }
        }
    }

    @JvmName(name = "scheme")
    @NotNull
    public final String Wwwwwwwwwwwwwww() {
        return this.f12324Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    @Nullable
    public final HttpUrl Wwwwwwwwwwwwwwww(@NotNull String str) {
        Builder Wwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwww(str);
        if (Wwwwwwwwwwwwwwwwwwwwwww2 == null) {
            return null;
        }
        return Wwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
    }

    @NotNull
    public final String Wwwwwwwwwwwwwwwww() {
        return Wwwwwwwwwwwwwwwwwwwwwww("/...").Www("").Wwwwwwwwwwwwwwwww("").Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().toString();
    }

    @JvmName(name = "queryParameterNames")
    @NotNull
    public final Set<String> Wwwwwwwwwwwwwwwwww() {
        if (this.f12318Wwwwwwwwwwwwwwwwwwwwwwwwwwww == null) {
            return SetsKt.emptySet();
        }
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        IntProgression step = RangesKt.step(RangesKt.until(0, this.f12318Wwwwwwwwwwwwwwwwwwwwwwwwwwww.size()), 2);
        int first = step.getFirst();
        int last = step.getLast();
        int step2 = step.getStep();
        if ((step2 > 0 && first <= last) || (step2 < 0 && last <= first)) {
            while (true) {
                int i = first + step2;
                linkedHashSet.add(this.f12318Wwwwwwwwwwwwwwwwwwwwwwwwwwww.get(first));
                if (first == last) {
                    break;
                }
                first = i;
            }
        }
        return Collections.unmodifiableSet(linkedHashSet);
    }

    @Nullable
    public final String Wwwwwwwwwwwwwwwwwww(@NotNull String str) {
        List<String> list = this.f12318Wwwwwwwwwwwwwwwwwwwwwwwwwwww;
        if (list == null) {
            return null;
        }
        IntProgression step = RangesKt.step(RangesKt.until(0, list.size()), 2);
        int first = step.getFirst();
        int last = step.getLast();
        int step2 = step.getStep();
        if ((step2 > 0 && first <= last) || (step2 < 0 && last <= first)) {
            while (true) {
                int i = first + step2;
                if (Intrinsics.areEqual(str, this.f12318Wwwwwwwwwwwwwwwwwwwwwwwwwwww.get(first))) {
                    return this.f12318Wwwwwwwwwwwwwwwwwwwwwwwwwwww.get(first + 1);
                }
                if (first == last) {
                    break;
                }
                first = i;
            }
        }
        return null;
    }

    @JvmName(name = "query")
    @Nullable
    public final String Wwwwwwwwwwwwwwwwwwww() {
        if (this.f12318Wwwwwwwwwwwwwwwwwwwwwwwwwwww == null) {
            return null;
        }
        StringBuilder sb = new StringBuilder();
        Companion.Wwwwwwwwwwwwwwwwwwwwwwww(this.f12318Wwwwwwwwwwwwwwwwwwwwwwwwwwww, sb);
        return sb.toString();
    }

    @JvmName(name = "port")
    public final int Wwwwwwwwwwwwwwwwwwwww() {
        return this.f12320Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    @JvmName(name = "pathSegments")
    @NotNull
    public final List<String> Wwwwwwwwwwwwwwwwwwwwww() {
        return this.f12319Wwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    @Nullable
    public final Builder Wwwwwwwwwwwwwwwwwwwwwww(@NotNull String str) {
        try {
            return new Builder().Wwwwwwwwwwwwwwwwww(this, str);
        } catch (IllegalArgumentException unused) {
            return null;
        }
    }

    @NotNull
    public final Builder Wwwwwwwwwwwwwwwwwwwwwwww() {
        int i;
        Builder builder = new Builder();
        builder.Wwww(this.f12324Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
        builder.Wwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwww());
        builder.Wwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
        builder.Wwwwww(this.f12321Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
        if (this.f12320Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww != Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.f12324Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww)) {
            i = this.f12320Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        } else {
            i = -1;
        }
        builder.Wwwww(i);
        builder.Wwwwwwwwwwwwwwwwwwwwwwwwwww().clear();
        builder.Wwwwwwwwwwwwwwwwwwwwwwwwwww().addAll(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
        builder.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwww());
        builder.Wwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
        return builder;
    }

    public final boolean Wwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f12315Wwwwwwwwwwwwwwwwwwwwwwwww;
    }

    @JvmName(name = "host")
    @NotNull
    public final String Wwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f12321Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    @JvmName(name = "encodedUsername")
    @NotNull
    public final String Wwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        if (this.f12323Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.length() == 0) {
            return "";
        }
        int length = this.f12324Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.length() + 3;
        String str = this.f12316Wwwwwwwwwwwwwwwwwwwwwwwwww;
        return this.f12316Wwwwwwwwwwwwwwwwwwwwwwwwww.substring(length, Util.Wwwwwwwwwwwwwwwwww(str, ":@", length, str.length()));
    }

    @JvmName(name = "encodedQuery")
    @Nullable
    public final String Wwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        if (this.f12318Wwwwwwwwwwwwwwwwwwwwwwwwwwww == null) {
            return null;
        }
        int indexOf$default = StringsKt.indexOf$default((CharSequence) this.f12316Wwwwwwwwwwwwwwwwwwwwwwwwww, '?', 0, false, 6, (Object) null) + 1;
        String str = this.f12316Wwwwwwwwwwwwwwwwwwwwwwwwww;
        return this.f12316Wwwwwwwwwwwwwwwwwwwwwwwwww.substring(indexOf$default, Util.Wwwwwwwwwwwwwwwwwww(str, '#', indexOf$default, str.length()));
    }

    @JvmName(name = "encodedPathSegments")
    @NotNull
    public final List<String> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        int indexOf$default = StringsKt.indexOf$default((CharSequence) this.f12316Wwwwwwwwwwwwwwwwwwwwwwwwww, '/', this.f12324Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.length() + 3, false, 4, (Object) null);
        String str = this.f12316Wwwwwwwwwwwwwwwwwwwwwwwwww;
        int Wwwwwwwwwwwwwwwwww2 = Util.Wwwwwwwwwwwwwwwwww(str, "?#", indexOf$default, str.length());
        ArrayList arrayList = new ArrayList();
        while (indexOf$default < Wwwwwwwwwwwwwwwwww2) {
            int i = indexOf$default + 1;
            int Wwwwwwwwwwwwwwwwwww2 = Util.Wwwwwwwwwwwwwwwwwww(this.f12316Wwwwwwwwwwwwwwwwwwwwwwwwww, '/', i, Wwwwwwwwwwwwwwwwww2);
            arrayList.add(this.f12316Wwwwwwwwwwwwwwwwwwwwwwwwww.substring(i, Wwwwwwwwwwwwwwwwwww2));
            indexOf$default = Wwwwwwwwwwwwwwwwwww2;
        }
        return arrayList;
    }

    @JvmName(name = "encodedPath")
    @NotNull
    public final String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        int indexOf$default = StringsKt.indexOf$default((CharSequence) this.f12316Wwwwwwwwwwwwwwwwwwwwwwwwww, '/', this.f12324Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.length() + 3, false, 4, (Object) null);
        String str = this.f12316Wwwwwwwwwwwwwwwwwwwwwwwwww;
        return this.f12316Wwwwwwwwwwwwwwwwwwwwwwwwww.substring(indexOf$default, Util.Wwwwwwwwwwwwwwwwww(str, "?#", indexOf$default, str.length()));
    }

    @JvmName(name = "encodedPassword")
    @NotNull
    public final String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        if (this.f12322Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.length() == 0) {
            return "";
        }
        int indexOf$default = StringsKt.indexOf$default((CharSequence) this.f12316Wwwwwwwwwwwwwwwwwwwwwwwwww, '@', 0, false, 6, (Object) null);
        return this.f12316Wwwwwwwwwwwwwwwwwwwwwwwwww.substring(StringsKt.indexOf$default((CharSequence) this.f12316Wwwwwwwwwwwwwwwwwwwwwwwwww, (char) AbstractJsonLexerKt.COLON, this.f12324Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.length() + 3, false, 4, (Object) null) + 1, indexOf$default);
    }

    @JvmName(name = "encodedFragment")
    @Nullable
    public final String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        if (this.f12317Wwwwwwwwwwwwwwwwwwwwwwwwwww == null) {
            return null;
        }
        return this.f12316Wwwwwwwwwwwwwwwwwwwwwwwwww.substring(StringsKt.indexOf$default((CharSequence) this.f12316Wwwwwwwwwwwwwwwwwwwwwwwwww, '#', 0, false, 6, (Object) null) + 1);
    }

    public boolean equals(@Nullable Object obj) {
        if ((obj instanceof HttpUrl) && Intrinsics.areEqual(((HttpUrl) obj).f12316Wwwwwwwwwwwwwwwwwwwwwwwwww, this.f12316Wwwwwwwwwwwwwwwwwwwwwwwwww)) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        return this.f12316Wwwwwwwwwwwwwwwwwwwwwwwwww.hashCode();
    }

    @NotNull
    public String toString() {
        return this.f12316Wwwwwwwwwwwwwwwwwwwwwwwwww;
    }
}
