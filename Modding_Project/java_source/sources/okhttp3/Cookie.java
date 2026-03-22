package okhttp3;

import androidx.collection.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
import androidx.media3.exoplayer.upstream.CmcdData;
import com.google.common.net.HttpHeaders;
import com.mbridge.msdk.MBridgeConstans;
import com.unity3d.services.core.network.core.OkHttp3Client;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.List;
import java.util.Locale;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.JvmName;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Regex;
import kotlin.text.StringsKt;
import okhttp3.internal.HostnamesKt;
import okhttp3.internal.Util;
import okhttp3.internal.http.DatesKt;
import okhttp3.internal.publicsuffix.PublicSuffixDatabase;
import org.codehaus.mojo.animal_sniffer.IgnoreJRERequirement;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\t\n\u0002\u0010\b\n\u0002\b\u001c\u0018\u0000 -2\u00020\u0001:\u0002.-BQ\b\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0007\u001a\u00020\u0002\u0012\u0006\u0010\b\u001a\u00020\u0002\u0012\u0006\u0010\n\u001a\u00020\t\u0012\u0006\u0010\u000b\u001a\u00020\t\u0012\u0006\u0010\f\u001a\u00020\t\u0012\u0006\u0010\r\u001a\u00020\t¢\u0006\u0004\b\u000e\u0010\u000fJ\u001a\u0010\u0011\u001a\u00020\t2\b\u0010\u0010\u001a\u0004\u0018\u00010\u0001H\u0096\u0002¢\u0006\u0004\b\u0011\u0010\u0012J\u000f\u0010\u0014\u001a\u00020\u0013H\u0017¢\u0006\u0004\b\u0014\u0010\u0015J\u000f\u0010\u0016\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u0016\u0010\u0017J\u0017\u0010\u0019\u001a\u00020\u00022\u0006\u0010\u0018\u001a\u00020\tH\u0000¢\u0006\u0004\b\u0019\u0010\u001aR\u0017\u0010\u0003\u001a\u00020\u00028\u0007¢\u0006\f\n\u0004\b\u001b\u0010\u001c\u001a\u0004\b\u001d\u0010\u0017R\u0017\u0010\u0004\u001a\u00020\u00028\u0007¢\u0006\f\n\u0004\b\u001e\u0010\u001c\u001a\u0004\b\u001f\u0010\u0017R\u0017\u0010\u0006\u001a\u00020\u00058\u0007¢\u0006\f\n\u0004\b \u0010!\u001a\u0004\b\"\u0010#R\u0017\u0010\u0007\u001a\u00020\u00028\u0007¢\u0006\f\n\u0004\b$\u0010\u001c\u001a\u0004\b%\u0010\u0017R\u0017\u0010\b\u001a\u00020\u00028\u0007¢\u0006\f\n\u0004\b%\u0010\u001c\u001a\u0004\b&\u0010\u0017R\u0017\u0010\n\u001a\u00020\t8\u0007¢\u0006\f\n\u0004\b\"\u0010'\u001a\u0004\b(\u0010)R\u0017\u0010\u000b\u001a\u00020\t8\u0007¢\u0006\f\n\u0004\b*\u0010'\u001a\u0004\b+\u0010)R\u0017\u0010\f\u001a\u00020\t8\u0007¢\u0006\f\n\u0004\b+\u0010'\u001a\u0004\b,\u0010)R\u0017\u0010\r\u001a\u00020\t8\u0007¢\u0006\f\n\u0004\b\u001d\u0010'\u001a\u0004\b*\u0010)¨\u0006/"}, d2 = {"Lokhttp3/Cookie;", "", "", "name", "value", "", "expiresAt", "domain", MBridgeConstans.DYNAMIC_VIEW_WX_PATH, "", "secure", "httpOnly", "persistent", "hostOnly", "<init>", "(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;ZZZZ)V", "other", "equals", "(Ljava/lang/Object;)Z", "", "hashCode", "()I", "toString", "()Ljava/lang/String;", "forObsoleteRfc2965", "Wwwwwwwwwwwwwwwwwwwww", "(Z)Ljava/lang/String;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Ljava/lang/String;", "Wwwwwwwwwwwwwwwwwwwwwwwwww", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Wwwwwwwwwwwwwwwwwwww", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "J", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwww", "()J", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Wwwwwwwwwwwwwwwwwwwwwwww", "Z", "Wwwwwwwwwwwwwwwwwwwwww", "()Z", "Wwwwwwwwwwwwwwwwwwwwwwwwwwww", "Wwwwwwwwwwwwwwwwwwwwwwwwwww", "Wwwwwwwwwwwwwwwwwwwwwww", "Companion", "Builder", OkHttp3Client.NETWORK_CLIENT_OKHTTP}, k = 1, mv = {1, 6, 0}, xi = 48)
/* loaded from: classes7.dex */
public final class Cookie {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final boolean f12279Wwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final boolean f12280Wwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final boolean f12281Wwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final boolean f12282Wwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final String f12283Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final String f12284Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final long f12285Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final String f12286Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final String f12287Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @NotNull
    public static final Companion Companion = new Companion(null);

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final Pattern f12278Wwwwwwwwwwwwwwwwwwwwwwwww = Pattern.compile("(\\d{2,4})[^\\d]*");

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final Pattern f12277Wwwwwwwwwwwwwwwwwwwwwwww = Pattern.compile("(?i)(jan|feb|mar|apr|may|jun|jul|aug|sep|oct|nov|dec).*");

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final Pattern f12276Wwwwwwwwwwwwwwwwwwwwwww = Pattern.compile("(\\d{1,2})[^\\d]*");

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final Pattern f12275Wwwwwwwwwwwwwwwwwwwwww = Pattern.compile("(\\d{1,2}):(\\d{1,2}):(\\d{1,2})[^\\d]*");

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003R\u0016\u0010\u0007\u001a\u00020\u00048\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0005\u0010\u0006R\u0016\u0010\u000b\u001a\u00020\b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\t\u0010\n¨\u0006\f"}, d2 = {"Lokhttp3/Cookie$Builder;", "", "<init>", "()V", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "J", "expiresAt", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Ljava/lang/String;", MBridgeConstans.DYNAMIC_VIEW_WX_PATH, OkHttp3Client.NETWORK_CLIENT_OKHTTP}, k = 1, mv = {1, 6, 0}, xi = 48)
    /* loaded from: classes7.dex */
    public static final class Builder {

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public long f12289Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = 253402300799999L;
        @NotNull

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public String f12288Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = "/";
    }

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000N\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\f\n\u0002\u0018\u0002\n\u0002\b\u0007\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J!\u0010\t\u001a\u0004\u0018\u00010\b2\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006H\u0007¢\u0006\u0004\b\t\u0010\nJ)\u0010\r\u001a\u0004\u0018\u00010\b2\u0006\u0010\f\u001a\u00020\u000b2\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006H\u0000¢\u0006\u0004\b\r\u0010\u000eJ%\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\b0\u00112\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0010\u001a\u00020\u000fH\u0007¢\u0006\u0004\b\u0012\u0010\u0013J\u001f\u0010\u0017\u001a\u00020\u00162\u0006\u0010\u0014\u001a\u00020\u00062\u0006\u0010\u0015\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\u0017\u0010\u0018J'\u0010\u001d\u001a\u00020\u000b2\u0006\u0010\u0019\u001a\u00020\u00062\u0006\u0010\u001b\u001a\u00020\u001a2\u0006\u0010\u001c\u001a\u00020\u001aH\u0002¢\u0006\u0004\b\u001d\u0010\u001eJ/\u0010!\u001a\u00020\u001a2\u0006\u0010\u001f\u001a\u00020\u00062\u0006\u0010\u001b\u001a\u00020\u001a2\u0006\u0010\u001c\u001a\u00020\u001a2\u0006\u0010 \u001a\u00020\u0016H\u0002¢\u0006\u0004\b!\u0010\"J\u0017\u0010#\u001a\u00020\u000b2\u0006\u0010\u0019\u001a\u00020\u0006H\u0002¢\u0006\u0004\b#\u0010$J\u0017\u0010%\u001a\u00020\u00062\u0006\u0010\u0019\u001a\u00020\u0006H\u0002¢\u0006\u0004\b%\u0010&R\u001c\u0010)\u001a\n (*\u0004\u0018\u00010'0'8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b)\u0010*R\u001c\u0010+\u001a\n (*\u0004\u0018\u00010'0'8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b+\u0010*R\u001c\u0010,\u001a\n (*\u0004\u0018\u00010'0'8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b,\u0010*R\u001c\u0010-\u001a\n (*\u0004\u0018\u00010'0'8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b-\u0010*¨\u0006."}, d2 = {"Lokhttp3/Cookie$Companion;", "", "<init>", "()V", "Lokhttp3/HttpUrl;", "url", "", "setCookie", "Lokhttp3/Cookie;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lokhttp3/HttpUrl;Ljava/lang/String;)Lokhttp3/Cookie;", "", "currentTimeMillis", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(JLokhttp3/HttpUrl;Ljava/lang/String;)Lokhttp3/Cookie;", "Lokhttp3/Headers;", "headers", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lokhttp3/HttpUrl;Lokhttp3/Headers;)Ljava/util/List;", "urlHost", "domain", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Ljava/lang/String;Ljava/lang/String;)Z", CmcdData.Factory.STREAMING_FORMAT_SS, "", "pos", "limit", "Wwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Ljava/lang/String;II)J", "input", "invert", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Ljava/lang/String;IIZ)I", "Wwwwwwwwwwwwwwwwwwwwwwwwwww", "(Ljava/lang/String;)J", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Ljava/lang/String;)Ljava/lang/String;", "Ljava/util/regex/Pattern;", "kotlin.jvm.PlatformType", "DAY_OF_MONTH_PATTERN", "Ljava/util/regex/Pattern;", "MONTH_PATTERN", "TIME_PATTERN", "YEAR_PATTERN", OkHttp3Client.NETWORK_CLIENT_OKHTTP}, k = 1, mv = {1, 6, 0}, xi = 48)
    /* loaded from: classes7.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final long Wwwwwwwwwwwwwwwwwwwwwwwwwww(String str) {
            try {
                long parseLong = Long.parseLong(str);
                if (parseLong <= 0) {
                    return Long.MIN_VALUE;
                }
                return parseLong;
            } catch (NumberFormatException e) {
                if (new Regex("-?\\d+").matches(str)) {
                    if (StringsKt.startsWith$default(str, "-", false, 2, (Object) null)) {
                        return Long.MIN_VALUE;
                    }
                    return Long.MAX_VALUE;
                }
                throw e;
            }
        }

        public final long Wwwwwwwwwwwwwwwwwwwwwwwwwwww(String str, int i, int i2) {
            int Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(str, i, i2, false);
            Matcher matcher = Cookie.f12275Wwwwwwwwwwwwwwwwwwwwww.matcher(str);
            int i3 = -1;
            int i4 = -1;
            int i5 = -1;
            int i6 = -1;
            int i7 = -1;
            int i8 = -1;
            while (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 < i2) {
                int Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(str, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 + 1, i2, true);
                matcher.region(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3);
                if (i4 == -1 && matcher.usePattern(Cookie.f12275Wwwwwwwwwwwwwwwwwwwwww).matches()) {
                    i4 = Integer.parseInt(matcher.group(1));
                    i7 = Integer.parseInt(matcher.group(2));
                    i8 = Integer.parseInt(matcher.group(3));
                } else if (i5 == -1 && matcher.usePattern(Cookie.f12276Wwwwwwwwwwwwwwwwwwwwwww).matches()) {
                    i5 = Integer.parseInt(matcher.group(1));
                } else if (i6 == -1 && matcher.usePattern(Cookie.f12277Wwwwwwwwwwwwwwwwwwwwwwww).matches()) {
                    i6 = StringsKt.indexOf$default((CharSequence) Cookie.f12277Wwwwwwwwwwwwwwwwwwwwwwww.pattern(), matcher.group(1).toLowerCase(Locale.US), 0, false, 6, (Object) null) / 4;
                } else if (i3 == -1 && matcher.usePattern(Cookie.f12278Wwwwwwwwwwwwwwwwwwwwwwwww).matches()) {
                    i3 = Integer.parseInt(matcher.group(1));
                }
                Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(str, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3 + 1, i2, false);
            }
            if (70 <= i3 && i3 < 100) {
                i3 += 1900;
            }
            if (i3 >= 0 && i3 < 70) {
                i3 += 2000;
            }
            if (i3 >= 1601) {
                if (i6 != -1) {
                    if (1 <= i5 && i5 < 32) {
                        if (i4 >= 0 && i4 < 24) {
                            if (i7 >= 0 && i7 < 60) {
                                if (i8 >= 0 && i8 < 60) {
                                    GregorianCalendar gregorianCalendar = new GregorianCalendar(Util.f12490Wwwwwwwwwwwwwwwwwwwwwwwwwwwww);
                                    gregorianCalendar.setLenient(false);
                                    gregorianCalendar.set(1, i3);
                                    gregorianCalendar.set(2, i6 - 1);
                                    gregorianCalendar.set(5, i5);
                                    gregorianCalendar.set(11, i4);
                                    gregorianCalendar.set(12, i7);
                                    gregorianCalendar.set(13, i8);
                                    gregorianCalendar.set(14, 0);
                                    return gregorianCalendar.getTimeInMillis();
                                }
                                throw new IllegalArgumentException("Failed requirement.");
                            }
                            throw new IllegalArgumentException("Failed requirement.");
                        }
                        throw new IllegalArgumentException("Failed requirement.");
                    }
                    throw new IllegalArgumentException("Failed requirement.");
                }
                throw new IllegalArgumentException("Failed requirement.");
            }
            throw new IllegalArgumentException("Failed requirement.");
        }

        public final String Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(String str) {
            if (!StringsKt.endsWith$default(str, ".", false, 2, (Object) null)) {
                String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = HostnamesKt.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(StringsKt.removePrefix(str, (CharSequence) "."));
                if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 != null) {
                    return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
                }
                throw new IllegalArgumentException();
            }
            throw new IllegalArgumentException("Failed requirement.");
        }

        @JvmStatic
        @NotNull
        public final List<Cookie> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull HttpUrl httpUrl, @NotNull Headers headers) {
            List<String> Wwwwwwwwwwwwwwwwwwwwwwwww2 = headers.Wwwwwwwwwwwwwwwwwwwwwwwww(HttpHeaders.SET_COOKIE);
            int size = Wwwwwwwwwwwwwwwwwwwwwwwww2.size();
            ArrayList arrayList = null;
            int i = 0;
            while (i < size) {
                int i2 = i + 1;
                Cookie Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(httpUrl, Wwwwwwwwwwwwwwwwwwwwwwwww2.get(i));
                if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 != null) {
                    if (arrayList == null) {
                        arrayList = new ArrayList();
                    }
                    arrayList.add(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2);
                }
                i = i2;
            }
            if (arrayList != null) {
                return Collections.unmodifiableList(arrayList);
            }
            return CollectionsKt.emptyList();
        }

        @Nullable
        public final Cookie Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(long j, @NotNull HttpUrl httpUrl, @NotNull String str) {
            long j2;
            long j3;
            String str2;
            int Wwwwwwwwwwwwwwwww2 = Util.Wwwwwwwwwwwwwwwww(str, ';', 0, 0, 6, null);
            int Wwwwwwwwwwwwwwwww3 = Util.Wwwwwwwwwwwwwwwww(str, '=', 0, Wwwwwwwwwwwwwwwww2, 2, null);
            Cookie cookie = null;
            if (Wwwwwwwwwwwwwwwww3 == Wwwwwwwwwwwwwwwww2) {
                return null;
            }
            String Kkkkkk = Util.Kkkkkk(str, 0, Wwwwwwwwwwwwwwwww3, 1, null);
            if (Kkkkkk.length() == 0 || Util.Wwwwwwwwww(Kkkkkk) != -1) {
                return null;
            }
            String Kkkkkkk = Util.Kkkkkkk(str, Wwwwwwwwwwwwwwwww3 + 1, Wwwwwwwwwwwwwwwww2);
            if (Util.Wwwwwwwwww(Kkkkkkk) != -1) {
                return null;
            }
            int i = Wwwwwwwwwwwwwwwww2 + 1;
            int length = str.length();
            String str3 = null;
            String str4 = null;
            boolean z = false;
            boolean z2 = false;
            boolean z3 = false;
            boolean z4 = true;
            long j4 = -1;
            long j5 = 253402300799999L;
            while (i < length) {
                int Wwwwwwwwwwwwwwwwwww2 = Util.Wwwwwwwwwwwwwwwwwww(str, ';', i, length);
                int Wwwwwwwwwwwwwwwwwww3 = Util.Wwwwwwwwwwwwwwwwwww(str, '=', i, Wwwwwwwwwwwwwwwwwww2);
                String Kkkkkkk2 = Util.Kkkkkkk(str, i, Wwwwwwwwwwwwwwwwwww3);
                if (Wwwwwwwwwwwwwwwwwww3 < Wwwwwwwwwwwwwwwwwww2) {
                    str2 = Util.Kkkkkkk(str, Wwwwwwwwwwwwwwwwwww3 + 1, Wwwwwwwwwwwwwwwwwww2);
                } else {
                    str2 = "";
                }
                Cookie cookie2 = cookie;
                if (StringsKt.equals(Kkkkkkk2, "expires", true)) {
                    try {
                        j5 = Wwwwwwwwwwwwwwwwwwwwwwwwwwww(str2, 0, str2.length());
                    } catch (NumberFormatException | IllegalArgumentException unused) {
                    }
                } else if (StringsKt.equals(Kkkkkkk2, "max-age", true)) {
                    j4 = Wwwwwwwwwwwwwwwwwwwwwwwwwww(str2);
                } else {
                    if (StringsKt.equals(Kkkkkkk2, "domain", true)) {
                        str4 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(str2);
                        z4 = false;
                    } else if (StringsKt.equals(Kkkkkkk2, MBridgeConstans.DYNAMIC_VIEW_WX_PATH, true)) {
                        str3 = str2;
                    } else if (StringsKt.equals(Kkkkkkk2, "secure", true)) {
                        z3 = true;
                    } else if (StringsKt.equals(Kkkkkkk2, "httponly", true)) {
                        z = true;
                    }
                    i = Wwwwwwwwwwwwwwwwwww2 + 1;
                    cookie = cookie2;
                }
                z2 = true;
                i = Wwwwwwwwwwwwwwwwwww2 + 1;
                cookie = cookie2;
            }
            Cookie cookie3 = cookie;
            if (j4 == Long.MIN_VALUE) {
                j2 = Long.MIN_VALUE;
            } else if (j4 != -1) {
                if (j4 <= 9223372036854775L) {
                    j3 = j4 * 1000;
                } else {
                    j3 = Long.MAX_VALUE;
                }
                long j6 = j + j3;
                if (j6 >= j && j6 <= 253402300799999L) {
                    j2 = j6;
                } else {
                    j2 = 253402300799999L;
                }
            } else {
                j2 = j5;
            }
            String Wwwwwwwwwwwwwwwwwwwwwwwwww2 = httpUrl.Wwwwwwwwwwwwwwwwwwwwwwwwww();
            if (str4 == null) {
                str4 = Wwwwwwwwwwwwwwwwwwwwwwwwww2;
            } else if (!Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwww2, str4)) {
                return cookie3;
            }
            if (Wwwwwwwwwwwwwwwwwwwwwwwwww2.length() != str4.length() && PublicSuffixDatabase.Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(str4) == null) {
                return cookie3;
            }
            String str5 = "/";
            if (str3 == null || !StringsKt.startsWith$default(str3, "/", false, 2, (Object) cookie3)) {
                String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = httpUrl.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
                int lastIndexOf$default = StringsKt.lastIndexOf$default((CharSequence) Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2, '/', 0, false, 6, (Object) null);
                if (lastIndexOf$default != 0) {
                    str5 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.substring(0, lastIndexOf$default);
                }
                str3 = str5;
            }
            String str6 = str3;
            return new Cookie(Kkkkkk, Kkkkkkk, j2, str4, str6, z3, z, z2, z4, null);
        }

        @JvmStatic
        @Nullable
        public final Cookie Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull HttpUrl httpUrl, @NotNull String str) {
            return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(System.currentTimeMillis(), httpUrl, str);
        }

        public final boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(String str, String str2) {
            if (Intrinsics.areEqual(str, str2)) {
                return true;
            }
            if (StringsKt.endsWith$default(str, str2, false, 2, (Object) null) && str.charAt((str.length() - str2.length()) - 1) == '.' && !Util.Wwwwwwwwwwwwwwwwwwwwwwwwww(str)) {
                return true;
            }
            return false;
        }

        public final int Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(String str, int i, int i2, boolean z) {
            boolean z2;
            while (i < i2) {
                int i3 = i + 1;
                char charAt = str.charAt(i);
                if ((charAt >= ' ' || charAt == '\t') && charAt < 127 && ((charAt > '9' || '0' > charAt) && ((charAt > 'z' || 'a' > charAt) && ((charAt > 'Z' || 'A' > charAt) && charAt != ':')))) {
                    z2 = false;
                } else {
                    z2 = true;
                }
                if (z2 == (!z)) {
                    return i;
                }
                i = i3;
            }
            return i2;
        }

        public Companion() {
        }
    }

    public /* synthetic */ Cookie(String str, String str2, long j, String str3, String str4, boolean z, boolean z2, boolean z3, boolean z4, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, str2, j, str3, str4, z, z2, z3, z4);
    }

    @JvmStatic
    @Nullable
    public static final Cookie Wwwwwwwwwwwwwwwwwwwwwwwww(@NotNull HttpUrl httpUrl, @NotNull String str) {
        return Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(httpUrl, str);
    }

    @JvmName(name = "value")
    @NotNull
    public final String Wwwwwwwwwwwwwwwwwwww() {
        return this.f12286Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    @NotNull
    public final String Wwwwwwwwwwwwwwwwwwwww(boolean z) {
        StringBuilder sb = new StringBuilder();
        sb.append(Wwwwwwwwwwwwwwwwwwwwwwwwww());
        sb.append('=');
        sb.append(Wwwwwwwwwwwwwwwwwwww());
        if (Wwwwwwwwwwwwwwwwwwwwwww()) {
            if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwww() == Long.MIN_VALUE) {
                sb.append("; max-age=0");
            } else {
                sb.append("; expires=");
                sb.append(DatesKt.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(new Date(Wwwwwwwwwwwwwwwwwwwwwwwwwwwww())));
            }
        }
        if (!Wwwwwwwwwwwwwwwwwwwwwwwwwwww()) {
            sb.append("; domain=");
            if (z) {
                sb.append(".");
            }
            sb.append(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
        }
        sb.append("; path=");
        sb.append(Wwwwwwwwwwwwwwwwwwwwwwww());
        if (Wwwwwwwwwwwwwwwwwwwwww()) {
            sb.append("; secure");
        }
        if (Wwwwwwwwwwwwwwwwwwwwwwwwwww()) {
            sb.append("; httponly");
        }
        return sb.toString();
    }

    @JvmName(name = "secure")
    public final boolean Wwwwwwwwwwwwwwwwwwwwww() {
        return this.f12282Wwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    @JvmName(name = "persistent")
    public final boolean Wwwwwwwwwwwwwwwwwwwwwww() {
        return this.f12280Wwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    @JvmName(name = MBridgeConstans.DYNAMIC_VIEW_WX_PATH)
    @NotNull
    public final String Wwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f12283Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    @JvmName(name = "name")
    @NotNull
    public final String Wwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f12287Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    @JvmName(name = "httpOnly")
    public final boolean Wwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f12281Wwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    @JvmName(name = "hostOnly")
    public final boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f12279Wwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    @JvmName(name = "expiresAt")
    public final long Wwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f12285Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    @JvmName(name = "domain")
    @NotNull
    public final String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f12284Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    public boolean equals(@Nullable Object obj) {
        if (obj instanceof Cookie) {
            Cookie cookie = (Cookie) obj;
            if (Intrinsics.areEqual(cookie.f12287Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, this.f12287Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww) && Intrinsics.areEqual(cookie.f12286Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, this.f12286Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww) && cookie.f12285Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww == this.f12285Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww && Intrinsics.areEqual(cookie.f12284Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, this.f12284Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww) && Intrinsics.areEqual(cookie.f12283Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww, this.f12283Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww) && cookie.f12282Wwwwwwwwwwwwwwwwwwwwwwwwwwwww == this.f12282Wwwwwwwwwwwwwwwwwwwwwwwwwwwww && cookie.f12281Wwwwwwwwwwwwwwwwwwwwwwwwwwww == this.f12281Wwwwwwwwwwwwwwwwwwwwwwwwwwww && cookie.f12280Wwwwwwwwwwwwwwwwwwwwwwwwwww == this.f12280Wwwwwwwwwwwwwwwwwwwwwwwwwww && cookie.f12279Wwwwwwwwwwwwwwwwwwwwwwwwww == this.f12279Wwwwwwwwwwwwwwwwwwwwwwwwww) {
                return true;
            }
            return false;
        }
        return false;
    }

    @IgnoreJRERequirement
    public int hashCode() {
        return ((((((((((((((((527 + this.f12287Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.hashCode()) * 31) + this.f12286Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.hashCode()) * 31) + Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.f12285Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww)) * 31) + this.f12284Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.hashCode()) * 31) + this.f12283Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww.hashCode()) * 31) + androidx.privacysandbox.ads.adservices.adid.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.f12282Wwwwwwwwwwwwwwwwwwwwwwwwwwwww)) * 31) + androidx.privacysandbox.ads.adservices.adid.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.f12281Wwwwwwwwwwwwwwwwwwwwwwwwwwww)) * 31) + androidx.privacysandbox.ads.adservices.adid.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.f12280Wwwwwwwwwwwwwwwwwwwwwwwwwww)) * 31) + androidx.privacysandbox.ads.adservices.adid.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.f12279Wwwwwwwwwwwwwwwwwwwwwwwwww);
    }

    @NotNull
    public String toString() {
        return Wwwwwwwwwwwwwwwwwwwww(false);
    }

    public Cookie(String str, String str2, long j, String str3, String str4, boolean z, boolean z2, boolean z3, boolean z4) {
        this.f12287Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = str;
        this.f12286Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = str2;
        this.f12285Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = j;
        this.f12284Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = str3;
        this.f12283Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww = str4;
        this.f12282Wwwwwwwwwwwwwwwwwwwwwwwwwwwww = z;
        this.f12281Wwwwwwwwwwwwwwwwwwwwwwwwwwww = z2;
        this.f12280Wwwwwwwwwwwwwwwwwwwwwwwwwww = z3;
        this.f12279Wwwwwwwwwwwwwwwwwwwwwwwwww = z4;
    }
}
