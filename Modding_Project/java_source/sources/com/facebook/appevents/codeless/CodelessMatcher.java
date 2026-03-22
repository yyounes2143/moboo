package com.facebook.appevents.codeless;

import android.app.Activity;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.ViewTreeObserver;
import android.widget.AdapterView;
import android.widget.ListView;
import androidx.annotation.UiThread;
import com.facebook.FacebookException;
import com.facebook.FacebookSdk;
import com.facebook.appevents.codeless.CodelessLoggingEventListener;
import com.facebook.appevents.codeless.RCTCodelessLoggingEventListener;
import com.facebook.appevents.codeless.internal.EventBinding;
import com.facebook.appevents.codeless.internal.ParameterComponent;
import com.facebook.appevents.codeless.internal.PathComponent;
import com.facebook.appevents.codeless.internal.ViewHierarchy;
import com.facebook.appevents.internal.AppEventUtility;
import com.facebook.internal.FetchedAppSettings;
import com.facebook.internal.FetchedAppSettingsManager;
import com.facebook.internal.InternalSettings;
import com.facebook.internal.Utility;
import com.facebook.internal.instrument.crashshield.CrashShieldHandler;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.mbridge.msdk.MBridgeConstans;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;
import java.util.WeakHashMap;
import kotlin.Metadata;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000R\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010#\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0001\u0018\u0000 #2\u00020\u0001:\u0003#$%B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0017\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0007¢\u0006\u0004\b\u0007\u0010\bJ\u0017\u0010\t\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0007¢\u0006\u0004\b\t\u0010\bJ\u0017\u0010\n\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0007¢\u0006\u0004\b\n\u0010\bJ\u000f\u0010\u000b\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\u000b\u0010\u0003J\u000f\u0010\f\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\f\u0010\u0003R\u0014\u0010\u0010\u001a\u00020\r8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000e\u0010\u000fR\u001a\u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\u00040\u00118\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0012\u0010\u0013R\u001a\u0010\u0017\u001a\b\u0012\u0004\u0012\u00020\u00150\u00118\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0016\u0010\u0013R&\u0010\u001d\u001a\u0012\u0012\u0004\u0012\u00020\u00190\u0018j\b\u0012\u0004\u0012\u00020\u0019`\u001a8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001b\u0010\u001cRF\u0010\"\u001a4\u0012\u0004\u0012\u00020\u001f\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00190\u00180\u001ej\u001e\u0012\u0004\u0012\u00020\u001f\u0012\u0014\u0012\u0012\u0012\u0004\u0012\u00020\u00190\u0018j\b\u0012\u0004\u0012\u00020\u0019`\u001a` 8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0007\u0010!¨\u0006&"}, d2 = {"Lcom/facebook/appevents/codeless/CodelessMatcher;", "", "<init>", "()V", "Landroid/app/Activity;", "activity", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Landroid/app/Activity;)V", "Wwwwwwwwwwwwwwwwwwwwwwwwwww", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Wwwwwwwwwwwwwwwwwwwwwwwwww", "Wwwwwwwwwwwwwwwwwwwwwwwwwwww", "Landroid/os/Handler;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Landroid/os/Handler;", "uiThreadHandler", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Ljava/util/Set;", "activitiesSet", "Lcom/facebook/appevents/codeless/CodelessMatcher$ViewMatcher;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "viewMatchers", "Ljava/util/HashSet;", "", "Lkotlin/collections/HashSet;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Ljava/util/HashSet;", "listenerSet", "Ljava/util/HashMap;", "", "Lkotlin/collections/HashMap;", "Ljava/util/HashMap;", "activityToListenerMap", "Companion", "MatchedView", "ViewMatcher", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes.dex */
public final class CodelessMatcher {
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static CodelessMatcher f6276Wwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final HashMap<Integer, HashSet<String>> f6278Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public HashSet<String> f6279Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Set<ViewMatcher> f6280Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Set<Activity> f6281Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Handler f6282Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @NotNull
    public static final Companion Companion = new Companion(null);

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final String f6277Wwwwwwwwwwwwwwwwwwwwwwwwwwwww = CodelessMatcher.class.getCanonicalName();

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\b\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u000f\u0010\u0005\u001a\u00020\u0004H\u0007¢\u0006\u0004\b\u0005\u0010\u0006J)\u0010\r\u001a\u00020\f2\b\u0010\b\u001a\u0004\u0018\u00010\u00072\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\u000b\u001a\u00020\tH\u0007¢\u0006\u0004\b\r\u0010\u000eR\u0014\u0010\u0010\u001a\u00020\u000f8\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0010\u0010\u0011R\u0014\u0010\u0012\u001a\u00020\u000f8\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0012\u0010\u0011R\u001c\u0010\u0014\u001a\n \u0013*\u0004\u0018\u00010\u000f0\u000f8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0014\u0010\u0011R\u0018\u0010\u0015\u001a\u0004\u0018\u00010\u00048\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0015\u0010\u0016¨\u0006\u0017"}, d2 = {"Lcom/facebook/appevents/codeless/CodelessMatcher$Companion;", "", "<init>", "()V", "Lcom/facebook/appevents/codeless/CodelessMatcher;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "()Lcom/facebook/appevents/codeless/CodelessMatcher;", "Lcom/facebook/appevents/codeless/internal/EventBinding;", "mapping", "Landroid/view/View;", "rootView", "hostView", "Landroid/os/Bundle;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lcom/facebook/appevents/codeless/internal/EventBinding;Landroid/view/View;Landroid/view/View;)Landroid/os/Bundle;", "", "CURRENT_CLASS_NAME", "Ljava/lang/String;", "PARENT_CLASS_NAME", "kotlin.jvm.PlatformType", "TAG", "codelessMatcher", "Lcom/facebook/appevents/codeless/CodelessMatcher;", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @JvmStatic
        @UiThread
        @NotNull
        public final Bundle Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@Nullable EventBinding eventBinding, @NotNull View view, @NotNull View view2) {
            List<ParameterComponent> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
            EventBinding eventBinding2;
            View view3;
            List<MatchedView> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
            Bundle bundle = new Bundle();
            if (eventBinding != null && (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = eventBinding.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()) != null) {
                for (ParameterComponent parameterComponent : Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2) {
                    if (parameterComponent.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() != null && parameterComponent.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().length() > 0) {
                        bundle.putString(parameterComponent.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(), parameterComponent.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
                    } else if (parameterComponent.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().size() > 0) {
                        if (Intrinsics.areEqual(parameterComponent.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(), "relative")) {
                            EventBinding eventBinding3 = eventBinding;
                            Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = ViewMatcher.Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(eventBinding3, view2, parameterComponent.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(), 0, -1, view2.getClass().getSimpleName());
                            eventBinding2 = eventBinding3;
                            view3 = view;
                        } else {
                            eventBinding2 = eventBinding;
                            view3 = view;
                            Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = ViewMatcher.Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(eventBinding2, view3, parameterComponent.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(), 0, -1, view.getClass().getSimpleName());
                        }
                        Iterator<MatchedView> it = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.iterator();
                        while (true) {
                            if (!it.hasNext()) {
                                break;
                            }
                            MatchedView next = it.next();
                            if (next.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() != null) {
                                ViewHierarchy viewHierarchy = ViewHierarchy.INSTANCE;
                                String Wwwwwwwwwwwwwwwwwwwwwwww2 = ViewHierarchy.Wwwwwwwwwwwwwwwwwwwwwwww(next.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
                                if (Wwwwwwwwwwwwwwwwwwwwwwww2.length() > 0) {
                                    bundle.putString(parameterComponent.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(), Wwwwwwwwwwwwwwwwwwwwwwww2);
                                    break;
                                }
                            }
                        }
                        eventBinding = eventBinding2;
                        view = view3;
                    }
                }
            }
            return bundle;
        }

        @JvmStatic
        @NotNull
        public final synchronized CodelessMatcher Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            CodelessMatcher Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
            try {
                if (CodelessMatcher.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() == null) {
                    CodelessMatcher.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(new CodelessMatcher(null));
                }
                Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = CodelessMatcher.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
                if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 == null) {
                    throw new NullPointerException("null cannot be cast to non-null type com.facebook.appevents.codeless.CodelessMatcher");
                }
            } catch (Throwable th) {
                throw th;
            }
            return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
        }

        public Companion() {
        }
    }

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007J\u000f\u0010\b\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\b\u0010\tR\u001c\u0010\u0003\u001a\n\u0012\u0004\u0012\u00020\u0002\u0018\u00010\n8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\b\u0010\u000bR\u0017\u0010\u0005\u001a\u00020\u00048\u0006¢\u0006\f\n\u0004\b\f\u0010\r\u001a\u0004\b\f\u0010\u000e¨\u0006\u000f"}, d2 = {"Lcom/facebook/appevents/codeless/CodelessMatcher$MatchedView;", "", "Landroid/view/View;", MBridgeConstans.DYNAMIC_VIEW_KEY_VIEW, "", "viewMapKey", "<init>", "(Landroid/view/View;Ljava/lang/String;)V", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "()Landroid/view/View;", "Ljava/lang/ref/WeakReference;", "Ljava/lang/ref/WeakReference;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Ljava/lang/String;", "()Ljava/lang/String;", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes.dex */
    public static final class MatchedView {
        @NotNull

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final String f6283Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        @Nullable

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final WeakReference<View> f6284Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        public MatchedView(@NotNull View view, @NotNull String str) {
            this.f6284Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new WeakReference<>(view);
            this.f6283Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = str;
        }

        @NotNull
        public final String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            return this.f6283Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        }

        @Nullable
        public final View Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            WeakReference<View> weakReference = this.f6284Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
            if (weakReference == null) {
                return null;
            }
            return weakReference.get();
        }
    }

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000T\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\b\u000b\b\u0007\u0018\u0000 -2\u00020\u00012\u00020\u00022\u00020\u0003:\u0001-B9\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0016\u0010\u000b\u001a\u0012\u0012\u0004\u0012\u00020\t0\bj\b\u0012\u0004\u0012\u00020\t`\n\u0012\u0006\u0010\f\u001a\u00020\t¢\u0006\u0004\b\r\u0010\u000eJ\u000f\u0010\u0010\u001a\u00020\u000fH\u0016¢\u0006\u0004\b\u0010\u0010\u0011J\u000f\u0010\u0012\u001a\u00020\u000fH\u0016¢\u0006\u0004\b\u0012\u0010\u0011J\u000f\u0010\u0013\u001a\u00020\u000fH\u0016¢\u0006\u0004\b\u0013\u0010\u0011J\u000f\u0010\u0014\u001a\u00020\u000fH\u0002¢\u0006\u0004\b\u0014\u0010\u0011J#\u0010\u0017\u001a\u00020\u000f2\b\u0010\u0016\u001a\u0004\u0018\u00010\u00152\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0002¢\u0006\u0004\b\u0017\u0010\u0018J)\u0010\u001b\u001a\u00020\u000f2\u0006\u0010\u001a\u001a\u00020\u00192\u0006\u0010\u0005\u001a\u00020\u00042\b\u0010\u0016\u001a\u0004\u0018\u00010\u0015H\u0002¢\u0006\u0004\b\u001b\u0010\u001cJ'\u0010\u001d\u001a\u00020\u000f2\u0006\u0010\u001a\u001a\u00020\u00192\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0016\u001a\u00020\u0015H\u0002¢\u0006\u0004\b\u001d\u0010\u001cJ'\u0010\u001e\u001a\u00020\u000f2\u0006\u0010\u001a\u001a\u00020\u00192\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0016\u001a\u00020\u0015H\u0002¢\u0006\u0004\b\u001e\u0010\u001cJ'\u0010\u001f\u001a\u00020\u000f2\u0006\u0010\u001a\u001a\u00020\u00192\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0016\u001a\u00020\u0015H\u0002¢\u0006\u0004\b\u001f\u0010\u001cR\u001c\u0010\u0005\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00040 8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b!\u0010\"R\u001e\u0010&\u001a\n\u0012\u0004\u0012\u00020\u0015\u0018\u00010#8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b$\u0010%R\u0014\u0010\u0007\u001a\u00020\u00068\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b'\u0010(R$\u0010\u000b\u001a\u0012\u0012\u0004\u0012\u00020\t0\bj\b\u0012\u0004\u0012\u00020\t`\n8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b)\u0010*R\u0014\u0010\f\u001a\u00020\t8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b+\u0010,¨\u0006."}, d2 = {"Lcom/facebook/appevents/codeless/CodelessMatcher$ViewMatcher;", "Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;", "Landroid/view/ViewTreeObserver$OnScrollChangedListener;", "Ljava/lang/Runnable;", "Landroid/view/View;", "rootView", "Landroid/os/Handler;", "handler", "Ljava/util/HashSet;", "", "Lkotlin/collections/HashSet;", "listenerSet", "activityName", "<init>", "(Landroid/view/View;Landroid/os/Handler;Ljava/util/HashSet;Ljava/lang/String;)V", "", "run", "()V", "onGlobalLayout", "onScrollChanged", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Lcom/facebook/appevents/codeless/internal/EventBinding;", "mapping", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lcom/facebook/appevents/codeless/internal/EventBinding;Landroid/view/View;)V", "Lcom/facebook/appevents/codeless/CodelessMatcher$MatchedView;", "matchedView", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lcom/facebook/appevents/codeless/CodelessMatcher$MatchedView;Landroid/view/View;Lcom/facebook/appevents/codeless/internal/EventBinding;)V", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Ljava/lang/ref/WeakReference;", "Wwwwwwwwwwwwwwwwwwwwwwwww", "Ljava/lang/ref/WeakReference;", "", "Wwwwwwwwwwwwwwwwwwwwwwww", "Ljava/util/List;", "eventBindings", "Wwwwwwwwwwwwwwwwwwwwwww", "Landroid/os/Handler;", "Wwwwwwwwwwwwwwwwwwwwww", "Ljava/util/HashSet;", "Wwwwwwwwwwwwwwwwwwwww", "Ljava/lang/String;", "Companion", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    @UiThread
    /* loaded from: classes.dex */
    public static final class ViewMatcher implements ViewTreeObserver.OnGlobalLayoutListener, ViewTreeObserver.OnScrollChangedListener, Runnable {
        @NotNull
        public static final Companion Companion = new Companion(null);
        @NotNull

        /* renamed from: Wwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final String f6285Wwwwwwwwwwwwwwwwwwwww;
        @NotNull

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final HashSet<String> f6286Wwwwwwwwwwwwwwwwwwwwww;
        @NotNull

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final Handler f6287Wwwwwwwwwwwwwwwwwwwwwww;
        @Nullable

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public List<EventBinding> f6288Wwwwwwwwwwwwwwwwwwwwwwww;
        @NotNull

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final WeakReference<View> f6289Wwwwwwwwwwwwwwwwwwwwwwwww;

        /* compiled from: Proguard */
        @Metadata(d1 = {"\u0000H\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003JO\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\u00100\b2\b\u0010\u0005\u001a\u0004\u0018\u00010\u00042\b\u0010\u0007\u001a\u0004\u0018\u00010\u00062\f\u0010\n\u001a\b\u0012\u0004\u0012\u00020\t0\b2\u0006\u0010\f\u001a\u00020\u000b2\u0006\u0010\r\u001a\u00020\u000b2\u0006\u0010\u000f\u001a\u00020\u000eH\u0007¢\u0006\u0004\b\u0011\u0010\u0012J'\u0010\u0016\u001a\u00020\u00152\u0006\u0010\u0013\u001a\u00020\u00062\u0006\u0010\u0014\u001a\u00020\t2\u0006\u0010\r\u001a\u00020\u000bH\u0002¢\u0006\u0004\b\u0016\u0010\u0017J\u001d\u0010\u001a\u001a\b\u0012\u0004\u0012\u00020\u00060\b2\u0006\u0010\u0019\u001a\u00020\u0018H\u0002¢\u0006\u0004\b\u001a\u0010\u001b¨\u0006\u001c"}, d2 = {"Lcom/facebook/appevents/codeless/CodelessMatcher$ViewMatcher$Companion;", "", "<init>", "()V", "Lcom/facebook/appevents/codeless/internal/EventBinding;", "mapping", "Landroid/view/View;", MBridgeConstans.DYNAMIC_VIEW_KEY_VIEW, "", "Lcom/facebook/appevents/codeless/internal/PathComponent;", MBridgeConstans.DYNAMIC_VIEW_WX_PATH, "", "level", FirebaseAnalytics.Param.INDEX, "", "mapKey", "Lcom/facebook/appevents/codeless/CodelessMatcher$MatchedView;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lcom/facebook/appevents/codeless/internal/EventBinding;Landroid/view/View;Ljava/util/List;IILjava/lang/String;)Ljava/util/List;", "targetView", "pathElement", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Landroid/view/View;Lcom/facebook/appevents/codeless/internal/PathComponent;I)Z", "Landroid/view/ViewGroup;", "viewGroup", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Landroid/view/ViewGroup;)Ljava/util/List;", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
        /* loaded from: classes.dex */
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            /* JADX WARN: Code restructure failed: missing block: B:14:0x0065, code lost:
                if (kotlin.jvm.internal.Intrinsics.areEqual(r10.getClass().getSimpleName(), (java.lang.String) r12.get(r12.size() - 1)) == false) goto L15;
             */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public final boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(android.view.View r10, com.facebook.appevents.codeless.internal.PathComponent r11, int r12) {
                /*
                    Method dump skipped, instructions count: 323
                    To view this dump add '--comments-level debug' option
                */
                throw new UnsupportedOperationException("Method not decompiled: com.facebook.appevents.codeless.CodelessMatcher.ViewMatcher.Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(android.view.View, com.facebook.appevents.codeless.internal.PathComponent, int):boolean");
            }

            public final List<View> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(ViewGroup viewGroup) {
                ArrayList arrayList = new ArrayList();
                int childCount = viewGroup.getChildCount();
                if (childCount > 0) {
                    int i = 0;
                    while (true) {
                        int i2 = i + 1;
                        View childAt = viewGroup.getChildAt(i);
                        if (childAt.getVisibility() == 0) {
                            arrayList.add(childAt);
                        }
                        if (i2 >= childCount) {
                            break;
                        }
                        i = i2;
                    }
                }
                return arrayList;
            }

            @JvmStatic
            @NotNull
            public final List<MatchedView> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@Nullable EventBinding eventBinding, @Nullable View view, @NotNull List<PathComponent> list, int i, int i2, @NotNull String str) {
                EventBinding eventBinding2;
                List<PathComponent> list2;
                Companion companion;
                List<View> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
                int size;
                List<View> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3;
                int size2;
                String str2 = str + '.' + i2;
                ArrayList arrayList = new ArrayList();
                if (view != null) {
                    if (i >= list.size()) {
                        arrayList.add(new MatchedView(view, str2));
                        eventBinding2 = eventBinding;
                        list2 = list;
                        companion = this;
                    } else {
                        PathComponent pathComponent = list.get(i);
                        if (Intrinsics.areEqual(pathComponent.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(), "..")) {
                            ViewParent parent = view.getParent();
                            if ((parent instanceof ViewGroup) && (size = (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww((ViewGroup) parent)).size()) > 0) {
                                int i3 = 0;
                                while (true) {
                                    int i4 = i3 + 1;
                                    EventBinding eventBinding3 = eventBinding;
                                    List<PathComponent> list3 = list;
                                    arrayList.addAll(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(eventBinding3, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.get(i3), list3, i + 1, i3, str2));
                                    if (i4 >= size) {
                                        break;
                                    }
                                    i3 = i4;
                                    eventBinding = eventBinding3;
                                    list = list3;
                                }
                            }
                        } else {
                            eventBinding2 = eventBinding;
                            list2 = list;
                            companion = this;
                            if (Intrinsics.areEqual(pathComponent.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(), ".")) {
                                arrayList.add(new MatchedView(view, str2));
                                return arrayList;
                            } else if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(view, pathComponent, i2)) {
                                if (i == list2.size() - 1) {
                                    arrayList.add(new MatchedView(view, str2));
                                }
                            }
                        }
                    }
                    if ((view instanceof ViewGroup) && (size2 = (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww((ViewGroup) view)).size()) > 0) {
                        int i5 = 0;
                        while (true) {
                            int i6 = i5 + 1;
                            arrayList.addAll(companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(eventBinding2, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3.get(i5), list2, i + 1, i5, str2));
                            if (i6 >= size2) {
                                break;
                            }
                            companion = this;
                            i5 = i6;
                        }
                    }
                }
                return arrayList;
            }

            public Companion() {
            }
        }

        public ViewMatcher(@Nullable View view, @NotNull Handler handler, @NotNull HashSet<String> hashSet, @NotNull String str) {
            this.f6289Wwwwwwwwwwwwwwwwwwwwwwwww = new WeakReference<>(view);
            this.f6287Wwwwwwwwwwwwwwwwwwwwwww = handler;
            this.f6286Wwwwwwwwwwwwwwwwwwwwww = hashSet;
            this.f6285Wwwwwwwwwwwwwwwwwwwww = str;
            handler.postDelayed(this, 200L);
        }

        public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            int size;
            List<EventBinding> list = this.f6288Wwwwwwwwwwwwwwwwwwwwwwww;
            if (list != null && this.f6289Wwwwwwwwwwwwwwwwwwwwwwwww.get() != null && list.size() - 1 >= 0) {
                int i = 0;
                while (true) {
                    int i2 = i + 1;
                    Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(list.get(i), this.f6289Wwwwwwwwwwwwwwwwwwwwwwwww.get());
                    if (i2 <= size) {
                        i = i2;
                    } else {
                        return;
                    }
                }
            }
        }

        public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(EventBinding eventBinding, View view) {
            if (eventBinding != null && view != null) {
                String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = eventBinding.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
                if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 == null || Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.length() == 0 || Intrinsics.areEqual(eventBinding.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(), this.f6285Wwwwwwwwwwwwwwwwwwwww)) {
                    List<PathComponent> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = eventBinding.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
                    if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.size() <= 25) {
                        for (MatchedView matchedView : Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(eventBinding, view, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2, 0, -1, this.f6285Wwwwwwwwwwwwwwwwwwwww)) {
                            Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(matchedView, view, eventBinding);
                        }
                    }
                }
            }
        }

        public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(MatchedView matchedView, View view, EventBinding eventBinding) {
            boolean z;
            View Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = matchedView.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
            if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 != null) {
                String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = matchedView.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
                View.OnTouchListener Wwwwwwwwwwwwwwwwwwwwwwwwwww2 = ViewHierarchy.Wwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2);
                if (Wwwwwwwwwwwwwwwwwwwwwwwwwww2 instanceof RCTCodelessLoggingEventListener.AutoLoggingOnTouchListener) {
                    if (Wwwwwwwwwwwwwwwwwwwwwwwwwww2 != null) {
                        if (((RCTCodelessLoggingEventListener.AutoLoggingOnTouchListener) Wwwwwwwwwwwwwwwwwwwwwwwwwww2).Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()) {
                            z = true;
                            if (this.f6286Wwwwwwwwwwwwwwwwwwwwww.contains(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2) && !z) {
                                Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.setOnTouchListener(RCTCodelessLoggingEventListener.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(eventBinding, view, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2));
                                this.f6286Wwwwwwwwwwwwwwwwwwwwww.add(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2);
                                return;
                            }
                        }
                    } else {
                        throw new NullPointerException("null cannot be cast to non-null type com.facebook.appevents.codeless.RCTCodelessLoggingEventListener.AutoLoggingOnTouchListener");
                    }
                }
                z = false;
                if (this.f6286Wwwwwwwwwwwwwwwwwwwwww.contains(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2)) {
                }
            }
        }

        public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(MatchedView matchedView, View view, EventBinding eventBinding) {
            boolean z;
            AdapterView adapterView = (AdapterView) matchedView.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
            if (adapterView != null) {
                String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = matchedView.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
                AdapterView.OnItemClickListener onItemClickListener = adapterView.getOnItemClickListener();
                if (onItemClickListener instanceof CodelessLoggingEventListener.AutoLoggingOnItemClickListener) {
                    if (onItemClickListener != null) {
                        if (((CodelessLoggingEventListener.AutoLoggingOnItemClickListener) onItemClickListener).Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()) {
                            z = true;
                            if (this.f6286Wwwwwwwwwwwwwwwwwwwwww.contains(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2) && !z) {
                                adapterView.setOnItemClickListener(CodelessLoggingEventListener.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(eventBinding, view, adapterView));
                                this.f6286Wwwwwwwwwwwwwwwwwwwwww.add(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2);
                                return;
                            }
                        }
                    } else {
                        throw new NullPointerException("null cannot be cast to non-null type com.facebook.appevents.codeless.CodelessLoggingEventListener.AutoLoggingOnItemClickListener");
                    }
                }
                z = false;
                if (this.f6286Wwwwwwwwwwwwwwwwwwwwww.contains(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2)) {
                }
            }
        }

        public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(MatchedView matchedView, View view, EventBinding eventBinding) {
            boolean z;
            View Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = matchedView.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
            if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 != null) {
                String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = matchedView.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
                View.OnClickListener Wwwwwwwwwwwwwwwwwwwwwwwwwwww2 = ViewHierarchy.Wwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2);
                if (Wwwwwwwwwwwwwwwwwwwwwwwwwwww2 instanceof CodelessLoggingEventListener.AutoLoggingOnClickListener) {
                    if (Wwwwwwwwwwwwwwwwwwwwwwwwwwww2 != null) {
                        if (((CodelessLoggingEventListener.AutoLoggingOnClickListener) Wwwwwwwwwwwwwwwwwwwwwwwwwwww2).Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()) {
                            z = true;
                            if (this.f6286Wwwwwwwwwwwwwwwwwwwwww.contains(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2) && !z) {
                                Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.setOnClickListener(CodelessLoggingEventListener.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(eventBinding, view, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2));
                                this.f6286Wwwwwwwwwwwwwwwwwwwwww.add(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2);
                                return;
                            }
                        }
                    } else {
                        throw new NullPointerException("null cannot be cast to non-null type com.facebook.appevents.codeless.CodelessLoggingEventListener.AutoLoggingOnClickListener");
                    }
                }
                z = false;
                if (this.f6286Wwwwwwwwwwwwwwwwwwwwww.contains(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2)) {
                }
            }
        }

        public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(MatchedView matchedView, View view, EventBinding eventBinding) {
            if (eventBinding != null) {
                try {
                    View Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = matchedView.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
                    if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 != null) {
                        View Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3 = ViewHierarchy.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2);
                        if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3 != null && ViewHierarchy.INSTANCE.Wwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3)) {
                            Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(matchedView, view, eventBinding);
                        } else if (!StringsKt.startsWith$default(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.getClass().getName(), "com.facebook.react", false, 2, (Object) null)) {
                            if (!(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 instanceof AdapterView)) {
                                Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(matchedView, view, eventBinding);
                            } else if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 instanceof ListView) {
                                Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(matchedView, view, eventBinding);
                            }
                        }
                    }
                } catch (Exception e) {
                    Utility utility = Utility.INSTANCE;
                    Utility.Illlllllllllllllllllllll(CodelessMatcher.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(), e);
                }
            }
        }

        @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
        public void onGlobalLayout() {
            Wwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        }

        @Override // android.view.ViewTreeObserver.OnScrollChangedListener
        public void onScrollChanged() {
            Wwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        }

        @Override // java.lang.Runnable
        public void run() {
            View view;
            if (!CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this)) {
                try {
                    FetchedAppSettings Wwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = FetchedAppSettingsManager.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(FacebookSdk.Wwwwwwwwwwwwwwwwwwwwww());
                    if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwww2 != null && Wwwwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()) {
                        List<EventBinding> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = EventBinding.Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww());
                        this.f6288Wwwwwwwwwwwwwwwwwwwwwwww = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
                        if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 != null && (view = this.f6289Wwwwwwwwwwwwwwwwwwwwwwwww.get()) != null) {
                            ViewTreeObserver viewTreeObserver = view.getViewTreeObserver();
                            if (viewTreeObserver.isAlive()) {
                                viewTreeObserver.addOnGlobalLayoutListener(this);
                                viewTreeObserver.addOnScrollChangedListener(this);
                            }
                            Wwwwwwwwwwwwwwwwwwwwwwwwwwwww();
                        }
                    }
                } catch (Throwable th) {
                    CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(th, this);
                }
            }
        }
    }

    public /* synthetic */ CodelessMatcher(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    public static final void Wwwwwwwwwwwwwwwwwwwwwwwww(CodelessMatcher codelessMatcher) {
        if (CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(CodelessMatcher.class)) {
            return;
        }
        try {
            codelessMatcher.Wwwwwwwwwwwwwwwwwwwwwwwwwwww();
        } catch (Throwable th) {
            CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(th, CodelessMatcher.class);
        }
    }

    public static final /* synthetic */ void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(CodelessMatcher codelessMatcher) {
        if (CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(CodelessMatcher.class)) {
            return;
        }
        try {
            f6276Wwwwwwwwwwwwwwwwwwwwwwwwwwww = codelessMatcher;
        } catch (Throwable th) {
            CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(th, CodelessMatcher.class);
        }
    }

    public static final /* synthetic */ String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        if (CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(CodelessMatcher.class)) {
            return null;
        }
        try {
            return f6277Wwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        } catch (Throwable th) {
            CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(th, CodelessMatcher.class);
            return null;
        }
    }

    public static final /* synthetic */ CodelessMatcher Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        if (CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(CodelessMatcher.class)) {
            return null;
        }
        try {
            return f6276Wwwwwwwwwwwwwwwwwwwwwwwwwwww;
        } catch (Throwable th) {
            CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(th, CodelessMatcher.class);
            return null;
        }
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwww() {
        if (CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this)) {
            return;
        }
        try {
            if (Thread.currentThread() == Looper.getMainLooper().getThread()) {
                Wwwwwwwwwwwwwwwwwwwwwwwwwwww();
            } else {
                this.f6282Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.post(new Runnable() { // from class: com.facebook.appevents.codeless.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww
                    @Override // java.lang.Runnable
                    public final void run() {
                        CodelessMatcher.Wwwwwwwwwwwwwwwwwwwwwwwww(CodelessMatcher.this);
                    }
                });
            }
        } catch (Throwable th) {
            CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(th, this);
        }
    }

    @UiThread
    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull Activity activity) {
        if (!CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this)) {
            try {
                if (InternalSettings.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()) {
                    return;
                }
                if (Thread.currentThread() == Looper.getMainLooper().getThread()) {
                    this.f6281Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.remove(activity);
                    this.f6280Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.clear();
                    this.f6278Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww.put(Integer.valueOf(activity.hashCode()), (HashSet) this.f6279Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.clone());
                    this.f6279Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.clear();
                    return;
                }
                throw new FacebookException("Can't remove activity from CodelessMatcher on non-UI thread");
            } catch (Throwable th) {
                CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(th, this);
            }
        }
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        if (!CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this)) {
            try {
                for (Activity activity : this.f6281Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww) {
                    if (activity != null) {
                        this.f6280Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.add(new ViewMatcher(AppEventUtility.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(activity), this.f6282Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, this.f6279Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, activity.getClass().getSimpleName()));
                    }
                }
            } catch (Throwable th) {
                CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(th, this);
            }
        }
    }

    @UiThread
    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull Activity activity) {
        if (CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this)) {
            return;
        }
        try {
            this.f6278Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww.remove(Integer.valueOf(activity.hashCode()));
        } catch (Throwable th) {
            CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(th, this);
        }
    }

    @UiThread
    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull Activity activity) {
        if (!CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this)) {
            try {
                if (InternalSettings.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()) {
                    return;
                }
                if (Thread.currentThread() == Looper.getMainLooper().getThread()) {
                    this.f6281Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.add(activity);
                    this.f6279Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.clear();
                    HashSet<String> hashSet = this.f6278Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww.get(Integer.valueOf(activity.hashCode()));
                    if (hashSet != null) {
                        this.f6279Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = hashSet;
                    }
                    Wwwwwwwwwwwwwwwwwwwwwwwwww();
                    return;
                }
                throw new FacebookException("Can't add activity to CodelessMatcher on non-UI thread");
            } catch (Throwable th) {
                CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(th, this);
            }
        }
    }

    public CodelessMatcher() {
        this.f6282Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new Handler(Looper.getMainLooper());
        this.f6281Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = Collections.newSetFromMap(new WeakHashMap());
        this.f6280Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new LinkedHashSet();
        this.f6279Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new HashSet<>();
        this.f6278Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new HashMap<>();
    }
}
