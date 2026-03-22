package com.facebook.appevents.codeless.internal;

import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.AdapterView;
import android.widget.Button;
import android.widget.CheckBox;
import android.widget.DatePicker;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.RadioButton;
import android.widget.RadioGroup;
import android.widget.RatingBar;
import android.widget.Spinner;
import android.widget.Switch;
import android.widget.TextView;
import android.widget.TimePicker;
import androidx.annotation.RestrictTo;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.facebook.internal.Utility;
import com.facebook.internal.instrument.crashshield.CrashShieldHandler;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.mbridge.msdk.MBridgeConstans;
import java.lang.ref.WeakReference;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.StringCompanionObject;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000x\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010\u0014\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÇ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u001b\u0010\u0007\u001a\u0004\u0018\u00010\u00062\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0007¢\u0006\u0004\b\u0007\u0010\bJ\u001f\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u00040\t2\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0007¢\u0006\u0004\b\n\u0010\u000bJ\u001f\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\r\u001a\u00020\fH\u0007¢\u0006\u0004\b\u000f\u0010\u0010J\u0017\u0010\u0011\u001a\u00020\f2\u0006\u0010\u0005\u001a\u00020\u0004H\u0007¢\u0006\u0004\b\u0011\u0010\u0012J\u0017\u0010\u0014\u001a\u00020\u00132\u0006\u0010\u0005\u001a\u00020\u0004H\u0007¢\u0006\u0004\b\u0014\u0010\u0015J\u0017\u0010\u0017\u001a\u00020\u00162\u0006\u0010\u0005\u001a\u00020\u0004H\u0003¢\u0006\u0004\b\u0017\u0010\u0018J\u0019\u0010\u001a\u001a\u00020\u00192\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0007¢\u0006\u0004\b\u001a\u0010\u001bJ\u0019\u0010\u001c\u001a\u00020\u00192\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0007¢\u0006\u0004\b\u001c\u0010\u001bJ\u001b\u0010\u001e\u001a\u0004\u0018\u00010\u001d2\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0007¢\u0006\u0004\b\u001e\u0010\u001fJ!\u0010!\u001a\u00020\u000e2\u0006\u0010\u0005\u001a\u00020\u00042\b\u0010 \u001a\u0004\u0018\u00010\u001dH\u0007¢\u0006\u0004\b!\u0010\"J\u001b\u0010$\u001a\u0004\u0018\u00010#2\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0007¢\u0006\u0004\b$\u0010%J\u001b\u0010&\u001a\u0004\u0018\u00010\u00042\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0007¢\u0006\u0004\b&\u0010'J\u001f\u0010)\u001a\u00020\u00162\u0006\u0010\u0005\u001a\u00020\u00042\b\u0010(\u001a\u0004\u0018\u00010\u0004¢\u0006\u0004\b)\u0010*J\u0017\u0010+\u001a\u00020\f2\u0006\u0010\u0005\u001a\u00020\u0004H\u0002¢\u0006\u0004\b+\u0010\u0012J%\u0010.\u001a\u0004\u0018\u00010\u00042\b\u0010-\u001a\u0004\u0018\u00010,2\b\u0010(\u001a\u0004\u0018\u00010\u0004H\u0002¢\u0006\u0004\b.\u0010/J\u0017\u00100\u001a\u00020\u00162\u0006\u0010\u0005\u001a\u00020\u0004H\u0002¢\u0006\u0004\b0\u0010\u0018J\u0017\u00101\u001a\u00020,2\u0006\u0010\u0005\u001a\u00020\u0004H\u0002¢\u0006\u0004\b1\u00102J\u000f\u00103\u001a\u00020\u000eH\u0002¢\u0006\u0004\b3\u0010\u0003J\u001d\u00106\u001a\b\u0012\u0002\b\u0003\u0018\u0001052\u0006\u00104\u001a\u00020\u0019H\u0002¢\u0006\u0004\b6\u00107R\u001c\u0010:\u001a\n 8*\u0004\u0018\u00010\u00190\u00198\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b&\u00109R\u001e\u0010=\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00040;8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\n\u0010<R\u0018\u0010@\u001a\u0004\u0018\u00010>8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0014\u0010?¨\u0006A"}, d2 = {"Lcom/facebook/appevents/codeless/internal/ViewHierarchy;", "", "<init>", "()V", "Landroid/view/View;", MBridgeConstans.DYNAMIC_VIEW_KEY_VIEW, "Landroid/view/ViewGroup;", "Wwwwwwwwwwwwwwwwwwwwwwwww", "(Landroid/view/View;)Landroid/view/ViewGroup;", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Landroid/view/View;)Ljava/util/List;", "Lorg/json/JSONObject;", "json", "", "Wwwwwwwwwwwwwwww", "(Landroid/view/View;Lorg/json/JSONObject;)V", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Landroid/view/View;)Lorg/json/JSONObject;", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Landroid/view/View;)I", "", "Wwwwwwwwwwwwwwwwwwww", "(Landroid/view/View;)Z", "", "Wwwwwwwwwwwwwwwwwwwwwwww", "(Landroid/view/View;)Ljava/lang/String;", "Wwwwwwwwwwwwwwwwwwwwwwwwww", "Landroid/view/View$OnClickListener;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Landroid/view/View;)Landroid/view/View$OnClickListener;", "newListener", "Wwwwwwwwwwwwwwwww", "(Landroid/view/View;Landroid/view/View$OnClickListener;)V", "Landroid/view/View$OnTouchListener;", "Wwwwwwwwwwwwwwwwwwwwwwwwwww", "(Landroid/view/View;)Landroid/view/View$OnTouchListener;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Landroid/view/View;)Landroid/view/View;", "RCTRootView", "Wwwwwwwwwwwwwwwwwww", "(Landroid/view/View;Landroid/view/View;)Z", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "", FirebaseAnalytics.Param.LOCATION, "Wwwwwwwwwwwwwwwwwwwwwww", "([FLandroid/view/View;)Landroid/view/View;", "Wwwwwwwwwwwwwwwwww", "Wwwwwwwwwwwwwwwwwwwwww", "(Landroid/view/View;)[F", "Wwwwwwwwwwwwwwwwwwwww", "className", "Ljava/lang/Class;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Ljava/lang/String;)Ljava/lang/Class;", "kotlin.jvm.PlatformType", "Ljava/lang/String;", "TAG", "Ljava/lang/ref/WeakReference;", "Ljava/lang/ref/WeakReference;", "RCTRootViewReference", "Ljava/lang/reflect/Method;", "Ljava/lang/reflect/Method;", "methodFindTouchTargetView", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes.dex */
public final class ViewHierarchy {
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static Method f6337Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @NotNull
    public static final ViewHierarchy INSTANCE = new ViewHierarchy();

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final String f6339Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = ViewHierarchy.class.getCanonicalName();
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static WeakReference<View> f6338Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new WeakReference<>(null);

    @JvmStatic
    public static final void Wwwwwwwwwwwwwwww(@NotNull View view, @NotNull JSONObject jSONObject) {
        if (!CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(ViewHierarchy.class)) {
            try {
                try {
                    String Wwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwww(view);
                    String Wwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwww(view);
                    Object tag = view.getTag();
                    CharSequence contentDescription = view.getContentDescription();
                    jSONObject.put("classname", view.getClass().getCanonicalName());
                    jSONObject.put("classtypebitmask", Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(view));
                    jSONObject.put("id", view.getId());
                    if (!SensitiveUserDataUtils.Wwwwwwwwwwwwwwwwwwwwwwwwwwww(view)) {
                        jSONObject.put("text", Utility.Wwwwwwwwwwwwwwwwwwwwwwww(Utility.IIllllllll(Wwwwwwwwwwwwwwwwwwwwwwww2), ""));
                    } else {
                        jSONObject.put("text", "");
                        jSONObject.put("is_user_input", true);
                    }
                    jSONObject.put("hint", Utility.Wwwwwwwwwwwwwwwwwwwwwwww(Utility.IIllllllll(Wwwwwwwwwwwwwwwwwwwwwwwwww2), ""));
                    if (tag != null) {
                        jSONObject.put("tag", Utility.Wwwwwwwwwwwwwwwwwwwwwwww(Utility.IIllllllll(tag.toString()), ""));
                    }
                    if (contentDescription != null) {
                        jSONObject.put("description", Utility.Wwwwwwwwwwwwwwwwwwwwwwww(Utility.IIllllllll(contentDescription.toString()), ""));
                    }
                    jSONObject.put(TypedValues.Custom.S_DIMENSION, INSTANCE.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(view));
                } catch (JSONException e) {
                    Utility utility = Utility.INSTANCE;
                    Utility.Illlllllllllllllllllllll(f6339Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, e);
                }
            } catch (Throwable th) {
                CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(th, ViewHierarchy.class);
            }
        }
    }

    @JvmStatic
    public static final void Wwwwwwwwwwwwwwwww(@NotNull View view, @Nullable View.OnClickListener onClickListener) {
        Field field;
        Field field2;
        if (!CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(ViewHierarchy.class)) {
            Object obj = null;
            try {
                try {
                    field = Class.forName("android.view.View").getDeclaredField("mListenerInfo");
                } catch (ClassNotFoundException | NoSuchFieldException unused) {
                    field = null;
                }
                try {
                    field2 = Class.forName("android.view.View$ListenerInfo").getDeclaredField("mOnClickListener");
                } catch (ClassNotFoundException | NoSuchFieldException unused2) {
                    field2 = null;
                    if (field == null) {
                    }
                    view.setOnClickListener(onClickListener);
                }
                if (field == null && field2 != null) {
                    field.setAccessible(true);
                    field2.setAccessible(true);
                    try {
                        field.setAccessible(true);
                        obj = field.get(view);
                    } catch (IllegalAccessException unused3) {
                    }
                    if (obj == null) {
                        view.setOnClickListener(onClickListener);
                        return;
                    } else {
                        field2.set(obj, onClickListener);
                        return;
                    }
                }
                view.setOnClickListener(onClickListener);
            } catch (Exception unused4) {
            } catch (Throwable th) {
                CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(th, ViewHierarchy.class);
            }
        }
    }

    @JvmStatic
    public static final boolean Wwwwwwwwwwwwwwwwwwww(View view) {
        if (CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(ViewHierarchy.class)) {
            return false;
        }
        try {
            ViewParent parent = view.getParent();
            if (parent instanceof AdapterView) {
                return true;
            }
            ViewHierarchy viewHierarchy = INSTANCE;
            Class<?> Wwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = viewHierarchy.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww("android.support.v4.view.NestedScrollingChild");
            if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwww2 != null && Wwwwwwwwwwwwwwwwwwwwwwwwwwwww2.isInstance(parent)) {
                return true;
            }
            Class<?> Wwwwwwwwwwwwwwwwwwwwwwwwwwwww3 = viewHierarchy.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww("androidx.core.view.NestedScrollingChild");
            if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwww3 != null) {
                if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwww3.isInstance(parent)) {
                    return true;
                }
            }
            return false;
        } catch (Throwable th) {
            CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(th, ViewHierarchy.class);
            return false;
        }
    }

    @JvmStatic
    @NotNull
    public static final String Wwwwwwwwwwwwwwwwwwwwwwww(@Nullable View view) {
        CharSequence valueOf;
        Object selectedItem;
        String str;
        int i = 0;
        if (CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(ViewHierarchy.class)) {
            return null;
        }
        try {
            if (view instanceof TextView) {
                valueOf = ((TextView) view).getText();
                if (view instanceof Switch) {
                    if (((Switch) view).isChecked()) {
                        str = "1";
                    } else {
                        str = "0";
                    }
                    valueOf = str;
                }
            } else if (view instanceof Spinner) {
                if (((Spinner) view).getCount() > 0 && (selectedItem = ((Spinner) view).getSelectedItem()) != null) {
                    valueOf = selectedItem.toString();
                }
                valueOf = null;
            } else if (view instanceof DatePicker) {
                int year = ((DatePicker) view).getYear();
                int month = ((DatePicker) view).getMonth();
                int dayOfMonth = ((DatePicker) view).getDayOfMonth();
                StringCompanionObject stringCompanionObject = StringCompanionObject.INSTANCE;
                valueOf = String.format("%04d-%02d-%02d", Arrays.copyOf(new Object[]{Integer.valueOf(year), Integer.valueOf(month), Integer.valueOf(dayOfMonth)}, 3));
            } else if (view instanceof TimePicker) {
                int intValue = ((TimePicker) view).getCurrentHour().intValue();
                int intValue2 = ((TimePicker) view).getCurrentMinute().intValue();
                StringCompanionObject stringCompanionObject2 = StringCompanionObject.INSTANCE;
                valueOf = String.format("%02d:%02d", Arrays.copyOf(new Object[]{Integer.valueOf(intValue), Integer.valueOf(intValue2)}, 2));
            } else if (view instanceof RadioGroup) {
                int checkedRadioButtonId = ((RadioGroup) view).getCheckedRadioButtonId();
                int childCount = ((RadioGroup) view).getChildCount();
                if (childCount > 0) {
                    while (true) {
                        int i2 = i + 1;
                        View childAt = ((RadioGroup) view).getChildAt(i);
                        if (childAt.getId() == checkedRadioButtonId && (childAt instanceof RadioButton)) {
                            valueOf = ((RadioButton) childAt).getText();
                            break;
                        } else if (i2 >= childCount) {
                            break;
                        } else {
                            i = i2;
                        }
                    }
                }
                valueOf = null;
            } else {
                if (view instanceof RatingBar) {
                    valueOf = String.valueOf(((RatingBar) view).getRating());
                }
                valueOf = null;
            }
            if (valueOf == null) {
                return "";
            }
            String obj = valueOf.toString();
            if (obj == null) {
                return "";
            }
            return obj;
        } catch (Throwable th) {
            CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(th, ViewHierarchy.class);
            return null;
        }
    }

    @JvmStatic
    @Nullable
    public static final ViewGroup Wwwwwwwwwwwwwwwwwwwwwwwww(@Nullable View view) {
        if (CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(ViewHierarchy.class) || view == null) {
            return null;
        }
        try {
            ViewParent parent = view.getParent();
            if (!(parent instanceof ViewGroup)) {
                return null;
            }
            return (ViewGroup) parent;
        } catch (Throwable th) {
            CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(th, ViewHierarchy.class);
            return null;
        }
    }

    @JvmStatic
    @NotNull
    public static final String Wwwwwwwwwwwwwwwwwwwwwwwwww(@Nullable View view) {
        CharSequence charSequence;
        if (CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(ViewHierarchy.class)) {
            return null;
        }
        try {
            if (view instanceof EditText) {
                charSequence = ((EditText) view).getHint();
            } else if (view instanceof TextView) {
                charSequence = ((TextView) view).getHint();
            } else {
                charSequence = null;
            }
            if (charSequence == null) {
                return "";
            }
            String obj = charSequence.toString();
            if (obj == null) {
                return "";
            }
            return obj;
        } catch (Throwable th) {
            CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(th, ViewHierarchy.class);
            return null;
        }
    }

    @JvmStatic
    @Nullable
    public static final View.OnTouchListener Wwwwwwwwwwwwwwwwwwwwwwwwwww(@Nullable View view) {
        Field declaredField;
        try {
            if (CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(ViewHierarchy.class)) {
                return null;
            }
            try {
                try {
                    Field declaredField2 = Class.forName("android.view.View").getDeclaredField("mListenerInfo");
                    if (declaredField2 != null) {
                        declaredField2.setAccessible(true);
                    }
                    Object obj = declaredField2.get(view);
                    if (obj == null || (declaredField = Class.forName("android.view.View$ListenerInfo").getDeclaredField("mOnTouchListener")) == null) {
                        return null;
                    }
                    declaredField.setAccessible(true);
                    Object obj2 = declaredField.get(obj);
                    if (obj2 != null) {
                        return (View.OnTouchListener) obj2;
                    }
                    throw new NullPointerException("null cannot be cast to non-null type android.view.View.OnTouchListener");
                } catch (NoSuchFieldException e) {
                    Utility utility = Utility.INSTANCE;
                    Utility.Illlllllllllllllllllllll(f6339Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, e);
                    return null;
                }
            } catch (ClassNotFoundException e2) {
                Utility utility2 = Utility.INSTANCE;
                Utility.Illlllllllllllllllllllll(f6339Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, e2);
                return null;
            } catch (IllegalAccessException e3) {
                Utility utility3 = Utility.INSTANCE;
                Utility.Illlllllllllllllllllllll(f6339Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, e3);
                return null;
            }
        } catch (Throwable th) {
            CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(th, ViewHierarchy.class);
            return null;
        }
    }

    @JvmStatic
    @Nullable
    public static final View.OnClickListener Wwwwwwwwwwwwwwwwwwwwwwwwwwww(@Nullable View view) {
        Field declaredField;
        if (CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(ViewHierarchy.class)) {
            return null;
        }
        try {
            Field declaredField2 = Class.forName("android.view.View").getDeclaredField("mListenerInfo");
            if (declaredField2 != null) {
                declaredField2.setAccessible(true);
            }
            Object obj = declaredField2.get(view);
            if (obj == null || (declaredField = Class.forName("android.view.View$ListenerInfo").getDeclaredField("mOnClickListener")) == null) {
                return null;
            }
            declaredField.setAccessible(true);
            Object obj2 = declaredField.get(obj);
            if (obj2 != null) {
                return (View.OnClickListener) obj2;
            }
            throw new NullPointerException("null cannot be cast to non-null type android.view.View.OnClickListener");
        } catch (ClassNotFoundException | IllegalAccessException | NoSuchFieldException unused) {
            return null;
        } catch (Throwable th) {
            CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(th, ViewHierarchy.class);
            return null;
        }
    }

    @JvmStatic
    @NotNull
    public static final JSONObject Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull View view) {
        if (CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(ViewHierarchy.class)) {
            return null;
        }
        try {
            if (Intrinsics.areEqual(view.getClass().getName(), "com.facebook.react.ReactRootView")) {
                f6338Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new WeakReference<>(view);
            }
            JSONObject jSONObject = new JSONObject();
            try {
                Wwwwwwwwwwwwwwww(view, jSONObject);
                JSONArray jSONArray = new JSONArray();
                List<View> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(view);
                int size = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.size() - 1;
                if (size >= 0) {
                    int i = 0;
                    while (true) {
                        int i2 = i + 1;
                        jSONArray.put(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.get(i)));
                        if (i2 > size) {
                            break;
                        }
                        i = i2;
                    }
                }
                jSONObject.put("childviews", jSONArray);
            } catch (JSONException unused) {
            }
            return jSONObject;
        } catch (Throwable th) {
            CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(th, ViewHierarchy.class);
            return null;
        }
    }

    @JvmStatic
    public static final int Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull View view) {
        int i;
        if (CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(ViewHierarchy.class)) {
            return 0;
        }
        try {
            if (view instanceof ImageView) {
                i = 2;
            } else {
                i = 0;
            }
            if (view.isClickable()) {
                i |= 32;
            }
            if (Wwwwwwwwwwwwwwwwwwww(view)) {
                i |= 512;
            }
            if (view instanceof TextView) {
                int i2 = i | 1025;
                if (view instanceof Button) {
                    i2 = i | 1029;
                    if (view instanceof Switch) {
                        i2 = i | 9221;
                    } else if (view instanceof CheckBox) {
                        i2 = 33797 | i;
                    }
                }
                if (view instanceof EditText) {
                    return i2 | 2048;
                }
                return i2;
            }
            if (!(view instanceof Spinner) && !(view instanceof DatePicker)) {
                if (view instanceof RatingBar) {
                    return 65536 | i;
                }
                if (view instanceof RadioGroup) {
                    return i | 16384;
                }
                if ((view instanceof ViewGroup) && INSTANCE.Wwwwwwwwwwwwwwwwwww(view, f6338Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.get())) {
                    return i | 64;
                }
                return i;
            }
            return i | 4096;
        } catch (Throwable th) {
            CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(th, ViewHierarchy.class);
            return 0;
        }
    }

    @JvmStatic
    @NotNull
    public static final List<View> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@Nullable View view) {
        int childCount;
        if (CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(ViewHierarchy.class)) {
            return null;
        }
        try {
            ArrayList arrayList = new ArrayList();
            if ((view instanceof ViewGroup) && (childCount = ((ViewGroup) view).getChildCount()) > 0) {
                int i = 0;
                while (true) {
                    int i2 = i + 1;
                    arrayList.add(((ViewGroup) view).getChildAt(i));
                    if (i2 >= childCount) {
                        break;
                    }
                    i = i2;
                }
            }
            return arrayList;
        } catch (Throwable th) {
            CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(th, ViewHierarchy.class);
            return null;
        }
    }

    @JvmStatic
    @Nullable
    public static final View Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@Nullable View view) {
        if (CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(ViewHierarchy.class)) {
            return null;
        }
        while (view != null) {
            try {
                if (INSTANCE.Wwwwwwwwwwwwwwwwww(view)) {
                    return view;
                }
                ViewParent parent = view.getParent();
                if (!(parent instanceof View)) {
                    break;
                }
                view = (View) parent;
            } catch (Throwable th) {
                CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(th, ViewHierarchy.class);
            }
        }
        return null;
    }

    public final boolean Wwwwwwwwwwwwwwwwww(View view) {
        if (CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this)) {
            return false;
        }
        try {
            return Intrinsics.areEqual(view.getClass().getName(), "com.facebook.react.ReactRootView");
        } catch (Throwable th) {
            CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(th, this);
            return false;
        }
    }

    public final boolean Wwwwwwwwwwwwwwwwwww(@NotNull View view, @Nullable View view2) {
        View Wwwwwwwwwwwwwwwwwwwwwww2;
        if (CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this)) {
            return false;
        }
        try {
            if (Intrinsics.areEqual(view.getClass().getName(), "com.facebook.react.views.view.ReactViewGroup") && (Wwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwww(view), view2)) != null) {
                if (Wwwwwwwwwwwwwwwwwwwwwww2.getId() == view.getId()) {
                    return true;
                }
            }
            return false;
        } catch (Throwable th) {
            CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(th, this);
            return false;
        }
    }

    public final void Wwwwwwwwwwwwwwwwwwwww() {
        if (!CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this)) {
            try {
                if (f6337Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww == null) {
                    try {
                        Method declaredMethod = Class.forName("com.facebook.react.uimanager.TouchTargetHelper").getDeclaredMethod("findTouchTargetView", float[].class, ViewGroup.class);
                        f6337Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = declaredMethod;
                        if (declaredMethod != null) {
                            declaredMethod.setAccessible(true);
                            return;
                        }
                        throw new IllegalStateException("Required value was null.");
                    } catch (ClassNotFoundException e) {
                        Utility utility = Utility.INSTANCE;
                        Utility.Illlllllllllllllllllllll(f6339Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, e);
                    } catch (NoSuchMethodException e2) {
                        Utility utility2 = Utility.INSTANCE;
                        Utility.Illlllllllllllllllllllll(f6339Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, e2);
                    }
                }
            } catch (Throwable th) {
                CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(th, this);
            }
        }
    }

    public final float[] Wwwwwwwwwwwwwwwwwwwwww(View view) {
        if (CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this)) {
            return null;
        }
        try {
            int[] iArr = new int[2];
            view.getLocationOnScreen(iArr);
            return new float[]{iArr[0], iArr[1]};
        } catch (Throwable th) {
            CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(th, this);
            return null;
        }
    }

    public final View Wwwwwwwwwwwwwwwwwwwwwww(float[] fArr, View view) {
        if (CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this)) {
            return null;
        }
        try {
            Wwwwwwwwwwwwwwwwwwwww();
            Method method = f6337Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
            if (method != null && view != null) {
                try {
                    try {
                        if (method != null) {
                            Object invoke = method.invoke(null, fArr, view);
                            if (invoke != null) {
                                View view2 = (View) invoke;
                                if (view2.getId() > 0) {
                                    ViewParent parent = view2.getParent();
                                    if (parent != null) {
                                        return (View) parent;
                                    }
                                    throw new NullPointerException("null cannot be cast to non-null type android.view.View");
                                }
                            } else {
                                throw new NullPointerException("null cannot be cast to non-null type android.view.View");
                            }
                        } else {
                            throw new IllegalStateException("Required value was null.");
                        }
                    } catch (InvocationTargetException e) {
                        Utility utility = Utility.INSTANCE;
                        Utility.Illlllllllllllllllllllll(f6339Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, e);
                    }
                } catch (IllegalAccessException e2) {
                    Utility utility2 = Utility.INSTANCE;
                    Utility.Illlllllllllllllllllllll(f6339Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, e2);
                }
            }
            return null;
        } catch (Throwable th) {
            CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(th, this);
            return null;
        }
    }

    public final Class<?> Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(String str) {
        if (CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this)) {
            return null;
        }
        try {
            return Class.forName(str);
        } catch (ClassNotFoundException unused) {
            return null;
        } catch (Throwable th) {
            CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(th, this);
            return null;
        }
    }

    public final JSONObject Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(View view) {
        if (CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this)) {
            return null;
        }
        try {
            JSONObject jSONObject = new JSONObject();
            try {
                jSONObject.put("top", view.getTop());
                jSONObject.put("left", view.getLeft());
                jSONObject.put("width", view.getWidth());
                jSONObject.put("height", view.getHeight());
                jSONObject.put("scrollx", view.getScrollX());
                jSONObject.put("scrolly", view.getScrollY());
                jSONObject.put("visibility", view.getVisibility());
                return jSONObject;
            } catch (JSONException unused) {
                return jSONObject;
            }
        } catch (Throwable th) {
            CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(th, this);
            return null;
        }
    }
}
