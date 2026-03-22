package com.facebook.appevents.suggestedevents;

import android.text.TextUtils;
import android.view.View;
import android.widget.AdapterView;
import android.widget.DatePicker;
import android.widget.EditText;
import android.widget.RadioGroup;
import android.widget.RatingBar;
import android.widget.Spinner;
import android.widget.Switch;
import android.widget.TimePicker;
import com.facebook.appevents.codeless.internal.ViewHierarchy;
import com.facebook.internal.instrument.crashshield.CrashShieldHandler;
import com.mbridge.msdk.MBridgeConstans;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.JvmStatic;
import org.jetbrains.annotations.NotNull;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\bÁ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u001f\u0010\b\u001a\u00020\u00072\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u0004H\u0007¢\u0006\u0004\b\b\u0010\tJ\u001f\u0010\f\u001a\u00020\u000b2\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\u0007H\u0007¢\u0006\u0004\b\f\u0010\rJ\u001d\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u00040\u000e2\u0006\u0010\u0005\u001a\u00020\u0004H\u0007¢\u0006\u0004\b\u000f\u0010\u0010J\u0017\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u0011\u001a\u00020\u0004H\u0007¢\u0006\u0004\b\u0013\u0010\u0014J\u001f\u0010\u0015\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00120\u000e2\u0006\u0010\u0005\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\u0015\u0010\u0010R\"\u0010\u0018\u001a\u0010\u0012\f\u0012\n\u0012\u0006\b\u0001\u0012\u00020\u00040\u00160\u000e8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000f\u0010\u0017¨\u0006\u0019"}, d2 = {"Lcom/facebook/appevents/suggestedevents/SuggestedEventViewHierarchy;", "", "<init>", "()V", "Landroid/view/View;", MBridgeConstans.DYNAMIC_VIEW_KEY_VIEW, "clickedView", "Lorg/json/JSONObject;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Landroid/view/View;Landroid/view/View;)Lorg/json/JSONObject;", "json", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Landroid/view/View;Lorg/json/JSONObject;)V", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Landroid/view/View;)Ljava/util/List;", "hostView", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Landroid/view/View;)Ljava/lang/String;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Ljava/lang/Class;", "Ljava/util/List;", "blacklistedViews", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class SuggestedEventViewHierarchy {
    @NotNull
    public static final SuggestedEventViewHierarchy INSTANCE = new SuggestedEventViewHierarchy();
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final List<Class<? extends View>> f6509Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = CollectionsKt.listOf((Object[]) new Class[]{Switch.class, Spinner.class, DatePicker.class, TimePicker.class, RadioGroup.class, RatingBar.class, EditText.class, AdapterView.class});

    @JvmStatic
    public static final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull View view, @NotNull JSONObject jSONObject) {
        if (!CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(SuggestedEventViewHierarchy.class)) {
            try {
                String Wwwwwwwwwwwwwwwwwwwwwwww2 = ViewHierarchy.Wwwwwwwwwwwwwwwwwwwwwwww(view);
                String Wwwwwwwwwwwwwwwwwwwwwwwwww2 = ViewHierarchy.Wwwwwwwwwwwwwwwwwwwwwwwwww(view);
                jSONObject.put("classname", view.getClass().getSimpleName());
                jSONObject.put("classtypebitmask", ViewHierarchy.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(view));
                if (Wwwwwwwwwwwwwwwwwwwwwwww2.length() > 0) {
                    jSONObject.put("text", Wwwwwwwwwwwwwwwwwwwwwwww2);
                }
                if (Wwwwwwwwwwwwwwwwwwwwwwwwww2.length() > 0) {
                    jSONObject.put("hint", Wwwwwwwwwwwwwwwwwwwwwwwwww2);
                }
                if (view instanceof EditText) {
                    jSONObject.put("inputtype", ((EditText) view).getInputType());
                }
            } catch (JSONException unused) {
            } catch (Throwable th) {
                CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(th, SuggestedEventViewHierarchy.class);
            }
        }
    }

    @JvmStatic
    @NotNull
    public static final String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull View view) {
        if (CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(SuggestedEventViewHierarchy.class)) {
            return null;
        }
        try {
            String Wwwwwwwwwwwwwwwwwwwwwwww2 = ViewHierarchy.Wwwwwwwwwwwwwwwwwwwwwwww(view);
            if (Wwwwwwwwwwwwwwwwwwwwwwww2.length() > 0) {
                return Wwwwwwwwwwwwwwwwwwwwwwww2;
            }
            return TextUtils.join(" ", INSTANCE.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(view));
        } catch (Throwable th) {
            CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(th, SuggestedEventViewHierarchy.class);
            return null;
        }
    }

    @JvmStatic
    @NotNull
    public static final JSONObject Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull View view, @NotNull View view2) {
        if (CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(SuggestedEventViewHierarchy.class)) {
            return null;
        }
        try {
            JSONObject jSONObject = new JSONObject();
            if (view == view2) {
                try {
                    jSONObject.put("is_interacted", true);
                } catch (JSONException unused) {
                }
            }
            Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(view, jSONObject);
            JSONArray jSONArray = new JSONArray();
            for (View view3 : ViewHierarchy.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(view)) {
                jSONArray.put(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(view3, view2));
            }
            jSONObject.put("childviews", jSONArray);
            return jSONObject;
        } catch (Throwable th) {
            CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(th, SuggestedEventViewHierarchy.class);
            return null;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:14:0x002e, code lost:
        if (r5.isClickable() == false) goto L18;
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x0030, code lost:
        r1.add(r5);
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x0033, code lost:
        r5 = com.facebook.appevents.codeless.internal.ViewHierarchy.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(r5).iterator();
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x003f, code lost:
        if (r5.hasNext() == false) goto L22;
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x0041, code lost:
        r1.addAll(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(r5.next()));
     */
    @kotlin.jvm.JvmStatic
    @org.jetbrains.annotations.NotNull
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.util.List<android.view.View> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@org.jetbrains.annotations.NotNull android.view.View r5) {
        /*
            java.lang.Class<com.facebook.appevents.suggestedevents.SuggestedEventViewHierarchy> r0 = com.facebook.appevents.suggestedevents.SuggestedEventViewHierarchy.class
            boolean r1 = com.facebook.internal.instrument.crashshield.CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(r0)
            r2 = 0
            if (r1 == 0) goto La
            return r2
        La:
            java.util.ArrayList r1 = new java.util.ArrayList     // Catch: java.lang.Throwable -> L28
            r1.<init>()     // Catch: java.lang.Throwable -> L28
            java.util.List<java.lang.Class<? extends android.view.View>> r3 = com.facebook.appevents.suggestedevents.SuggestedEventViewHierarchy.f6509Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww     // Catch: java.lang.Throwable -> L28
            java.util.Iterator r3 = r3.iterator()     // Catch: java.lang.Throwable -> L28
        L15:
            boolean r4 = r3.hasNext()     // Catch: java.lang.Throwable -> L28
            if (r4 == 0) goto L2a
            java.lang.Object r4 = r3.next()     // Catch: java.lang.Throwable -> L28
            java.lang.Class r4 = (java.lang.Class) r4     // Catch: java.lang.Throwable -> L28
            boolean r4 = r4.isInstance(r5)     // Catch: java.lang.Throwable -> L28
            if (r4 == 0) goto L15
            goto L51
        L28:
            r5 = move-exception
            goto L52
        L2a:
            boolean r3 = r5.isClickable()     // Catch: java.lang.Throwable -> L28
            if (r3 == 0) goto L33
            r1.add(r5)     // Catch: java.lang.Throwable -> L28
        L33:
            java.util.List r5 = com.facebook.appevents.codeless.internal.ViewHierarchy.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(r5)     // Catch: java.lang.Throwable -> L28
            java.util.Iterator r5 = r5.iterator()     // Catch: java.lang.Throwable -> L28
        L3b:
            boolean r3 = r5.hasNext()     // Catch: java.lang.Throwable -> L28
            if (r3 == 0) goto L51
            java.lang.Object r3 = r5.next()     // Catch: java.lang.Throwable -> L28
            android.view.View r3 = (android.view.View) r3     // Catch: java.lang.Throwable -> L28
            java.util.List r3 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(r3)     // Catch: java.lang.Throwable -> L28
            java.util.Collection r3 = (java.util.Collection) r3     // Catch: java.lang.Throwable -> L28
            r1.addAll(r3)     // Catch: java.lang.Throwable -> L28
            goto L3b
        L51:
            return r1
        L52:
            com.facebook.internal.instrument.crashshield.CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(r5, r0)
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.appevents.suggestedevents.SuggestedEventViewHierarchy.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(android.view.View):java.util.List");
    }

    public final List<String> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(View view) {
        if (CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this)) {
            return null;
        }
        try {
            ArrayList arrayList = new ArrayList();
            for (View view2 : ViewHierarchy.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(view)) {
                String Wwwwwwwwwwwwwwwwwwwwwwww2 = ViewHierarchy.Wwwwwwwwwwwwwwwwwwwwwwww(view2);
                if (Wwwwwwwwwwwwwwwwwwwwwwww2.length() > 0) {
                    arrayList.add(Wwwwwwwwwwwwwwwwwwwwwwww2);
                }
                arrayList.addAll(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(view2));
            }
            return arrayList;
        } catch (Throwable th) {
            CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(th, this);
            return null;
        }
    }
}
