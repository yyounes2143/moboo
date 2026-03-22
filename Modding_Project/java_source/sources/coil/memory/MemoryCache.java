package coil.memory;

import android.content.Context;
import android.graphics.Bitmap;
import android.os.Parcel;
import android.os.Parcelable;
import coil.memory.MemoryCache;
import coil.util.Utils;
import com.google.firebase.remoteconfig.FirebaseRemoteConfig;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.Metadata;
import kotlin.collections.MapsKt;
import kotlin.jvm.JvmField;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0007\bf\u0018\u00002\u00020\u0001:\u0003\u000f\u0010\u0011J\u001a\u0010\u0005\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0003\u001a\u00020\u0002H¦\u0002¢\u0006\u0004\b\u0005\u0010\u0006J \u0010\t\u001a\u00020\b2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0007\u001a\u00020\u0004H¦\u0002¢\u0006\u0004\b\t\u0010\nJ\u0017\u0010\r\u001a\u00020\b2\u0006\u0010\f\u001a\u00020\u000bH&¢\u0006\u0004\b\r\u0010\u000e¨\u0006\u0012"}, d2 = {"Lcoil/memory/MemoryCache;", "", "Lcoil/memory/MemoryCache$Key;", "key", "Lcoil/memory/MemoryCache$Value;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lcoil/memory/MemoryCache$Key;)Lcoil/memory/MemoryCache$Value;", "value", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lcoil/memory/MemoryCache$Key;Lcoil/memory/MemoryCache$Value;)V", "", "level", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(I)V", "Builder", "Key", "Value", "coil-base_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public interface MemoryCache {

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0006\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0006\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005J\r\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\u0007\u0010\bR\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0007\u0010\tR\u0016\u0010\r\u001a\u00020\n8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u000b\u0010\fR\u0016\u0010\u0011\u001a\u00020\u000e8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u000f\u0010\u0010R\u0016\u0010\u0015\u001a\u00020\u00128\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0013\u0010\u0014R\u0016\u0010\u0017\u001a\u00020\u00128\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0016\u0010\u0014¨\u0006\u0018"}, d2 = {"Lcoil/memory/MemoryCache$Builder;", "", "Landroid/content/Context;", "context", "<init>", "(Landroid/content/Context;)V", "Lcoil/memory/MemoryCache;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "()Lcoil/memory/MemoryCache;", "Landroid/content/Context;", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "D", "maxSizePercent", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "I", "maxSizeBytes", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Z", "strongReferencesEnabled", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "weakReferencesEnabled", "coil-base_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class Builder {

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public int f1954Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public double f1955Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        @NotNull

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final Context f1956Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public boolean f1953Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = true;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public boolean f1952Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww = true;

        public Builder(@NotNull Context context) {
            this.f1956Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = context;
            this.f1955Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = Utils.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(context);
        }

        @NotNull
        public final MemoryCache Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            WeakMemoryCache emptyWeakMemoryCache;
            StrongMemoryCache emptyStrongMemoryCache;
            int i;
            if (this.f1952Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww) {
                emptyWeakMemoryCache = new RealWeakMemoryCache();
            } else {
                emptyWeakMemoryCache = new EmptyWeakMemoryCache();
            }
            if (this.f1953Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww) {
                double d = this.f1955Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
                if (d > FirebaseRemoteConfig.DEFAULT_VALUE_FOR_DOUBLE) {
                    i = Utils.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.f1956Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, d);
                } else {
                    i = this.f1954Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
                }
                if (i > 0) {
                    emptyStrongMemoryCache = new RealStrongMemoryCache(i, emptyWeakMemoryCache);
                } else {
                    emptyStrongMemoryCache = new EmptyStrongMemoryCache(emptyWeakMemoryCache);
                }
            } else {
                emptyStrongMemoryCache = new EmptyStrongMemoryCache(emptyWeakMemoryCache);
            }
            return new RealMemoryCache(emptyStrongMemoryCache, emptyWeakMemoryCache);
        }
    }

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u000b\u0018\u00002\u00020\u0001B%\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0014\b\u0002\u0010\u0006\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00010\u0004¢\u0006\u0004\b\u0007\u0010\bJ\u001a\u0010\u000b\u001a\u00020\n2\b\u0010\t\u001a\u0004\u0018\u00010\u0001H\u0096\u0002¢\u0006\u0004\b\u000b\u0010\fJ\u000f\u0010\u000e\u001a\u00020\rH\u0016¢\u0006\u0004\b\u000e\u0010\u000fJ\u000f\u0010\u0010\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u0010\u0010\u0011R\u0017\u0010\u0003\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0012\u0010\u0013\u001a\u0004\b\u0012\u0010\u0014R#\u0010\u0006\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00010\u00048\u0006¢\u0006\f\n\u0004\b\u0015\u0010\u0016\u001a\u0004\b\u0015\u0010\u0017¨\u0006\u0018"}, d2 = {"Lcoil/memory/MemoryCache$Value;", "", "Landroid/graphics/Bitmap;", "bitmap", "", "", "extras", "<init>", "(Landroid/graphics/Bitmap;Ljava/util/Map;)V", "other", "", "equals", "(Ljava/lang/Object;)Z", "", "hashCode", "()I", "toString", "()Ljava/lang/String;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Landroid/graphics/Bitmap;", "()Landroid/graphics/Bitmap;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Ljava/util/Map;", "()Ljava/util/Map;", "coil-base_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class Value {
        @NotNull

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final Map<String, Object> f1960Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        @NotNull

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final Bitmap f1961Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        public Value(@NotNull Bitmap bitmap, @NotNull Map<String, ? extends Object> map) {
            this.f1961Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = bitmap;
            this.f1960Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = map;
        }

        @NotNull
        public final Map<String, Object> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            return this.f1960Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        }

        @NotNull
        public final Bitmap Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            return this.f1961Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof Value) {
                Value value = (Value) obj;
                if (Intrinsics.areEqual(this.f1961Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, value.f1961Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww) && Intrinsics.areEqual(this.f1960Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, value.f1960Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww)) {
                    return true;
                }
                return false;
            }
            return false;
        }

        public int hashCode() {
            return (this.f1961Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.hashCode() * 31) + this.f1960Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.hashCode();
        }

        @NotNull
        public String toString() {
            return "Value(bitmap=" + this.f1961Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww + ", extras=" + this.f1960Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww + ')';
        }
    }

    void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull Key key, @NotNull Value value);

    @Nullable
    Value Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull Key key);

    void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(int i);

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010$\n\u0002\b\u0005\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\f\u0018\u0000 \"2\u00020\u0001:\u0001#B%\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0014\b\u0002\u0010\u0005\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007J-\u0010\b\u001a\u00020\u00002\b\b\u0002\u0010\u0003\u001a\u00020\u00022\u0014\b\u0002\u0010\u0005\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00020\u0004¢\u0006\u0004\b\b\u0010\tJ\u001a\u0010\r\u001a\u00020\f2\b\u0010\u000b\u001a\u0004\u0018\u00010\nH\u0096\u0002¢\u0006\u0004\b\r\u0010\u000eJ\u000f\u0010\u0010\u001a\u00020\u000fH\u0016¢\u0006\u0004\b\u0010\u0010\u0011J\u000f\u0010\u0012\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u0012\u0010\u0013J\u000f\u0010\u0014\u001a\u00020\u000fH\u0016¢\u0006\u0004\b\u0014\u0010\u0011J\u001f\u0010\u0019\u001a\u00020\u00182\u0006\u0010\u0016\u001a\u00020\u00152\u0006\u0010\u0017\u001a\u00020\u000fH\u0016¢\u0006\u0004\b\u0019\u0010\u001aR\u0017\u0010\u0003\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u001b\u0010\u001c\u001a\u0004\b\u001d\u0010\u0013R#\u0010\u0005\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00020\u00048\u0006¢\u0006\f\n\u0004\b\u001e\u0010\u001f\u001a\u0004\b \u0010!¨\u0006$"}, d2 = {"Lcoil/memory/MemoryCache$Key;", "Landroid/os/Parcelable;", "", "key", "", "extras", "<init>", "(Ljava/lang/String;Ljava/util/Map;)V", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Ljava/lang/String;Ljava/util/Map;)Lcoil/memory/MemoryCache$Key;", "", "other", "", "equals", "(Ljava/lang/Object;)Z", "", "hashCode", "()I", "toString", "()Ljava/lang/String;", "describeContents", "Landroid/os/Parcel;", "parcel", "flags", "", "writeToParcel", "(Landroid/os/Parcel;I)V", "Wwwwwwwwwwwwwwwwwwwwwwwww", "Ljava/lang/String;", "getKey", "Wwwwwwwwwwwwwwwwwwwwwwww", "Ljava/util/Map;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "()Ljava/util/Map;", "Wwwwwwwwwwwwwwwwwwwwwww", "Companion", "coil-base_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class Key implements Parcelable {
        @NotNull

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final Map<String, String> f1958Wwwwwwwwwwwwwwwwwwwwwwww;
        @NotNull

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final String f1959Wwwwwwwwwwwwwwwwwwwwwwwww;
        @NotNull

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public static final Companion f1957Wwwwwwwwwwwwwwwwwwwwwww = new Companion(null);
        @JvmField
        @Deprecated
        @NotNull
        public static final Parcelable.Creator<Key> CREATOR = new Parcelable.Creator<Key>() { // from class: coil.memory.MemoryCache$Key$Companion$CREATOR$1
            @Override // android.os.Parcelable.Creator
            @NotNull
            /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww */
            public MemoryCache.Key[] newArray(int i) {
                return new MemoryCache.Key[i];
            }

            @Override // android.os.Parcelable.Creator
            @NotNull
            /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww */
            public MemoryCache.Key createFromParcel(@NotNull Parcel parcel) {
                String readString = parcel.readString();
                int readInt = parcel.readInt();
                LinkedHashMap linkedHashMap = new LinkedHashMap(readInt);
                for (int i = 0; i < readInt; i++) {
                    linkedHashMap.put(parcel.readString(), parcel.readString());
                }
                return new MemoryCache.Key(readString, linkedHashMap);
            }
        };

        /* compiled from: Proguard */
        @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b\u0082\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u0006"}, d2 = {"Lcoil/memory/MemoryCache$Key$Companion;", "", "()V", "CREATOR", "Landroid/os/Parcelable$Creator;", "Lcoil/memory/MemoryCache$Key;", "coil-base_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
        /* loaded from: classes3.dex */
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            public Companion() {
            }
        }

        public Key(@NotNull String str, @NotNull Map<String, String> map) {
            this.f1959Wwwwwwwwwwwwwwwwwwwwwwwww = str;
            this.f1958Wwwwwwwwwwwwwwwwwwwwwwww = map;
        }

        /* JADX WARN: Multi-variable type inference failed */
        public static /* synthetic */ Key Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Key key, String str, Map map, int i, Object obj) {
            if ((i & 1) != 0) {
                str = key.f1959Wwwwwwwwwwwwwwwwwwwwwwwww;
            }
            if ((i & 2) != 0) {
                map = key.f1958Wwwwwwwwwwwwwwwwwwwwwwww;
            }
            return key.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(str, map);
        }

        @NotNull
        public final Map<String, String> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            return this.f1958Wwwwwwwwwwwwwwwwwwwwwwww;
        }

        @NotNull
        public final Key Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull String str, @NotNull Map<String, String> map) {
            return new Key(str, map);
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof Key) {
                Key key = (Key) obj;
                if (Intrinsics.areEqual(this.f1959Wwwwwwwwwwwwwwwwwwwwwwwww, key.f1959Wwwwwwwwwwwwwwwwwwwwwwwww) && Intrinsics.areEqual(this.f1958Wwwwwwwwwwwwwwwwwwwwwwww, key.f1958Wwwwwwwwwwwwwwwwwwwwwwww)) {
                    return true;
                }
                return false;
            }
            return false;
        }

        public int hashCode() {
            return (this.f1959Wwwwwwwwwwwwwwwwwwwwwwwww.hashCode() * 31) + this.f1958Wwwwwwwwwwwwwwwwwwwwwwww.hashCode();
        }

        @NotNull
        public String toString() {
            return "Key(key=" + this.f1959Wwwwwwwwwwwwwwwwwwwwwwwww + ", extras=" + this.f1958Wwwwwwwwwwwwwwwwwwwwwwww + ')';
        }

        @Override // android.os.Parcelable
        public void writeToParcel(@NotNull Parcel parcel, int i) {
            parcel.writeString(this.f1959Wwwwwwwwwwwwwwwwwwwwwwwww);
            parcel.writeInt(this.f1958Wwwwwwwwwwwwwwwwwwwwwwww.size());
            for (Map.Entry<String, String> entry : this.f1958Wwwwwwwwwwwwwwwwwwwwwwww.entrySet()) {
                parcel.writeString(entry.getKey());
                parcel.writeString(entry.getValue());
            }
        }

        public /* synthetic */ Key(String str, Map map, int i, DefaultConstructorMarker defaultConstructorMarker) {
            this(str, (i & 2) != 0 ? MapsKt.emptyMap() : map);
        }
    }
}
