package coil.memory;

import android.graphics.Bitmap;
import androidx.collection.LruCache;
import coil.memory.MemoryCache;
import coil.memory.RealStrongMemoryCache;
import coil.util.Bitmaps;
import java.util.Map;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000G\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0002\b\b\n\u0002\b\t*\u0001\u001c\b\u0000\u0018\u00002\u00020\u0001:\u0001#B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007J\u0019\u0010\u000b\u001a\u0004\u0018\u00010\n2\u0006\u0010\t\u001a\u00020\bH\u0016¢\u0006\u0004\b\u000b\u0010\fJ3\u0010\u0014\u001a\u00020\u00132\u0006\u0010\t\u001a\u00020\b2\u0006\u0010\u000e\u001a\u00020\r2\u0012\u0010\u0012\u001a\u000e\u0012\u0004\u0012\u00020\u0010\u0012\u0004\u0012\u00020\u00110\u000fH\u0016¢\u0006\u0004\b\u0014\u0010\u0015J\u000f\u0010\u0016\u001a\u00020\u0013H\u0016¢\u0006\u0004\b\u0016\u0010\u0017J\u0017\u0010\u0019\u001a\u00020\u00132\u0006\u0010\u0018\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u0019\u0010\u001aR\u0014\u0010\u0005\u001a\u00020\u00048\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0019\u0010\u001bR\u0014\u0010\u001e\u001a\u00020\u001c8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000b\u0010\u001dR\u0014\u0010!\u001a\u00020\u00028VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u001f\u0010 R\u0014\u0010\u0003\u001a\u00020\u00028VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\"\u0010 ¨\u0006$"}, d2 = {"Lcoil/memory/RealStrongMemoryCache;", "Lcoil/memory/StrongMemoryCache;", "", "maxSize", "Lcoil/memory/WeakMemoryCache;", "weakMemoryCache", "<init>", "(ILcoil/memory/WeakMemoryCache;)V", "Lcoil/memory/MemoryCache$Key;", "key", "Lcoil/memory/MemoryCache$Value;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lcoil/memory/MemoryCache$Key;)Lcoil/memory/MemoryCache$Value;", "Landroid/graphics/Bitmap;", "bitmap", "", "", "", "extras", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lcoil/memory/MemoryCache$Key;Landroid/graphics/Bitmap;Ljava/util/Map;)V", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "()V", "level", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(I)V", "Lcoil/memory/WeakMemoryCache;", "coil/memory/RealStrongMemoryCache$cache$1", "Lcoil/memory/RealStrongMemoryCache$cache$1;", "cache", "Wwwwwwwwwwwwwwwwwwwwwwwwwwww", "()I", "size", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwww", "InternalValue", "coil-base_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class RealStrongMemoryCache implements StrongMemoryCache {
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final RealStrongMemoryCache$cache$1 f1967Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final WeakMemoryCache f1968Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\r\b\u0002\u0018\u00002\u00020\u0001B+\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0012\u0010\u0006\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00010\u0004\u0012\u0006\u0010\b\u001a\u00020\u0007¢\u0006\u0004\b\t\u0010\nR\u0017\u0010\u0003\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u000b\u0010\f\u001a\u0004\b\u000b\u0010\rR#\u0010\u0006\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00010\u00048\u0006¢\u0006\f\n\u0004\b\u000e\u0010\u000f\u001a\u0004\b\u000e\u0010\u0010R\u0017\u0010\b\u001a\u00020\u00078\u0006¢\u0006\f\n\u0004\b\u0011\u0010\u0012\u001a\u0004\b\u0011\u0010\u0013¨\u0006\u0014"}, d2 = {"Lcoil/memory/RealStrongMemoryCache$InternalValue;", "", "Landroid/graphics/Bitmap;", "bitmap", "", "", "extras", "", "size", "<init>", "(Landroid/graphics/Bitmap;Ljava/util/Map;I)V", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Landroid/graphics/Bitmap;", "()Landroid/graphics/Bitmap;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Ljava/util/Map;", "()Ljava/util/Map;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "I", "()I", "coil-base_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class InternalValue {

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final int f1969Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        @NotNull

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final Map<String, Object> f1970Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        @NotNull

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final Bitmap f1971Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        public InternalValue(@NotNull Bitmap bitmap, @NotNull Map<String, ? extends Object> map, int i) {
            this.f1971Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = bitmap;
            this.f1970Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = map;
            this.f1969Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = i;
        }

        public final int Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            return this.f1969Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        }

        @NotNull
        public final Map<String, Object> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            return this.f1970Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        }

        @NotNull
        public final Bitmap Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            return this.f1971Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        }
    }

    /* JADX WARN: Type inference failed for: r2v1, types: [coil.memory.RealStrongMemoryCache$cache$1] */
    public RealStrongMemoryCache(final int i, @NotNull WeakMemoryCache weakMemoryCache) {
        this.f1968Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = weakMemoryCache;
        this.f1967Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new LruCache<MemoryCache.Key, InternalValue>(i) { // from class: coil.memory.RealStrongMemoryCache$cache$1
            @Override // androidx.collection.LruCache
            /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww */
            public int sizeOf(@NotNull MemoryCache.Key key, @NotNull RealStrongMemoryCache.InternalValue internalValue) {
                return internalValue.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
            }

            @Override // androidx.collection.LruCache
            /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww */
            public void entryRemoved(boolean z, @NotNull MemoryCache.Key key, @NotNull RealStrongMemoryCache.InternalValue internalValue, @Nullable RealStrongMemoryCache.InternalValue internalValue2) {
                WeakMemoryCache weakMemoryCache2;
                weakMemoryCache2 = this.f1968Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
                weakMemoryCache2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(key, internalValue.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(), internalValue.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(), internalValue.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
            }
        };
    }

    public int Wwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return size();
    }

    public int Wwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return maxSize();
    }

    public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        evictAll();
    }

    @Override // coil.memory.StrongMemoryCache
    public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull MemoryCache.Key key, @NotNull Bitmap bitmap, @NotNull Map<String, ? extends Object> map) {
        int Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Bitmaps.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(bitmap);
        if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 <= Wwwwwwwwwwwwwwwwwwwwwwwwwwwww()) {
            put(key, new InternalValue(bitmap, map, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2));
            return;
        }
        remove(key);
        this.f1968Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(key, bitmap, map, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2);
    }

    @Override // coil.memory.StrongMemoryCache
    @Nullable
    public MemoryCache.Value Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull MemoryCache.Key key) {
        InternalValue internalValue = get(key);
        if (internalValue != null) {
            return new MemoryCache.Value(internalValue.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(), internalValue.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
        }
        return null;
    }

    @Override // coil.memory.StrongMemoryCache
    public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(int i) {
        if (i >= 40) {
            Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        } else if (10 <= i && i < 20) {
            trimToSize(Wwwwwwwwwwwwwwwwwwwwwwwwwwww() / 2);
        }
    }
}
