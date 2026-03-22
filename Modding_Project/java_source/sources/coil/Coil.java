package coil;

import android.content.Context;
import kotlin.Metadata;
import kotlin.jvm.JvmStatic;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0017\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0007¢\u0006\u0004\b\u0007\u0010\bJ\u0017\u0010\t\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\t\u0010\bR\u0018\u0010\u000b\u001a\u0004\u0018\u00010\u00068\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0007\u0010\nR\u0018\u0010\u000e\u001a\u0004\u0018\u00010\f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\t\u0010\r¨\u0006\u000f"}, d2 = {"Lcoil/Coil;", "", "<init>", "()V", "Landroid/content/Context;", "context", "Lcoil/ImageLoader;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Landroid/content/Context;)Lcoil/ImageLoader;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Lcoil/ImageLoader;", "imageLoader", "Lcoil/ImageLoaderFactory;", "Lcoil/ImageLoaderFactory;", "imageLoaderFactory", "coil-singleton_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class Coil {
    @NotNull
    public static final Coil INSTANCE = new Coil();
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static ImageLoaderFactory f1767Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static ImageLoader f1768Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    @JvmStatic
    @NotNull
    public static final ImageLoader Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull Context context) {
        ImageLoader imageLoader = f1768Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        if (imageLoader == null) {
            return INSTANCE.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(context);
        }
        return imageLoader;
    }

    public final synchronized ImageLoader Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Context context) {
        ImageLoaderFactory imageLoaderFactory;
        ImageLoader Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
        try {
            ImageLoader imageLoader = f1768Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
            if (imageLoader != null) {
                return imageLoader;
            }
            ImageLoaderFactory imageLoaderFactory2 = f1767Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
            if (imageLoaderFactory2 != null) {
                Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = imageLoaderFactory2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
                if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 == null) {
                }
                f1767Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = null;
                f1768Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
                return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
            }
            Context applicationContext = context.getApplicationContext();
            if (applicationContext instanceof ImageLoaderFactory) {
                imageLoaderFactory = (ImageLoaderFactory) applicationContext;
            } else {
                imageLoaderFactory = null;
            }
            if (imageLoaderFactory != null) {
                Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = imageLoaderFactory.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
            } else {
                Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = ImageLoaders.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(context);
            }
            f1767Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = null;
            f1768Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
            return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
        } catch (Throwable th) {
            throw th;
        }
    }
}
