package coil.fetch;

import android.net.Uri;
import android.webkit.MimeTypeMap;
import androidx.annotation.VisibleForTesting;
import androidx.webkit.internal.AssetHelper;
import coil.ImageLoader;
import coil.decode.DataSource;
import coil.decode.ImageSource;
import coil.decode.ImageSources;
import coil.disk.DiskCache;
import coil.fetch.Fetcher;
import coil.network.CacheResponse;
import coil.network.CacheStrategy;
import coil.request.Options;
import coil.util.Utils;
import com.vungle.ads.internal.ui.AdActivity;
import java.io.IOException;
import java.util.Map;
import kotlin.ExceptionsKt;
import kotlin.Lazy;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import okhttp3.CacheControl;
import okhttp3.Call;
import okhttp3.MediaType;
import okhttp3.Request;
import okhttp3.Response;
import okhttp3.ResponseBody;
import okio.BufferedSink;
import okio.BufferedSource;
import okio.FileSystem;
import okio.Okio;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000x\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0000\u0018\u0000 A2\u00020\u0001:\u0002ABB=\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006\u0012\u000e\u0010\n\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\t0\u0006\u0012\u0006\u0010\f\u001a\u00020\u000b¢\u0006\u0004\b\r\u0010\u000eJ\u0013\u0010\u0010\u001a\u00020\u000fH\u0096@ø\u0001\u0000¢\u0006\u0004\b\u0010\u0010\u0011J#\u0010\u0014\u001a\u0004\u0018\u00010\u00022\u0006\u0010\u0003\u001a\u00020\u00022\b\u0010\u0013\u001a\u0004\u0018\u00010\u0012H\u0001¢\u0006\u0004\b\u0014\u0010\u0015J\u0011\u0010\u0017\u001a\u0004\u0018\u00010\u0016H\u0002¢\u0006\u0004\b\u0017\u0010\u0018J5\u0010 \u001a\u0004\u0018\u00010\u00162\b\u0010\u0019\u001a\u0004\u0018\u00010\u00162\u0006\u0010\u001b\u001a\u00020\u001a2\u0006\u0010\u001d\u001a\u00020\u001c2\b\u0010\u001f\u001a\u0004\u0018\u00010\u001eH\u0002¢\u0006\u0004\b \u0010!J\u000f\u0010\"\u001a\u00020\u001aH\u0002¢\u0006\u0004\b\"\u0010#J\u001b\u0010$\u001a\u00020\u001c2\u0006\u0010\u001b\u001a\u00020\u001aH\u0082@ø\u0001\u0000¢\u0006\u0004\b$\u0010%J\u001f\u0010&\u001a\u00020\u000b2\u0006\u0010\u001b\u001a\u00020\u001a2\u0006\u0010\u001d\u001a\u00020\u001cH\u0002¢\u0006\u0004\b&\u0010'J\u0015\u0010(\u001a\u0004\u0018\u00010\u001e*\u00020\u0016H\u0002¢\u0006\u0004\b(\u0010)J\u0013\u0010+\u001a\u00020**\u00020\u0016H\u0002¢\u0006\u0004\b+\u0010,J\u0013\u0010.\u001a\u00020**\u00020-H\u0002¢\u0006\u0004\b.\u0010/J\u0013\u00101\u001a\u000200*\u00020\u001cH\u0002¢\u0006\u0004\b1\u00102J\u0013\u00103\u001a\u00020-*\u00020\u001cH\u0002¢\u0006\u0004\b3\u00104R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0010\u00105R\u0014\u0010\u0005\u001a\u00020\u00048\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b6\u00107R\u001a\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00070\u00068\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b$\u00108R\u001c\u0010\n\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\t0\u00068\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b9\u00108R\u0014\u0010\f\u001a\u00020\u000b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b:\u0010;R\u0014\u0010=\u001a\u00020\u00028BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b9\u0010<R\u0014\u0010@\u001a\u00020>8BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b:\u0010?\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006C"}, d2 = {"Lcoil/fetch/HttpUriFetcher;", "Lcoil/fetch/Fetcher;", "", "url", "Lcoil/request/Options;", "options", "Lkotlin/Lazy;", "Lokhttp3/Call$Factory;", "callFactory", "Lcoil/disk/DiskCache;", "diskCache", "", "respectCacheHeaders", "<init>", "(Ljava/lang/String;Lcoil/request/Options;Lkotlin/Lazy;Lkotlin/Lazy;Z)V", "Lcoil/fetch/FetchResult;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "Lokhttp3/MediaType;", "contentType", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Ljava/lang/String;Lokhttp3/MediaType;)Ljava/lang/String;", "Lcoil/disk/DiskCache$Snapshot;", "Wwwwwwwwwwwwwwwwwwwwwwwwww", "()Lcoil/disk/DiskCache$Snapshot;", "snapshot", "Lokhttp3/Request;", AdActivity.REQUEST_KEY_EXTRA, "Lokhttp3/Response;", "response", "Lcoil/network/CacheResponse;", "cacheResponse", "Wwwwwwwwwwwwwwwwwwww", "(Lcoil/disk/DiskCache$Snapshot;Lokhttp3/Request;Lokhttp3/Response;Lcoil/network/CacheResponse;)Lcoil/disk/DiskCache$Snapshot;", "Wwwwwwwwwwwwwwwwwwwwwwwwwww", "()Lokhttp3/Request;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lokhttp3/Request;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lokhttp3/Request;Lokhttp3/Response;)Z", "Wwwwwwwwwwwwwwwwwwwwwwww", "(Lcoil/disk/DiskCache$Snapshot;)Lcoil/network/CacheResponse;", "Lcoil/decode/ImageSource;", "Wwwwwwwwwwwwwwwwwwwwww", "(Lcoil/disk/DiskCache$Snapshot;)Lcoil/decode/ImageSource;", "Lokhttp3/ResponseBody;", "Wwwwwwwwwwwwwwwwwwwww", "(Lokhttp3/ResponseBody;)Lcoil/decode/ImageSource;", "Lcoil/decode/DataSource;", "Wwwwwwwwwwwwwwwwwwwwwww", "(Lokhttp3/Response;)Lcoil/decode/DataSource;", "Wwwwwwwwwwwwwwwwwwwwwwwww", "(Lokhttp3/Response;)Lokhttp3/ResponseBody;", "Ljava/lang/String;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Lcoil/request/Options;", "Lkotlin/Lazy;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Z", "()Ljava/lang/String;", "diskCacheKey", "Lokio/FileSystem;", "()Lokio/FileSystem;", "fileSystem", "Companion", "Factory", "coil-base_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class HttpUriFetcher implements Fetcher {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final boolean f1922Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Lazy<DiskCache> f1923Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Lazy<Call.Factory> f1924Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Options f1925Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final String f1926Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @NotNull
    public static final Companion Companion = new Companion(null);
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final CacheControl f1921Wwwwwwwwwwwwwwwwwwwwwwwwwwwww = new CacheControl.Builder().Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final CacheControl f1920Wwwwwwwwwwwwwwwwwwwwwwwwwwww = new CacheControl.Builder().Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000¨\u0006\b"}, d2 = {"Lcoil/fetch/HttpUriFetcher$Companion;", "", "()V", "CACHE_CONTROL_FORCE_NETWORK_NO_CACHE", "Lokhttp3/CacheControl;", "CACHE_CONTROL_NO_NETWORK_NO_CACHE", "MIME_TYPE_TEXT_PLAIN", "", "coil-base_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public Companion() {
        }
    }

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B-\u0012\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003\u0012\u000e\u0010\u0007\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00060\u0003\u0012\u0006\u0010\t\u001a\u00020\b¢\u0006\u0004\b\n\u0010\u000bJ\u0017\u0010\r\u001a\u00020\b2\u0006\u0010\f\u001a\u00020\u0002H\u0002¢\u0006\u0004\b\r\u0010\u000eJ)\u0010\u0014\u001a\u0004\u0018\u00010\u00132\u0006\u0010\f\u001a\u00020\u00022\u0006\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u0012\u001a\u00020\u0011H\u0016¢\u0006\u0004\b\u0014\u0010\u0015R\u001a\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00040\u00038\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0016\u0010\u0017R\u001c\u0010\u0007\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00060\u00038\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0014\u0010\u0017R\u0014\u0010\t\u001a\u00020\b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\r\u0010\u0018¨\u0006\u0019"}, d2 = {"Lcoil/fetch/HttpUriFetcher$Factory;", "Lcoil/fetch/Fetcher$Factory;", "Landroid/net/Uri;", "Lkotlin/Lazy;", "Lokhttp3/Call$Factory;", "callFactory", "Lcoil/disk/DiskCache;", "diskCache", "", "respectCacheHeaders", "<init>", "(Lkotlin/Lazy;Lkotlin/Lazy;Z)V", "data", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Landroid/net/Uri;)Z", "Lcoil/request/Options;", "options", "Lcoil/ImageLoader;", "imageLoader", "Lcoil/fetch/Fetcher;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Landroid/net/Uri;Lcoil/request/Options;Lcoil/ImageLoader;)Lcoil/fetch/Fetcher;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Lkotlin/Lazy;", "Z", "coil-base_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class Factory implements Fetcher.Factory<Uri> {

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final boolean f1927Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        @NotNull

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final Lazy<DiskCache> f1928Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        @NotNull

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final Lazy<Call.Factory> f1929Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        /* JADX WARN: Multi-variable type inference failed */
        public Factory(@NotNull Lazy<? extends Call.Factory> lazy, @NotNull Lazy<? extends DiskCache> lazy2, boolean z) {
            this.f1929Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = lazy;
            this.f1928Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = lazy2;
            this.f1927Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = z;
        }

        private final boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Uri uri) {
            if (!Intrinsics.areEqual(uri.getScheme(), "http") && !Intrinsics.areEqual(uri.getScheme(), "https")) {
                return false;
            }
            return true;
        }

        @Override // coil.fetch.Fetcher.Factory
        @Nullable
        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww */
        public Fetcher Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull Uri uri, @NotNull Options options, @NotNull ImageLoader imageLoader) {
            if (!Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(uri)) {
                return null;
            }
            return new HttpUriFetcher(uri.toString(), options, this.f1929Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, this.f1928Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, this.f1927Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public HttpUriFetcher(@NotNull String str, @NotNull Options options, @NotNull Lazy<? extends Call.Factory> lazy, @NotNull Lazy<? extends DiskCache> lazy2, boolean z) {
        this.f1926Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = str;
        this.f1925Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = options;
        this.f1924Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = lazy;
        this.f1923Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = lazy2;
        this.f1922Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww = z;
    }

    public final DiskCache.Snapshot Wwwwwwwwwwwwwwwwwwww(DiskCache.Snapshot snapshot, Request request, Response response, CacheResponse cacheResponse) {
        DiskCache.Editor editor;
        Throwable th = null;
        if (!Wwwwwwwwwwwwwwwwwwwwwwwwwwww(request, response)) {
            if (snapshot != null) {
                Utils.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(snapshot);
            }
            return null;
        }
        if (snapshot != null) {
            editor = snapshot.Wwwwwwwww();
        } else {
            DiskCache value = this.f1923Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.getValue();
            if (value != null) {
                editor = value.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
            } else {
                editor = null;
            }
        }
        try {
            if (editor == null) {
                return null;
            }
            try {
                if (response.Kkkkkkkkkkkkkkkkkkkkkk() == 304 && cacheResponse != null) {
                    Response Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = response.Kkkkkkkkkkkk().Wwwwwwwwwwwwwwwwwwwwwww(CacheStrategy.Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(cacheResponse.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(), response.Kkkkkkkkkkkkkkkk())).Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
                    BufferedSink Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3 = Okio.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwww(editor.getMetadata(), false));
                    try {
                        new CacheResponse(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2).Wwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3);
                        Unit unit = Unit.INSTANCE;
                    } catch (Throwable th2) {
                        th = th2;
                    }
                    if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3 != null) {
                        try {
                            Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3.close();
                        } catch (Throwable th3) {
                            if (th == null) {
                                th = th3;
                            } else {
                                ExceptionsKt.addSuppressed(th, th3);
                            }
                        }
                    }
                    if (th != null) {
                        throw th;
                    }
                } else {
                    BufferedSink Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww4 = Okio.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwww(editor.getMetadata(), false));
                    try {
                        new CacheResponse(response).Wwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww4);
                        Unit unit2 = Unit.INSTANCE;
                        th = null;
                    } catch (Throwable th4) {
                        th = th4;
                    }
                    if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww4 != null) {
                        try {
                            Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww4.close();
                        } catch (Throwable th5) {
                            if (th == null) {
                                th = th5;
                            } else {
                                ExceptionsKt.addSuppressed(th, th5);
                            }
                        }
                    }
                    if (th == null) {
                        BufferedSink Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww5 = Okio.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwww(editor.getData(), false));
                        try {
                            response.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().source().Wwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww5);
                        } catch (Throwable th6) {
                            th = th6;
                        }
                        if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww5 != null) {
                            try {
                                Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww5.close();
                            } catch (Throwable th7) {
                                if (th == null) {
                                    th = th7;
                                } else {
                                    ExceptionsKt.addSuppressed(th, th7);
                                }
                            }
                        }
                        if (th != null) {
                            throw th;
                        }
                    } else {
                        throw th;
                    }
                }
                DiskCache.Snapshot Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = editor.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
                Utils.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(response);
                return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
            } catch (Exception e) {
                Utils.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(editor);
                throw e;
            }
        } catch (Throwable th8) {
            Utils.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(response);
            throw th8;
        }
    }

    public final ImageSource Wwwwwwwwwwwwwwwwwwwww(ResponseBody responseBody) {
        return ImageSources.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(responseBody.source(), this.f1925Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwww());
    }

    public final ImageSource Wwwwwwwwwwwwwwwwwwwwww(DiskCache.Snapshot snapshot) {
        return ImageSources.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(snapshot.getData(), Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(), Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(), snapshot);
    }

    public final DataSource Wwwwwwwwwwwwwwwwwwwwwww(Response response) {
        if (response.Kkkkkkkkkkkkk() != null) {
            return DataSource.NETWORK;
        }
        return DataSource.DISK;
    }

    public final CacheResponse Wwwwwwwwwwwwwwwwwwwwwwww(DiskCache.Snapshot snapshot) {
        CacheResponse cacheResponse;
        try {
            BufferedSource Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Okio.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwww(snapshot.getMetadata()));
            try {
                cacheResponse = new CacheResponse(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2);
                th = null;
            } catch (Throwable th) {
                th = th;
                cacheResponse = null;
            }
            if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 != null) {
                Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.close();
            }
            if (th == null) {
                return cacheResponse;
            }
            throw th;
        } catch (IOException unused) {
            return null;
        }
    }

    public final ResponseBody Wwwwwwwwwwwwwwwwwwwwwwwww(Response response) {
        ResponseBody Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = response.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 != null) {
            return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
        }
        throw new IllegalStateException("response body == null");
    }

    public final DiskCache.Snapshot Wwwwwwwwwwwwwwwwwwwwwwwwww() {
        DiskCache value;
        if (!this.f1925Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwww().getReadEnabled() || (value = this.f1923Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.getValue()) == null) {
            return null;
        }
        return value.get(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
    }

    public final Request Wwwwwwwwwwwwwwwwwwwwwwwwwww() {
        Request.Builder Wwwwwwwwwwwwwwwwwwwwwwwwwww2 = new Request.Builder().Wwwwwwwwwwwwwwwww(this.f1926Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww).Wwwwwwwwwwwwwwwwwwwwwwwwwww(this.f1925Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwww());
        for (Map.Entry<Class<?>, Object> entry : this.f1925Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().entrySet()) {
            Wwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwww(entry.getKey(), entry.getValue());
        }
        boolean readEnabled = this.f1925Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwww().getReadEnabled();
        boolean readEnabled2 = this.f1925Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwww().getReadEnabled();
        if (!readEnabled2 && readEnabled) {
            Wwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(CacheControl.f12177Wwwwwwwwwwwwwwwwwwww);
        } else if (readEnabled2 && !readEnabled) {
            if (this.f1925Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwww().getWriteEnabled()) {
                Wwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(CacheControl.f12178Wwwwwwwwwwwwwwwwwwwww);
            } else {
                Wwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(f1921Wwwwwwwwwwwwwwwwwwwwwwwwwwwww);
            }
        } else if (!readEnabled2 && !readEnabled) {
            Wwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(f1920Wwwwwwwwwwwwwwwwwwwwwwwwwwww);
        }
        return Wwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
    }

    public final boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwww(Request request, Response response) {
        if (this.f1925Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwww().getWriteEnabled()) {
            if (!this.f1922Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww || CacheStrategy.Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(request, response)) {
                return true;
            }
            return false;
        }
        return false;
    }

    @VisibleForTesting
    @Nullable
    public final String Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull String str, @Nullable MediaType mediaType) {
        String str2;
        String Wwwwwwwwwwwwwwwwwwwwwwww2;
        if (mediaType != null) {
            str2 = mediaType.toString();
        } else {
            str2 = null;
        }
        if ((str2 == null || StringsKt.startsWith$default(str2, AssetHelper.DEFAULT_MIME_TYPE, false, 2, (Object) null)) && (Wwwwwwwwwwwwwwwwwwwwwwww2 = Utils.Wwwwwwwwwwwwwwwwwwwwwwww(MimeTypeMap.getSingleton(), str)) != null) {
            return Wwwwwwwwwwwwwwwwwwwwwwww2;
        }
        if (str2 == null) {
            return null;
        }
        return StringsKt.substringBefore$default(str2, ';', (String) null, 2, (Object) null);
    }

    public final FileSystem Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f1923Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.getValue().Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
    }

    public final String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        String Wwwwwwwwwwwwwwwwwwwwwwwwwww2 = this.f1925Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwww();
        if (Wwwwwwwwwwwwwwwwwwwwwwwwwww2 == null) {
            return this.f1926Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        }
        return Wwwwwwwwwwwwwwwwwwwwwwwwwww2;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0023  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0031  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x007b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(okhttp3.Request r5, kotlin.coroutines.Continuation<? super okhttp3.Response> r6) {
        /*
            r4 = this;
            boolean r0 = r6 instanceof coil.fetch.HttpUriFetcher$executeNetworkRequest$1
            if (r0 == 0) goto L13
            r0 = r6
            coil.fetch.HttpUriFetcher$executeNetworkRequest$1 r0 = (coil.fetch.HttpUriFetcher$executeNetworkRequest$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            coil.fetch.HttpUriFetcher$executeNetworkRequest$1 r0 = new coil.fetch.HttpUriFetcher$executeNetworkRequest$1
            r0.<init>(r4, r6)
        L18:
            java.lang.Object r6 = r0.result
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.label
            r3 = 1
            if (r2 == 0) goto L31
            if (r2 != r3) goto L29
            kotlin.ResultKt.throwOnFailure(r6)
            goto L72
        L29:
            java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
            java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
            r5.<init>(r6)
            throw r5
        L31:
            kotlin.ResultKt.throwOnFailure(r6)
            boolean r6 = coil.util.Utils.Wwwwwwwwwwwwwwww()
            if (r6 == 0) goto L5d
            coil.request.Options r6 = r4.f1925Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww
            coil.request.CachePolicy r6 = r6.Wwwwwwwwwwwwwwwwwwwwwwww()
            boolean r6 = r6.getReadEnabled()
            if (r6 != 0) goto L57
            kotlin.Lazy<okhttp3.Call$Factory> r6 = r4.f1924Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww
            java.lang.Object r6 = r6.getValue()
            okhttp3.Call$Factory r6 = (okhttp3.Call.Factory) r6
            okhttp3.Call r5 = r6.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(r5)
            okhttp3.Response r5 = r5.execute()
            goto L75
        L57:
            android.os.NetworkOnMainThreadException r5 = new android.os.NetworkOnMainThreadException
            r5.<init>()
            throw r5
        L5d:
            kotlin.Lazy<okhttp3.Call$Factory> r6 = r4.f1924Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww
            java.lang.Object r6 = r6.getValue()
            okhttp3.Call$Factory r6 = (okhttp3.Call.Factory) r6
            okhttp3.Call r5 = r6.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(r5)
            r0.label = r3
            java.lang.Object r6 = coil.util.Calls.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(r5, r0)
            if (r6 != r1) goto L72
            return r1
        L72:
            r5 = r6
            okhttp3.Response r5 = (okhttp3.Response) r5
        L75:
            boolean r6 = r5.Kkkkkkkkkkkkkkk()
            if (r6 != 0) goto L92
            int r6 = r5.Kkkkkkkkkkkkkkkkkkkkkk()
            r0 = 304(0x130, float:4.26E-43)
            if (r6 == r0) goto L92
            okhttp3.ResponseBody r6 = r5.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()
            if (r6 == 0) goto L8c
            coil.util.Utils.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(r6)
        L8c:
            coil.network.HttpException r6 = new coil.network.HttpException
            r6.<init>(r5)
            throw r6
        L92:
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: coil.fetch.HttpUriFetcher.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(okhttp3.Request, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0027  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x005e  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x012a A[Catch: Exception -> 0x013d, TryCatch #0 {Exception -> 0x013d, blocks: (B:72:0x0186, B:54:0x011c, B:56:0x012a, B:58:0x0138, B:61:0x0141, B:63:0x014b, B:65:0x0153, B:67:0x016b), top: B:81:0x011c }] */
    /* JADX WARN: Removed duplicated region for block: B:63:0x014b A[Catch: Exception -> 0x013d, TryCatch #0 {Exception -> 0x013d, blocks: (B:72:0x0186, B:54:0x011c, B:56:0x012a, B:58:0x0138, B:61:0x0141, B:63:0x014b, B:65:0x0153, B:67:0x016b), top: B:81:0x011c }] */
    /* JADX WARN: Removed duplicated region for block: B:79:0x01aa  */
    @Override // coil.fetch.Fetcher
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@org.jetbrains.annotations.NotNull kotlin.coroutines.Continuation<? super coil.fetch.FetchResult> r13) {
        /*
            Method dump skipped, instructions count: 430
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: coil.fetch.HttpUriFetcher.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(kotlin.coroutines.Continuation):java.lang.Object");
    }
}
