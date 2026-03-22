package coil.memory;

import coil.memory.MemoryCache;
import coil.util.Collections;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0006\b\u0000\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007J\u001a\u0010\u000b\u001a\u0004\u0018\u00010\n2\u0006\u0010\t\u001a\u00020\bH\u0096\u0002¢\u0006\u0004\b\u000b\u0010\fJ \u0010\u000f\u001a\u00020\u000e2\u0006\u0010\t\u001a\u00020\b2\u0006\u0010\r\u001a\u00020\nH\u0096\u0002¢\u0006\u0004\b\u000f\u0010\u0010J\u0017\u0010\u0013\u001a\u00020\u000e2\u0006\u0010\u0012\u001a\u00020\u0011H\u0016¢\u0006\u0004\b\u0013\u0010\u0014R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0013\u0010\u0015R\u0014\u0010\u0005\u001a\u00020\u00048\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000b\u0010\u0016¨\u0006\u0017"}, d2 = {"Lcoil/memory/RealMemoryCache;", "Lcoil/memory/MemoryCache;", "Lcoil/memory/StrongMemoryCache;", "strongMemoryCache", "Lcoil/memory/WeakMemoryCache;", "weakMemoryCache", "<init>", "(Lcoil/memory/StrongMemoryCache;Lcoil/memory/WeakMemoryCache;)V", "Lcoil/memory/MemoryCache$Key;", "key", "Lcoil/memory/MemoryCache$Value;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lcoil/memory/MemoryCache$Key;)Lcoil/memory/MemoryCache$Value;", "value", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lcoil/memory/MemoryCache$Key;Lcoil/memory/MemoryCache$Value;)V", "", "level", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(I)V", "Lcoil/memory/StrongMemoryCache;", "Lcoil/memory/WeakMemoryCache;", "coil-base_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class RealMemoryCache implements MemoryCache {
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final WeakMemoryCache f1965Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final StrongMemoryCache f1966Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    public RealMemoryCache(@NotNull StrongMemoryCache strongMemoryCache, @NotNull WeakMemoryCache weakMemoryCache) {
        this.f1966Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = strongMemoryCache;
        this.f1965Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = weakMemoryCache;
    }

    @Override // coil.memory.MemoryCache
    public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull MemoryCache.Key key, @NotNull MemoryCache.Value value) {
        this.f1966Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(MemoryCache.Key.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(key, null, Collections.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(key.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()), 1, null), value.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(), Collections.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(value.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()));
    }

    @Override // coil.memory.MemoryCache
    @Nullable
    public MemoryCache.Value Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull MemoryCache.Key key) {
        MemoryCache.Value Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = this.f1966Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(key);
        if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 == null) {
            return this.f1965Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(key);
        }
        return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
    }

    @Override // coil.memory.MemoryCache
    public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(int i) {
        this.f1966Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(i);
        this.f1965Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(i);
    }
}
