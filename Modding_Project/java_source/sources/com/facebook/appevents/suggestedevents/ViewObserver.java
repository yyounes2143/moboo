package com.facebook.appevents.suggestedevents;

import android.app.Activity;
import android.os.Handler;
import android.os.Looper;
import android.view.View;
import android.view.ViewTreeObserver;
import com.facebook.appevents.codeless.internal.SensitiveUserDataUtils;
import com.facebook.appevents.internal.AppEventUtility;
import com.facebook.appevents.suggestedevents.ViewObserver;
import com.facebook.internal.instrument.crashshield.CrashShieldHandler;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.Metadata;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.jetbrains.annotations.NotNull;
/* compiled from: Proguard */
@Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0001\u0018\u0000 \u00182\u00020\u0001:\u0001\u0018B\u0011\b\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005J\u000f\u0010\u0007\u001a\u00020\u0006H\u0016¢\u0006\u0004\b\u0007\u0010\bJ\u000f\u0010\t\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\t\u0010\bJ\u000f\u0010\n\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\n\u0010\bJ\u000f\u0010\u000b\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\u000b\u0010\bR\u001a\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u00020\f8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\r\u0010\u000eR\u0014\u0010\u0013\u001a\u00020\u00108\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0011\u0010\u0012R\u0014\u0010\u0017\u001a\u00020\u00148\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0015\u0010\u0016¨\u0006\u0019"}, d2 = {"Lcom/facebook/appevents/suggestedevents/ViewObserver;", "Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;", "Landroid/app/Activity;", "activity", "<init>", "(Landroid/app/Activity;)V", "", "onGlobalLayout", "()V", "Wwwwwwwwwwwwwwwwwwwwwwwwwwww", "Wwwwwwwwwwwwwwwwwwwwwwwwwww", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Ljava/lang/ref/WeakReference;", "Wwwwwwwwwwwwwwwwwwwwwwwww", "Ljava/lang/ref/WeakReference;", "activityWeakReference", "Landroid/os/Handler;", "Wwwwwwwwwwwwwwwwwwwwwwww", "Landroid/os/Handler;", "uiThreadHandler", "Ljava/util/concurrent/atomic/AtomicBoolean;", "Wwwwwwwwwwwwwwwwwwwwwww", "Ljava/util/concurrent/atomic/AtomicBoolean;", "isTracking", "Companion", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class ViewObserver implements ViewTreeObserver.OnGlobalLayoutListener {
    @NotNull
    public static final Companion Companion = new Companion(null);
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final Map<Integer, ViewObserver> f6513Wwwwwwwwwwwwwwwwwwwwww = new HashMap();
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final AtomicBoolean f6514Wwwwwwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Handler f6515Wwwwwwwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final WeakReference<Activity> f6516Wwwwwwwwwwwwwwwwwwwwwwwww;

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010%\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0017\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0007¢\u0006\u0004\b\u0007\u0010\bJ\u0017\u0010\t\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0007¢\u0006\u0004\b\t\u0010\bR\u0014\u0010\u000b\u001a\u00020\n8\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u000b\u0010\fR \u0010\u000f\u001a\u000e\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\u000e0\r8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000f\u0010\u0010¨\u0006\u0011"}, d2 = {"Lcom/facebook/appevents/suggestedevents/ViewObserver$Companion;", "", "<init>", "()V", "Landroid/app/Activity;", "activity", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Landroid/app/Activity;)V", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "", "MAX_TEXT_LENGTH", "I", "", "Lcom/facebook/appevents/suggestedevents/ViewObserver;", "observers", "Ljava/util/Map;", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @JvmStatic
        public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull Activity activity) {
            ViewObserver viewObserver = (ViewObserver) ViewObserver.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().remove(Integer.valueOf(activity.hashCode()));
            if (viewObserver == null) {
                return;
            }
            ViewObserver.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(viewObserver);
        }

        @JvmStatic
        public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull Activity activity) {
            int hashCode = activity.hashCode();
            Map Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = ViewObserver.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
            Integer valueOf = Integer.valueOf(hashCode);
            Object obj = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.get(valueOf);
            if (obj == null) {
                obj = new ViewObserver(activity, null);
                Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.put(valueOf, obj);
            }
            ViewObserver.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww((ViewObserver) obj);
        }

        public Companion() {
        }
    }

    public /* synthetic */ ViewObserver(Activity activity, DefaultConstructorMarker defaultConstructorMarker) {
        this(activity);
    }

    public static final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(ViewObserver viewObserver) {
        if (!CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(ViewObserver.class)) {
            try {
                AppEventUtility appEventUtility = AppEventUtility.INSTANCE;
                View Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = AppEventUtility.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(viewObserver.f6516Wwwwwwwwwwwwwwwwwwwwwwwww.get());
                Activity activity = viewObserver.f6516Wwwwwwwwwwwwwwwwwwwwwwwww.get();
                if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 != null && activity != null) {
                    for (View view : SuggestedEventViewHierarchy.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2)) {
                        if (!SensitiveUserDataUtils.Wwwwwwwwwwwwwwwwwwwwwwwwwwww(view)) {
                            String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = SuggestedEventViewHierarchy.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(view);
                            if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.length() > 0 && Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.length() <= 300) {
                                ViewOnClickListener.Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(view, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2, activity.getLocalClassName());
                            }
                        }
                    }
                }
            } catch (Exception unused) {
            } catch (Throwable th) {
                CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(th, ViewObserver.class);
            }
        }
    }

    public static final /* synthetic */ void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(ViewObserver viewObserver) {
        if (CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(ViewObserver.class)) {
            return;
        }
        try {
            viewObserver.Wwwwwwwwwwwwwwwwwwwwwwwwwww();
        } catch (Throwable th) {
            CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(th, ViewObserver.class);
        }
    }

    public static final /* synthetic */ void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(ViewObserver viewObserver) {
        if (CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(ViewObserver.class)) {
            return;
        }
        try {
            viewObserver.Wwwwwwwwwwwwwwwwwwwwwwwwwwww();
        } catch (Throwable th) {
            CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(th, ViewObserver.class);
        }
    }

    public static final /* synthetic */ Map Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        if (CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(ViewObserver.class)) {
            return null;
        }
        try {
            return f6513Wwwwwwwwwwwwwwwwwwwwww;
        } catch (Throwable th) {
            CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(th, ViewObserver.class);
            return null;
        }
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwww() {
        if (!CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this)) {
            try {
                if (this.f6514Wwwwwwwwwwwwwwwwwwwwwww.getAndSet(false)) {
                    AppEventUtility appEventUtility = AppEventUtility.INSTANCE;
                    View Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = AppEventUtility.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.f6516Wwwwwwwwwwwwwwwwwwwwwwwww.get());
                    if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 != null) {
                        ViewTreeObserver viewTreeObserver = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.getViewTreeObserver();
                        if (!viewTreeObserver.isAlive()) {
                            return;
                        }
                        viewTreeObserver.removeOnGlobalLayoutListener(this);
                    }
                }
            } catch (Throwable th) {
                CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(th, this);
            }
        }
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        if (!CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this)) {
            try {
                if (!this.f6514Wwwwwwwwwwwwwwwwwwwwwww.getAndSet(true)) {
                    AppEventUtility appEventUtility = AppEventUtility.INSTANCE;
                    View Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = AppEventUtility.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.f6516Wwwwwwwwwwwwwwwwwwwwwwwww.get());
                    if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 != null) {
                        ViewTreeObserver viewTreeObserver = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.getViewTreeObserver();
                        if (viewTreeObserver.isAlive()) {
                            viewTreeObserver.addOnGlobalLayoutListener(this);
                            Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
                        }
                    }
                }
            } catch (Throwable th) {
                CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(th, this);
            }
        }
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        if (CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this)) {
            return;
        }
        try {
            Runnable runnable = new Runnable() { // from class: Wwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww
                @Override // java.lang.Runnable
                public final void run() {
                    ViewObserver.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(ViewObserver.this);
                }
            };
            if (Thread.currentThread() == Looper.getMainLooper().getThread()) {
                runnable.run();
            } else {
                this.f6515Wwwwwwwwwwwwwwwwwwwwwwww.post(runnable);
            }
        } catch (Throwable th) {
            CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(th, this);
        }
    }

    @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
    public void onGlobalLayout() {
        if (CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this)) {
            return;
        }
        try {
            Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        } catch (Throwable th) {
            CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(th, this);
        }
    }

    public ViewObserver(Activity activity) {
        this.f6516Wwwwwwwwwwwwwwwwwwwwwwwww = new WeakReference<>(activity);
        this.f6515Wwwwwwwwwwwwwwwwwwwwwwww = new Handler(Looper.getMainLooper());
        this.f6514Wwwwwwwwwwwwwwwwwwwwwww = new AtomicBoolean(false);
    }
}
