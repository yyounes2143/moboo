package com.sensorsdata.analytics.android.sdk.util;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.text.TextUtils;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowManager;
import android.widget.ImageButton;
import android.widget.TabHost;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Comparator;
/* compiled from: Proguard */
/* loaded from: classes6.dex */
public class WindowHelper {
    private static boolean sArrayListWindowViews = false;
    private static final String sCustomWindowPrefix = "/CustomWindow";
    private static final String sDialogWindowPrefix = "/DialogWindow";
    private static boolean sIsInitialized = false;
    private static Method sItemViewGetDataMethod = null;
    private static Class<?> sListMenuItemViewClazz = null;
    private static final String sMainWindowPrefix = "/MainWindow";
    private static Class sPhoneWindowClazz = null;
    private static Class sPopupWindowClazz = null;
    private static final String sPopupWindowPrefix = "/PopupWindow";
    private static boolean sViewArrayWindowViews = false;
    private static Comparator<View> sViewSizeComparator = new Comparator<View>() { // from class: com.sensorsdata.analytics.android.sdk.util.WindowHelper.1
        @Override // java.util.Comparator
        public int compare(View view, View view2) {
            int hashCode = view.hashCode();
            int hashCode2 = view2.hashCode();
            int currentRootWindowsHashCode = AppStateTools.getInstance().getCurrentRootWindowsHashCode();
            if (hashCode == currentRootWindowsHashCode) {
                return -1;
            }
            if (hashCode2 == currentRootWindowsHashCode) {
                return 1;
            }
            return (view2.getWidth() * view2.getHeight()) - (view.getWidth() * view.getHeight());
        }
    };
    private static Object sWindowManger;
    private static Field viewsField;

    private static View[] filterNullAndDismissToastView(View[] viewArr) {
        ArrayList arrayList = new ArrayList(viewArr.length);
        System.currentTimeMillis();
        for (View view : viewArr) {
            if (view != null) {
                arrayList.add(view);
            }
        }
        View[] viewArr2 = new View[arrayList.size()];
        arrayList.toArray(viewArr2);
        return viewArr2;
    }

    private static View findMenuItemView(View view, MenuItem menuItem) throws InvocationTargetException, IllegalAccessException {
        View view2;
        if (SAViewUtils.instanceOfActionMenuItem(menuItem) && menuItem.getItemId() == 16908332 && SAViewUtils.instanceOfToolbar(view.getParent()) && (view instanceof ImageButton) && (view2 = (View) ReflectUtil.findField(new String[]{"androidx.appcompat.widget.Toolbar", "androidx.appcompat.widget.Toolbar", "android.widget.Toolbar"}, view.getParent(), "mNavButtonView")) != null && view2 == view) {
            return view;
        }
        if (getMenuItemData(view) == menuItem) {
            return view;
        }
        if (view instanceof ViewGroup) {
            int i = 0;
            while (true) {
                ViewGroup viewGroup = (ViewGroup) view;
                if (i < viewGroup.getChildCount()) {
                    View findMenuItemView = findMenuItemView(viewGroup.getChildAt(i), menuItem);
                    if (findMenuItemView != null) {
                        return findMenuItemView;
                    }
                    i++;
                } else {
                    return null;
                }
            }
        } else {
            return null;
        }
    }

    private static View findTabView(View view, String str) {
        int i = 0;
        if (TextUtils.equals(str, getTabHostTag(view))) {
            return (View) ReflectUtil.callMethod(view, "getCurrentTabView", new Object[0]);
        }
        if (!(view instanceof ViewGroup)) {
            return null;
        }
        while (true) {
            ViewGroup viewGroup = (ViewGroup) view;
            if (i < viewGroup.getChildCount()) {
                View findTabView = findTabView(viewGroup.getChildAt(i), str);
                if (findTabView != null) {
                    return findTabView;
                }
                i++;
            } else {
                return null;
            }
        }
    }

    public static View getClickView(MenuItem menuItem) {
        View findMenuItemView;
        View findMenuItemView2;
        if (menuItem == null) {
            return null;
        }
        init();
        View[] windowViews = getWindowViews();
        try {
            for (View view : windowViews) {
                if (view.getClass() == sPopupWindowClazz && (findMenuItemView2 = findMenuItemView(view, menuItem)) != null) {
                    return findMenuItemView2;
                }
            }
            for (View view2 : windowViews) {
                if (view2.getClass() != sPopupWindowClazz && (findMenuItemView = findMenuItemView(view2, menuItem)) != null) {
                    return findMenuItemView;
                }
            }
        } catch (IllegalAccessException | InvocationTargetException | Exception unused) {
        }
        return null;
    }

    public static String getMainWindowPrefix() {
        return sMainWindowPrefix;
    }

    @SuppressLint({"RestrictedApi"})
    private static Object getMenuItemData(View view) throws InvocationTargetException, IllegalAccessException {
        if (view.getClass() == sListMenuItemViewClazz) {
            return sItemViewGetDataMethod.invoke(view, null);
        }
        if (!SAViewUtils.instanceOfAndroidXListMenuItemView(view) && !SAViewUtils.instanceOfSupportListMenuItemView(view) && !SAViewUtils.instanceOfBottomNavigationItemView(view)) {
            return null;
        }
        return SAViewUtils.getMenuItemData(view);
    }

