package okhttp3;

import com.unity3d.services.core.network.core.OkHttp3Client;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Locale;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import kotlin.Metadata;
import kotlin.internal.ProgressionUtilKt;
import kotlin.jvm.JvmName;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u0011\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\n\u0018\u0000  2\u00020\u0001:\u0001 B/\b\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0002\u0012\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00020\u0006¢\u0006\u0004\b\b\u0010\tJ\u001d\u0010\f\u001a\u0004\u0018\u00010\n2\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\nH\u0007¢\u0006\u0004\b\f\u0010\rJ\u0017\u0010\u000f\u001a\u0004\u0018\u00010\u00022\u0006\u0010\u000e\u001a\u00020\u0002¢\u0006\u0004\b\u000f\u0010\u0010J\u000f\u0010\u0011\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u0011\u0010\u0012J\u001a\u0010\u0015\u001a\u00020\u00142\b\u0010\u0013\u001a\u0004\u0018\u00010\u0001H\u0096\u0002¢\u0006\u0004\b\u0015\u0010\u0016J\u000f\u0010\u0018\u001a\u00020\u0017H\u0016¢\u0006\u0004\b\u0018\u0010\u0019R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001a\u0010\u001bR\u0017\u0010\u0004\u001a\u00020\u00028\u0007¢\u0006\f\n\u0004\b\u001c\u0010\u001b\u001a\u0004\b\u001d\u0010\u0012R\u0017\u0010\u0005\u001a\u00020\u00028\u0007¢\u0006\f\n\u0004\b\f\u0010\u001b\u001a\u0004\b\u0005\u0010\u0012R\u001a\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00020\u00068\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001e\u0010\u001f¨\u0006!"}, d2 = {"Lokhttp3/MediaType;", "", "", "mediaType", "type", "subtype", "", "parameterNamesAndValues", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V", "Ljava/nio/charset/Charset;", "defaultValue", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Ljava/nio/charset/Charset;)Ljava/nio/charset/Charset;", "name", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Ljava/lang/String;)Ljava/lang/String;", "toString", "()Ljava/lang/String;", "other", "", "equals", "(Ljava/lang/Object;)Z", "", "hashCode", "()I", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Ljava/lang/String;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Wwwwwwwwwwwwwwwwwwwwwwwwwww", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "[Ljava/lang/String;", "Companion", OkHttp3Client.NETWORK_CLIENT_OKHTTP}, k = 1, mv = {1, 6, 0}, xi = 48)
/* loaded from: classes7.dex */
public final class MediaType {
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww */
    public final String[] f12337Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww */
    public final String f12338Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww */
    public final String f12339Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww */
    public final String f12340Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @NotNull
    public static final Companion Companion = new Companion(null);

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww */
    public static final Pattern f12336Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww = Pattern.compile("([a-zA-Z0-9-!#$%&'*+.^_`{|}~]+)/([a-zA-Z0-9-!#$%&'*+.^_`{|}~]+)");

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwww */
    public static final Pattern f12335Wwwwwwwwwwwwwwwwwwwwwwwwwwwww = Pattern.compile(";\\s*(?:([a-zA-Z0-9-!#$%&'*+.^_`{|}~]+)=(?:([a-zA-Z0-9-!#$%&'*+.^_`{|}~]+)|\"([^\"]*)\"))?");

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\b\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0013\u0010\u0006\u001a\u00020\u0005*\u00020\u0004H\u0007¢\u0006\u0004\b\u0006\u0010\u0007J\u0015\u0010\b\u001a\u0004\u0018\u00010\u0005*\u00020\u0004H\u0007¢\u0006\u0004\b\b\u0010\u0007R\u001c\u0010\u000b\u001a\n \n*\u0004\u0018\u00010\t0\t8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000b\u0010\fR\u0014\u0010\r\u001a\u00020\u00048\u0002X\u0082T¢\u0006\u0006\n\u0004\b\r\u0010\u000eR\u0014\u0010\u000f\u001a\u00020\u00048\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u000f\u0010\u000eR\u001c\u0010\u0010\u001a\n \n*\u0004\u0018\u00010\t0\t8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0010\u0010\f¨\u0006\u0011"}, d2 = {"Lokhttp3/MediaType$Companion;", "", "<init>", "()V", "", "Lokhttp3/MediaType;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Ljava/lang/String;)Lokhttp3/MediaType;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Ljava/util/regex/Pattern;", "kotlin.jvm.PlatformType", "PARAMETER", "Ljava/util/regex/Pattern;", "QUOTED", "Ljava/lang/String;", "TOKEN", "TYPE_SUBTYPE", OkHttp3Client.NETWORK_CLIENT_OKHTTP}, k = 1, mv = {1, 6, 0}, xi = 48)
    /* loaded from: classes7.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @JvmStatic
        @JvmName(name = "parse")
        @Nullable
        public final MediaType Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull String str) {
            try {
                return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(str);
            } catch (IllegalArgumentException unused) {
                return null;
            }
        }

        @JvmStatic
        @JvmName(name = "get")
        @NotNull
        public final MediaType Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull String str) {
            Matcher matcher = MediaType.f12336Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww.matcher(str);
            if (matcher.lookingAt()) {
                String group = matcher.group(1);
                Locale locale = Locale.US;
                String lowerCase = group.toLowerCase(locale);
                String lowerCase2 = matcher.group(2).toLowerCase(locale);
                ArrayList arrayList = new ArrayList();
                Matcher matcher2 = MediaType.f12335Wwwwwwwwwwwwwwwwwwwwwwwwwwwww.matcher(str);
                int end = matcher.end();
                while (end < str.length()) {
                    matcher2.region(end, str.length());
                    if (matcher2.lookingAt()) {
                        String group2 = matcher2.group(1);
                        if (group2 == null) {
                            end = matcher2.end();
                        } else {
                            String group3 = matcher2.group(2);
                            if (group3 == null) {
                                group3 = matcher2.group(3);
                            } else if (StringsKt.startsWith$default(group3, "'", false, 2, (Object) null) && StringsKt.endsWith$default(group3, "'", false, 2, (Object) null) && group3.length() > 2) {
                                group3 = group3.substring(1, group3.length() - 1);
                            }
                            arrayList.add(group2);
                            arrayList.add(group3);
                            end = matcher2.end();
                        }
                    } else {
                        throw new IllegalArgumentException(("Parameter is not formatted correctly: \"" + str.substring(end) + "\" for: \"" + str + '\"').toString());
                    }
                }
                Object[] array = arrayList.toArray(new String[0]);
                if (array != null) {
                    return new MediaType(str, lowerCase, lowerCase2, (String[]) array, null);
                }
                throw new NullPointerException("null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>");
            }
            throw new IllegalArgumentException(("No subtype found for: \"" + str + '\"').toString());
        }

        public Companion() {
        }
    }

    public /* synthetic */ MediaType(String str, String str2, String str3, String[] strArr, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, str2, str3, strArr);
    }

    @JvmStatic
    @JvmName(name = "parse")
    @Nullable
    public static final MediaType Wwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull String str) {
        return Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(str);
    }

    @JvmStatic
    @JvmName(name = "get")
    @NotNull
    public static final MediaType Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull String str) {
        return Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(str);
    }

    public static /* synthetic */ Charset Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(MediaType mediaType, Charset charset, int i, Object obj) {
        if ((i & 1) != 0) {
            charset = null;
        }
        return mediaType.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(charset);
    }

    @JvmName(name = "type")
    @NotNull
    public final String Wwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f12339Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    @Nullable
    public final String Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull String str) {
        int i = 0;
        int progressionLastElement = ProgressionUtilKt.getProgressionLastElement(0, this.f12337Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.length - 1, 2);
        if (progressionLastElement < 0) {
            return null;
        }
        while (true) {
            int i2 = i + 2;
            if (StringsKt.equals(this.f12337Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww[i], str, true)) {
                return this.f12337Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww[i + 1];
            }
            if (i != progressionLastElement) {
                i = i2;
            } else {
                return null;
            }
        }
    }

    @JvmOverloads
    @Nullable
    public final Charset Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@Nullable Charset charset) {
        String Wwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwww("charset");
        if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwww2 != null) {
            try {
            } catch (IllegalArgumentException unused) {
                return charset;
            }
        }
        return Charset.forName(Wwwwwwwwwwwwwwwwwwwwwwwwwwwww2);
    }

    public boolean equals(@Nullable Object obj) {
        if ((obj instanceof MediaType) && Intrinsics.areEqual(((MediaType) obj).f12340Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, this.f12340Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww)) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        return this.f12340Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.hashCode();
    }

    @NotNull
    public String toString() {
        return this.f12340Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    public MediaType(String str, String str2, String str3, String[] strArr) {
        this.f12340Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = str;
        this.f12339Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = str2;
        this.f12338Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = str3;
        this.f12337Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = strArr;
    }
}
