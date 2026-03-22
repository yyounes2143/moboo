package com.sensorsdata.analytics.android.sdk.util;

import android.app.Activity;
import android.content.Context;
import android.content.ContextWrapper;
import android.graphics.Rect;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.Button;
import android.widget.CheckBox;
import android.widget.CheckedTextView;
import android.widget.CompoundButton;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.RadioButton;
import android.widget.RatingBar;
import android.widget.SeekBar;
import android.widget.Spinner;
import android.widget.Switch;
import android.widget.TextView;
import android.widget.ToggleButton;
import com.sensorsdata.analytics.android.sdk.R;
import com.sensorsdata.analytics.android.sdk.SALog;
import com.sensorsdata.analytics.android.sdk.SensorsDataAPI;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.Collections;
import java.util.LinkedList;
import java.util.List;
import org.json.JSONObject;
/* compiled from: Proguard */
/* loaded from: classes6.dex */
public class SAViewUtils {
    private static final String TAG = "SA.SAViewUtils";
    private static List<String> sOSViewPackage = new LinkedList<String>() { // from class: com.sensorsdata.analytics.android.sdk.util.SAViewUtils.1
        {
            add("android##widget");
            add("android##support##v7##widget");
            add("android##support##design##widget");
            add("android##support##text##emoji##widget");
            add("androidx##appcompat##widget");
            add("androidx##emoji##widget");
            add("androidx##cardview##widget");
            add("com##google##android##material");
        }
    };

