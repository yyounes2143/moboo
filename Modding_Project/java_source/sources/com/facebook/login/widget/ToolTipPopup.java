package com.facebook.login.widget;

import android.app.Activity;
import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewTreeObserver;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.PopupWindow;
import android.widget.TextView;
import com.facebook.internal.instrument.crashshield.CrashShieldHandler;
import com.facebook.login.R;
import com.sensorsdata.analytics.android.autotrack.aop.SensorsDataAutoTrackHelper;
import com.sensorsdata.analytics.android.sdk.SensorsDataInstrumented;
import java.lang.ref.WeakReference;
import java.util.Arrays;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000T\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0010\t\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0007\u0018\u0000 .2\u00020\u0001:\u0003./0B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007J\u0015\u0010\u000b\u001a\u00020\n2\u0006\u0010\t\u001a\u00020\b¢\u0006\u0004\b\u000b\u0010\fJ\r\u0010\r\u001a\u00020\n¢\u0006\u0004\b\r\u0010\u000eJ\u0015\u0010\u0011\u001a\u00020\n2\u0006\u0010\u0010\u001a\u00020\u000f¢\u0006\u0004\b\u0011\u0010\u0012J\r\u0010\u0013\u001a\u00020\n¢\u0006\u0004\b\u0013\u0010\u000eJ\u000f\u0010\u0014\u001a\u00020\nH\u0002¢\u0006\u0004\b\u0014\u0010\u000eJ\u000f\u0010\u0015\u001a\u00020\nH\u0002¢\u0006\u0004\b\u0015\u0010\u000eJ\u000f\u0010\u0016\u001a\u00020\nH\u0002¢\u0006\u0004\b\u0016\u0010\u000eR\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0017\u0010\u0018R\u001a\u0010\u001c\u001a\b\u0012\u0004\u0012\u00020\u00040\u00198\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001a\u0010\u001bR\u0014\u0010 \u001a\u00020\u001d8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001e\u0010\u001fR\u001c\u0010#\u001a\b\u0018\u00010!R\u00020\u00008\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0013\u0010\"R\u0018\u0010&\u001a\u0004\u0018\u00010$8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0015\u0010%R\u0016\u0010\t\u001a\u00020\b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b'\u0010(R\u0016\u0010*\u001a\u00020\u000f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0011\u0010)R\u0014\u0010-\u001a\u00020+8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000b\u0010,¨\u00061"}, d2 = {"Lcom/facebook/login/widget/ToolTipPopup;", "", "", "text", "Landroid/view/View;", "anchor", "<init>", "(Ljava/lang/String;Landroid/view/View;)V", "Lcom/facebook/login/widget/ToolTipPopup$Style;", "style", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lcom/facebook/login/widget/ToolTipPopup$Style;)V", "Wwwwwwwwwwwwwwwwwwwwwwwwww", "()V", "", "displayTime", "Wwwwwwwwwwwwwwwwwwwwwwwwwwww", "(J)V", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Wwwwwwwwwwwwwwwwwwwwww", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Wwwwwwwwwwwwwwwwwwwwwww", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Ljava/lang/String;", "Ljava/lang/ref/WeakReference;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Ljava/lang/ref/WeakReference;", "anchorViewRef", "Landroid/content/Context;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Landroid/content/Context;", "context", "Lcom/facebook/login/widget/ToolTipPopup$PopupContentView;", "Lcom/facebook/login/widget/ToolTipPopup$PopupContentView;", "popupContent", "Landroid/widget/PopupWindow;", "Landroid/widget/PopupWindow;", "popupWindow", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Lcom/facebook/login/widget/ToolTipPopup$Style;", "J", "nuxDisplayTime", "Landroid/view/ViewTreeObserver$OnScrollChangedListener;", "Landroid/view/ViewTreeObserver$OnScrollChangedListener;", "scrollListener", "Companion", "PopupContentView", "Style", "facebook-login_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes4.dex */
public final class ToolTipPopup {
    @NotNull
    public static final Companion Companion = new Companion(null);
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public PopupWindow f7136Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public PopupContentView f7137Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Context f7138Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final WeakReference<View> f7139Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final String f7140Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public Style f7135Wwwwwwwwwwwwwwwwwwwwwwwwwwwww = Style.BLUE;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public long f7134Wwwwwwwwwwwwwwwwwwwwwwwwwwww = 6000;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final ViewTreeObserver.OnScrollChangedListener f7133Wwwwwwwwwwwwwwwwwwwwwwwwwww = new ViewTreeObserver.OnScrollChangedListener() { // from class: com.facebook.login.widget.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww
        @Override // android.view.ViewTreeObserver.OnScrollChangedListener
        public final void onScrollChanged() {
            ToolTipPopup.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(ToolTipPopup.this);
        }
    };

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\t\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000¨\u0006\u0005"}, d2 = {"Lcom/facebook/login/widget/ToolTipPopup$Companion;", "", "()V", "DEFAULT_POPUP_DISPLAY_TIME", "", "facebook-login_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes4.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public Companion() {
        }
    }

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\t\b\u0082\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005J\r\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\u0007\u0010\bJ\r\u0010\t\u001a\u00020\u0006¢\u0006\u0004\b\t\u0010\bR\u0017\u0010\u000f\u001a\u00020\n8\u0006¢\u0006\f\n\u0004\b\u000b\u0010\f\u001a\u0004\b\r\u0010\u000eR\u0017\u0010\u0012\u001a\u00020\n8\u0006¢\u0006\f\n\u0004\b\u0010\u0010\f\u001a\u0004\b\u0011\u0010\u000eR\u0017\u0010\u0018\u001a\u00020\u00138\u0006¢\u0006\f\n\u0004\b\u0014\u0010\u0015\u001a\u0004\b\u0016\u0010\u0017R\u0017\u0010\u001b\u001a\u00020\n8\u0006¢\u0006\f\n\u0004\b\u0019\u0010\f\u001a\u0004\b\u001a\u0010\u000e¨\u0006\u001c"}, d2 = {"Lcom/facebook/login/widget/ToolTipPopup$PopupContentView;", "Landroid/widget/FrameLayout;", "Landroid/content/Context;", "context", "<init>", "(Lcom/facebook/login/widget/ToolTipPopup;Landroid/content/Context;)V", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwww", "()V", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Landroid/widget/ImageView;", "Wwwwwwwwwwwwwwwwwwwwwwwww", "Landroid/widget/ImageView;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "()Landroid/widget/ImageView;", "topArrow", "Wwwwwwwwwwwwwwwwwwwwwwww", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "bottomArrow", "Landroid/view/View;", "Wwwwwwwwwwwwwwwwwwwwwww", "Landroid/view/View;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "()Landroid/view/View;", "bodyFrame", "Wwwwwwwwwwwwwwwwwwwwww", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "xOut", "facebook-login_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes4.dex */
    public final class PopupContentView extends FrameLayout {
        @NotNull

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final ImageView f7142Wwwwwwwwwwwwwwwwwwwwww;
        @NotNull

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final View f7143Wwwwwwwwwwwwwwwwwwwwwww;
        @NotNull

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final ImageView f7144Wwwwwwwwwwwwwwwwwwwwwwww;
        @NotNull

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final ImageView f7145Wwwwwwwwwwwwwwwwwwwwwwwww;

        public PopupContentView(@NotNull Context context) {
            super(context);
            LayoutInflater.from(context).inflate(R.layout.com_facebook_tooltip_bubble, this);
            View findViewById = findViewById(R.id.com_facebook_tooltip_bubble_view_top_pointer);
            if (findViewById != null) {
                this.f7145Wwwwwwwwwwwwwwwwwwwwwwwww = (ImageView) findViewById;
                View findViewById2 = findViewById(R.id.com_facebook_tooltip_bubble_view_bottom_pointer);
                if (findViewById2 != null) {
                    this.f7144Wwwwwwwwwwwwwwwwwwwwwwww = (ImageView) findViewById2;
                    this.f7143Wwwwwwwwwwwwwwwwwwwwwww = findViewById(R.id.com_facebook_body_frame);
                    View findViewById3 = findViewById(R.id.com_facebook_button_xout);
                    if (findViewById3 != null) {
                        this.f7142Wwwwwwwwwwwwwwwwwwwwww = (ImageView) findViewById3;
                        return;
                    }
                    throw new NullPointerException("null cannot be cast to non-null type android.widget.ImageView");
                }
                throw new NullPointerException("null cannot be cast to non-null type android.widget.ImageView");
            }
            throw new NullPointerException("null cannot be cast to non-null type android.widget.ImageView");
        }

        public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            this.f7145Wwwwwwwwwwwwwwwwwwwwwwwww.setVisibility(0);
            this.f7144Wwwwwwwwwwwwwwwwwwwwwwww.setVisibility(4);
        }

        public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            this.f7145Wwwwwwwwwwwwwwwwwwwwwwwww.setVisibility(4);
            this.f7144Wwwwwwwwwwwwwwwwwwwwwwww.setVisibility(0);
        }

        @NotNull
        public final ImageView Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            return this.f7142Wwwwwwwwwwwwwwwwwwwwww;
        }

        @NotNull
        public final ImageView Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            return this.f7145Wwwwwwwwwwwwwwwwwwwwwwwww;
        }

        @NotNull
        public final ImageView Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            return this.f7144Wwwwwwwwwwwwwwwwwwwwwwww;
        }

        @NotNull
        public final View Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            return this.f7143Wwwwwwwwwwwwwwwwwwwwwww;
        }
    }

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0004\b\u0086\u0001\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003j\u0002\b\u0004¨\u0006\u0005"}, d2 = {"Lcom/facebook/login/widget/ToolTipPopup$Style;", "", "(Ljava/lang/String;I)V", "BLUE", "BLACK", "facebook-login_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes4.dex */
    public enum Style {
        BLUE,
        BLACK;

        /* renamed from: values  reason: to resolve conflict with enum method */
        public static Style[] valuesCustom() {
            Style[] valuesCustom = values();
            return (Style[]) Arrays.copyOf(valuesCustom, valuesCustom.length);
        }
    }

    public ToolTipPopup(@NotNull String str, @NotNull View view) {
        this.f7140Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = str;
        this.f7139Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new WeakReference<>(view);
        this.f7138Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = view.getContext();
    }

    @SensorsDataInstrumented
    public static final void Wwwwwwwwwwwwwwwwwwwwwwww(ToolTipPopup toolTipPopup, View view) {
        if (CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(ToolTipPopup.class)) {
            SensorsDataAutoTrackHelper.trackViewOnClick(view);
            return;
        }
        try {
            toolTipPopup.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
            SensorsDataAutoTrackHelper.trackViewOnClick(view);
        } catch (Throwable th) {
            CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(th, ToolTipPopup.class);
            SensorsDataAutoTrackHelper.trackViewOnClick(view);
        }
    }

    public static final void Wwwwwwwwwwwwwwwwwwwwwwwww(ToolTipPopup toolTipPopup) {
        if (CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(ToolTipPopup.class)) {
            return;
        }
        try {
            toolTipPopup.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        } catch (Throwable th) {
            CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(th, ToolTipPopup.class);
        }
    }

    public static final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(ToolTipPopup toolTipPopup) {
        PopupWindow popupWindow;
        if (!CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(ToolTipPopup.class)) {
            try {
                if (toolTipPopup.f7139Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.get() != null && (popupWindow = toolTipPopup.f7136Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww) != null && popupWindow.isShowing()) {
                    if (popupWindow.isAboveAnchor()) {
                        PopupContentView popupContentView = toolTipPopup.f7137Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
                        if (popupContentView != null) {
                            popupContentView.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
                            return;
                        }
                        return;
                    }
                    PopupContentView popupContentView2 = toolTipPopup.f7137Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
                    if (popupContentView2 != null) {
                        popupContentView2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww();
                    }
                }
            } catch (Throwable th) {
                CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(th, ToolTipPopup.class);
            }
        }
    }

    public final void Wwwwwwwwwwwwwwwwwwwwww() {
        if (!CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this)) {
            try {
                PopupWindow popupWindow = this.f7136Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
                if (popupWindow != null && popupWindow.isShowing()) {
                    if (popupWindow.isAboveAnchor()) {
                        PopupContentView popupContentView = this.f7137Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
                        if (popupContentView != null) {
                            popupContentView.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
                            return;
                        }
                        return;
                    }
                    PopupContentView popupContentView2 = this.f7137Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
                    if (popupContentView2 != null) {
                        popupContentView2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww();
                    }
                }
            } catch (Throwable th) {
                CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(th, this);
            }
        }
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwww() {
        ViewTreeObserver viewTreeObserver;
        if (!CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this)) {
            try {
                View view = this.f7139Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.get();
                if (view == null || (viewTreeObserver = view.getViewTreeObserver()) == null) {
                    return;
                }
                viewTreeObserver.removeOnScrollChangedListener(this.f7133Wwwwwwwwwwwwwwwwwwwwwwwwwww);
            } catch (Throwable th) {
                CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(th, this);
            }
        }
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwww() {
        if (!CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this)) {
            try {
                if (this.f7139Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.get() != null) {
                    PopupContentView popupContentView = new PopupContentView(this.f7138Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
                    this.f7137Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = popupContentView;
                    View findViewById = popupContentView.findViewById(R.id.com_facebook_tooltip_bubble_view_text_body);
                    if (findViewById != null) {
                        ((TextView) findViewById).setText(this.f7140Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
                        if (this.f7135Wwwwwwwwwwwwwwwwwwwwwwwwwwwww == Style.BLUE) {
                            popupContentView.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().setBackgroundResource(R.drawable.com_facebook_tooltip_blue_background);
                            popupContentView.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().setImageResource(R.drawable.com_facebook_tooltip_blue_bottomnub);
                            popupContentView.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().setImageResource(R.drawable.com_facebook_tooltip_blue_topnub);
                            popupContentView.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().setImageResource(R.drawable.com_facebook_tooltip_blue_xout);
                        } else {
                            popupContentView.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().setBackgroundResource(R.drawable.com_facebook_tooltip_black_background);
                            popupContentView.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().setImageResource(R.drawable.com_facebook_tooltip_black_bottomnub);
                            popupContentView.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().setImageResource(R.drawable.com_facebook_tooltip_black_topnub);
                            popupContentView.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().setImageResource(R.drawable.com_facebook_tooltip_black_xout);
                        }
                        View decorView = ((Activity) this.f7138Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww).getWindow().getDecorView();
                        int width = decorView.getWidth();
                        int height = decorView.getHeight();
                        Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
                        popupContentView.measure(View.MeasureSpec.makeMeasureSpec(width, Integer.MIN_VALUE), View.MeasureSpec.makeMeasureSpec(height, Integer.MIN_VALUE));
                        PopupWindow popupWindow = new PopupWindow(popupContentView, popupContentView.getMeasuredWidth(), popupContentView.getMeasuredHeight());
                        this.f7136Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww = popupWindow;
                        popupWindow.showAsDropDown(this.f7139Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.get());
                        Wwwwwwwwwwwwwwwwwwwwww();
                        if (this.f7134Wwwwwwwwwwwwwwwwwwwwwwwwwwww > 0) {
                            popupContentView.postDelayed(new Runnable() { // from class: com.facebook.login.widget.Wwwwwwwwwwwwwwwwwwwwwwwwwwww
                                @Override // java.lang.Runnable
                                public final void run() {
                                    ToolTipPopup.Wwwwwwwwwwwwwwwwwwwwwwwww(ToolTipPopup.this);
                                }
                            }, this.f7134Wwwwwwwwwwwwwwwwwwwwwwwwwwww);
                        }
                        popupWindow.setTouchable(true);
                        popupContentView.setOnClickListener(new View.OnClickListener() { // from class: com.facebook.login.widget.Wwwwwwwwwwwwwwwwwwwwwwwwwww
                            @Override // android.view.View.OnClickListener
                            public final void onClick(View view) {
                                ToolTipPopup.Wwwwwwwwwwwwwwwwwwwwwwww(ToolTipPopup.this, view);
                            }
                        });
                        return;
                    }
                    throw new NullPointerException("null cannot be cast to non-null type android.widget.TextView");
                }
            } catch (Throwable th) {
                CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(th, this);
            }
        }
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull Style style) {
        if (CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this)) {
            return;
        }
        try {
            this.f7135Wwwwwwwwwwwwwwwwwwwwwwwwwwwww = style;
        } catch (Throwable th) {
            CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(th, this);
        }
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwww(long j) {
        if (CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this)) {
            return;
        }
        try {
            this.f7134Wwwwwwwwwwwwwwwwwwwwwwwwwwww = j;
        } catch (Throwable th) {
            CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(th, this);
        }
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        ViewTreeObserver viewTreeObserver;
        if (!CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this)) {
            try {
                Wwwwwwwwwwwwwwwwwwwwwww();
                View view = this.f7139Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.get();
                if (view == null || (viewTreeObserver = view.getViewTreeObserver()) == null) {
                    return;
                }
                viewTreeObserver.addOnScrollChangedListener(this.f7133Wwwwwwwwwwwwwwwwwwwwwwwwwww);
            } catch (Throwable th) {
                CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(th, this);
            }
        }
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        if (!CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this)) {
            try {
                Wwwwwwwwwwwwwwwwwwwwwww();
                PopupWindow popupWindow = this.f7136Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
                if (popupWindow == null) {
                    return;
                }
                popupWindow.dismiss();
            } catch (Throwable th) {
                CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(th, this);
            }
        }
    }
}
