package okhttp3;

import com.google.firebase.analytics.FirebaseAnalytics;
import com.unity3d.services.core.network.core.OkHttp3Client;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import java.util.TreeMap;
import java.util.TreeSet;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.TuplesKt;
import kotlin.collections.CollectionsKt;
import kotlin.internal.ProgressionUtilKt;
import kotlin.jvm.JvmName;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.ArrayIteratorKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.StringCompanionObject;
import kotlin.jvm.internal.markers.KMappedMarker;
import kotlin.text.StringsKt;
import kotlinx.serialization.json.internal.AbstractJsonLexerKt;
import okhttp3.internal.Util;
import okhttp3.internal.http.DatesKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000f\n\u0002\u0018\u0002\n\u0002\u0010\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0010\u0011\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0010\"\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0010(\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0006\n\u0002\u0010$\n\u0002\b\u0007\u0018\u0000 02\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00030\u00020\u0001:\u000210B\u0017\b\u0002\u0012\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00030\u0004¢\u0006\u0004\b\u0006\u0010\u0007J\u001a\u0010\t\u001a\u0004\u0018\u00010\u00032\u0006\u0010\b\u001a\u00020\u0003H\u0086\u0002¢\u0006\u0004\b\t\u0010\nJ\u0017\u0010\f\u001a\u0004\u0018\u00010\u000b2\u0006\u0010\b\u001a\u00020\u0003¢\u0006\u0004\b\f\u0010\rJ\u0015\u0010\u0010\u001a\u00020\u00032\u0006\u0010\u000f\u001a\u00020\u000e¢\u0006\u0004\b\u0010\u0010\u0011J\u0015\u0010\u0012\u001a\u00020\u00032\u0006\u0010\u000f\u001a\u00020\u000e¢\u0006\u0004\b\u0012\u0010\u0011J\u0013\u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\u00030\u0013¢\u0006\u0004\b\u0014\u0010\u0015J\u001b\u0010\u0017\u001a\b\u0012\u0004\u0012\u00020\u00030\u00162\u0006\u0010\b\u001a\u00020\u0003¢\u0006\u0004\b\u0017\u0010\u0018J\r\u0010\u001a\u001a\u00020\u0019¢\u0006\u0004\b\u001a\u0010\u001bJ\"\u0010\u001d\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00030\u00020\u001cH\u0096\u0002¢\u0006\u0004\b\u001d\u0010\u001eJ\r\u0010 \u001a\u00020\u001f¢\u0006\u0004\b \u0010!J\u001a\u0010%\u001a\u00020$2\b\u0010#\u001a\u0004\u0018\u00010\"H\u0096\u0002¢\u0006\u0004\b%\u0010&J\u000f\u0010'\u001a\u00020\u000eH\u0016¢\u0006\u0004\b'\u0010(J\u000f\u0010)\u001a\u00020\u0003H\u0016¢\u0006\u0004\b)\u0010*J\u001f\u0010,\u001a\u0014\u0012\u0004\u0012\u00020\u0003\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00030\u00160+¢\u0006\u0004\b,\u0010-R\u001a\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00030\u00048\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0017\u0010.R\u0011\u0010/\u001a\u00020\u000e8G¢\u0006\u0006\u001a\u0004\b/\u0010(¨\u00062"}, d2 = {"Lokhttp3/Headers;", "", "Lkotlin/Pair;", "", "", "namesAndValues", "<init>", "([Ljava/lang/String;)V", "name", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Ljava/lang/String;)Ljava/lang/String;", "Ljava/util/Date;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Ljava/lang/String;)Ljava/util/Date;", "", FirebaseAnalytics.Param.INDEX, "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(I)Ljava/lang/String;", "Wwwwwwwwwwwwwwwwwwwwwwwwww", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "()Ljava/util/Set;", "", "Wwwwwwwwwwwwwwwwwwwwwwwww", "(Ljava/lang/String;)Ljava/util/List;", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "()J", "", "iterator", "()Ljava/util/Iterator;", "Lokhttp3/Headers$Builder;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwww", "()Lokhttp3/Headers$Builder;", "", "other", "", "equals", "(Ljava/lang/Object;)Z", "hashCode", "()I", "toString", "()Ljava/lang/String;", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwww", "()Ljava/util/Map;", "[Ljava/lang/String;", "size", "Companion", "Builder", OkHttp3Client.NETWORK_CLIENT_OKHTTP}, k = 1, mv = {1, 6, 0}, xi = 48)
/* loaded from: classes7.dex */
public final class Headers implements Iterable<Pair<? extends String, ? extends String>>, KMappedMarker {
    @NotNull
    public static final Companion Companion = new Companion(null);
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final String[] f12312Wwwwwwwwwwwwwwwwwwwwwwwww;

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0010!\n\u0002\b\u0005\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u0017\u0010\u0006\u001a\u00020\u00002\u0006\u0010\u0005\u001a\u00020\u0004H\u0000¢\u0006\u0004\b\u0006\u0010\u0007J\u0015\u0010\b\u001a\u00020\u00002\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\b\u0010\u0007J\u001d\u0010\u000b\u001a\u00020\u00002\u0006\u0010\t\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\u0004¢\u0006\u0004\b\u000b\u0010\fJ\u001d\u0010\r\u001a\u00020\u00002\u0006\u0010\t\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\u0004¢\u0006\u0004\b\r\u0010\fJ\u0015\u0010\u0010\u001a\u00020\u00002\u0006\u0010\u000f\u001a\u00020\u000e¢\u0006\u0004\b\u0010\u0010\u0011J\u001f\u0010\u0012\u001a\u00020\u00002\u0006\u0010\t\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\u0004H\u0000¢\u0006\u0004\b\u0012\u0010\fJ\u0015\u0010\u0013\u001a\u00020\u00002\u0006\u0010\t\u001a\u00020\u0004¢\u0006\u0004\b\u0013\u0010\u0007J \u0010\u0014\u001a\u00020\u00002\u0006\u0010\t\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\u0004H\u0086\u0002¢\u0006\u0004\b\u0014\u0010\fJ\u001a\u0010\u0015\u001a\u0004\u0018\u00010\u00042\u0006\u0010\t\u001a\u00020\u0004H\u0086\u0002¢\u0006\u0004\b\u0015\u0010\u0016J\r\u0010\u0017\u001a\u00020\u000e¢\u0006\u0004\b\u0017\u0010\u0018R \u0010\u001d\u001a\b\u0012\u0004\u0012\u00020\u00040\u00198\u0000X\u0080\u0004¢\u0006\f\n\u0004\b\b\u0010\u001a\u001a\u0004\b\u001b\u0010\u001c¨\u0006\u001e"}, d2 = {"Lokhttp3/Headers$Builder;", "", "<init>", "()V", "", "line", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Ljava/lang/String;)Lokhttp3/Headers$Builder;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "name", "value", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Headers$Builder;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Lokhttp3/Headers;", "headers", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lokhttp3/Headers;)Lokhttp3/Headers$Builder;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Wwwwwwwwwwwwwwwwwwwwwwwww", "Wwwwwwwwwwwwwwwwwwwwwwww", "Wwwwwwwwwwwwwwwwwwwwwwwwwww", "(Ljava/lang/String;)Ljava/lang/String;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwww", "()Lokhttp3/Headers;", "", "Ljava/util/List;", "Wwwwwwwwwwwwwwwwwwwwwwwwww", "()Ljava/util/List;", "namesAndValues", OkHttp3Client.NETWORK_CLIENT_OKHTTP}, k = 1, mv = {1, 6, 0}, xi = 48)
    /* loaded from: classes7.dex */
    public static final class Builder {
        @NotNull

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final List<String> f12313Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new ArrayList(20);

        @NotNull
        public final Builder Wwwwwwwwwwwwwwwwwwwwwwww(@NotNull String str, @NotNull String str2) {
            Companion companion = Headers.Companion;
            companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(str);
            companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(str2, str);
            Wwwwwwwwwwwwwwwwwwwwwwwww(str);
            Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(str, str2);
            return this;
        }

        @NotNull
        public final Builder Wwwwwwwwwwwwwwwwwwwwwwwww(@NotNull String str) {
            int i = 0;
            while (i < Wwwwwwwwwwwwwwwwwwwwwwwwww().size()) {
                if (StringsKt.equals(str, Wwwwwwwwwwwwwwwwwwwwwwwwww().get(i), true)) {
                    Wwwwwwwwwwwwwwwwwwwwwwwwww().remove(i);
                    Wwwwwwwwwwwwwwwwwwwwwwwwww().remove(i);
                    i -= 2;
                }
                i += 2;
            }
            return this;
        }

        @NotNull
        public final List<String> Wwwwwwwwwwwwwwwwwwwwwwwwww() {
            return this.f12313Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        }

        @Nullable
        public final String Wwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull String str) {
            int size = this.f12313Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.size() - 2;
            int progressionLastElement = ProgressionUtilKt.getProgressionLastElement(size, 0, -2);
            if (progressionLastElement > size) {
                return null;
            }
            while (true) {
                int i = size - 2;
                if (StringsKt.equals(str, this.f12313Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.get(size), true)) {
                    return this.f12313Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.get(size + 1);
                }
                if (size != progressionLastElement) {
                    size = i;
                } else {
                    return null;
                }
            }
        }

        @NotNull
        public final Headers Wwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            Object[] array = this.f12313Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.toArray(new String[0]);
            if (array != null) {
                return new Headers((String[]) array, null);
            }
            throw new NullPointerException("null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>");
        }

        @NotNull
        public final Builder Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull String str, @NotNull String str2) {
            Headers.Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(str);
            Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(str, str2);
            return this;
        }

        @NotNull
        public final Builder Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull String str, @NotNull String str2) {
            Wwwwwwwwwwwwwwwwwwwwwwwwww().add(str);
            Wwwwwwwwwwwwwwwwwwwwwwwwww().add(StringsKt.trim((CharSequence) str2).toString());
            return this;
        }

        @NotNull
        public final Builder Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull String str) {
            int indexOf$default = StringsKt.indexOf$default((CharSequence) str, (char) AbstractJsonLexerKt.COLON, 1, false, 4, (Object) null);
            if (indexOf$default != -1) {
                Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(str.substring(0, indexOf$default), str.substring(indexOf$default + 1));
                return this;
            } else if (str.charAt(0) == ':') {
                Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww("", str.substring(1));
                return this;
            } else {
                Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww("", str);
                return this;
            }
        }

        @NotNull
        public final Builder Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull Headers headers) {
            int size = headers.size();
            for (int i = 0; i < size; i++) {
                Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(headers.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(i), headers.Wwwwwwwwwwwwwwwwwwwwwwwwww(i));
            }
            return this;
        }

        @NotNull
        public final Builder Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull String str, @NotNull String str2) {
            Companion companion = Headers.Companion;
            companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(str);
            companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(str2, str);
            Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(str, str2);
            return this;
        }

        @NotNull
        public final Builder Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull String str) {
            int indexOf$default = StringsKt.indexOf$default((CharSequence) str, (char) AbstractJsonLexerKt.COLON, 0, false, 6, (Object) null);
            if (indexOf$default != -1) {
                Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(StringsKt.trim((CharSequence) str.substring(0, indexOf$default)).toString(), str.substring(indexOf$default + 1));
                return this;
            }
            throw new IllegalArgumentException(Intrinsics.stringPlus("Unexpected header: ", str).toString());
        }
    }

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u0011\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010$\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\b\u0006\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J#\u0010\b\u001a\u00020\u00072\u0012\u0010\u0006\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00050\u0004\"\u00020\u0005H\u0007¢\u0006\u0004\b\b\u0010\tJ\u001f\u0010\u000b\u001a\u00020\u0007*\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00050\nH\u0007¢\u0006\u0004\b\u000b\u0010\fJ'\u0010\u000e\u001a\u0004\u0018\u00010\u00052\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u00042\u0006\u0010\r\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u000e\u0010\u000fJ\u0017\u0010\u0011\u001a\u00020\u00102\u0006\u0010\r\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u0011\u0010\u0012J\u001f\u0010\u0014\u001a\u00020\u00102\u0006\u0010\u0013\u001a\u00020\u00052\u0006\u0010\r\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u0014\u0010\u0015¨\u0006\u0016"}, d2 = {"Lokhttp3/Headers$Companion;", "", "<init>", "()V", "", "", "namesAndValues", "Lokhttp3/Headers;", "Wwwwwwwwwwwwwwwwwwwwwwwwwww", "([Ljava/lang/String;)Lokhttp3/Headers;", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Ljava/util/Map;)Lokhttp3/Headers;", "name", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwww", "([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Ljava/lang/String;)V", "value", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Ljava/lang/String;Ljava/lang/String;)V", OkHttp3Client.NETWORK_CLIENT_OKHTTP}, k = 1, mv = {1, 6, 0}, xi = 48)
    /* loaded from: classes7.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @JvmStatic
        @JvmName(name = "of")
        @NotNull
        public final Headers Wwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull String... strArr) {
            if (strArr.length % 2 == 0) {
                String[] strArr2 = (String[]) strArr.clone();
                int length = strArr2.length;
                int i = 0;
                int i2 = 0;
                while (i2 < length) {
                    int i3 = i2 + 1;
                    String str = strArr2[i2];
                    if (str != null) {
                        strArr2[i2] = StringsKt.trim((CharSequence) str).toString();
                        i2 = i3;
                    } else {
                        throw new IllegalArgumentException("Headers cannot be null");
                    }
                }
                int progressionLastElement = ProgressionUtilKt.getProgressionLastElement(0, strArr2.length - 1, 2);
                if (progressionLastElement >= 0) {
                    while (true) {
                        int i4 = i + 2;
                        String str2 = strArr2[i];
                        String str3 = strArr2[i + 1];
                        Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(str2);
                        Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(str3, str2);
                        if (i == progressionLastElement) {
                            break;
                        }
                        i = i4;
                    }
                }
                return new Headers(strArr2, null);
            }
            throw new IllegalArgumentException("Expected alternating header names and values");
        }

        @JvmStatic
        @JvmName(name = "of")
        @NotNull
        public final Headers Wwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull Map<String, String> map) {
            String[] strArr = new String[map.size() * 2];
            int i = 0;
            for (Map.Entry<String, String> entry : map.entrySet()) {
                String obj = StringsKt.trim((CharSequence) entry.getKey()).toString();
                String obj2 = StringsKt.trim((CharSequence) entry.getValue()).toString();
                Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(obj);
                Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(obj2, obj);
                strArr[i] = obj;
                strArr[i + 1] = obj2;
                i += 2;
            }
            return new Headers(strArr, null);
        }

        public final String Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(String[] strArr, String str) {
            int length = strArr.length - 2;
            int progressionLastElement = ProgressionUtilKt.getProgressionLastElement(length, 0, -2);
            if (progressionLastElement > length) {
                return null;
            }
            while (true) {
                int i = length - 2;
                if (StringsKt.equals(str, strArr[length], true)) {
                    return strArr[length + 1];
                }
                if (length != progressionLastElement) {
                    length = i;
                } else {
                    return null;
                }
            }
        }

        public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(String str, String str2) {
            String stringPlus;
            int length = str.length();
            int i = 0;
            while (i < length) {
                int i2 = i + 1;
                char charAt = str.charAt(i);
                if (charAt != '\t' && (' ' > charAt || charAt >= 127)) {
                    String Wwwwwwwwwwwwwww2 = Util.Wwwwwwwwwwwwwww("Unexpected char %#04x at %d in %s value", Integer.valueOf(charAt), Integer.valueOf(i), str2);
                    if (Util.Kkkkkkkkkkkkkkkkkkkkkkkkk(str2)) {
                        stringPlus = "";
                    } else {
                        stringPlus = Intrinsics.stringPlus(": ", str);
                    }
                    throw new IllegalArgumentException(Intrinsics.stringPlus(Wwwwwwwwwwwwwww2, stringPlus).toString());
                }
                i = i2;
            }
        }

        public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(String str) {
            if (str.length() > 0) {
                int length = str.length();
                int i = 0;
                while (i < length) {
                    int i2 = i + 1;
                    char charAt = str.charAt(i);
                    if ('!' <= charAt && charAt < 127) {
                        i = i2;
                    } else {
                        throw new IllegalArgumentException(Util.Wwwwwwwwwwwwwww("Unexpected char %#04x at %d in header name: %s", Integer.valueOf(charAt), Integer.valueOf(i), str).toString());
                    }
                }
                return;
            }
            throw new IllegalArgumentException("name is empty");
        }

        public Companion() {
        }
    }

    public /* synthetic */ Headers(String[] strArr, DefaultConstructorMarker defaultConstructorMarker) {
        this(strArr);
    }

    @JvmStatic
    @JvmName(name = "of")
    @NotNull
    public static final Headers Wwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull String... strArr) {
        return Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwww(strArr);
    }

    @NotNull
    public final List<String> Wwwwwwwwwwwwwwwwwwwwwwwww(@NotNull String str) {
        int size = size();
        ArrayList arrayList = null;
        int i = 0;
        while (i < size) {
            int i2 = i + 1;
            if (StringsKt.equals(str, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(i), true)) {
                if (arrayList == null) {
                    arrayList = new ArrayList(2);
                }
                arrayList.add(Wwwwwwwwwwwwwwwwwwwwwwwwww(i));
            }
            i = i2;
        }
        if (arrayList != null) {
            return Collections.unmodifiableList(arrayList);
        }
        return CollectionsKt.emptyList();
    }

    @NotNull
    public final String Wwwwwwwwwwwwwwwwwwwwwwwwww(int i) {
        return this.f12312Wwwwwwwwwwwwwwwwwwwwwwwww[(i * 2) + 1];
    }

    @NotNull
    public final Map<String, List<String>> Wwwwwwwwwwwwwwwwwwwwwwwwwww() {
        TreeMap treeMap = new TreeMap(StringsKt.getCASE_INSENSITIVE_ORDER(StringCompanionObject.INSTANCE));
        int size = size();
        int i = 0;
        while (i < size) {
            int i2 = i + 1;
            String lowerCase = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(i).toLowerCase(Locale.US);
            List list = (List) treeMap.get(lowerCase);
            if (list == null) {
                list = new ArrayList(2);
                treeMap.put(lowerCase, list);
            }
            list.add(Wwwwwwwwwwwwwwwwwwwwwwwwww(i));
            i = i2;
        }
        return treeMap;
    }

    @NotNull
    public final Builder Wwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        Builder builder = new Builder();
        CollectionsKt.addAll(builder.Wwwwwwwwwwwwwwwwwwwwwwwwww(), this.f12312Wwwwwwwwwwwwwwwwwwwwwwwww);
        return builder;
    }

    @NotNull
    public final Set<String> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        TreeSet treeSet = new TreeSet(StringsKt.getCASE_INSENSITIVE_ORDER(StringCompanionObject.INSTANCE));
        int size = size();
        for (int i = 0; i < size; i++) {
            treeSet.add(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(i));
        }
        return Collections.unmodifiableSet(treeSet);
    }

    @NotNull
    public final String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(int i) {
        return this.f12312Wwwwwwwwwwwwwwwwwwwwwwwww[i * 2];
    }

    @Nullable
    public final Date Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull String str) {
        String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(str);
        if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 == null) {
            return null;
        }
        return DatesKt.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2);
    }

    @Nullable
    public final String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull String str) {
        return Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.f12312Wwwwwwwwwwwwwwwwwwwwwwwww, str);
    }

    public final long Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        String[] strArr = this.f12312Wwwwwwwwwwwwwwwwwwwwwwwww;
        long length = strArr.length * 2;
        for (int i = 0; i < strArr.length; i++) {
            length += this.f12312Wwwwwwwwwwwwwwwwwwwwwwwww[i].length();
        }
        return length;
    }

    public boolean equals(@Nullable Object obj) {
        if ((obj instanceof Headers) && Arrays.equals(this.f12312Wwwwwwwwwwwwwwwwwwwwwwwww, ((Headers) obj).f12312Wwwwwwwwwwwwwwwwwwwwwwwww)) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        return Arrays.hashCode(this.f12312Wwwwwwwwwwwwwwwwwwwwwwwww);
    }

    @Override // java.lang.Iterable
    @NotNull
    public Iterator<Pair<? extends String, ? extends String>> iterator() {
        int size = size();
        Pair[] pairArr = new Pair[size];
        for (int i = 0; i < size; i++) {
            pairArr[i] = TuplesKt.to(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(i), Wwwwwwwwwwwwwwwwwwwwwwwwww(i));
        }
        return ArrayIteratorKt.iterator(pairArr);
    }

    @JvmName(name = "size")
    public final int size() {
        return this.f12312Wwwwwwwwwwwwwwwwwwwwwwwww.length / 2;
    }

    @NotNull
    public String toString() {
        StringBuilder sb = new StringBuilder();
        int size = size();
        int i = 0;
        while (i < size) {
            int i2 = i + 1;
            String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(i);
            String Wwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwww(i);
            sb.append(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2);
            sb.append(": ");
            if (Util.Kkkkkkkkkkkkkkkkkkkkkkkkk(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2)) {
                Wwwwwwwwwwwwwwwwwwwwwwwwww2 = "██";
            }
            sb.append(Wwwwwwwwwwwwwwwwwwwwwwwwww2);
            sb.append("\n");
            i = i2;
        }
        return sb.toString();
    }

    public Headers(String[] strArr) {
        this.f12312Wwwwwwwwwwwwwwwwwwwwwwwww = strArr;
    }
}
