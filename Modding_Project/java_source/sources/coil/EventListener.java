package coil;

import android.graphics.Bitmap;
import androidx.annotation.MainThread;
import androidx.annotation.WorkerThread;
import coil.EventListener;
import coil.decode.DecodeResult;
import coil.decode.Decoder;
import coil.fetch.FetchResult;
import coil.fetch.Fetcher;
import coil.request.ErrorResult;
import coil.request.ImageRequest;
import coil.request.Options;
import coil.request.SuccessResult;
import coil.size.Size;
import coil.transition.Transition;
import com.vungle.ads.internal.ui.AdActivity;
import kotlin.Metadata;
import kotlin.jvm.JvmField;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000t\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0000\n\u0002\b\u0006\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\bf\u0018\u0000 72\u00020\u0001:\u000278J\u0017\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0017¢\u0006\u0004\b\u0005\u0010\u0006J\u0017\u0010\u0007\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0017¢\u0006\u0004\b\u0007\u0010\u0006J\u001f\u0010\n\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\t\u001a\u00020\bH\u0017¢\u0006\u0004\b\n\u0010\u000bJ\u001f\u0010\u000e\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\r\u001a\u00020\fH\u0017¢\u0006\u0004\b\u000e\u0010\u000fJ\u001f\u0010\u0011\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0010\u001a\u00020\fH\u0017¢\u0006\u0004\b\u0011\u0010\u000fJ\u001f\u0010\u0012\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\r\u001a\u00020\fH\u0017¢\u0006\u0004\b\u0012\u0010\u000fJ!\u0010\u0014\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u00022\b\u0010\u0010\u001a\u0004\u0018\u00010\u0013H\u0017¢\u0006\u0004\b\u0014\u0010\u0015J'\u0010\u001a\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0017\u001a\u00020\u00162\u0006\u0010\u0019\u001a\u00020\u0018H\u0017¢\u0006\u0004\b\u001a\u0010\u001bJ1\u0010\u001e\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0017\u001a\u00020\u00162\u0006\u0010\u0019\u001a\u00020\u00182\b\u0010\u001d\u001a\u0004\u0018\u00010\u001cH\u0017¢\u0006\u0004\b\u001e\u0010\u001fJ'\u0010\"\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010!\u001a\u00020 2\u0006\u0010\u0019\u001a\u00020\u0018H\u0017¢\u0006\u0004\b\"\u0010#J1\u0010%\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010!\u001a\u00020 2\u0006\u0010\u0019\u001a\u00020\u00182\b\u0010\u001d\u001a\u0004\u0018\u00010$H\u0017¢\u0006\u0004\b%\u0010&J\u001f\u0010(\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\r\u001a\u00020'H\u0017¢\u0006\u0004\b(\u0010)J\u001f\u0010*\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0010\u001a\u00020'H\u0017¢\u0006\u0004\b*\u0010)J\u001f\u0010-\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010,\u001a\u00020+H\u0017¢\u0006\u0004\b-\u0010.J\u001f\u0010/\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010,\u001a\u00020+H\u0017¢\u0006\u0004\b/\u0010.J\u0017\u00100\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0017¢\u0006\u0004\b0\u0010\u0006J\u001f\u00102\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u001d\u001a\u000201H\u0017¢\u0006\u0004\b2\u00103J\u001f\u00105\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u001d\u001a\u000204H\u0017¢\u0006\u0004\b5\u00106¨\u00069"}, d2 = {"Lcoil/EventListener;", "Lcoil/request/ImageRequest$Listener;", "Lcoil/request/ImageRequest;", AdActivity.REQUEST_KEY_EXTRA, "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lcoil/request/ImageRequest;)V", "Wwwwwwwwwwwwwwwww", "Lcoil/size/Size;", "size", "Wwwwwwwwwwwwwwwwwwwwwww", "(Lcoil/request/ImageRequest;Lcoil/size/Size;)V", "", "input", "Wwwwwwwwwwwwwwwwwwwwwwwwww", "(Lcoil/request/ImageRequest;Ljava/lang/Object;)V", "output", "Wwwwwwwwwwwwwwwwwwwwwwwwwwww", "Wwwwwwwwwwwwwwwwwwwwww", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lcoil/request/ImageRequest;Ljava/lang/String;)V", "Lcoil/fetch/Fetcher;", "fetcher", "Lcoil/request/Options;", "options", "Wwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lcoil/request/ImageRequest;Lcoil/fetch/Fetcher;Lcoil/request/Options;)V", "Lcoil/fetch/FetchResult;", "result", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lcoil/request/ImageRequest;Lcoil/fetch/Fetcher;Lcoil/request/Options;Lcoil/fetch/FetchResult;)V", "Lcoil/decode/Decoder;", "decoder", "Wwwwwwwwwwwwwwwwwww", "(Lcoil/request/ImageRequest;Lcoil/decode/Decoder;Lcoil/request/Options;)V", "Lcoil/decode/DecodeResult;", "Wwwwwwwwwwwwwwwwwwwwwwwww", "(Lcoil/request/ImageRequest;Lcoil/decode/Decoder;Lcoil/request/Options;Lcoil/decode/DecodeResult;)V", "Landroid/graphics/Bitmap;", "Wwwwwwwwwwwwwwwwwwwwwwww", "(Lcoil/request/ImageRequest;Landroid/graphics/Bitmap;)V", "Wwwwwwwwwwwwwwwwwwww", "Lcoil/transition/Transition;", "transition", "Wwwwwwwwwwwwwwwwwwwww", "(Lcoil/request/ImageRequest;Lcoil/transition/Transition;)V", "Wwwwwwwwwwwwwwwwww", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Lcoil/request/ErrorResult;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lcoil/request/ImageRequest;Lcoil/request/ErrorResult;)V", "Lcoil/request/SuccessResult;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lcoil/request/ImageRequest;Lcoil/request/SuccessResult;)V", "Companion", "Factory", "coil-base_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public interface EventListener extends ImageRequest.Listener {
    @NotNull
    public static final Companion Companion = Companion.f1780Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @JvmField
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final EventListener f1779Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new EventListener() { // from class: coil.EventListener$Companion$NONE$1
        @Override // coil.EventListener
        @MainThread
        public void Wwwwwwwwwwwwwwwww(@NotNull ImageRequest imageRequest) {
            EventListener.DefaultImpls.Wwwwwwwwwwwwwwwwwwwww(this, imageRequest);
        }

        @Override // coil.EventListener
        @MainThread
        public void Wwwwwwwwwwwwwwwwww(@NotNull ImageRequest imageRequest, @NotNull Transition transition) {
            EventListener.DefaultImpls.Wwwwwwwwwwwwwwwwww(this, imageRequest, transition);
        }

        @Override // coil.EventListener
        @WorkerThread
        public void Wwwwwwwwwwwwwwwwwww(@NotNull ImageRequest imageRequest, @NotNull Decoder decoder, @NotNull Options options) {
            EventListener.DefaultImpls.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this, imageRequest, decoder, options);
        }

        @Override // coil.EventListener
        @WorkerThread
        public void Wwwwwwwwwwwwwwwwwwww(@NotNull ImageRequest imageRequest, @NotNull Bitmap bitmap) {
            EventListener.DefaultImpls.Wwwwwwwwwwwwwwwwwwww(this, imageRequest, bitmap);
        }

        @Override // coil.EventListener
        @MainThread
        public void Wwwwwwwwwwwwwwwwwwwww(@NotNull ImageRequest imageRequest, @NotNull Transition transition) {
            EventListener.DefaultImpls.Wwwwwwwwwwwwwwwww(this, imageRequest, transition);
        }

        @Override // coil.EventListener
        @MainThread
        public void Wwwwwwwwwwwwwwwwwwwwww(@NotNull ImageRequest imageRequest, @NotNull Object obj) {
            EventListener.DefaultImpls.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(this, imageRequest, obj);
        }

        @Override // coil.EventListener
        @MainThread
        public void Wwwwwwwwwwwwwwwwwwwwwww(@NotNull ImageRequest imageRequest, @NotNull Size size) {
            EventListener.DefaultImpls.Wwwwwwwwwwwwwwwwwwwwww(this, imageRequest, size);
        }

        @Override // coil.EventListener
        @WorkerThread
        public void Wwwwwwwwwwwwwwwwwwwwwwww(@NotNull ImageRequest imageRequest, @NotNull Bitmap bitmap) {
            EventListener.DefaultImpls.Wwwwwwwwwwwwwwwwwww(this, imageRequest, bitmap);
        }

        @Override // coil.EventListener
        @WorkerThread
        public void Wwwwwwwwwwwwwwwwwwwwwwwww(@NotNull ImageRequest imageRequest, @NotNull Decoder decoder, @NotNull Options options, @Nullable DecodeResult decodeResult) {
            EventListener.DefaultImpls.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this, imageRequest, decoder, options, decodeResult);
        }

        @Override // coil.EventListener
        @MainThread
        public void Wwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull ImageRequest imageRequest, @NotNull Object obj) {
            EventListener.DefaultImpls.Wwwwwwwwwwwwwwwwwwwwwwwwwww(this, imageRequest, obj);
        }

        @Override // coil.EventListener
        @WorkerThread
        public void Wwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull ImageRequest imageRequest, @NotNull Fetcher fetcher, @NotNull Options options) {
            EventListener.DefaultImpls.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this, imageRequest, fetcher, options);
        }

        @Override // coil.EventListener
        @MainThread
        public void Wwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull ImageRequest imageRequest, @NotNull Object obj) {
            EventListener.DefaultImpls.Wwwwwwwwwwwwwwwwwwwwwwwwwwww(this, imageRequest, obj);
        }

        @Override // coil.EventListener
        @WorkerThread
        public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull ImageRequest imageRequest, @NotNull Fetcher fetcher, @NotNull Options options, @Nullable FetchResult fetchResult) {
            EventListener.DefaultImpls.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this, imageRequest, fetcher, options, fetchResult);
        }

        @Override // coil.EventListener
        @MainThread
        public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull ImageRequest imageRequest, @Nullable String str) {
            EventListener.DefaultImpls.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this, imageRequest, str);
        }

        @Override // coil.EventListener, coil.request.ImageRequest.Listener
        @MainThread
        public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull ImageRequest imageRequest, @NotNull SuccessResult successResult) {
            EventListener.DefaultImpls.Wwwwwwwwwwwwwwwwwwwwwww(this, imageRequest, successResult);
        }

        @Override // coil.EventListener, coil.request.ImageRequest.Listener
        @MainThread
        public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull ImageRequest imageRequest, @NotNull ErrorResult errorResult) {
            EventListener.DefaultImpls.Wwwwwwwwwwwwwwwwwwwwwwwww(this, imageRequest, errorResult);
        }

        @Override // coil.EventListener, coil.request.ImageRequest.Listener
        @MainThread
        public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull ImageRequest imageRequest) {
            EventListener.DefaultImpls.Wwwwwwwwwwwwwwwwwwwwwwww(this, imageRequest);
        }

        @Override // coil.EventListener, coil.request.ImageRequest.Listener
        @MainThread
        public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull ImageRequest imageRequest) {
            EventListener.DefaultImpls.Wwwwwwwwwwwwwwwwwwwwwwwwww(this, imageRequest);
        }
    };

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u0013\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u0001¨\u0006\u0005"}, d2 = {"Lcoil/EventListener$Companion;", "", "()V", "NONE", "Lcoil/EventListener;", "coil-base_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class Companion {

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public static final /* synthetic */ Companion f1780Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new Companion();
    }

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\bæ\u0080\u0001\u0018\u0000 \u00072\u00020\u0001:\u0001\u0007J\u0017\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H&¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\b"}, d2 = {"Lcoil/EventListener$Factory;", "", "Lcoil/request/ImageRequest;", AdActivity.REQUEST_KEY_EXTRA, "Lcoil/EventListener;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lcoil/request/ImageRequest;)Lcoil/EventListener;", "Companion", "coil-base_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public interface Factory {
        @NotNull
        public static final Companion Companion = Companion.f1782Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        @JvmField
        @NotNull

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public static final Factory f1781Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new Factory() { // from class: coil.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww
            @Override // coil.EventListener.Factory
            public final EventListener Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(ImageRequest imageRequest) {
                EventListener Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
                Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = EventListener.Factory.DefaultImpls.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(imageRequest);
                return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
            }
        };

        /* compiled from: Proguard */
        @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u0013\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u0001¨\u0006\u0005"}, d2 = {"Lcoil/EventListener$Factory$Companion;", "", "()V", "NONE", "Lcoil/EventListener$Factory;", "coil-base_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
        /* loaded from: classes3.dex */
        public static final class Companion {

            /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
            public static final /* synthetic */ Companion f1782Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new Companion();
        }

        /* compiled from: Proguard */
        @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
        /* loaded from: classes3.dex */
        public static final class DefaultImpls {
            public static EventListener Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(ImageRequest imageRequest) {
                return EventListener.f1779Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
            }
        }

        @NotNull
        EventListener Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull ImageRequest imageRequest);
    }

    @MainThread
    void Wwwwwwwwwwwwwwwww(@NotNull ImageRequest imageRequest);

    @MainThread
    void Wwwwwwwwwwwwwwwwww(@NotNull ImageRequest imageRequest, @NotNull Transition transition);

    @WorkerThread
    void Wwwwwwwwwwwwwwwwwww(@NotNull ImageRequest imageRequest, @NotNull Decoder decoder, @NotNull Options options);

    @WorkerThread
    void Wwwwwwwwwwwwwwwwwwww(@NotNull ImageRequest imageRequest, @NotNull Bitmap bitmap);

    @MainThread
    void Wwwwwwwwwwwwwwwwwwwww(@NotNull ImageRequest imageRequest, @NotNull Transition transition);

    @MainThread
    void Wwwwwwwwwwwwwwwwwwwwww(@NotNull ImageRequest imageRequest, @NotNull Object obj);

    @MainThread
    void Wwwwwwwwwwwwwwwwwwwwwww(@NotNull ImageRequest imageRequest, @NotNull Size size);

    @WorkerThread
    void Wwwwwwwwwwwwwwwwwwwwwwww(@NotNull ImageRequest imageRequest, @NotNull Bitmap bitmap);

    @WorkerThread
    void Wwwwwwwwwwwwwwwwwwwwwwwww(@NotNull ImageRequest imageRequest, @NotNull Decoder decoder, @NotNull Options options, @Nullable DecodeResult decodeResult);

    @MainThread
    void Wwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull ImageRequest imageRequest, @NotNull Object obj);

    @WorkerThread
    void Wwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull ImageRequest imageRequest, @NotNull Fetcher fetcher, @NotNull Options options);

    @MainThread
    void Wwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull ImageRequest imageRequest, @NotNull Object obj);

    @WorkerThread
    void Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull ImageRequest imageRequest, @NotNull Fetcher fetcher, @NotNull Options options, @Nullable FetchResult fetchResult);

    @MainThread
    void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull ImageRequest imageRequest, @Nullable String str);

    @Override // coil.request.ImageRequest.Listener
    @MainThread
    void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull ImageRequest imageRequest, @NotNull SuccessResult successResult);

    @Override // coil.request.ImageRequest.Listener
    @MainThread
    void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull ImageRequest imageRequest, @NotNull ErrorResult errorResult);

    @Override // coil.request.ImageRequest.Listener
    @MainThread
    void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull ImageRequest imageRequest);

    @Override // coil.request.ImageRequest.Listener
    @MainThread
    void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull ImageRequest imageRequest);

    /* compiled from: Proguard */
    @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class DefaultImpls {
        @MainThread
        public static void Wwwwwwwwwwwwwwwwwwwww(@NotNull EventListener eventListener, @NotNull ImageRequest imageRequest) {
        }

        @MainThread
        public static void Wwwwwwwwwwwwwwwwwwwwwwww(@NotNull EventListener eventListener, @NotNull ImageRequest imageRequest) {
        }

        @MainThread
        public static void Wwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull EventListener eventListener, @NotNull ImageRequest imageRequest) {
        }

        @MainThread
        public static void Wwwwwwwwwwwwwwwww(@NotNull EventListener eventListener, @NotNull ImageRequest imageRequest, @NotNull Transition transition) {
        }

        @MainThread
        public static void Wwwwwwwwwwwwwwwwww(@NotNull EventListener eventListener, @NotNull ImageRequest imageRequest, @NotNull Transition transition) {
        }

        @WorkerThread
        public static void Wwwwwwwwwwwwwwwwwww(@NotNull EventListener eventListener, @NotNull ImageRequest imageRequest, @NotNull Bitmap bitmap) {
        }

        @WorkerThread
        public static void Wwwwwwwwwwwwwwwwwwww(@NotNull EventListener eventListener, @NotNull ImageRequest imageRequest, @NotNull Bitmap bitmap) {
        }

        @MainThread
        public static void Wwwwwwwwwwwwwwwwwwwwww(@NotNull EventListener eventListener, @NotNull ImageRequest imageRequest, @NotNull Size size) {
        }

        @MainThread
        public static void Wwwwwwwwwwwwwwwwwwwwwww(@NotNull EventListener eventListener, @NotNull ImageRequest imageRequest, @NotNull SuccessResult successResult) {
        }

        @MainThread
        public static void Wwwwwwwwwwwwwwwwwwwwwwwww(@NotNull EventListener eventListener, @NotNull ImageRequest imageRequest, @NotNull ErrorResult errorResult) {
        }

        @MainThread
        public static void Wwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull EventListener eventListener, @NotNull ImageRequest imageRequest, @NotNull Object obj) {
        }

        @MainThread
        public static void Wwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull EventListener eventListener, @NotNull ImageRequest imageRequest, @NotNull Object obj) {
        }

        @MainThread
        public static void Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull EventListener eventListener, @NotNull ImageRequest imageRequest, @NotNull Object obj) {
        }

        @MainThread
        public static void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull EventListener eventListener, @NotNull ImageRequest imageRequest, @Nullable String str) {
        }

        @WorkerThread
        public static void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull EventListener eventListener, @NotNull ImageRequest imageRequest, @NotNull Fetcher fetcher, @NotNull Options options) {
        }

        @WorkerThread
        public static void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull EventListener eventListener, @NotNull ImageRequest imageRequest, @NotNull Decoder decoder, @NotNull Options options) {
        }

        @WorkerThread
        public static void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull EventListener eventListener, @NotNull ImageRequest imageRequest, @NotNull Fetcher fetcher, @NotNull Options options, @Nullable FetchResult fetchResult) {
        }

        @WorkerThread
        public static void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull EventListener eventListener, @NotNull ImageRequest imageRequest, @NotNull Decoder decoder, @NotNull Options options, @Nullable DecodeResult decodeResult) {
        }
    }
}