    public static JSONObject buildTitleAndScreenName(Activity activity) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("$screen_name", activity.getClass().getCanonicalName());
            String activityTitle = SensorsDataUtils.getActivityTitle(activity);
            if (!TextUtils.isEmpty(activityTitle)) {
                jSONObject.put("$title", activityTitle);
            }
            return jSONObject;
        } catch (Exception e) {
            SALog.printStackTrace(e);
            return new JSONObject();
        }
    }

    private static void exceptionCollect(View view) {
        if (view != null) {
            try {
                SALog.i(TAG, "viewClass:" + view.getClass());
                SALog.i(TAG, "viewId:" + view.getId());
                ViewParent parent = view.getParent();
                if (parent != null) {
                    if (parent instanceof View) {
                        SALog.i(TAG, "viewParentClass->ID:" + ((View) parent).getId());
                    }
                } else if ((view instanceof ViewGroup) && ((ViewGroup) view).getChildCount() > 0) {
                    View childAt = ((ViewGroup) view).getChildAt(0);
                    SALog.i(TAG, "childView->ID:" + childAt.getId());
                }
            } catch (Exception e) {
                SALog.printStackTrace(e);
            }
        }
    }

    public static Activity getActivityOfView(Context context, View view) {
        Activity activity;
        Object tag;
        Activity activity2 = null;
        if (context != null) {
            try {
                if (context instanceof Activity) {
                    activity = (Activity) context;
                } else {
                    if (context instanceof ContextWrapper) {
                        while (!(context instanceof Activity) && (context instanceof ContextWrapper)) {
                            context = ((ContextWrapper) context).getBaseContext();
                        }
                        if (context instanceof Activity) {
                            activity = (Activity) context;
                        }
                    }
                    if (activity2 != null && view != null && (tag = view.getTag(R.id.sensors_analytics_tag_view_activity)) != null && (tag instanceof Activity)) {
                        return (Activity) tag;
                    }
                    return activity2;
                }
                activity2 = activity;
                if (activity2 != null) {
                }
                return activity2;
            } catch (Exception e) {
                SALog.printStackTrace(e);
            }
        }
        return activity2;
    }

    public static int getChildIndex(ViewParent viewParent, View view) {
        try {
            if (!(viewParent instanceof ViewGroup)) {
                return -1;
            }
            ViewGroup viewGroup = (ViewGroup) viewParent;
            String viewId = getViewId(view);
            String canonicalName = SnapCache.getInstance().getCanonicalName(view.getClass());
            int i = 0;
            for (int i2 = 0; i2 < viewGroup.getChildCount(); i2++) {
                View childAt = viewGroup.getChildAt(i2);
                if (Pathfinder.hasClassName(childAt, canonicalName)) {
                    String viewId2 = getViewId(childAt);
                    if ((viewId != null && !viewId.equals(viewId2)) || childAt != view) {
                        i++;
                    } else {
                        return i;
                    }
                }
            }
            return -1;
        } catch (Exception e) {
            SALog.printStackTrace(e);
            return -1;
        }
    }

    public static String getElementSelector(View view) {
        View view2;
        String elementSelectorOrigin;
        String selectPath = SnapCache.getInstance().getSelectPath(view);
        if (selectPath != null) {
            return selectPath;
        }
        ViewParent parent = view.getParent();
        String str = null;
        if (parent instanceof ViewGroup) {
            view2 = (View) parent;
        } else {
            view2 = null;
        }
        if (view2 != null) {
            str = SnapCache.getInstance().getSelectPath(view2);
        }
        String canonicalName = SnapCache.getInstance().getCanonicalName(view.getClass());
        if (view2 != null) {
            if (str == null) {
                str = getElementSelectorOrigin(view2);
                SnapCache.getInstance().setSelectPath(view2, str);
            }
            StringBuilder sb = new StringBuilder();
            if (str != null && !str.equals("")) {
                sb.append(str);
                sb.append("/");
            }
            int childIndex = getChildIndex(parent, view);
            sb.append(canonicalName);
            sb.append("[");
            sb.append(childIndex);
            sb.append("]");
            elementSelectorOrigin = sb.toString();
        } else {
            elementSelectorOrigin = getElementSelectorOrigin(view);
        }
        SnapCache.getInstance().setSelectPath(view, elementSelectorOrigin);
        return elementSelectorOrigin;
    }

    private static String getElementSelectorOrigin(View view) {
        boolean z;
        LinkedList linkedList = new LinkedList();
        do {
            ViewParent parent = view.getParent();
            linkedList.add(view.getClass().getCanonicalName() + "[" + getChildIndex(parent, view) + "]");
            z = parent instanceof ViewGroup;
            if (z) {
                view = (ViewGroup) parent;
                continue;
            }
        } while (z);
        Collections.reverse(linkedList);
        StringBuilder sb = new StringBuilder();
        for (int i = 1; i < linkedList.size(); i++) {
            sb.append((String) linkedList.get(i));
            if (i != linkedList.size() - 1) {
                sb.append("/");
            }
        }
        return sb.toString();
    }

    public static Object getMenuItemData(View view) {
        try {
            return view.getClass().getMethod("getItemData", null).invoke(view, null);
        } catch (IllegalAccessException | NoSuchMethodException | InvocationTargetException unused) {
            return null;
        }
    }

    public static JSONObject getScreenNameAndTitle(View view) {
        if (view == null) {
            return null;
        }
        Activity activityOfView = getActivityOfView(view.getContext(), view);
        if (activityOfView == null) {
            activityOfView = AppStateTools.getInstance().getForegroundActivity();
        }
        if (activityOfView == null || activityOfView.getWindow() == null || !activityOfView.getWindow().isActive()) {
            return null;
        }
        Object fragmentFromView = SAFragmentUtils.getFragmentFromView(view, activityOfView);
        if (fragmentFromView != null) {
            return SAPageInfoUtils.getFragmentPageInfo(activityOfView, fragmentFromView);
        }
        JSONObject activityPageInfo = SAPageInfoUtils.getActivityPageInfo(activityOfView);
        JSONUtils.mergeDuplicateProperty(SAPageInfoUtils.getRNPageInfo(), activityPageInfo);
        return activityPageInfo;
    }

    private static String getTabLayoutContent(Object obj) {
        String str = null;
        try {
            Class<?> currentClass = ReflectUtil.getCurrentClass(new String[]{"com.google.android.material.tabs.TabLayout$Tab", "com.google.android.material.tabs.TabLayout$Tab"});
            if (currentClass != null) {
                Object callMethod = ReflectUtil.callMethod(obj, "getText", new Object[0]);
                if (callMethod != null) {
                    str = callMethod.toString();
                }
                View view = (View) ReflectUtil.findField(currentClass, obj, "mCustomView", "customView");
                if (view != null) {
                    StringBuilder sb = new StringBuilder();
                    if (view instanceof ViewGroup) {
                        String traverseView = traverseView(sb, (ViewGroup) view);
                        if (!TextUtils.isEmpty(traverseView)) {
                            return traverseView.substring(0, traverseView.length() - 1);
                        }
                        return traverseView;
                    }
                    return getViewContent(view);
                }
            }
        } catch (Exception unused) {
        }
        return str;
    }

    public static String getViewContent(View view) {
        return getViewContent(view, false);
    }

    public static String getViewGroupTypeByReflect(View view) {
        String canonicalName = SnapCache.getInstance().getCanonicalName(view.getClass());
        Class<?> classByName = ReflectUtil.getClassByName("androidx.cardview.widget.CardView");
        if (classByName != null && classByName.isInstance(view)) {
            return getViewType(canonicalName, "CardView");
        }
        Class<?> classByName2 = ReflectUtil.getClassByName("androidx.cardview.widget.CardView");
        if (classByName2 != null && classByName2.isInstance(view)) {
            return getViewType(canonicalName, "CardView");
        }
        Class<?> classByName3 = ReflectUtil.getClassByName("com.google.android.material.navigation.NavigationView");
        if (classByName3 != null && classByName3.isInstance(view)) {
            return getViewType(canonicalName, "NavigationView");
        }
        Class<?> classByName4 = ReflectUtil.getClassByName("com.google.android.material.navigation.NavigationView");
        if (classByName4 != null && classByName4.isInstance(view)) {
            return getViewType(canonicalName, "NavigationView");
        }
        return canonicalName;
    }

    public static String getViewId(View view) {
        String str;
        String str2 = null;
        try {
            str = (String) view.getTag(R.id.sensors_analytics_tag_view_id);
        } catch (Exception unused) {
        }
        try {
            if (TextUtils.isEmpty(str) && isValid(view.getId())) {
                String viewId = SnapCache.getInstance().getViewId(view);
                if (viewId == null) {
                    str2 = view.getContext().getResources().getResourceEntryName(view.getId());
                    SnapCache.getInstance().setViewId(view, str2);
                    return str2;
                }
                return viewId;
            }
            return str;
        } catch (Exception unused2) {
            str2 = str;
            if (SALog.isLogEnabled()) {
                exceptionCollect(view);
            }
            return str2;
        }
    }

    public static String getViewType(View view) {
        String viewType = SnapCache.getInstance().getViewType(view);
        if (viewType == null) {
            viewType = SnapCache.getInstance().getCanonicalName(view.getClass());
            if (view instanceof CheckBox) {
                viewType = getViewType(viewType, "CheckBox");
            } else if (view instanceof RadioButton) {
                viewType = getViewType(viewType, "RadioButton");
            } else if (view instanceof ToggleButton) {
                viewType = getViewType(viewType, "ToggleButton");
            } else if (view instanceof CompoundButton) {
                viewType = getViewTypeByReflect(view);
            } else if (view instanceof Button) {
                viewType = getViewType(viewType, "Button");
            } else if (view instanceof CheckedTextView) {
                viewType = getViewType(viewType, "CheckedTextView");
            } else if (view instanceof TextView) {
                viewType = getViewType(viewType, "TextView");
            } else if (view instanceof ImageView) {
                viewType = getViewType(viewType, "ImageView");
            } else if (view instanceof RatingBar) {
                viewType = getViewType(viewType, "RatingBar");
            } else if (view instanceof SeekBar) {
                viewType = getViewType(viewType, "SeekBar");
            } else if (view instanceof Spinner) {
                viewType = getViewType(viewType, "Spinner");
            } else if (instanceOfTabView(view) != null) {
                viewType = getViewType(viewType, "TabLayout");
            } else if (instanceOfNavigationView(view)) {
                viewType = getViewType(viewType, "NavigationView");
            } else if (view instanceof ViewGroup) {
                viewType = getViewGroupTypeByReflect(view);
            }
            SnapCache.getInstance().setViewType(view, viewType);
        }
        return viewType;
    }

    public static String getViewTypeByReflect(View view) {
        String canonicalName = SnapCache.getInstance().getCanonicalName(view.getClass());
        Class<?> classByName = ReflectUtil.getClassByName("android.widget.Switch");
        if (classByName != null && classByName.isInstance(view)) {
            return getViewType(canonicalName, "Switch");
        }
        Class<?> classByName2 = ReflectUtil.getClassByName("androidx.appcompat.widget.SwitchCompat");
        if (classByName2 != null && classByName2.isInstance(view)) {
            return getViewType(canonicalName, "SwitchCompat");
        }
        Class<?> classByName3 = ReflectUtil.getClassByName("androidx.appcompat.widget.SwitchCompat");
        if (classByName3 != null && classByName3.isInstance(view)) {
            return getViewType(canonicalName, "SwitchCompat");
        }
        return canonicalName;
    }

    public static boolean instanceOfActionMenuItem(Object obj) {
        return ReflectUtil.isInstance(obj, "androidx.appcompat.view.menu.ActionMenuItem");
    }

    public static boolean instanceOfAndroidXListMenuItemView(Object obj) {
        return ReflectUtil.isInstance(obj, "androidx.appcompat.view.menu.ListMenuItemView");
    }

    public static boolean instanceOfBottomNavigationItemView(Object obj) {
        return ReflectUtil.isInstance(obj, "com.google.android.material.bottomnavigation.BottomNavigationItemView", "com.google.android.material.internal.NavigationMenuItemView");
    }

    public static boolean instanceOfNavigationView(Object obj) {
        return ReflectUtil.isInstance(obj, "com.google.android.material.navigation.NavigationView", "com.google.android.material.navigation.NavigationView");
    }

    public static boolean instanceOfSupportListMenuItemView(Object obj) {
        return ReflectUtil.isInstance(obj, "androidx.appcompat.view.menu.ListMenuItemView");
    }

    private static Object instanceOfTabView(View view) {
        try {
            Class<?> currentClass = ReflectUtil.getCurrentClass(new String[]{"com.google.android.material.tabs.TabLayout$TabView", "com.google.android.material.tabs.TabLayout$TabView"});
            if (currentClass != null && currentClass.isAssignableFrom(view.getClass())) {
                return ReflectUtil.findField(currentClass, view, "mTab", "tab");
            }
            return null;
        } catch (Exception e) {
            SALog.printStackTrace(e);
            return null;
        }
    }

    public static boolean instanceOfToolbar(Object obj) {
        return ReflectUtil.isInstance(obj, "androidx.appcompat.widget.Toolbar", "androidx.appcompat.widget.Toolbar", "android.widget.Toolbar");
    }

    private static boolean isOSViewByPackage(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        String replace = str.replace(".", "##");
        for (String str2 : sOSViewPackage) {
            if (replace.startsWith(str2)) {
                return true;
            }
        }
        return false;
    }

    private static boolean isValid(int i) {
        if (i != -1 && ((-16777216) & i) != 0 && (i & 16711680) != 0) {
            return true;
        }
        return false;
    }

    public static boolean isViewIgnored(View view) {
        if (view == null) {
            return true;
        }
        try {
            List<Class<?>> ignoredViewTypeList = SensorsDataAPI.sharedInstance().getIgnoredViewTypeList();
            if (ignoredViewTypeList != null) {
                for (Class<?> cls : ignoredViewTypeList) {
                    if (cls.isAssignableFrom(view.getClass())) {
                        return true;
                    }
                }
            }
            return "1".equals(view.getTag(R.id.sensors_analytics_tag_view_ignored));
        } catch (Exception e) {
            SALog.printStackTrace(e);
            return true;
        }
    }

    public static boolean isViewSelfVisible(View view) {
        if (view != null && view.getWindowVisibility() != 8) {
            if (WindowHelper.isDecorView(view.getClass())) {
                return true;
            }
            boolean localVisibleRect = view.getLocalVisibleRect(new Rect());
            if (view.getWidth() > 0 && view.getHeight() > 0 && view.getAlpha() > 0.0f && localVisibleRect) {
                if ((view.getVisibility() == 0 || view.getAnimation() == null || !view.getAnimation().getFillAfter()) && view.getVisibility() != 0) {
                    return false;
                }
                return true;
            }
        }
        return false;
    }

    public static boolean isWeexTextView(View view) {
        String name = view.getClass().getName();
        if (!name.equals("com.taobao.weex.ui.view.WXTextView") && !name.equals("org.apache.weex.ui.view.WXTextView")) {
            return false;
        }
        return true;
    }

    public static boolean isWeexView(View view) {
        String name = view.getClass().getName();
        if (!name.startsWith("com.taobao.weex.ui.view") && !name.startsWith("org.apache.weex.ui.view")) {
            return false;
        }
        return true;
    }

    public static String traverseView(StringBuilder sb, ViewGroup viewGroup) {
        if (sb == null) {
            try {
                sb = new StringBuilder();
            } catch (Throwable th) {
                SALog.i(TAG, th.getMessage());
                if (sb != null) {
                    return sb.toString();
                }
                return "";
            }
        }
        if (viewGroup == null) {
            return sb.toString();
        }
        int childCount = viewGroup.getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = viewGroup.getChildAt(i);
            if (childAt != null && childAt.getVisibility() == 0) {
                if (childAt instanceof ViewGroup) {
                    traverseView(sb, (ViewGroup) childAt);
                } else if (!isViewIgnored(childAt)) {
                    String viewContent = getViewContent(childAt);
                    if (!TextUtils.isEmpty(viewContent)) {
                        sb.append(viewContent);
                        sb.append("-");
                    }
                }
            }
        }
        return sb.toString();
    }

    public static String getViewContent(View view, boolean z) {
        Class<?> cls;
        String text;
        Method method;
        try {
            String viewType = SnapCache.getInstance().getViewType(view);
            String viewText = SnapCache.getInstance().getViewText(view);
            if (viewType == null || viewText == null) {
                if (view instanceof CheckBox) {
                    text = ((CheckBox) view).getText();
                } else if (view instanceof RadioButton) {
                    text = ((RadioButton) view).getText();
                } else if (view instanceof ToggleButton) {
                    ToggleButton toggleButton = (ToggleButton) view;
                    text = toggleButton.isChecked() ? toggleButton.getTextOn() : toggleButton.getTextOff();
                } else {
                    String str = null;
                    if (view instanceof CompoundButton) {
                        try {
                            cls = ReflectUtil.getClassByName("androidx.appcompat.widget.SwitchCompat");
                        } catch (Exception unused) {
                            cls = null;
                        }
                        if (cls == null) {
                            try {
                                cls = ReflectUtil.getClassByName("androidx.appcompat.widget.SwitchCompat");
                            } catch (Exception unused2) {
                            }
                        }
                        CompoundButton compoundButton = (CompoundButton) view;
                        if ((cls != null && cls.isInstance(view)) || (view instanceof Switch)) {
                            if (compoundButton.isChecked()) {
                                method = view.getClass().getMethod("getTextOn", null);
                            } else {
                                method = view.getClass().getMethod("getTextOff", null);
                            }
                            text = (String) method.invoke(view, null);
                        } else {
                            text = compoundButton.getText();
                        }
                    } else if (view instanceof Button) {
                        text = ((Button) view).getText();
                    } else if (view instanceof CheckedTextView) {
                        text = ((CheckedTextView) view).getText();
                    } else if (view instanceof TextView) {
                        TextView textView = (TextView) view;
                        if (ReflectUtil.findField(new String[]{"androidx.appcompat.widget.AppCompatTextView"}, textView, "mPrecomputedTextFuture") == null) {
                            text = textView.getText();
                        }
                        text = str;
                    } else if (view instanceof ImageView) {
                        ImageView imageView = (ImageView) view;
                        if (!TextUtils.isEmpty(imageView.getContentDescription()) && !isWeexView(view)) {
                            text = imageView.getContentDescription().toString();
                        }
                        text = str;
                    } else if (view instanceof RatingBar) {
                        text = String.valueOf(((RatingBar) view).getRating());
                    } else if (view instanceof SeekBar) {
                        text = String.valueOf(((SeekBar) view).getProgress());
                    } else if (view instanceof Spinner) {
                        text = traverseView(new StringBuilder(), (ViewGroup) view);
                        if (!TextUtils.isEmpty(text)) {
                            text = text.toString().substring(0, text.length() - 1);
                        }
                    } else {
                        Object instanceOfTabView = instanceOfTabView(view);
                        if (instanceOfTabView != null) {
                            text = getTabLayoutContent(instanceOfTabView);
                        } else {
                            if (instanceOfBottomNavigationItemView(view)) {
                                Object menuItemData = getMenuItemData(view);
                                if (menuItemData != null) {
                                    try {
                                        Class<?> currentClass = ReflectUtil.getCurrentClass(new String[]{"androidx.appcompat.view.menu.MenuItemImpl"});
                                        if (currentClass != null) {
                                            String str2 = (String) ReflectUtil.findField(currentClass, menuItemData, "mTitle");
                                            if (!TextUtils.isEmpty(str2)) {
                                                str = str2;
                                            }
                                        }
                                    } catch (Exception unused3) {
                                    }
                                }
                            } else if (instanceOfNavigationView(view)) {
                                text = isViewSelfVisible(view) ? "Open" : "Close";
                            } else if (view instanceof ViewGroup) {
                                text = !isWeexView(view) ? view.getContentDescription() : null;
                                if (TextUtils.isEmpty(text)) {
                                    try {
                                        text = traverseView(new StringBuilder(), (ViewGroup) view);
                                        if (!TextUtils.isEmpty(text)) {
                                            text = text.toString().substring(0, text.length() - 1);
                                        }
                                    } catch (Exception unused4) {
                                    }
                                }
                            }
                            text = str;
                        }
                    }
                }
                if (TextUtils.isEmpty(text) && (view instanceof TextView)) {
                    text = ((TextView) view).getHint();
                }
                if (TextUtils.isEmpty(text) && (!isWeexView(view) || isWeexTextView(view))) {
                    text = view.getContentDescription();
                }
                viewText = text == null ? "" : text;
                SnapCache.getInstance().setViewText(view, viewText.toString());
            }
            if (view instanceof EditText) {
                viewText = z ? ((EditText) view).getText() : "";
            }
            if (viewText == null) {
                viewText = "";
            }
            return viewText.toString();
        } catch (Exception e) {
            SALog.printStackTrace(e);
            return "";
        }
    }

    public static boolean isViewIgnored(Class<?> cls) {
        if (cls == null) {
            return true;
        }
        try {
            List<Class<?>> ignoredViewTypeList = SensorsDataAPI.sharedInstance().getIgnoredViewTypeList();
            if (ignoredViewTypeList.isEmpty()) {
                return false;
            }
            for (Class<?> cls2 : ignoredViewTypeList) {
                if (cls2.isAssignableFrom(cls)) {
                    return true;
                }
            }
            return false;
        } catch (Exception unused) {
            return true;
        }
    }

    private static String getViewType(String str, String str2) {
        return (TextUtils.isEmpty(str) || isOSViewByPackage(str)) ? str2 : str;
    }
}
