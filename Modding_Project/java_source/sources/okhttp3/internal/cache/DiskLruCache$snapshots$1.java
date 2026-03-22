package okhttp3.internal.cache;

import com.unity3d.services.core.network.core.OkHttp3Client;
import java.io.IOException;
import java.util.Iterator;
import java.util.NoSuchElementException;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.markers.KMutableIterator;
import okhttp3.internal.cache.DiskLruCache;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000&\n\u0000\n\u0002\u0010)\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\n\b\n\u0018\u00002\f\u0012\b\u0012\u00060\u0002R\u00020\u00030\u0001J\u0010\u0010\u0005\u001a\u00020\u0004H\u0096\u0002¢\u0006\u0004\b\u0005\u0010\u0006J\u0014\u0010\u0007\u001a\u00060\u0002R\u00020\u0003H\u0096\u0002¢\u0006\u0004\b\u0007\u0010\bJ\u000f\u0010\n\u001a\u00020\tH\u0016¢\u0006\u0004\b\n\u0010\u000bR*\u0010\u0010\u001a\u0018\u0012\u0014\u0012\u0012 \r*\b\u0018\u00010\fR\u00020\u00030\fR\u00020\u00030\u00018\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000e\u0010\u000fR\u001c\u0010\u0013\u001a\b\u0018\u00010\u0002R\u00020\u00038\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0011\u0010\u0012R\u001c\u0010\u0015\u001a\b\u0018\u00010\u0002R\u00020\u00038\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0014\u0010\u0012¨\u0006\u0016"}, d2 = {"okhttp3/internal/cache/DiskLruCache$snapshots$1", "", "Lokhttp3/internal/cache/DiskLruCache$Snapshot;", "Lokhttp3/internal/cache/DiskLruCache;", "", "hasNext", "()Z", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "()Lokhttp3/internal/cache/DiskLruCache$Snapshot;", "", "remove", "()V", "Lokhttp3/internal/cache/DiskLruCache$Entry;", "kotlin.jvm.PlatformType", "Wwwwwwwwwwwwwwwwwwwwwwwww", "Ljava/util/Iterator;", "delegate", "Wwwwwwwwwwwwwwwwwwwwwwww", "Lokhttp3/internal/cache/DiskLruCache$Snapshot;", "nextSnapshot", "Wwwwwwwwwwwwwwwwwwwwwww", "removeSnapshot", OkHttp3Client.NETWORK_CLIENT_OKHTTP}, k = 1, mv = {1, 6, 0}, xi = 48)
/* loaded from: classes7.dex */
public final class DiskLruCache$snapshots$1 implements Iterator<DiskLruCache.Snapshot>, KMutableIterator {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final /* synthetic */ DiskLruCache f12572Wwwwwwwwwwwwwwwwwwwwww;
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public DiskLruCache.Snapshot f12573Wwwwwwwwwwwwwwwwwwwwwww;
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public DiskLruCache.Snapshot f12574Wwwwwwwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Iterator<DiskLruCache.Entry> f12575Wwwwwwwwwwwwwwwwwwwwwwwww;

    @Override // java.util.Iterator
    @NotNull
    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww */
    public DiskLruCache.Snapshot next() {
        if (hasNext()) {
            DiskLruCache.Snapshot snapshot = this.f12574Wwwwwwwwwwwwwwwwwwwwwwww;
            this.f12573Wwwwwwwwwwwwwwwwwwwwwww = snapshot;
            this.f12574Wwwwwwwwwwwwwwwwwwwwwwww = null;
            return snapshot;
        }
        throw new NoSuchElementException();
    }

    @Override // java.util.Iterator
    public boolean hasNext() {
        DiskLruCache.Snapshot Wwwwwwwwwwwwwwwww2;
        if (this.f12574Wwwwwwwwwwwwwwwwwwwwwwww != null) {
            return true;
        }
        DiskLruCache diskLruCache = this.f12572Wwwwwwwwwwwwwwwwwwwwww;
        synchronized (diskLruCache) {
            if (diskLruCache.Kkkkkkkkkkkk()) {
                return false;
            }
            while (this.f12575Wwwwwwwwwwwwwwwwwwwwwwwww.hasNext()) {
                DiskLruCache.Entry next = this.f12575Wwwwwwwwwwwwwwwwwwwwwwwww.next();
                if (next == null) {
                    Wwwwwwwwwwwwwwwww2 = null;
                } else {
                    Wwwwwwwwwwwwwwwww2 = next.Wwwwwwwwwwwwwwwww();
                }
                if (Wwwwwwwwwwwwwwwww2 != null) {
                    this.f12574Wwwwwwwwwwwwwwwwwwwwwwww = Wwwwwwwwwwwwwwwww2;
                    return true;
                }
            }
            Unit unit = Unit.INSTANCE;
            return false;
        }
    }

    @Override // java.util.Iterator
    public void remove() {
        DiskLruCache.Snapshot snapshot = this.f12573Wwwwwwwwwwwwwwwwwwwwwww;
        if (snapshot != null) {
            try {
                this.f12572Wwwwwwwwwwwwwwwwwwwwww.Illlllllllllllllllllllllllll(snapshot.Wwwwwwwwwwwwww());
                return;
            } catch (IOException unused) {
                return;
            } finally {
                this.f12573Wwwwwwwwwwwwwwwwwwwwwww = null;
            }
        }
        throw new IllegalStateException("remove() before next()");
    }
}
