package androidx.webkit;

import androidx.annotation.AnyThread;
import androidx.webkit.internal.TracingControllerImpl;
import java.io.OutputStream;
import java.util.concurrent.Executor;
/* compiled from: Proguard */
@AnyThread
/* loaded from: classes3.dex */
public abstract class TracingController {

    /* compiled from: Proguard */
    /* loaded from: classes3.dex */
    public static class LAZY_HOLDER {
        static final TracingController INSTANCE = new TracingControllerImpl();

        private LAZY_HOLDER() {
        }
    }

    public static TracingController getInstance() {
        return LAZY_HOLDER.INSTANCE;
    }

    public abstract boolean isTracing();

    public abstract void start(TracingConfig tracingConfig);

    public abstract boolean stop(OutputStream outputStream, Executor executor);
}
