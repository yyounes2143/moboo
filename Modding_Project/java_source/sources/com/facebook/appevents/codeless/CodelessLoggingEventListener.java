package com.facebook.appevents.codeless;

import android.os.Bundle;
import android.view.View;
import android.widget.AdapterView;
import androidx.annotation.RestrictTo;
import com.facebook.FacebookSdk;
import com.facebook.appevents.AppEventsLogger;
import com.facebook.appevents.codeless.internal.EventBinding;
import com.facebook.appevents.codeless.internal.ViewHierarchy;
import com.facebook.appevents.internal.AppEventUtility;
import com.facebook.internal.instrument.crashshield.CrashShieldHandler;
import com.mbridge.msdk.MBridgeConstans;
import com.sensorsdata.analytics.android.autotrack.aop.SensorsDataAutoTrackHelper;
import com.sensorsdata.analytics.android.sdk.SensorsDataInstrumented;
import java.lang.ref.WeakReference;
import kotlin.Metadata;
import kotlin.jvm.JvmStatic;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\bÇ\u0002\u0018\u00002\u00020\u0001:\u0002\u0017\u0018B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J'\u0010\n\u001a\u00020\t2\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\b\u001a\u00020\u0006H\u0007¢\u0006\u0004\b\n\u0010\u000bJ+\u0010\u000e\u001a\u00020\r2\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00062\n\u0010\b\u001a\u0006\u0012\u0002\b\u00030\fH\u0007¢\u0006\u0004\b\u000e\u0010\u000fJ'\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\b\u001a\u00020\u0006H\u0001¢\u0006\u0004\b\u0011\u0010\u0012J\u0017\u0010\u0015\u001a\u00020\u00102\u0006\u0010\u0014\u001a\u00020\u0013H\u0000¢\u0006\u0004\b\u0015\u0010\u0016¨\u0006\u0019"}, d2 = {"Lcom/facebook/appevents/codeless/CodelessLoggingEventListener;", "", "<init>", "()V", "Lcom/facebook/appevents/codeless/internal/EventBinding;", "mapping", "Landroid/view/View;", "rootView", "hostView", "Lcom/facebook/appevents/codeless/CodelessLoggingEventListener$AutoLoggingOnClickListener;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lcom/facebook/appevents/codeless/internal/EventBinding;Landroid/view/View;Landroid/view/View;)Lcom/facebook/appevents/codeless/CodelessLoggingEventListener$AutoLoggingOnClickListener;", "Landroid/widget/AdapterView;", "Lcom/facebook/appevents/codeless/CodelessLoggingEventListener$AutoLoggingOnItemClickListener;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lcom/facebook/appevents/codeless/internal/EventBinding;Landroid/view/View;Landroid/widget/AdapterView;)Lcom/facebook/appevents/codeless/CodelessLoggingEventListener$AutoLoggingOnItemClickListener;", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lcom/facebook/appevents/codeless/internal/EventBinding;Landroid/view/View;Landroid/view/View;)V", "Landroid/os/Bundle;", "parameters", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Landroid/os/Bundle;)V", "AutoLoggingOnClickListener", "AutoLoggingOnItemClickListener", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes.dex */
public final class CodelessLoggingEventListener {
    @NotNull
    public static final CodelessLoggingEventListener INSTANCE = new CodelessLoggingEventListener();

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0002\b\b\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0006\u001a\u00020\u0004¢\u0006\u0004\b\u0007\u0010\bJ\u0017\u0010\u000b\u001a\u00020\n2\u0006\u0010\t\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\u000b\u0010\fR\u0016\u0010\u0003\u001a\u00020\u00028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\r\u0010\u000eR\u001c\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00040\u000f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0010\u0010\u0011R\u001c\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00040\u000f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0012\u0010\u0011R\u0018\u0010\u0015\u001a\u0004\u0018\u00010\u00018\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0013\u0010\u0014R\"\u0010\u001d\u001a\u00020\u00168\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0017\u0010\u0018\u001a\u0004\b\u0019\u0010\u001a\"\u0004\b\u001b\u0010\u001c¨\u0006\u001e"}, d2 = {"Lcom/facebook/appevents/codeless/CodelessLoggingEventListener$AutoLoggingOnClickListener;", "Landroid/view/View$OnClickListener;", "Lcom/facebook/appevents/codeless/internal/EventBinding;", "mapping", "Landroid/view/View;", "rootView", "hostView", "<init>", "(Lcom/facebook/appevents/codeless/internal/EventBinding;Landroid/view/View;Landroid/view/View;)V", MBridgeConstans.DYNAMIC_VIEW_KEY_VIEW, "", "onClick", "(Landroid/view/View;)V", "Wwwwwwwwwwwwwwwwwwwwwwwww", "Lcom/facebook/appevents/codeless/internal/EventBinding;", "Ljava/lang/ref/WeakReference;", "Wwwwwwwwwwwwwwwwwwwwwwww", "Ljava/lang/ref/WeakReference;", "Wwwwwwwwwwwwwwwwwwwwwww", "Wwwwwwwwwwwwwwwwwwwwww", "Landroid/view/View$OnClickListener;", "existingOnClickListener", "", "Wwwwwwwwwwwwwwwwwwwww", "Z", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "()Z", "setSupportCodelessLogging", "(Z)V", "supportCodelessLogging", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes.dex */
    public static final class AutoLoggingOnClickListener implements View.OnClickListener {

        /* renamed from: Wwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public boolean f6259Wwwwwwwwwwwwwwwwwwwww = true;
        @Nullable

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public View.OnClickListener f6260Wwwwwwwwwwwwwwwwwwwwww;
        @NotNull

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public WeakReference<View> f6261Wwwwwwwwwwwwwwwwwwwwwww;
        @NotNull

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public WeakReference<View> f6262Wwwwwwwwwwwwwwwwwwwwwwww;
        @NotNull

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public EventBinding f6263Wwwwwwwwwwwwwwwwwwwwwwwww;

        public AutoLoggingOnClickListener(@NotNull EventBinding eventBinding, @NotNull View view, @NotNull View view2) {
            this.f6263Wwwwwwwwwwwwwwwwwwwwwwwww = eventBinding;
            this.f6262Wwwwwwwwwwwwwwwwwwwwwwww = new WeakReference<>(view2);
            this.f6261Wwwwwwwwwwwwwwwwwwwwwww = new WeakReference<>(view);
            this.f6260Wwwwwwwwwwwwwwwwwwwwww = ViewHierarchy.Wwwwwwwwwwwwwwwwwwwwwwwwwwww(view2);
        }

        public final boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            return this.f6259Wwwwwwwwwwwwwwwwwwwww;
        }

        @Override // android.view.View.OnClickListener
        @SensorsDataInstrumented
        public void onClick(@NotNull View view) {
            if (CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this)) {
                SensorsDataAutoTrackHelper.trackViewOnClick(view);
                return;
            }
            try {
                View.OnClickListener onClickListener = this.f6260Wwwwwwwwwwwwwwwwwwwwww;
                if (onClickListener != null) {
                    onClickListener.onClick(view);
                }
                View view2 = this.f6261Wwwwwwwwwwwwwwwwwwwwwww.get();
                View view3 = this.f6262Wwwwwwwwwwwwwwwwwwwwwwww.get();
                if (view2 != null && view3 != null) {
                    CodelessLoggingEventListener codelessLoggingEventListener = CodelessLoggingEventListener.INSTANCE;
                    CodelessLoggingEventListener.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.f6263Wwwwwwwwwwwwwwwwwwwwwwwww, view2, view3);
                }
                SensorsDataAutoTrackHelper.trackViewOnClick(view);
            } catch (Throwable th) {
                CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(th, this);
                SensorsDataAutoTrackHelper.trackViewOnClick(view);
            }
        }
    }

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\b\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0002\b\b\u0018\u00002\u00020\u0001B#\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\n\u0010\u0007\u001a\u0006\u0012\u0002\b\u00030\u0006¢\u0006\u0004\b\b\u0010\tJ5\u0010\u0011\u001a\u00020\u00102\f\u0010\n\u001a\b\u0012\u0002\b\u0003\u0018\u00010\u00062\u0006\u0010\u000b\u001a\u00020\u00042\u0006\u0010\r\u001a\u00020\f2\u0006\u0010\u000f\u001a\u00020\u000eH\u0016¢\u0006\u0004\b\u0011\u0010\u0012R\u0016\u0010\u0003\u001a\u00020\u00028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0013\u0010\u0014R \u0010\u0007\u001a\f\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u00060\u00158\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0016\u0010\u0017R\u001c\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00040\u00158\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0018\u0010\u0017R\u0018\u0010\u001b\u001a\u0004\u0018\u00010\u00018\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0019\u0010\u001aR\"\u0010#\u001a\u00020\u001c8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001d\u0010\u001e\u001a\u0004\b\u001f\u0010 \"\u0004\b!\u0010\"¨\u0006$"}, d2 = {"Lcom/facebook/appevents/codeless/CodelessLoggingEventListener$AutoLoggingOnItemClickListener;", "Landroid/widget/AdapterView$OnItemClickListener;", "Lcom/facebook/appevents/codeless/internal/EventBinding;", "mapping", "Landroid/view/View;", "rootView", "Landroid/widget/AdapterView;", "hostView", "<init>", "(Lcom/facebook/appevents/codeless/internal/EventBinding;Landroid/view/View;Landroid/widget/AdapterView;)V", "parent", MBridgeConstans.DYNAMIC_VIEW_KEY_VIEW, "", "position", "", "id", "", "onItemClick", "(Landroid/widget/AdapterView;Landroid/view/View;IJ)V", "Wwwwwwwwwwwwwwwwwwwwwwwww", "Lcom/facebook/appevents/codeless/internal/EventBinding;", "Ljava/lang/ref/WeakReference;", "Wwwwwwwwwwwwwwwwwwwwwwww", "Ljava/lang/ref/WeakReference;", "Wwwwwwwwwwwwwwwwwwwwwww", "Wwwwwwwwwwwwwwwwwwwwww", "Landroid/widget/AdapterView$OnItemClickListener;", "existingOnItemClickListener", "", "Wwwwwwwwwwwwwwwwwwwww", "Z", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "()Z", "setSupportCodelessLogging", "(Z)V", "supportCodelessLogging", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes.dex */
    public static final class AutoLoggingOnItemClickListener implements AdapterView.OnItemClickListener {

        /* renamed from: Wwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public boolean f6264Wwwwwwwwwwwwwwwwwwwww = true;
        @Nullable

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public AdapterView.OnItemClickListener f6265Wwwwwwwwwwwwwwwwwwwwww;
        @NotNull

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public WeakReference<View> f6266Wwwwwwwwwwwwwwwwwwwwwww;
        @NotNull

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public WeakReference<AdapterView<?>> f6267Wwwwwwwwwwwwwwwwwwwwwwww;
        @NotNull

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public EventBinding f6268Wwwwwwwwwwwwwwwwwwwwwwwww;

        public AutoLoggingOnItemClickListener(@NotNull EventBinding eventBinding, @NotNull View view, @NotNull AdapterView<?> adapterView) {
            this.f6268Wwwwwwwwwwwwwwwwwwwwwwwww = eventBinding;
            this.f6267Wwwwwwwwwwwwwwwwwwwwwwww = new WeakReference<>(adapterView);
            this.f6266Wwwwwwwwwwwwwwwwwwwwwww = new WeakReference<>(view);
            this.f6265Wwwwwwwwwwwwwwwwwwwwww = adapterView.getOnItemClickListener();
        }

        public final boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            return this.f6264Wwwwwwwwwwwwwwwwwwwww;
        }

        @Override // android.widget.AdapterView.OnItemClickListener
        @SensorsDataInstrumented
        public void onItemClick(@Nullable AdapterView<?> adapterView, @NotNull View view, int i, long j) {
            AdapterView.OnItemClickListener onItemClickListener = this.f6265Wwwwwwwwwwwwwwwwwwwwww;
            if (onItemClickListener != null) {
                onItemClickListener.onItemClick(adapterView, view, i, j);
            }
            View view2 = this.f6266Wwwwwwwwwwwwwwwwwwwwwww.get();
            AdapterView<?> adapterView2 = this.f6267Wwwwwwwwwwwwwwwwwwwwwwww.get();
            if (view2 != null && adapterView2 != null) {
                CodelessLoggingEventListener codelessLoggingEventListener = CodelessLoggingEventListener.INSTANCE;
                CodelessLoggingEventListener.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.f6268Wwwwwwwwwwwwwwwwwwwwwwwww, view2, adapterView2);
            }
            SensorsDataAutoTrackHelper.trackListView(adapterView, view, i);
        }
    }

    public static final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(String str, Bundle bundle) {
        if (CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(CodelessLoggingEventListener.class)) {
            return;
        }
        try {
            AppEventsLogger.Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwww(FacebookSdk.Wwwwwwwwwwwwwwwwwwwwwww()).Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(str, bundle);
        } catch (Throwable th) {
            CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(th, CodelessLoggingEventListener.class);
        }
    }

    @JvmStatic
    public static final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull EventBinding eventBinding, @NotNull View view, @NotNull View view2) {
        if (CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(CodelessLoggingEventListener.class)) {
            return;
        }
        try {
            final String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = eventBinding.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
            final Bundle Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3 = CodelessMatcher.Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(eventBinding, view, view2);
            INSTANCE.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3);
            FacebookSdk.Wwwwwwwwwwwwww().execute(new Runnable() { // from class: com.facebook.appevents.codeless.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww
                @Override // java.lang.Runnable
                public final void run() {
                    CodelessLoggingEventListener.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3);
                }
            });
        } catch (Throwable th) {
            CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(th, CodelessLoggingEventListener.class);
        }
    }

    @JvmStatic
    @NotNull
    public static final AutoLoggingOnItemClickListener Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull EventBinding eventBinding, @NotNull View view, @NotNull AdapterView<?> adapterView) {
        if (CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(CodelessLoggingEventListener.class)) {
            return null;
        }
        try {
            return new AutoLoggingOnItemClickListener(eventBinding, view, adapterView);
        } catch (Throwable th) {
            CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(th, CodelessLoggingEventListener.class);
            return null;
        }
    }

    @JvmStatic
    @NotNull
    public static final AutoLoggingOnClickListener Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull EventBinding eventBinding, @NotNull View view, @NotNull View view2) {
        if (CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(CodelessLoggingEventListener.class)) {
            return null;
        }
        try {
            return new AutoLoggingOnClickListener(eventBinding, view, view2);
        } catch (Throwable th) {
            CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(th, CodelessLoggingEventListener.class);
            return null;
        }
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull Bundle bundle) {
        if (CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this)) {
            return;
        }
        try {
            String string = bundle.getString("_valueToSum");
            if (string != null) {
                bundle.putDouble("_valueToSum", AppEventUtility.Wwwwwwwwwwwwwwwwwwwwwwwwwwww(string));
            }
            bundle.putString("_is_fb_codeless", "1");
        } catch (Throwable th) {
            CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(th, this);
        }
    }
}