    public static View[] getSortedWindowViews() {
        View[] windowViews = getWindowViews();
        if (windowViews.length > 1) {
            View[] viewArr = (View[]) Arrays.copyOf(windowViews, windowViews.length);
            Arrays.sort(viewArr, sViewSizeComparator);
            return viewArr;
        }
        return windowViews;
    }

    private static String getSubWindowPrefix(View view) {
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        if (layoutParams != null && (layoutParams instanceof WindowManager.LayoutParams)) {
            int i = ((WindowManager.LayoutParams) layoutParams).type;
            if (i == 1) {
                return sMainWindowPrefix;
            }
            if (i < 99 && view.getClass() == sPhoneWindowClazz) {
                return sDialogWindowPrefix;
            }
            if (i < 1999 && view.getClass() == sPopupWindowClazz) {
                return sPopupWindowPrefix;
            }
            if (i < 2999) {
                return sCustomWindowPrefix;
            }
        }
        Class<?> cls = view.getClass();
        if (cls == sPhoneWindowClazz) {
            return sDialogWindowPrefix;
        }
        if (cls != sPopupWindowClazz) {
            return sCustomWindowPrefix;
        }
        return sPopupWindowPrefix;
    }

    private static String getTabHostTag(View view) {
        if (view instanceof TabHost) {
            return (String) ReflectUtil.callMethod(view, "getCurrentTabTag", new Object[0]);
        }
        return null;
    }

    public static String getWindowPrefix(View view) {
        if (view.hashCode() == AppStateTools.getInstance().getCurrentRootWindowsHashCode()) {
            return getMainWindowPrefix();
        }
        return getSubWindowPrefix(view);
    }

    private static View[] getWindowViews() {
        View[] viewArr = new View[0];
        Object obj = sWindowManger;
        View[] viewArr2 = null;
        r3 = null;
        View view = null;
        if (obj == null) {
            Activity foregroundActivity = AppStateTools.getInstance().getForegroundActivity();
            if (foregroundActivity != null) {
                Window window = foregroundActivity.getWindow();
                if (window.isActive()) {
                    view = window.getDecorView();
                }
            }
            return foregroundActivity != null ? new View[]{view} : viewArr;
        }
        try {
            if (sArrayListWindowViews) {
                viewArr2 = (View[]) ((ArrayList) viewsField.get(obj)).toArray(viewArr);
            } else if (sViewArrayWindowViews) {
                viewArr2 = (View[]) viewsField.get(obj);
            }
            if (viewArr2 != null) {
                viewArr = viewArr2;
            }
        } catch (Exception unused) {
        }
        return filterNullAndDismissToastView(viewArr);
    }

    public static void init() {
        if (!sIsInitialized) {
            try {
                Class<?> cls = Class.forName("android.view.WindowManagerGlobal");
                viewsField = cls.getDeclaredField("mViews");
                Field declaredField = cls.getDeclaredField("sDefaultWindowManager");
                viewsField.setAccessible(true);
                if (viewsField.getType() == ArrayList.class) {
                    sArrayListWindowViews = true;
                } else if (viewsField.getType() == View[].class) {
                    sViewArrayWindowViews = true;
                }
                declaredField.setAccessible(true);
                sWindowManger = declaredField.get(null);
            } catch (ClassNotFoundException | IllegalAccessException | NoSuchFieldException unused) {
            }
            try {
                sListMenuItemViewClazz = Class.forName("com.android.internal.view.menu.ListMenuItemView");
                sItemViewGetDataMethod = Class.forName("com.android.internal.view.menu.MenuView$ItemView").getDeclaredMethod("getItemData", null);
            } catch (ClassNotFoundException | NoSuchMethodException unused2) {
            }
            try {
                try {
                    sPhoneWindowClazz = Class.forName("com.android.internal.policy.PhoneWindow$DecorView");
                } catch (ClassNotFoundException unused3) {
                }
            } catch (ClassNotFoundException unused4) {
                sPhoneWindowClazz = Class.forName("com.android.internal.policy.DecorView");
            }
            try {
                sPopupWindowClazz = Class.forName("android.widget.PopupWindow$PopupDecorView");
            } catch (ClassNotFoundException unused5) {
            }
            sIsInitialized = true;
        }
    }

    public static boolean isCustomWindow(View view) {
        return TextUtils.equals(sCustomWindowPrefix, getSubWindowPrefix(view));
    }

    public static boolean isDecorView(Class cls) {
        if (!sIsInitialized) {
            init();
        }
        if (cls != sPhoneWindowClazz && cls != sPopupWindowClazz) {
            return false;
        }
        return true;
    }

    public static boolean isDialogOrPopupWindow(View view) {
        String subWindowPrefix = getSubWindowPrefix(view);
        if (!TextUtils.equals(sDialogWindowPrefix, subWindowPrefix) && !TextUtils.equals(sPopupWindowPrefix, subWindowPrefix)) {
            return false;
        }
        return true;
    }

    public static boolean isMainWindow(View view) {
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        if (!(layoutParams instanceof WindowManager.LayoutParams) || ((WindowManager.LayoutParams) layoutParams).type != 1) {
            return false;
        }
        return true;
    }

    public static View getClickView(String str) {
        View[] windowViews;
        View findTabView;
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        init();
        for (View view : getWindowViews()) {
            try {
                if (view.getClass() != sPopupWindowClazz && (findTabView = findTabView(view, str)) != null) {
                    return findTabView;
                }
            } catch (Exception unused) {
            }
        }
        return null;
    }
}
