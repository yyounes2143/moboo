package okhttp3;

import com.unity3d.services.core.network.core.OkHttp3Client;
import java.io.IOException;
import java.util.Iterator;
import java.util.NoSuchElementException;
import kotlin.Metadata;
import kotlin.io.CloseableKt;
import kotlin.jvm.internal.markers.KMutableIterator;
import okhttp3.internal.cache.DiskLruCache;
import okio.Okio;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000&\n\u0000\n\u0002\u0010)\n\u0002\u0010\u000e\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\n\b\n\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001J\u0010\u0010\u0004\u001a\u00020\u0003H\u0096\u0002¢\u0006\u0004\b\u0004\u0010\u0005J\u0010\u0010\u0006\u001a\u00020\u0002H\u0096\u0002¢\u0006\u0004\b\u0006\u0010\u0007J\u000f\u0010\t\u001a\u00020\bH\u0016¢\u0006\u0004\b\t\u0010\nR\u001e\u0010\u000f\u001a\f\u0012\b\u0012\u00060\u000bR\u00020\f0\u00018\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\r\u0010\u000eR\u0018\u0010\u0012\u001a\u0004\u0018\u00010\u00028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0010\u0010\u0011R\u0016\u0010\u0015\u001a\u00020\u00038\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0013\u0010\u0014¨\u0006\u0016"}, d2 = {"okhttp3/Cache$urls$1", "", "", "", "hasNext", "()Z", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "()Ljava/lang/String;", "", "remove", "()V", "Lokhttp3/internal/cache/DiskLruCache$Snapshot;", "Lokhttp3/internal/cache/DiskLruCache;", "Wwwwwwwwwwwwwwwwwwwwwwwww", "Ljava/util/Iterator;", "delegate", "Wwwwwwwwwwwwwwwwwwwwwwww", "Ljava/lang/String;", "nextUrl", "Wwwwwwwwwwwwwwwwwwwwwww", "Z", "canRemove", OkHttp3Client.NETWORK_CLIENT_OKHTTP}, k = 1, mv = {1, 6, 0}, xi = 48)
/* loaded from: classes7.dex */
public final class Cache$urls$1 implements Iterator<String>, KMutableIterator {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public boolean f12174Wwwwwwwwwwwwwwwwwwwwwww;
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public String f12175Wwwwwwwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Iterator<DiskLruCache.Snapshot> f12176Wwwwwwwwwwwwwwwwwwwwwwwww;

    @Override // java.util.Iterator
    @NotNull
    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww */
    public String next() {
        if (hasNext()) {
            String str = this.f12175Wwwwwwwwwwwwwwwwwwwwwwww;
            this.f12175Wwwwwwwwwwwwwwwwwwwwwwww = null;
            this.f12174Wwwwwwwwwwwwwwwwwwwwwww = true;
            return str;
        }
        throw new NoSuchElementException();
    }

    @Override // java.util.Iterator
    public boolean hasNext() {
        if (this.f12175Wwwwwwwwwwwwwwwwwwwwwwww != null) {
            return true;
        }
        this.f12174Wwwwwwwwwwwwwwwwwwwwwww = false;
        while (this.f12176Wwwwwwwwwwwwwwwwwwwwwwwww.hasNext()) {
            try {
                DiskLruCache.Snapshot next = this.f12176Wwwwwwwwwwwwwwwwwwwwwwwww.next();
                this.f12175Wwwwwwwwwwwwwwwwwwwwwwww = Okio.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(next.Wwwwwwwwwwwwwwwwwwwwwwwwwww(0)).Wwwwwwwwwwwwwwwwwwwwww();
                CloseableKt.closeFinally(next, null);
                return true;
            } catch (IOException unused) {
            }
        }
        return false;
    }

    @Override // java.util.Iterator
    public void remove() {
        if (this.f12174Wwwwwwwwwwwwwwwwwwwwwww) {
            this.f12176Wwwwwwwwwwwwwwwwwwwwwwwww.remove();
            return;
        }
        throw new IllegalStateException("remove() before next()");
    }
}
