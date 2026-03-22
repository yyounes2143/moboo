package com.facebook.appevents.suggestedevents;

import android.os.Bundle;
import android.view.View;
import androidx.annotation.RestrictTo;
import com.facebook.FacebookSdk;
import com.facebook.GraphRequest;
import com.facebook.appevents.InternalAppEventsLogger;
import com.facebook.appevents.codeless.internal.ViewHierarchy;
import com.facebook.appevents.ml.ModelManager;
import com.facebook.appevents.suggestedevents.ViewOnClickListener;
import com.facebook.internal.Utility;
import com.facebook.internal.instrument.crashshield.CrashShieldHandler;
import com.mbridge.msdk.MBridgeConstans;
import com.sensorsdata.analytics.android.autotrack.aop.SensorsDataAutoTrackHelper;
import com.sensorsdata.analytics.android.sdk.SensorsDataInstrumented;
import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import java.lang.ref.WeakReference;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Locale;
import java.util.Set;
import kotlin.Metadata;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.StringCompanionObject;
import kotlin.text.StringsKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: Proguard */
@Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\t\b\u0007\u0018\u0000  2\u00020\u0001:\u0001 B!\b\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0005¢\u0006\u0004\b\u0007\u0010\bJ\u0017\u0010\u000b\u001a\u00020\n2\u0006\u0010\t\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u000b\u0010\fJ\u000f\u0010\r\u001a\u00020\nH\u0002¢\u0006\u0004\b\r\u0010\u000eJ'\u0010\u0013\u001a\u00020\n2\u0006\u0010\u000f\u001a\u00020\u00052\u0006\u0010\u0010\u001a\u00020\u00052\u0006\u0010\u0012\u001a\u00020\u0011H\u0002¢\u0006\u0004\b\u0013\u0010\u0014R\u0016\u0010\u0017\u001a\u0004\u0018\u00010\u00018\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0015\u0010\u0016R\u001a\u0010\u001b\u001a\b\u0012\u0004\u0012\u00020\u00020\u00188\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0019\u0010\u001aR\u001a\u0010\u001d\u001a\b\u0012\u0004\u0012\u00020\u00020\u00188\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001c\u0010\u001aR\u0014\u0010\u0006\u001a\u00020\u00058\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001e\u0010\u001f¨\u0006!"}, d2 = {"Lcom/facebook/appevents/suggestedevents/ViewOnClickListener;", "Landroid/view/View$OnClickListener;", "Landroid/view/View;", "hostView", "rootView", "", "activityName", "<init>", "(Landroid/view/View;Landroid/view/View;Ljava/lang/String;)V", MBridgeConstans.DYNAMIC_VIEW_KEY_VIEW, "", "onClick", "(Landroid/view/View;)V", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "()V", "pathID", "buttonText", "Lorg/json/JSONObject;", "viewData", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V", "Wwwwwwwwwwwwwwwwwwwwwwwww", "Landroid/view/View$OnClickListener;", "baseListener", "Ljava/lang/ref/WeakReference;", "Wwwwwwwwwwwwwwwwwwwwwwww", "Ljava/lang/ref/WeakReference;", "rootViewWeakReference", "Wwwwwwwwwwwwwwwwwwwwwww", "hostViewWeakReference", "Wwwwwwwwwwwwwwwwwwwwww", "Ljava/lang/String;", "Companion", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
@RestrictTo({RestrictTo.Scope.LIBRARY})
/* loaded from: classes3.dex */
public final class ViewOnClickListener implements View.OnClickListener {
    @NotNull
    public static final Companion Companion = new Companion(null);
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final Set<Integer> f6517Wwwwwwwwwwwwwwwwwwwww = new HashSet();
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final String f6518Wwwwwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final WeakReference<View> f6519Wwwwwwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final WeakReference<View> f6520Wwwwwwwwwwwwwwwwwwwwwwww;
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final View.OnClickListener f6521Wwwwwwwwwwwwwwwwwwwwwwwww;

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u0014\n\u0002\b\b\n\u0002\u0010#\n\u0002\u0010\b\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J'\u0010\n\u001a\u00020\t2\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u00042\u0006\u0010\b\u001a\u00020\u0007H\u0001¢\u0006\u0004\b\n\u0010\u000bJ\u001f\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\f\u001a\u00020\u00072\u0006\u0010\r\u001a\u00020\u0007H\u0002¢\u0006\u0004\b\u000f\u0010\u0010J'\u0010\u0014\u001a\u00020\t2\u0006\u0010\u0011\u001a\u00020\u00072\u0006\u0010\r\u001a\u00020\u00072\u0006\u0010\u0013\u001a\u00020\u0012H\u0002¢\u0006\u0004\b\u0014\u0010\u0015J'\u0010\u0017\u001a\u00020\t2\u0006\u0010\u0016\u001a\u00020\u00072\u0006\u0010\r\u001a\u00020\u00072\u0006\u0010\u0013\u001a\u00020\u0012H\u0002¢\u0006\u0004\b\u0017\u0010\u0015R\u0014\u0010\u0018\u001a\u00020\u00078\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0018\u0010\u0019R\u0014\u0010\u001a\u001a\u00020\u00078\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u001a\u0010\u0019R\u001a\u0010\u001d\u001a\b\u0012\u0004\u0012\u00020\u001c0\u001b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001d\u0010\u001e¨\u0006\u001f"}, d2 = {"Lcom/facebook/appevents/suggestedevents/ViewOnClickListener$Companion;", "", "<init>", "()V", "Landroid/view/View;", "hostView", "rootView", "", "activityName", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Landroid/view/View;Landroid/view/View;Ljava/lang/String;)V", "pathID", "buttonText", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Ljava/lang/String;Ljava/lang/String;)Z", "predictedEvent", "", "dense", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Ljava/lang/String;Ljava/lang/String;[F)V", "eventToPost", "Wwwwwwwwwwwwwwwwwwwwwwwwwww", "API_ENDPOINT", "Ljava/lang/String;", "OTHER_EVENT", "", "", "viewsAttachedListener", "Ljava/util/Set;", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public static final void Wwwwwwwwwwwwwwwwwwwwwwwwwwww(String str, String str2) {
            ViewOnClickListener.Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(str, str2, new float[0]);
        }

        public final void Wwwwwwwwwwwwwwwwwwwwwwwwwww(String str, String str2, float[] fArr) {
            Bundle bundle = new Bundle();
            try {
                bundle.putString(DbParams.KEY_CHANNEL_EVENT_NAME, str);
                JSONObject jSONObject = new JSONObject();
                StringBuilder sb = new StringBuilder();
                int length = fArr.length;
                int i = 0;
                while (i < length) {
                    float f = fArr[i];
                    i++;
                    sb.append(f);
                    sb.append(",");
                }
                jSONObject.put("dense", sb.toString());
                jSONObject.put("button_text", str2);
                bundle.putString("metadata", jSONObject.toString());
                GraphRequest.Companion companion = GraphRequest.Companion;
                StringCompanionObject stringCompanionObject = StringCompanionObject.INSTANCE;
                GraphRequest Wwwwwwww2 = companion.Wwwwwwww(null, String.format(Locale.US, "%s/suggested_events", Arrays.copyOf(new Object[]{FacebookSdk.Wwwwwwwwwwwwwwwwwwwwww()}, 1)), null, null);
                Wwwwwwww2.Kkkkkkkkkkkkkkkkkkkkkkkk(bundle);
                Wwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwww();
            } catch (JSONException unused) {
            }
        }

        public final boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(String str, final String str2) {
            final String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = PredictionHistoryManager.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(str);
            if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 == null) {
                return false;
            }
            if (!Intrinsics.areEqual(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2, "other")) {
                Utility utility = Utility.INSTANCE;
                Utility.Illl(new Runnable() { // from class: Wwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww
                    @Override // java.lang.Runnable
                    public final void run() {
                        ViewOnClickListener.Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2, str2);
                    }
                });
                return true;
            }
            return true;
        }

        public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(String str, String str2, float[] fArr) {
            if (SuggestedEventsManager.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(str)) {
                new InternalAppEventsLogger(FacebookSdk.Wwwwwwwwwwwwwwwwwwwwwww()).Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(str, str2);
            } else if (SuggestedEventsManager.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(str)) {
                Wwwwwwwwwwwwwwwwwwwwwwwwwww(str, str2, fArr);
            }
        }

        @JvmStatic
        public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull View view, @NotNull View view2, @NotNull String str) {
            int hashCode = view.hashCode();
            if (!ViewOnClickListener.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().contains(Integer.valueOf(hashCode))) {
                ViewHierarchy viewHierarchy = ViewHierarchy.INSTANCE;
                ViewHierarchy.Wwwwwwwwwwwwwwwww(view, new ViewOnClickListener(view, view2, str, null));
                ViewOnClickListener.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().add(Integer.valueOf(hashCode));
            }
        }

        public Companion() {
        }
    }

    public /* synthetic */ ViewOnClickListener(View view, View view2, String str, DefaultConstructorMarker defaultConstructorMarker) {
        this(view, view2, str);
    }

    public static final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(JSONObject jSONObject, String str, ViewOnClickListener viewOnClickListener, String str2) {
        if (!CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(ViewOnClickListener.class)) {
            try {
                Utility utility = Utility.INSTANCE;
                String Wwwwwwwwwwwww2 = Utility.Wwwwwwwwwwwww(FacebookSdk.Wwwwwwwwwwwwwwwwwwwwwww());
                if (Wwwwwwwwwwwww2 != null) {
                    String lowerCase = Wwwwwwwwwwwww2.toLowerCase();
                    float[] Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = FeatureExtractor.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(jSONObject, lowerCase);
                    String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = FeatureExtractor.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(str, viewOnClickListener.f6518Wwwwwwwwwwwwwwwwwwwwww, lowerCase);
                    if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 != null) {
                        ModelManager modelManager = ModelManager.INSTANCE;
                        String[] Wwwwwwwwwwwwwwwwww2 = ModelManager.Wwwwwwwwwwwwwwwwww(ModelManager.Task.MTML_APP_EVENT_PREDICTION, new float[][]{Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2}, new String[]{Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2});
                        if (Wwwwwwwwwwwwwwwwww2 != null) {
                            String str3 = Wwwwwwwwwwwwwwwwww2[0];
                            PredictionHistoryManager.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(str2, str3);
                            if (!Intrinsics.areEqual(str3, "other")) {
                                Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(str3, str, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2);
                                return;
                            }
                            return;
                        }
                        return;
                    }
                    return;
                }
                throw new NullPointerException("null cannot be cast to non-null type java.lang.String");
            } catch (Exception unused) {
            } catch (Throwable th) {
                CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(th, ViewOnClickListener.class);
            }
        }
    }

    public static final /* synthetic */ Set Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        if (CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(ViewOnClickListener.class)) {
            return null;
        }
        try {
            return f6517Wwwwwwwwwwwwwwwwwwwww;
        } catch (Throwable th) {
            CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(th, ViewOnClickListener.class);
            return null;
        }
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        if (!CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this)) {
            try {
                View view = this.f6520Wwwwwwwwwwwwwwwwwwwwwwww.get();
                View view2 = this.f6519Wwwwwwwwwwwwwwwwwwwwwww.get();
                if (view != null && view2 != null) {
                    try {
                        String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = SuggestedEventViewHierarchy.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(view2);
                        String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = PredictionHistoryManager.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(view2, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2);
                        if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 != null && !Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2)) {
                            JSONObject jSONObject = new JSONObject();
                            jSONObject.put(MBridgeConstans.DYNAMIC_VIEW_KEY_VIEW, SuggestedEventViewHierarchy.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(view, view2));
                            jSONObject.put("screenname", this.f6518Wwwwwwwwwwwwwwwwwwwwww);
                            Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2, jSONObject);
                        }
                    } catch (Exception unused) {
                    }
                }
            } catch (Throwable th) {
                CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(th, this);
            }
        }
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(final String str, final String str2, final JSONObject jSONObject) {
        if (CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this)) {
            return;
        }
        try {
            Utility utility = Utility.INSTANCE;
            Utility.Illl(new Runnable() { // from class: Wwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww
                @Override // java.lang.Runnable
                public final void run() {
                    ViewOnClickListener.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(jSONObject, str2, this, str);
                }
            });
        } catch (Throwable th) {
            CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(th, this);
        }
    }

    @Override // android.view.View.OnClickListener
    @SensorsDataInstrumented
    public void onClick(@NotNull View view) {
        if (CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this)) {
            SensorsDataAutoTrackHelper.trackViewOnClick(view);
            return;
        }
        try {
            View.OnClickListener onClickListener = this.f6521Wwwwwwwwwwwwwwwwwwwwwwwww;
            if (onClickListener != null) {
                onClickListener.onClick(view);
            }
            Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
            SensorsDataAutoTrackHelper.trackViewOnClick(view);
        } catch (Throwable th) {
            CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(th, this);
            SensorsDataAutoTrackHelper.trackViewOnClick(view);
        }
    }

    public ViewOnClickListener(View view, View view2, String str) {
        this.f6521Wwwwwwwwwwwwwwwwwwwwwwwww = ViewHierarchy.Wwwwwwwwwwwwwwwwwwwwwwwwwwww(view);
        this.f6520Wwwwwwwwwwwwwwwwwwwwwwww = new WeakReference<>(view2);
        this.f6519Wwwwwwwwwwwwwwwwwwwwwww = new WeakReference<>(view);
        if (str == null) {
            throw new NullPointerException("null cannot be cast to non-null type java.lang.String");
        }
        this.f6518Wwwwwwwwwwwwwwwwwwwwww = StringsKt.replace$default(str.toLowerCase(), "activity", "", false, 4, (Object) null);
    }
}
