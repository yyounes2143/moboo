package androidx.webkit;

import androidx.annotation.AnyThread;
import androidx.webkit.internal.ServiceWorkerControllerImpl;
/* compiled from: Proguard */
@AnyThread
/* loaded from: classes3.dex */
public abstract class ServiceWorkerControllerCompat {

    /* compiled from: Proguard */
    /* loaded from: classes3.dex */
    public static class LAZY_HOLDER {
        static final ServiceWorkerControllerCompat INSTANCE = new ServiceWorkerControllerImpl();

        private LAZY_HOLDER() {
        }
    }

    public static ServiceWorkerControllerCompat getInstance() {
        return LAZY_HOLDER.INSTANCE;
    }

    public abstract ServiceWorkerWebSettingsCompat getServiceWorkerWebSettings();

    public abstract void setServiceWorkerClient(ServiceWorkerClientCompat serviceWorkerClientCompat);
}
