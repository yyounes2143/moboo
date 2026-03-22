package com.facebook.appevents.aam;

import android.app.Activity;
import android.os.Handler;
import android.os.Looper;
import android.view.View;
import android.view.ViewTreeObserver;
import android.widget.EditText;
import androidx.annotation.UiThread;
import com.facebook.appevents.InternalAppEventsLogger;
import com.facebook.appevents.aam.MetadataViewObserver;
import com.facebook.appevents.internal.AppEventUtility;
import com.facebook.internal.instrument.crashshield.CrashShieldHandler;
import com.mbridge.msdk.MBridgeConstans;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.Metadata;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Regex;
import kotlin.text.StringsKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000L\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010#\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0001\u0018\u0000 '2\u00020\u0001:\u0001'B\u0011\b\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005J#\u0010\n\u001a\u00020\t2\b\u0010\u0007\u001a\u0004\u0018\u00010\u00062\b\u0010\b\u001a\u0004\u0018\u00010\u0006H\u0016¢\u0006\u0004\b\n\u0010\u000bJ\u000f\u0010\f\u001a\u00020\tH\u0002¢\u0006\u0004\b\f\u0010\rJ\u0017\u0010\u000f\u001a\u00020\t2\u0006\u0010\u000e\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\u000f\u0010\u0010J\u0017\u0010\u0011\u001a\u00020\t2\u0006\u0010\u000e\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\u0011\u0010\u0010J\u0017\u0010\u0014\u001a\u00020\t2\u0006\u0010\u0013\u001a\u00020\u0012H\u0002¢\u0006\u0004\b\u0014\u0010\u0015R\u001a\u0010\u001a\u001a\b\u0012\u0004\u0012\u00020\u00170\u00168\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0018\u0010\u0019R\u0014\u0010\u001e\u001a\u00020\u001b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001c\u0010\u001dR\u001a\u0010\"\u001a\b\u0012\u0004\u0012\u00020\u00020\u001f8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b \u0010!R\u0014\u0010&\u001a\u00020#8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b$\u0010%¨\u0006("}, d2 = {"Lcom/facebook/appevents/aam/MetadataViewObserver;", "Landroid/view/ViewTreeObserver$OnGlobalFocusChangeListener;", "Landroid/app/Activity;", "activity", "<init>", "(Landroid/app/Activity;)V", "Landroid/view/View;", "oldView", "newView", "", "onGlobalFocusChanged", "(Landroid/view/View;Landroid/view/View;)V", "Wwwwwwwwwwwwwwwwwwwwwwwwwww", "()V", MBridgeConstans.DYNAMIC_VIEW_KEY_VIEW, "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Landroid/view/View;)V", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Ljava/lang/Runnable;", "runnable", "Wwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Ljava/lang/Runnable;)V", "", "", "Wwwwwwwwwwwwwwwwwwwwwwwww", "Ljava/util/Set;", "processedText", "Landroid/os/Handler;", "Wwwwwwwwwwwwwwwwwwwwwwww", "Landroid/os/Handler;", "uiThreadHandler", "Ljava/lang/ref/WeakReference;", "Wwwwwwwwwwwwwwwwwwwwwww", "Ljava/lang/ref/WeakReference;", "activityWeakReference", "Ljava/util/concurrent/atomic/AtomicBoolean;", "Wwwwwwwwwwwwwwwwwwwwww", "Ljava/util/concurrent/atomic/AtomicBoolean;", "isTracking", "Companion", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes.dex */
public final class MetadataViewObserver implements ViewTreeObserver.OnGlobalFocusChangeListener {
    @NotNull
    public static final Companion Companion = new Companion(null);
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final Map<Integer, MetadataViewObserver> f6234Wwwwwwwwwwwwwwwwwwwww = new HashMap();
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final AtomicBoolean f6235Wwwwwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final WeakReference<Activity> f6236Wwwwwwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Handler f6237Wwwwwwwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Set<String> f6238Wwwwwwwwwwwwwwwwwwwwwwwww;

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010%\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0017\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0007¢\u0006\u0004\b\u0007\u0010\bJ\u001f\u0010\f\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\u000b\u001a\u00020\tH\u0002¢\u0006\u0004\b\f\u0010\rJ3\u0010\u0010\u001a\u00020\u00062\u0012\u0010\u000f\u001a\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\t0\u000e2\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\u000b\u001a\u00020\tH\u0002¢\u0006\u0004\b\u0010\u0010\u0011R\u0014\u0010\u0013\u001a\u00020\u00128\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0013\u0010\u0014R \u0010\u0016\u001a\u000e\u0012\u0004\u0012\u00020\u0012\u0012\u0004\u0012\u00020\u00150\u000e8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0016\u0010\u0017¨\u0006\u0018"}, d2 = {"Lcom/facebook/appevents/aam/MetadataViewObserver$Companion;", "", "<init>", "()V", "Landroid/app/Activity;", "activity", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Landroid/app/Activity;)V", "", "key", "value", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;", "", "userData", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V", "", "MAX_TEXT_LENGTH", "I", "Lcom/facebook/appevents/aam/MetadataViewObserver;", "observers", "Ljava/util/Map;", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @JvmStatic
        @UiThread
        public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull Activity activity) {
            int hashCode = activity.hashCode();
            Map Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = MetadataViewObserver.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
            Integer valueOf = Integer.valueOf(hashCode);
            Object obj = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.get(valueOf);
            if (obj == null) {
                obj = new MetadataViewObserver(activity, null);
                Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.put(valueOf, obj);
            }
            MetadataViewObserver.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww((MetadataViewObserver) obj);
        }

        /* JADX WARN: Code restructure failed: missing block: B:16:0x0044, code lost:
            if (r7.equals("r5") == false) goto L28;
         */
        /* JADX WARN: Code restructure failed: missing block: B:19:0x004d, code lost:
            if (r7.equals("r4") == false) goto L28;
         */
        /* JADX WARN: Code restructure failed: missing block: B:21:0x0050, code lost:
            r8 = new kotlin.text.Regex("[^a-z]+").replace(r8, "");
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(java.util.Map<java.lang.String, java.lang.String> r6, java.lang.String r7, java.lang.String r8) {
            /*
                r5 = this;
                int r0 = r7.hashCode()
                r1 = 0
                r2 = 2
                r3 = 0
                switch(r0) {
                    case 3585: goto L5e;
                    case 3586: goto L47;
                    case 3587: goto L3e;
                    case 3588: goto Lc;
                    default: goto La;
                }
            La:
                goto L84
            Lc:
                java.lang.String r0 = "r6"
                boolean r0 = r7.equals(r0)
                if (r0 != 0) goto L16
                goto L84
            L16:
                java.lang.String r0 = "-"
                boolean r1 = kotlin.text.StringsKt.contains$default(r8, r0, r3, r2, r1)
                if (r1 == 0) goto L84
                kotlin.text.Regex r1 = new kotlin.text.Regex
                r1.<init>(r0)
                java.util.List r8 = r1.split(r8, r3)
                java.util.Collection r8 = (java.util.Collection) r8
                java.lang.String[] r0 = new java.lang.String[r3]
                java.lang.Object[] r8 = r8.toArray(r0)
                if (r8 == 0) goto L36
                java.lang.String[] r8 = (java.lang.String[]) r8
                r8 = r8[r3]
                goto L84
            L36:
                java.lang.NullPointerException r6 = new java.lang.NullPointerException
                java.lang.String r7 = "null cannot be cast to non-null type kotlin.Array<T>"
                r6.<init>(r7)
                throw r6
            L3e:
                java.lang.String r0 = "r5"
                boolean r0 = r7.equals(r0)
                if (r0 != 0) goto L50
                goto L84
            L47:
                java.lang.String r0 = "r4"
                boolean r0 = r7.equals(r0)
                if (r0 != 0) goto L50
                goto L84
            L50:
                kotlin.text.Regex r0 = new kotlin.text.Regex
                java.lang.String r1 = "[^a-z]+"
                r0.<init>(r1)
                java.lang.String r1 = ""
                java.lang.String r8 = r0.replace(r8, r1)
                goto L84
            L5e:
                java.lang.String r0 = "r3"
                boolean r0 = r7.equals(r0)
                if (r0 != 0) goto L67
                goto L84
            L67:
                java.lang.String r0 = "m"
                boolean r4 = kotlin.text.StringsKt.startsWith$default(r8, r0, r3, r2, r1)
                if (r4 != 0) goto L83
                java.lang.String r4 = "b"
                boolean r4 = kotlin.text.StringsKt.startsWith$default(r8, r4, r3, r2, r1)
                if (r4 != 0) goto L83
                java.lang.String r4 = "ge"
                boolean r8 = kotlin.text.StringsKt.startsWith$default(r8, r4, r3, r2, r1)
                if (r8 == 0) goto L80
                goto L83
            L80:
                java.lang.String r8 = "f"
                goto L84
            L83:
                r8 = r0
            L84:
                r6.put(r7, r8)
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.facebook.appevents.aam.MetadataViewObserver.Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(java.util.Map, java.lang.String, java.lang.String):void");
        }

        public final String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(String str, String str2) {
            if (Intrinsics.areEqual("r2", str)) {
                return new Regex("[^\\d.]").replace(str2, "");
            }
            return str2;
        }

        public Companion() {
        }
    }

    public /* synthetic */ MetadataViewObserver(Activity activity, DefaultConstructorMarker defaultConstructorMarker) {
        this(activity);
    }

    public static final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(View view, MetadataViewObserver metadataViewObserver) {
        if (!CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(MetadataViewObserver.class)) {
            try {
                if (!(view instanceof EditText)) {
                    return;
                }
                metadataViewObserver.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(view);
            } catch (Throwable th) {
                CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(th, MetadataViewObserver.class);
            }
        }
    }

    public static final /* synthetic */ void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(MetadataViewObserver metadataViewObserver) {
        if (CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(MetadataViewObserver.class)) {
            return;
        }
        try {
            metadataViewObserver.Wwwwwwwwwwwwwwwwwwwwwwwwwww();
        } catch (Throwable th) {
            CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(th, MetadataViewObserver.class);
        }
    }

    public static final /* synthetic */ Map Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        if (CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(MetadataViewObserver.class)) {
            return null;
        }
        try {
            return f6234Wwwwwwwwwwwwwwwwwwwww;
        } catch (Throwable th) {
            CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(th, MetadataViewObserver.class);
            return null;
        }
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwww() {
        if (!CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this)) {
            try {
                if (!this.f6235Wwwwwwwwwwwwwwwwwwwwww.getAndSet(true)) {
                    AppEventUtility appEventUtility = AppEventUtility.INSTANCE;
                    View Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = AppEventUtility.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.f6236Wwwwwwwwwwwwwwwwwwwwwww.get());
                    if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 != null) {
                        ViewTreeObserver viewTreeObserver = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.getViewTreeObserver();
                        if (viewTreeObserver.isAlive()) {
                            viewTreeObserver.addOnGlobalFocusChangeListener(this);
                        }
                    }
                }
            } catch (Throwable th) {
                CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(th, this);
            }
        }
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwww(Runnable runnable) {
        if (CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this)) {
            return;
        }
        try {
            if (Thread.currentThread() == Looper.getMainLooper().getThread()) {
                runnable.run();
            } else {
                this.f6237Wwwwwwwwwwwwwwwwwwwwwwww.post(runnable);
            }
        } catch (Throwable th) {
            CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(th, this);
        }
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(View view) {
        if (!CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this)) {
            try {
                String obj = ((EditText) view).getText().toString();
                if (obj != null) {
                    String obj2 = StringsKt.trim((CharSequence) obj).toString();
                    if (obj2 != null) {
                        String lowerCase = obj2.toLowerCase();
                        if (lowerCase.length() != 0 && !this.f6238Wwwwwwwwwwwwwwwwwwwwwwwww.contains(lowerCase) && lowerCase.length() <= 100) {
                            this.f6238Wwwwwwwwwwwwwwwwwwwwwwwww.add(lowerCase);
                            HashMap hashMap = new HashMap();
                            List<String> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = MetadataMatcher.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(view);
                            List<String> list = null;
                            for (MetadataRule metadataRule : MetadataRule.Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()) {
                                Companion companion = Companion;
                                String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(metadataRule.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(), lowerCase);
                                if (metadataRule.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().length() > 0) {
                                    MetadataMatcher metadataMatcher = MetadataMatcher.INSTANCE;
                                    if (!MetadataMatcher.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2, metadataRule.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww())) {
                                    }
                                }
                                MetadataMatcher metadataMatcher2 = MetadataMatcher.INSTANCE;
                                if (MetadataMatcher.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2, metadataRule.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww())) {
                                    companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(hashMap, metadataRule.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(), Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2);
                                } else {
                                    if (list == null) {
                                        list = MetadataMatcher.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(view);
                                    }
                                    if (MetadataMatcher.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(list, metadataRule.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww())) {
                                        companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(hashMap, metadataRule.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(), Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2);
                                    }
                                }
                            }
                            InternalAppEventsLogger.Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwww(hashMap);
                            return;
                        }
                        return;
                    }
                    throw new NullPointerException("null cannot be cast to non-null type java.lang.String");
                }
                throw new NullPointerException("null cannot be cast to non-null type kotlin.CharSequence");
            } catch (Throwable th) {
                CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(th, this);
            }
        }
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(final View view) {
        if (CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this)) {
            return;
        }
        try {
            Wwwwwwwwwwwwwwwwwwwwwwwwwwww(new Runnable() { // from class: Wwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww
                @Override // java.lang.Runnable
                public final void run() {
                    MetadataViewObserver.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(view, this);
                }
            });
        } catch (Throwable th) {
            CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(th, this);
        }
    }

    @Override // android.view.ViewTreeObserver.OnGlobalFocusChangeListener
    public void onGlobalFocusChanged(@Nullable View view, @Nullable View view2) {
        if (!CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this)) {
            if (view != null) {
                try {
                    Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(view);
                } catch (Throwable th) {
                    CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(th, this);
                    return;
                }
            }
            if (view2 != null) {
                Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(view2);
            }
        }
    }

    public MetadataViewObserver(Activity activity) {
        this.f6238Wwwwwwwwwwwwwwwwwwwwwwwww = new LinkedHashSet();
        this.f6237Wwwwwwwwwwwwwwwwwwwwwwww = new Handler(Looper.getMainLooper());
        this.f6236Wwwwwwwwwwwwwwwwwwwwwww = new WeakReference<>(activity);
        this.f6235Wwwwwwwwwwwwwwwwwwwwww = new AtomicBoolean(false);
    }
}
