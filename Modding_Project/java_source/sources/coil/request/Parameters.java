package coil.request;

import coil.util.Collections;
import com.google.firebase.remoteconfig.RemoteConfigConstants;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.TuplesKt;
import kotlin.collections.MapsKt;
import kotlin.jvm.JvmField;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.markers.KMappedMarker;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0010\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\u0010$\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0010(\n\u0002\b\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\b\u0018\u0000  2\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00040\u00020\u0001:\u0003! \"B\u001d\b\u0002\u0012\u0012\u0010\u0006\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00040\u0005¢\u0006\u0004\b\u0007\u0010\bB\t\b\u0016¢\u0006\u0004\b\u0007\u0010\tJ\r\u0010\u000b\u001a\u00020\n¢\u0006\u0004\b\u000b\u0010\fJ\u0019\u0010\r\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00030\u0005¢\u0006\u0004\b\r\u0010\u000eJ\"\u0010\u0010\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00040\u00020\u000fH\u0096\u0002¢\u0006\u0004\b\u0010\u0010\u0011J\u001a\u0010\u0014\u001a\u00020\n2\b\u0010\u0013\u001a\u0004\u0018\u00010\u0012H\u0096\u0002¢\u0006\u0004\b\u0014\u0010\u0015J\u000f\u0010\u0017\u001a\u00020\u0016H\u0016¢\u0006\u0004\b\u0017\u0010\u0018J\u000f\u0010\u0019\u001a\u00020\u0003H\u0016¢\u0006\u0004\b\u0019\u0010\u001aJ\r\u0010\u001c\u001a\u00020\u001b¢\u0006\u0004\b\u001c\u0010\u001dR \u0010\u0006\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00040\u00058\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001e\u0010\u001f¨\u0006#"}, d2 = {"Lcoil/request/Parameters;", "", "Lkotlin/Pair;", "", "Lcoil/request/Parameters$Entry;", "", RemoteConfigConstants.ResponseFieldKey.ENTRIES, "<init>", "(Ljava/util/Map;)V", "()V", "", "isEmpty", "()Z", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "()Ljava/util/Map;", "", "iterator", "()Ljava/util/Iterator;", "", "other", "equals", "(Ljava/lang/Object;)Z", "", "hashCode", "()I", "toString", "()Ljava/lang/String;", "Lcoil/request/Parameters$Builder;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "()Lcoil/request/Parameters$Builder;", "Wwwwwwwwwwwwwwwwwwwwwwwww", "Ljava/util/Map;", "Companion", "Builder", "Entry", "coil-base_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class Parameters implements Iterable<Pair<? extends String, ? extends Entry>>, KMappedMarker {
    @NotNull
    public static final Companion Companion = new Companion(null);
    @JvmField
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final Parameters f2141Wwwwwwwwwwwwwwwwwwwwwwww = new Parameters();
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Map<String, Entry> f2142Wwwwwwwwwwwwwwwwwwwwwwwww;

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u0010\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u0005"}, d2 = {"Lcoil/request/Parameters$Companion;", "", "()V", "EMPTY", "Lcoil/request/Parameters;", "coil-base_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public Companion() {
        }
    }

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u000b\u0018\u00002\u00020\u0001J\u001a\u0010\u0004\u001a\u00020\u00032\b\u0010\u0002\u001a\u0004\u0018\u00010\u0001H\u0096\u0002¢\u0006\u0004\b\u0004\u0010\u0005J\u000f\u0010\u0007\u001a\u00020\u0006H\u0016¢\u0006\u0004\b\u0007\u0010\bJ\u000f\u0010\n\u001a\u00020\tH\u0016¢\u0006\u0004\b\n\u0010\u000bR\u0019\u0010\u0010\u001a\u0004\u0018\u00010\u00018\u0006¢\u0006\f\n\u0004\b\f\u0010\r\u001a\u0004\b\u000e\u0010\u000fR\u0019\u0010\u0013\u001a\u0004\u0018\u00010\t8\u0006¢\u0006\f\n\u0004\b\u0011\u0010\u0012\u001a\u0004\b\f\u0010\u000b¨\u0006\u0014"}, d2 = {"Lcoil/request/Parameters$Entry;", "", "other", "", "equals", "(Ljava/lang/Object;)Z", "", "hashCode", "()I", "", "toString", "()Ljava/lang/String;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Ljava/lang/Object;", "getValue", "()Ljava/lang/Object;", "value", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Ljava/lang/String;", "memoryCacheKey", "coil-base_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class Entry {
        @Nullable

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final String f2144Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        @Nullable

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final Object f2145Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        @Nullable
        public final String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            return this.f2144Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof Entry) {
                Entry entry = (Entry) obj;
                if (Intrinsics.areEqual(this.f2145Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, entry.f2145Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww) && Intrinsics.areEqual(this.f2144Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, entry.f2144Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww)) {
                    return true;
                }
                return false;
            }
            return false;
        }

        public int hashCode() {
            int i;
            Object obj = this.f2145Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
            int i2 = 0;
            if (obj != null) {
                i = obj.hashCode();
            } else {
                i = 0;
            }
            int i3 = i * 31;
            String str = this.f2144Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
            if (str != null) {
                i2 = str.hashCode();
            }
            return i3 + i2;
        }

        @NotNull
        public String toString() {
            return "Entry(value=" + this.f2145Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww + ", memoryCacheKey=" + this.f2144Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww + ')';
        }
    }

    public /* synthetic */ Parameters(Map map, DefaultConstructorMarker defaultConstructorMarker) {
        this(map);
    }

    @NotNull
    public final Builder Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return new Builder(this);
    }

    @NotNull
    public final Map<String, String> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        if (isEmpty()) {
            return MapsKt.emptyMap();
        }
        Map<String, Entry> map = this.f2142Wwwwwwwwwwwwwwwwwwwwwwwww;
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (Map.Entry<String, Entry> entry : map.entrySet()) {
            String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = entry.getValue().Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
            if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 != null) {
                linkedHashMap.put(entry.getKey(), Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2);
            }
        }
        return linkedHashMap;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if ((obj instanceof Parameters) && Intrinsics.areEqual(this.f2142Wwwwwwwwwwwwwwwwwwwwwwwww, ((Parameters) obj).f2142Wwwwwwwwwwwwwwwwwwwwwwwww)) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        return this.f2142Wwwwwwwwwwwwwwwwwwwwwwwww.hashCode();
    }

    public final boolean isEmpty() {
        return this.f2142Wwwwwwwwwwwwwwwwwwwwwwwww.isEmpty();
    }

    @Override // java.lang.Iterable
    @NotNull
    public Iterator<Pair<? extends String, ? extends Entry>> iterator() {
        Map<String, Entry> map = this.f2142Wwwwwwwwwwwwwwwwwwwwwwwww;
        ArrayList arrayList = new ArrayList(map.size());
        for (Map.Entry<String, Entry> entry : map.entrySet()) {
            arrayList.add(TuplesKt.to(entry.getKey(), entry.getValue()));
        }
        return arrayList.iterator();
    }

    @NotNull
    public String toString() {
        return "Parameters(entries=" + this.f2142Wwwwwwwwwwwwwwwwwwwwwwwww + ')';
    }

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010%\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u00020\u0001B\t\b\u0016¢\u0006\u0004\b\u0002\u0010\u0003B\u0011\b\u0016\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0002\u0010\u0006J\r\u0010\u0007\u001a\u00020\u0004¢\u0006\u0004\b\u0007\u0010\bR \u0010\r\u001a\u000e\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\u000b0\t8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0007\u0010\f¨\u0006\u000e"}, d2 = {"Lcoil/request/Parameters$Builder;", "", "<init>", "()V", "Lcoil/request/Parameters;", "parameters", "(Lcoil/request/Parameters;)V", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "()Lcoil/request/Parameters;", "", "", "Lcoil/request/Parameters$Entry;", "Ljava/util/Map;", RemoteConfigConstants.ResponseFieldKey.ENTRIES, "coil-base_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class Builder {
        @NotNull

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final Map<String, Entry> f2143Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        public Builder() {
            this.f2143Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new LinkedHashMap();
        }

        @NotNull
        public final Parameters Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            return new Parameters(Collections.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.f2143Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww), null);
        }

        public Builder(@NotNull Parameters parameters) {
            this.f2143Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = MapsKt.toMutableMap(parameters.f2142Wwwwwwwwwwwwwwwwwwwwwwwww);
        }
    }

    public Parameters(Map<String, Entry> map) {
        this.f2142Wwwwwwwwwwwwwwwwwwwwwwwww = map;
    }

    public Parameters() {
        this(MapsKt.emptyMap());
    }
}
